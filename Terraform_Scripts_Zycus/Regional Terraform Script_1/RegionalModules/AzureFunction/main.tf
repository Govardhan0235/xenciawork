


resource "azurerm_function_app" "example" {
  name                       = var.azurerm_function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id     = var.servicplan_Id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  tags = {
    Environment = var.environment
  }
}