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



variable "servicplan_Id" {
  type = string
 
}

variable "azurerm_function_app_name" {
  type        = string
}

variable "storage_account_access_key" {
  type        = string
}

variable "environment" {
   type = string
}