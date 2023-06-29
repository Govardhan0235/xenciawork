module "ResourceGroup" {
  source ="./GlobalModules/ResourceGroups"
  resource_group_name      = var.resource_group_name
  location = var.location
}

module "AzureFrontDoor" {
 source = "./GlobalModules/Frontdoor"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  frontdoor_name = var.frontdoor_name
  frontdoor_sku_name   = var.frontdoor_sku_name
  
  depends_on = [module.ResourceGroup
               ] 
} 

module "Azureendpoint" {
 source = "./GlobalModules/Frontdoor_endpoint"
  cdn_frontdoor_profile_id = module.AzureFrontDoor.Profile_id
  frontdoor_endpoint_name = "GGRendpointrg"
  depends_on = [module.ResourceGroup
               ] 
} 

module "Azureendpoint2" {
 source = "./GlobalModules/Frontdoor_endpoint"
  cdn_frontdoor_profile_id = module.AzureFrontDoor.Profile_id
  frontdoor_endpoint_name = "GGRendpointrg2"
  depends_on = [module.ResourceGroup
               ] 
} 

module "AzureFrontDoor_origin_group" {
 source = "./GlobalModules/Frontdoor_origin_group"
  for_each = var.routing_rules
  frontdoor_endpoint_name = module.Azureendpoint.endpoint_id
  cdn_frontdoor_profile_id= module.AzureFrontDoor.Profile_id
  frontdoor_origin_group_name = each.value.frontdoor_origin_group_name
  frontdoor_origin_name = each.value.frontdoor_origin_name
  host_name                      = each.value.host_name
  http_port                      = each.value.http_port
  https_port                     = each.value.https_port
  origin_host_header             = each.value.origin_host_header
  frontdoor_route_name  = each.value.frontdoor_route_name
  patterns_to_match = each.value.patterns_to_match
  supported_protocols = each.value.supported_protocols
  depends_on = [module.AzureFrontDoor,
                module.Azureendpoint
               ] 
 
}  

module "AzureFrontDoor_origin_group1" {
 source = "./GlobalModules/Frontdoor_origin_group"
  for_each = var.routing_rules2
  frontdoor_endpoint_name = module.Azureendpoint2.endpoint_id
  cdn_frontdoor_profile_id= module.AzureFrontDoor.Profile_id
  frontdoor_origin_group_name = each.value.frontdoor_origin_group_name
  frontdoor_origin_name = each.value.frontdoor_origin_name
  host_name                      = each.value.host_name
  http_port                      = each.value.http_port
  https_port                     = each.value.https_port
  origin_host_header             = each.value.origin_host_header
  frontdoor_route_name  = each.value.frontdoor_route_name
  patterns_to_match = each.value.patterns_to_match
  supported_protocols = each.value.supported_protocols
  depends_on = [module.AzureFrontDoor,
                module.Azureendpoint2
               ] 
 
}  




module "Frontdoor_security_policy" {
 source = "./GlobalModules/Frontdoor_security_policy"
  frontdoor_security_policy = var.frontdoor_security_policy
  cdn_frontdoor_profile_id = module.AzureFrontDoor.Profile_id
  cdn_frontdoor_domain_id = module.Azureendpoint.endpoint_id
  resource_group_name = module.ResourceGroup.rg_name_out
  frontdoor_sku_name   = var.frontdoor_sku_name
  firewall_policy_name = var.firewall_policy_name
  firewall_policy_mode  = var.firewall_policy_mode

   depends_on = [module.AzureFrontDoor,
                 module.ResourceGroup,
                 module.Azureendpoint
                ] 

}  