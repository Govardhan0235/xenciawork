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

variable "environment" {
   type = string
}

