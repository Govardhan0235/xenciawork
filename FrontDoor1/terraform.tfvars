resource_group_name = "RG_Globalrg"
  location = "centralIndia"

  frontdoor_name = "GGRFrontdoorrg"
  frontdoor_endpoint_name = "GGRendpointrg"
   frontdoor_sku_name   = "Standard_AzureFrontDoor"

 routing_rules = {
   rule1 = {
  
  
  frontdoor_origin_group_name = "GGRorigingroup2"
  frontdoor_origin_name = "GGRorgin2"
  frontdoor_route_name  = "ggrroute2"
  host_name                      = "gentle-sea2-005ca7a0f.2.azurestaticapps.net"
  http_port                      = 80
  https_port                     = 443
  origin_host_header             = "gentle-sea2-005ca7a0f.2.azurestaticapps.net"
  patterns_to_match = "/s/*"
  supported_protocols = ["Http", "Https"]
    }
   rule2 = { 
  
  frontdoor_origin_group_name = "GGRorigingroup3"
  frontdoor_origin_name = "GGRorgin3"
  frontdoor_route_name  = "ggrroute3"
  host_name                      = "gentle-sea3-005ca7a0f.2.azurestaticapps.net"
  http_port                      = 80
  https_port                     = 443
  origin_host_header             = "gentle-sea3-005ca7a0f.2.azurestaticapps.net"
  patterns_to_match = "/ss/*"
  supported_protocols = ["Http", "Https"]
    }
 }
routing_rules2 = {
   rule3 = { 
  
  frontdoor_origin_group_name = "GGRorigingroup4"
  frontdoor_origin_name = "GGRorgin4"
  frontdoor_route_name  = "ggrroute4"
  host_name                      = "gentle-sea4-005ca7a0f.2.azurestaticapps.net"
  http_port                      = 80
  https_port                     = 443
  origin_host_header             = "gentle-sea4-005ca7a0f.2.azurestaticapps.net"
  patterns_to_match = "/sss/*"
  supported_protocols = ["Http", "Https"]
    }
 

 }
frontdoor_security_policy = "ggrsecuritypolicy"
firewall_policy_name = "examplewafsecurity"
firewall_policy_mode  = "Detection"
