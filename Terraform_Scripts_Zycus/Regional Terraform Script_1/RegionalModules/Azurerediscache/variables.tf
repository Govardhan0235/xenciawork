variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  
}

variable "location" {
  type        = string

  description = "location of resource group"
}

variable "Redis_cache" {
  type = string
}
variable "capacity" {
 type = number
 
}

variable "family" {
 type = string
}

variable "sku_name" {
 type = string 
}

variable "enable_non_ssl_port" {
 type = bool
 
}

variable "minimum_tls_version" {
 type = string
 
}

variable "public_network_access_enabled" {

  type = bool
}
  
  variable "redis_version" {

    type = number
    
  }

  variable "environment" {
   type = string
}





