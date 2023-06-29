variable "location" {
  type    = string
  
}



variable "Bot_name" {
  type        = string
  description = "Unique Azure Service Bus namespace"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Service Bus namespace should exist"
}

variable "Bot_sku" {
  type        = string
  description = "SKU type (Basic, Standard and Premium)"
}


variable "microsoft_app_id"{
type        = string

}