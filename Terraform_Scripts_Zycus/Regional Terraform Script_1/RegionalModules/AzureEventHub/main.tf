resource "azurerm_eventhub" "example" {
  name                = var.eventhub_name
  namespace_name      = var.eventhub_namespace
  resource_group_name = var.resource_group_name
  partition_count     = var.eventhub_partition_count
  message_retention   = var.eventhub_message_retention
}