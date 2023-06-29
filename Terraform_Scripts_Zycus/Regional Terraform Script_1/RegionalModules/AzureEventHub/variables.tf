variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "eventhub_namespace" {
  type = string
}
variable "eventhub_name" {
  type = string
 
}

variable "eventhub_partition_count" {
  type = number
}

variable "eventhub_message_retention" {
  type = number
}

