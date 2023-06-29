variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
}

variable "acr_name" {
  type        = string
  
}

variable "acr_sku" {
  type        = string
  
}