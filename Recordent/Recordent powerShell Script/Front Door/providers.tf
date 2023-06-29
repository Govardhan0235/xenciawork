terraform {



  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.8.0"
    }

    azapi = {
      source = "Azure/azapi"
      version = "~>0.4.0"
    }



  }
}

provider "azurerm" {
  subscription_id = "54ff4cf6-32b8-4112-ac42-05a514813214"
  client_id       = "6bb71a47-8d30-4050-9db2-cec364fa1498"
  client_secret   = "Ib58Q~g5FnBODVOqNuDnM0ApIpcnyQa-gLfMucCC"

  tenant_id = "75f2a99b-01fd-48f2-ac60-d4a7a44fd0cc"
  features {}
}

provider "azapi" {

  subscription_id = "54ff4cf6-32b8-4112-ac42-05a514813214"
  client_id       = "6bb71a47-8d30-4050-9db2-cec364fa1498"
  client_secret   = "Ib58Q~g5FnBODVOqNuDnM0ApIpcnyQa-gLfMucCC"

  tenant_id = "75f2a99b-01fd-48f2-ac60-d4a7a44fd0cc"
}
