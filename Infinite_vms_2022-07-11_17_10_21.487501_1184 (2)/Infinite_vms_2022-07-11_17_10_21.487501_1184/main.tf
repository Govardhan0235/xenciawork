terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.10"
    }
  }
}

provider "azurerm" {
  features {
    virtual_machine {
      graceful_shutdown = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

  }
}

resource "azurerm_resource_group" "infinite-rg" {
  for_each = var.resource_groups
  name     = each.value.resource_group_name
  location = each.value.location
}

/*resource "azurerm_proximity_placement_group" "infinite-ppg" {
  depends_on = [
    azurerm_resource_group.infinite-rg
  ]

  for_each            = var.proximity_placement_groups
  name                = each.value.proximity_placement_group_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

}*/

/*resource "azurerm_availability_set" "infinite-availability-set" {
  depends_on = [
    azurerm_resource_group.infinite-rg
  ]
  for_each                     = var.availability_sets
  name                         = each.value.availability_set_name
  location                     = each.value.location
  resource_group_name          = each.value.resource_group_name
  #proximity_placement_group_id = azurerm_proximity_placement_group.infinite-ppg[each.value.proximity_placement_group_name].id
}*/
/* 
module "vnet" {
  source     = "../Automation32-Infinite/Modules/vnet/"
  depends_on = [azurerm_resource_group.infinite-rg]

  for_each            = var.vnets
  vnet_name           = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  subnets             = each.value.subnets
}

 */
module "infinite_linux_vm" {
  source = "./Modules/infinite_linux_vm/"
  depends_on = [
    azurerm_resource_group.infinite-rg
   # azurerm_availability_set.infinite-availability-set
    #azurerm_proximity_placement_group.infinite-ppg
  ]

  for_each = var.infinite_linux_vms

  location = each.value.location
  zone     = each.value.zone
  nic_name = each.value.nic_name
  #network_security_group_id     = each.value.network_security_group_id
  enable_accelerated_networking = each.value.enable_accelerated_networking
  #subnet_id                     = module.vnet[each.value.vnet_name].subnet_ids[each.value.subnet_names]
  subnet_id                     = each.value.subnet_id
  #proximity_placement_group_id  = azurerm_proximity_placement_group.infinite-ppg[each.value.proximity_placement_group_name].id
  #availability_set_id           = azurerm_availability_set.infinite-availability-set[each.value.availability_set_name].id
  resource_group_name           = each.value.resource_group_name
  private_ip_address_allocation = each.value.private_ip_address_allocation
  private_ip_address            = each.value.private_ip_address

  computer_name = each.value.computer_name
  size          = each.value.size

  patch_mode                      = each.value.patch_mode
  admin_username                  = each.value.admin_username
  admin_password           = each.value.admin_password
  #admin_ssh_key_username          = each.value.admin_ssh_key_username
  disable_password_authentication = each.value.disable_password_authentication
  #public_key                      = each.value.public_key
  #public_key                      = format("%s/%s", "${path.module}", each.value.public_key)

  os_disk_storage_account_type = each.value.os_disk_storage_account_type
  os_disk_name                 = each.value.os_disk_name
  os_disk_caching              = each.value.os_disk_caching
  os_disk_size_gb              = each.value.os_disk_size_gb

  /* source_image_reference_publisher = each.value.source_image_reference_publisher
  source_image_reference_offer     = each.value.source_image_reference_offer
  source_image_reference_sku       = each.value.source_image_reference_sku
  source_image_reference_version   = each.value.source_image_reference_version 
  gallery_image_name = each.value.gallery_image_name
  azure_compute_gallery_name = each.value.azure_compute_gallery_name*/

  source_image_id = each.value.source_image_id
  





  data_disks = each.value.data_disks

  tags      = each.value.tags
  user_data = each.value.user_data

  public_ip_address_allocation = each.value.public_ip_address_allocation
  public_ip_name               = each.value.public_ip_name
}


module "infinite_windows_vm" {
  source = "./Modules/infinite_windows_vm/"
  depends_on = [
    azurerm_resource_group.infinite-rg
   # azurerm_availability_set.infinite-availability-set
   # azurerm_proximity_placement_group.infinite-ppg
  ]

  for_each = var.infinite_windows_vms

  location = each.value.location
  zone     = each.value.zone
  nic_name = each.value.nic_name
  #network_security_group_id     = each.value.network_security_group_id
  enable_accelerated_networking = each.value.enable_accelerated_networking
  #subnet_id                     = module.vnet[each.value.vnet_name].subnet_ids[each.value.subnet_names]
  subnet_id                     = each.value.subnet_id
 # availability_set_id           = azurerm_availability_set.infinite-availability-set[each.value.availability_set_name].id
  #proximity_placement_group_id  = azurerm_proximity_placement_group.infinite-ppg[each.value.proximity_placement_group_name].id
  resource_group_name           = each.value.resource_group_name
  private_ip_address_allocation = each.value.private_ip_address_allocation
  private_ip_address            = each.value.private_ip_address

  computer_name = each.value.computer_name
  size          = each.value.size

  patch_mode               = each.value.patch_mode
  enable_automatic_updates = each.value.enable_automatic_updates
  admin_username           = each.value.admin_username
  admin_password           = each.value.admin_password

  os_disk_storage_account_type = each.value.os_disk_storage_account_type
  os_disk_name                 = each.value.os_disk_name
  os_disk_caching              = each.value.os_disk_caching
  os_disk_size_gb              = each.value.os_disk_size_gb

  /* source_image_reference_publisher = each.value.source_image_reference_publisher
  source_image_reference_offer     = each.value.source_image_reference_offer
  source_image_reference_sku       = each.value.source_image_reference_sku
  source_image_reference_version   = each.value.source_image_reference_version
 

  gallery_image_name = each.value.gallery_image_name
  azure_compute_gallery_name = each.value.azure_compute_gallery_name*/

  source_image_id = each.value.source_image_id
  
  data_disks = each.value.data_disks

  tags                         = each.value.tags
  user_data                    = each.value.user_data
  public_ip_address_allocation = each.value.public_ip_address_allocation
  public_ip_name               = each.value.public_ip_name


}

