output "storage_account_primary_access_key" {
  value = azurerm_storage_account.StroageAccount.primary_access_key
}

output "storage_account_name" {
  value = azurerm_storage_account.StroageAccount.name
}