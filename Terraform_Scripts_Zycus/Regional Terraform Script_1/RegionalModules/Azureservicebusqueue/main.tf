resource "azurerm_servicebus_queue" "example" {
  name         = var.servicebus_queue_name
  namespace_id = var.servicebus_namespace_id

  enable_partitioning = true
}