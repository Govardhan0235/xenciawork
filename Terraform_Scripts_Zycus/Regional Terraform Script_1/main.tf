module "ResourceGroup" {
  source ="./RegionalModules/ResourceGroups"
  resource_group_name      = var.resource_group_name
  location = var.location
  environment                  = var.environment
}

#AzureFunction Module
module "AzureFunctionapp" {
 source = "./RegionalModules/AzureFunction"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  storage_account_name = var.storage_account_name
  azurerm_function_app_name = var.azurerm_function_app_name
  servicplan_Id = module.AppServicePlans.service-plan_id
  storage_account_access_key = module.StorageAccount.storage_account_primary_access_key
  environment                  = var.environment


  depends_on = [module.AppServicePlans, 
                module.ResourceGroup,
                module.StorageAccount
               ]
  
}

#Azureappserviceskillbot
module "Skill_BOT" {
 source = "./RegionalModules/AppServices"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  servicplan_Id = module.AppServicePlans.service-plan_id
  appservicename = var.Skillbot_appservicename
  current_stack = var.current_stack
  node_version = var.node_version
  Access_Restriction_name = var.Access_Restriction_name
  action = var.action
  service_tag = var.service_tag
  APPINSIGHTS_INSTRUMENTATIONKEY =  module.Applicationinsights.instrumentation_key
  priority = var.priority
  always_on = var.always_on
  environment= var.environment
  depends_on = [module.AppServicePlans,
                module.Applicationinsights,
                module.ResourceGroup
               ]  
}

#AzureappserviceContainerbot
module "Container_BOT" {
 source = "./RegionalModules/AppServices"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  servicplan_Id = module.AppServicePlans.service-plan_id
  appservicename = var.Containerbot_appservicename
  current_stack = var.current_stack
  node_version = var.node_version
  Access_Restriction_name = var.Access_Restriction_name
  action = var.action
  service_tag = var.service_tag
  APPINSIGHTS_INSTRUMENTATIONKEY =  module.Applicationinsights.instrumentation_key
  priority = var.priority
  always_on = var.always_on
  environment= var.environment
  depends_on = [module.AppServicePlans,
                module.Applicationinsights,
                module.ResourceGroup
               ]  
}
#AppservicePlan Module
 module "AppServicePlans" {
  source = "./RegionalModules/AppServicePlan"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  app_service_plan_names = var.app_service_plan_nameapp
  os_type = var.app_service_plan_os_type
  sku_name = var.app_service_plan_sku_name
  environment= var.environment
  depends_on = [module.ResourceGroup]
  
  }

 #AzureRedisCache
  module "AzureRedisCache" {
  source = "./RegionalModules/Azurerediscache"
  resource_group_name = var.resource_group_name
  location = module.ResourceGroup.rg_location_out
  Redis_cache = var.Redis_cache
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version
  public_network_access_enabled  = var.public_network_access_enabled
  redis_version = var.redis_version
  environment= var.environment
  depends_on = [module.ResourceGroup]
  
}
#AzureKeyvault_Module
 module "Azurekeyvault" {
  source = "./RegionalModules/Keyvault"
  Key_vault_name=var.Key_vault_name
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = var.tenant_id 
  soft_delete_retention_days  = var.soft_delete_retention_days 
  purge_protection_enabled    = var.purge_protection_enabled 
  Key_vault_sku_name = var.Key_vault_sku_name
  object_id = var.object_id 
  environment                 = var.environment
  depends_on = [module.ResourceGroup]
  
  }
#Applicationinsights_Module
 module "Applicationinsights" {
  source = "./RegionalModules/Applicationinsights"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  application_insights_name = var.application_insights_name
  application_type    = var.application_type
  environment                  = var.environment
  depends_on = [module.ResourceGroup]
  
  }

  module "StorageAccount" {
  source = "./RegionalModules/StorageAccount"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  storage_account_name                = var.storage_account_name
  stroage_account_tier             = var.stroage_account_tier
  stroage_account_replication_type = var.stroage_account_replication_type
  environment                  = var.environment
  depends_on = [module.ResourceGroup]
  
  }

   module "Storagetable" {
  source = "./RegionalModules/Storagetable"
  
  storage_account_name                = module.StorageAccount.storage_account_name
  storage_account_table_name = var.storage_account_table_name
  depends_on = [module.StorageAccount]
  
  }

 

module "Azureservicebus" {
 source = "./RegionalModules/Azureservicebuss"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  Azureservicebus_name = var.Azureservicebus_name
  Azureservicebus_sku = var.Azureservicebus_sku
  environment                  = var.environment
  depends_on = [module.ResourceGroup]

}

module "React_Appservices" {
 source = "./RegionalModules/React_Appservices"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  servicplan_Id = module.ReactAppServicePlans.service-plan_id
  appservicename = var.React_appservicename
  docker_image     = var.docker_image
  docker_image_tag = var.docker_image_tag
  Access_Restriction_name = var.Access_Restriction_name
  action = var.action
  service_tag = var.service_tag
  APPINSIGHTS_INSTRUMENTATIONKEY =  module.Applicationinsights.instrumentation_key
  priority = var.priority
  always_on = var.always_on
  environment= var.environment
  depends_on = [module.ReactAppServicePlans,
                module.Applicationinsights,
                module.ResourceGroup
               ]  
}


 module "ReactAppServicePlans" {
  source = "./RegionalModules/AppServicePlan"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  app_service_plan_names = var.app_service_plan_React_nameapp
  os_type = var.app_service_plan_React_os_type
  sku_name = var.app_service_plan_React_sku_name
  environment= var.environment
  depends_on = [module.ResourceGroup]
  
  }

  module "Log_Analytics" {
  source = "./RegionalModules/LogAnalytics"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  log_analytics_workspace_name = var.log_analytics_workspace_name
  log_analytics_workspace_sku  = var.log_analytics_workspace_sku
  environment                  = var.environment
  depends_on = [module.ResourceGroup]
  
  }

 module "servicebus_queue" {
  source = "./RegionalModules/Azureservicebusqueue"
  servicebus_queue_name  = "merlinassistdevapciservicequece"
  servicebus_namespace_id = module.Azureservicebus.servicebus_namespace_id
  depends_on = [module.Azureservicebus]
  
  }

  module "Containerbot_Appserviceslot" {
  source = "./RegionalModules/Appserviceslots"
  app_service_slot_name = "contoinerbotgreen"
  app_service_id = module.Container_BOT.appservice_id
  depends_on = [module.Container_BOT]
  
  }

  module "skillbot_Appserviceslot" {
  source = "./RegionalModules/Appserviceslots"
  app_service_slot_name = "skillbotgreen"
  app_service_id = module.Skill_BOT.appservice_id
  depends_on = [module.Skill_BOT]
  
  }

  module "React_Appserviceslot" {
  source = "./RegionalModules/React_Appserviceslot"
  app_service_slot_name = "Reactappgreen"
  app_service_id = module.React_Appservices.appservice_id
  depends_on = [module.React_Appservices]
  
  }

  module "EventHub_namespace" {
  source = "./RegionalModules/AzureEventHub_namespaces"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  eventhub_namespace  = var.eventhub_namespace
  eventhub_sku        = var.eventhub_sku
  eventhub_capacity   = var.eventhub_capacity
  depends_on = [module.ResourceGroup]
  
  }


  module "EventHub" {
  source = "./RegionalModules/AzureEventHub"
  resource_group_name = module.ResourceGroup.rg_name_out
  eventhub_namespace  = module.EventHub_namespace.eventhub_namespace_name
  eventhub_name       = var.eventhub_name
  eventhub_partition_count    = var.eventhub_partition_count
  eventhub_message_retention  = var.eventhub_message_retention
  depends_on = [module.EventHub_namespace,
                module.ResourceGroup
               ]  
  
  }

  


