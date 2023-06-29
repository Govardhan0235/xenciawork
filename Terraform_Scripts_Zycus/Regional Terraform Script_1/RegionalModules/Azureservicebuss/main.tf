resource "azurerm_servicebus_namespace" "servicebus_namespace" {
  name                = var.Azureservicebus_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.Azureservicebus_sku
  tags = {
    Environment = var.environment
  }


}