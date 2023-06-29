
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









