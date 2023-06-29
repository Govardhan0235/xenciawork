variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
}

variable "storage_account_name" {
    type        = string
}

variable "stroage_account_tier" {
  type        = string
}

variable "stroage_account_replication_type" {
  type        = string
}





variable "azurerm_function_app_name" {
  type        = string
}


variable "app_service_plan_nameapp" {
 type = string
 
}

variable "app_service_plan_os_type" {
 type = string
  
}

variable "app_service_plan_sku_name" {
 type = string
  
}


variable "Skillbot_appservicename" {
  type = string
 
}

variable "Containerbot_appservicename" {
  type = string
 
}


variable "React_appservicename" {
  type = string
 
}



variable "node_version" {
  type = string
}

variable "always_on"{
  type = bool
}

variable "current_stack" {
   type = string
}



variable "Redis_cache" {
  type = string
}
variable "capacity" {
 type = number
 
}

variable "family" {
 type = string
}

variable "sku_name" {
 type = string 
}

variable "enable_non_ssl_port" {
 type = bool
 
}

variable "minimum_tls_version" {
 type = string
 
}

variable "public_network_access_enabled" {

  type = bool
}
  
  variable "redis_version" {

    type = number
    
  }


variable "Access_Restriction_name" {
   type = string
}

variable "action" {
   type = string
}

variable "service_tag" {
   type = string
}

variable "priority" {
   type = number
}

variable "Key_vault_name" {
  type        = string
}

variable "Key_vault_sku_name" {
  type = string
}

variable "enabled_for_disk_encryption" {
    type = bool
  
}

variable "purge_protection_enabled" {
    type = bool
  
}

variable "soft_delete_retention_days" {
    type = number
  
}

variable "tenant_id" {
  type = string
}

variable "object_id" {
    type = string
  
}

variable "application_insights_name" {

     type        = string
  
}


variable "application_type"{
    type = string
}

variable "storage_account_table_name" {
    type        = string
}



variable "Azureservicebus_name" {
  type        = string
  description = "Unique Azure Service Bus namespace"
}


variable "Azureservicebus_sku" {
  type        = string
  description = "SKU type (Basic, Standard and Premium)"
}

variable "app_service_plan_React_nameapp" {
 type = string
 
}

variable "app_service_plan_React_os_type" {
 type = string
  
}

variable "app_service_plan_React_sku_name" {
 type = string
  
}

variable "environment" {
   type = string
}

variable "docker_image" {
   type = string
  
}
variable "docker_image_tag" {
 
   type = string
  
}

variable "log_analytics_workspace_name" {
  type = string 
}

variable "log_analytics_workspace_sku" {
  type = string
}


variable "eventhub_namespace" {
  type = string
 
}

variable "eventhub_sku" {
  type = string
 
}

variable "eventhub_capacity" {
  type = number
 
}


variable "eventhub_name" {
  type = string
 
}

variable "eventhub_partition_count" {
  type = number
}

variable "eventhub_message_retention" {
  type = number
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}



