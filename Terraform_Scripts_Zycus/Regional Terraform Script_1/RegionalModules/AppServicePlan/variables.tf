variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
}

variable "app_service_plan_names" {
 type = string
}

variable "os_type" {
  type = string
  
}

variable "sku_name" {
  type = string
  
}

variable "environment" {
   type = string
}