module "ResourceGroup" {
  source ="./COMMONMODULES/ResourceGroups"
  resource_group_name      = var.resource_group_name
  location = var.location
}

module "AzureCognitiveserviceLUIS" {
 source = "./COMMONMODULES/Cognitiveservice"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  cognitive_account_name = var.LUIS_cognitive_account_name
  cognitive_Kind_name = var.LUIS_cognitive_Kind_name
  cognitive_SKU_name = var.LUIS_cognitive_SKU_name
    
  depends_on = [module.ResourceGroup]

}


module "AzureCognitiveserviceText" {
 source = "./COMMONMODULES/Cognitiveservice"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  cognitive_account_name = var.Text_cognitive_account_name
  cognitive_Kind_name = var.Text_cognitive_Kind_name
  cognitive_SKU_name = var.Text_cognitive_SKU_name
    
  depends_on = [module.ResourceGroup]
}

module "AzureContainerRegistry" {
 source = "./COMMONMODULES/ACR"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
  acr_sku               = var.acr_sku
  acr_name                = var.acr_name
    
  depends_on = [module.ResourceGroup]

}


