resource "azurerm_windows_web_app_slot" "example" {
  name           = var.app_service_slot_name
  app_service_id = var.app_service_id

  site_config {}
}