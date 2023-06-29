variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string

  description = "location of resource group"
}


variable "log_analytics_workspace_name" {
  type = string
 
}

variable "log_analytics_workspace_sku" {
  type = string
 
}

variable "environment" {
   type = string
}
