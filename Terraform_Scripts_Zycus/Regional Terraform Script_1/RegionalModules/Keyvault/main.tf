resource "azurerm_key_vault" "example" {
  name                        = var.Key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = var.tenant_id 
  soft_delete_retention_days  = var.soft_delete_retention_days 
  purge_protection_enabled    = var.purge_protection_enabled 

  sku_name = var.Key_vault_sku_name

access_policy {
    tenant_id = var.tenant_id 
    object_id = var.object_id 

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
  tags = {
    Environment = var.environment
  }
}