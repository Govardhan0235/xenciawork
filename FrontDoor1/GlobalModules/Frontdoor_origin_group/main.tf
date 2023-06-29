resource "azurerm_cdn_frontdoor_origin_group" "my_origin_group" {
  name                     = var.frontdoor_origin_group_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
  session_affinity_enabled = true

  load_balancing {
    sample_size                 = 4
    successful_samples_required = 3
  }

  health_probe {
    path                = "/"
    request_type        = "HEAD"
    protocol            = "Https"
    interval_in_seconds = 100
  }
}

resource "azurerm_cdn_frontdoor_origin" "service_origin" {
  name                          = var.frontdoor_origin_name
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.my_origin_group.id

  enabled                        = true
  host_name                      = var.host_name
  http_port                      = var.http_port
  https_port                     = var.https_port
  origin_host_header             = var.origin_host_header
  priority                       = 1
  weight                         = 1000
  certificate_name_check_enabled = true
}

resource "azurerm_cdn_frontdoor_route" "my_route" {
  name                          = var.frontdoor_route_name
  cdn_frontdoor_endpoint_id     = var.frontdoor_endpoint_name
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.my_origin_group.id
  cdn_frontdoor_origin_ids      = [azurerm_cdn_frontdoor_origin.service_origin.id]

  supported_protocols    = var.supported_protocols
  patterns_to_match      = [var.patterns_to_match]
  forwarding_protocol    = "HttpsOnly"
  link_to_default_domain = true
  #https_redirect_enabled = false
}