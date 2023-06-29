variable "frontdoor_security_policy" {
  type = string
}

variable "cdn_frontdoor_profile_id" {
  type = string
}

variable "cdn_frontdoor_domain_id" {
  type = string
}

variable "frontdoor_sku_name" {
type    = string 
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Service Bus namespace should exist"
}

variable "firewall_policy_name" {
type    = string 
}

variable "firewall_policy_mode" {
type    = string 
}
