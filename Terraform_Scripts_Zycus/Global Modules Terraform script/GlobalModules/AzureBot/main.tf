resource "azurerm_bot_service_azure_bot" "example" {
  name                = var.Bot_name
  resource_group_name = var.resource_group_name
  location            = var.location
  microsoft_app_id    = var.microsoft_app_id
  sku                 = var.Bot_sku


}