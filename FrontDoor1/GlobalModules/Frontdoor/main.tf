resource "azurerm_cdn_frontdoor_profile" "my_front_door" {
  name                = var.frontdoor_name
  resource_group_name = var.resource_group_name
  sku_name            = var.frontdoor_sku_name
}



