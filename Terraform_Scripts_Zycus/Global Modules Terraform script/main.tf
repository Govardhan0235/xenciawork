module "ResourceGroup" {
  source ="./GlobalModules/ResourceGroups"
  resource_group_name      = var.resource_group_name
  location = var.location
}


module "AzureSkillBot" {
 source = "./GlobalModules/AzureBot"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = var.Bot_Location
  Bot_sku = var.Bot_sku
  Bot_name = var.Bot_name
  microsoft_app_id = var.microsoft_app_id
  depends_on = [module.ResourceGroup
               ]                 
  
}

module "AzureContainerBot" {
 source = "./GlobalModules/AzureBot"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = var.Bot_Location
  Bot_sku = var.Bot_sku
  Bot_name = var.Bot_Container_name
  microsoft_app_id = var.microsoft_app_id
  depends_on = [module.ResourceGroup
               ]                 
  
}


module "AzureFrontDoor" {
 source = "./GlobalModules/FrontDoor"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  frontdoor_name = var.frontdoor_name
  routing_rule_name = var.routing_rule_name
  frontend_endpoints = var.frontend_endpoints
  forwarding_protocol = var.forwarding_protocol
  backend_pool_name   = var.backend_pool_name
  backend_pool_load_balancing = var.backend_pool_load_balancing
  backend_pool_health_probe = var.backend_pool_health_probe
  host_header = var.host_header
  address     = var.address
  http_port   = var.http_port
  https_port  = var.https_port
  load_balancing_name = var.load_balancing_name
  health_probe_name   = var.health_probe_name
  frontend_endpoint_name    = var.frontend_endpoint_name
  host_name = var.host_name
  depends_on = [module.ResourceGroup
               ] 

}  