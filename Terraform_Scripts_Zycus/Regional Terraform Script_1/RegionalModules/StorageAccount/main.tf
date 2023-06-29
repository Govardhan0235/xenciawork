resource "azurerm_storage_account" "StroageAccount" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.stroage_account_tier
  account_replication_type = var.stroage_account_replication_type
  tags = {
    Environment = var.environment
  }
}

