
resource "azurerm_service_plan" "service-plan" {
  name = var.app_service_plan_names
  location = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type == "Windows" ? "Windows" : "Linux"
  sku_name            = var.sku_name
  tags = {
    Environment = var.environment
  }
  
}

