variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string
  description = "location of resource group"
}


variable "Bot_Location" {
  type        = string
  description = "location of resource group"
}



variable "Bot_name" {
  type        = string
  description = "Unique Azure Service Bus namespace"
}

variable "Bot_Container_name" {
  type        = string
  description = "Unique Azure Service Bus namespace"
}


variable "Bot_sku" {
  type        = string
  description = "SKU type (Basic, Standard and Premium)"
}

variable "microsoft_app_id"{
type        = string

}



variable "frontdoor_name" {
type    = string 
}

variable "routing_rule_name" {
type    = string 
}


variable "frontend_endpoints" {
type    = string 
}

variable "forwarding_protocol" {
type    = string 
}

variable "backend_pool_name" {
type    = string 
}

variable "backend_pool_load_balancing" {
type    = string 
}

variable "backend_pool_health_probe" {
type    = string 
}

variable "host_header" {
type    = string 
}

variable "address" {
type    = string 
}
variable "http_port" {
type    = number 
}

variable "https_port" {
type    = number
}

variable "load_balancing_name" {
type    = string 
}

variable "health_probe_name" {
type    = string 
}

variable "frontend_endpoint_name" {
type = string 
}


variable "host_name" {
type = string 
}









