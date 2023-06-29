variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
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

variable "environment" {
   type = string
}


