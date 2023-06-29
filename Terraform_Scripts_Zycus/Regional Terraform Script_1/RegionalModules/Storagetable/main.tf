resource "azurerm_storage_table" "Storagetable" {
  name                 = var.storage_account_table_name
  storage_account_name = var.storage_account_name
}

