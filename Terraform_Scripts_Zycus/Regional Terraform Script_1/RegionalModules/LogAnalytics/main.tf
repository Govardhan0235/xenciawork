resource "azurerm_log_analytics_workspace" "Log_Analytics_WorkSpace" {
    # The WorkSpace name has to be unique across the whole of azure, not just the current subscription/tenant.
    name                = var.log_analytics_workspace_name
    location            = var.location
    resource_group_name = var.resource_group_name
    sku                 = var.log_analytics_workspace_sku
      tags = {
    Environment = var.environment
  }
}