resource "azurerm_cdn_frontdoor_endpoint" "my_endpoint" {
  name                     = var.frontdoor_endpoint_name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id
}