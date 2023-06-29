resource "azurerm_frontdoor" "example" {
  name                = var.frontdoor_name
  resource_group_name = var.resource_group_name

  routing_rule {
    name               = var.routing_rule_name
    accepted_protocols = ["Http", "Https"]
    patterns_to_match  = ["/*"]
    frontend_endpoints = [var.frontend_endpoints]
    forwarding_configuration {
      forwarding_protocol = var.forwarding_protocol
      backend_pool_name   = var.backend_pool_name
    }
  }

  backend_pool_load_balancing {
    name = var.backend_pool_load_balancing
  }

  backend_pool_health_probe {
    name = var.backend_pool_health_probe
  }

 backend_pool {
    name = var.backend_pool_name
    backend {
      host_header = var.host_header
      address     = var.address
      http_port   = var.http_port
      https_port  = var.https_port
    }

    load_balancing_name = var.load_balancing_name
    health_probe_name   = var.health_probe_name
  }

  frontend_endpoint {
    name      = var.frontend_endpoint_name
    host_name = var.host_name
  }
}


