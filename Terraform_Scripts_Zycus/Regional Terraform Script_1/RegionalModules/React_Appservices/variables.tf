variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string

  description = "location of resource group"
}


variable "appservicename" {
  type = string
 
}

variable "servicplan_Id" {
  type = string
 
}



variable "always_on" {
type = bool

}

variable "Access_Restriction_name" {
   type = string
}

variable "action" {
   type = string
}

variable "service_tag" {
   type = string
}

variable "priority" {
   type = number
}


variable "APPINSIGHTS_INSTRUMENTATIONKEY" {
   type = string
  
}


variable "docker_image" {
   type = string
  
}
variable "docker_image_tag" {
 
   type = string
  
}
  


variable "environment" {
   type = string
}
