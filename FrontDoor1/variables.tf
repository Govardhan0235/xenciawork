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

#variable "frontdoor_endpoint_name" {
#type    = string 
#}

#variable "frontdoor_origin_group_name" {
#type    = string 
#}


#variable "frontdoor_route_name" {
#type    = string 
#}
#variable "frontdoor_origin_name" {
#type    = string 
#}

variable "frontdoor_sku_name" {
type    = string 
}

variable "frontdoor_security_policy" {
  type = string
}

variable "firewall_policy_name" {
type    = string 
}

variable "firewall_policy_mode" {
type    = string 
}


#variable "host_name" {
#type    = string 
#}

#variable "http_port" {
#type    = string 
#}

#variable "https_port" {
#type    = string 
#}
#variable "origin_host_header" {
#type    = string 
#}

variable "routing_rules" {
  description = "The list of Routing Rules to determine which particular rule to match the request to and then take the defined action in the configuration"
  type = map(object({
  frontdoor_origin_group_name = string
  frontdoor_origin_name = string
  host_name                      = string
  http_port                      = string
  https_port                     = string
  origin_host_header             = string
  frontdoor_route_name  = string
  patterns_to_match = string
  supported_protocols =  optional(list(string), ["Http", "Https"])
  }))
  
}

variable "routing_rules2" {
  description = "The list of Routing Rules to determine which particular rule to match the request to and then take the defined action in the configuration"
  type = map(object({
  frontdoor_origin_group_name = string
  frontdoor_origin_name = string
  host_name                      = string
  http_port                      = string
  https_port                     = string
  origin_host_header             = string
  frontdoor_route_name  = string
  patterns_to_match = string
  supported_protocols = optional(list(string), ["Http", "Https"])
  }))
  
}


