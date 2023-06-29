#ResourceGroup
resource_group_name = "RG-Global-DEV"
location = "West Europe"


#AzureskillBot
Bot_name = "ma-dev-apci-skillbot"
Bot_Location = "global"
Bot_sku = "F0"
microsoft_app_type = "MultiTenant"
microsoft_app_id = "6bb71a47-8d30-4050-9db2-cec364fa1498"

#AzurecontainerBot
Bot_Container_name = "ma-dev-apci-containerbot"

#FrontDoor
frontdoor_name = "madevapciFrontdoor"
routing_rule_name = "madevapciRoutingRule1"
frontend_endpoints = "madevapciFrontdoor"
forwarding_protocol = "MatchRequest"
backend_pool_name   = "madevapciBackend"
backend_pool_load_balancing = "madevapciLoadBalancingSettings1"
backend_pool_health_probe = "madevapciHealthProbeSetting1"
host_header = "gentle-sea-005ca7a0f.2.azurestaticapps.net"
address     = "gentle-sea-005ca7a0f.2.azurestaticapps.net"
http_port   = 80
https_port  = 443
load_balancing_name = "madevapciLoadBalancingSettings1"
health_probe_name   = "madevapciHealthProbeSetting1"
frontend_endpoint_name    = "madevapciFrontdoor"
host_name = "madevapciFrontdoor.azurefd.net"
