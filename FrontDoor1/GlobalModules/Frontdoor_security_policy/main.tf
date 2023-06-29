resource "azurerm_cdn_frontdoor_firewall_policy" "example" {
  name                              = var.firewall_policy_name
  resource_group_name               = var.resource_group_name
  sku_name                          = var.frontdoor_sku_name
  enabled                           = true
  mode                              = var.firewall_policy_mode
  
  }

resource "azurerm_cdn_frontdoor_security_policy" "example" {
  name                     = var.frontdoor_security_policy
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  security_policies {
    firewall {
      cdn_frontdoor_firewall_policy_id = azurerm_cdn_frontdoor_firewall_policy.example.id

      association {
        domain {
          cdn_frontdoor_domain_id = var.cdn_frontdoor_domain_id
        }
        patterns_to_match = ["/*"]
      }
    }
  }
}