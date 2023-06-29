#ResourceGroupDetails
resource_group_name = "merlinassist-dev-apci-rg"
location = "CentralIndia"


#StroageaccountDetails
storage_account_name = "merlinassistdevapcistgs"
stroage_account_tier = "Standard"
stroage_account_replication_type = "LRS"
storage_account_table_name = "merlinassistdevapcistgtables"

#FunctionsApp
azurerm_function_app_name = "merlinassist-dev-apci-functionapps"

#APPServicePlan
app_service_plan_nameapp = "merlinassist-dev-apci-appserviceplan"
app_service_plan_os_type = "Windows"   # IF we give OS type is Windows it w
app_service_plan_sku_name = "S1"

#SkillBotAppservice 
Skillbot_appservicename = "merlinassist-dev-apci-Skillbotapp"
node_version = "16-LTS"
always_on = true 
current_stack = "node"
Access_Restriction_name = "MyAzureFroontdoorRule"
action = "Allow"
service_tag = "AzureFrontDoor.Backend"
priority = 200

#ContainerbotAppservice 
Containerbot_appservicename = "merlinassist-dev-apci-Containerbotapp"

#ReactAPPServicePlan
app_service_plan_React_nameapp = "merlinassist-dev-apci-React_appserviceplan"
app_service_plan_React_os_type = "Linux"   # IF we give OS type is Windows it w
app_service_plan_React_sku_name = "S1"

#React_Appservice 
React_appservicename = "merlinassist-dev-apci-Reactapps"
docker_image     = "nginx"
docker_image_tag = "latest"


#AzureRedis_Cache
Redis_cache = "merlinassist-dev-apci-rediscache" 
capacity            = 0
family              = "C"
sku_name            = "Standard"
enable_non_ssl_port = false
minimum_tls_version = "1.0"
public_network_access_enabled = true
redis_version = 6

#KeyVault
Key_vault_name= "merlinassistdevapcikvs"
enabled_for_disk_encryption = true
tenant_id                   = "75f2a99b-01fd-48f2-ac60-d4a7a44fd0cc"
soft_delete_retention_days  = 7
purge_protection_enabled    = false
Key_vault_sku_name = "standard"
object_id = "6bb71a47-8d30-4050-9db2-cec364fa1498"

#Applicationinsights
application_insights_name = "merlinassist-dev-apci-appinsights"
application_type    = "web"



#ServiceBus_VARIABLES
Azureservicebus_name = "merlinassist-dev-apci-storageaccount-servicebus"
Azureservicebus_sku = "Standard"

#Log_analytics
log_analytics_workspace_name = "merlinassist-dev-apci-loganalytics"
log_analytics_workspace_sku  = "PerGB2018"

eventhub_namespace  = "merlinassistdevapcieventbusnamespace"
eventhub_sku        = "Standard"
eventhub_capacity   = "1"


eventhub_name       = "merlinassist-dev-apci-eventbus"
eventhub_partition_count    = "2"
eventhub_message_retention  = "1"


environment= "Dev" 

tags = {
  "product" = "merlinassist"
}


