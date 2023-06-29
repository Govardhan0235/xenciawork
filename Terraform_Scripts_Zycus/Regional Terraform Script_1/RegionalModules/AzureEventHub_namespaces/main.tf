resource "azurerm_eventhub_namespace" "eventhub_namespace" {
  name                = var.eventhub_namespace
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.eventhub_sku
  capacity            = var.eventhub_capacity

  tags = var.tags
}