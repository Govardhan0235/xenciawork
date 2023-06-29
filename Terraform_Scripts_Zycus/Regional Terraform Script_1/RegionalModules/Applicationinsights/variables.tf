variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
}


variable "application_insights_name" {

     type        = string
  
}


variable "application_type"{
    type = string
}

variable "environment" {
   type = string
}