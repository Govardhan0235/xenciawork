variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Service Bus namespace should exist"
}

variable "location" {
  type    = string
  
}

variable "frontdoor_name" {
type    = string 
}



variable "frontdoor_sku_name" {
  type    = string
}