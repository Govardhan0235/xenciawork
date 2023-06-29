resource "azurerm_cognitive_account" "example" {
  name                = var.cognitive_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = var.cognitive_Kind_name

  sku_name = var.cognitive_SKU_name
  

  
}