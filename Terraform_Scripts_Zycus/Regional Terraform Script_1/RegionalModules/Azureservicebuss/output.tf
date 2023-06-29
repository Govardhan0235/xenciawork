output "servicebus_namespace_id" {
  description = "Servicebus_namespace_Id"
  value       = azurerm_servicebus_namespace.servicebus_namespace.id
}