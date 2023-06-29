variable "frontdoor_origin_group_name" {
type    = string 
}

variable "frontdoor_route_name" {
type    = string 
}
variable "frontdoor_origin_name" {
type    = string 
}

variable "frontdoor_endpoint_name" {
type    = string 
}

variable "cdn_frontdoor_profile_id" {
  type = string
}

variable "patterns_to_match" {
  type = string
}





variable "host_name" {
type    = string 
}

variable "http_port" {
type    = string 
}

variable "https_port" {
type    = string 
}
variable "origin_host_header" {
type    = string 
}

variable "supported_protocols" {
  type = list
}