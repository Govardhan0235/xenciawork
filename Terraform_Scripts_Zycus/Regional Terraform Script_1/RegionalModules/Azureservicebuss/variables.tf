variable "location" {
  type    = string
  
}



variable "Azureservicebus_name" {
  type        = string
  description = "Unique Azure Service Bus namespace"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Service Bus namespace should exist"
}


variable "Azureservicebus_sku" {
  type        = string
  description = "SKU type (Basic, Standard and Premium)"
}

variable "environment" {
   type = string
}