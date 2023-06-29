resource "azurerm_windows_web_app" "appservice" {
  name                = var.appservicename
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.servicplan_Id

  app_settings = {
    
    "APPINSIGHTS_INSTRUMENTATIONKEY" = var.APPINSIGHTS_INSTRUMENTATIONKEY
  }

  site_config {

     always_on                 = var.always_on
    application_stack {
      current_stack = var.current_stack
      node_version = var.node_version
 
  }

  scm_ip_restriction {
    name = var.Access_Restriction_name
    action = var.action
    service_tag = var.service_tag

    priority = var.priority

  }


    
  }

  tags = {
    Environment = var.environment
  }

 
 
  
}

