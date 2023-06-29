variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string

  description = "location of resource group"
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

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}


