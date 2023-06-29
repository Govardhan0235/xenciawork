#allocating public IP
resource "azurerm_public_ip" "infinite_vm_public_ip" {
  count = var.public_ip_name == "" ? 0 : 1
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.public_ip_address_allocation
}

#creating NIC
resource "azurerm_network_interface" "infinite_nic" {
  name                          = var.nic_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  enable_accelerated_networking = var.enable_accelerated_networking

  #allocating private IP
  ip_configuration {
    name                          = var.nic_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address            = var.private_ip_address
    public_ip_address_id = (var.public_ip_name) == "" ? null : azurerm_public_ip.infinite_vm_public_ip[0].id
  }
}
/* 
resource "azurerm_network_interface_security_group_association" "infinte-nic-nsg-association" {
  network_interface_id      = azurerm_network_interface.infinite_nic.id
  network_security_group_id = var.network_security_group_id
} */


#creating VM



resource "azurerm_windows_virtual_machine" "infinite_windows_vm" {
  name                = var.computer_name
  resource_group_name = var.resource_group_name
  location            = var.location
   zone = var.zone
  size                = var.size

  patch_mode                   = var.patch_mode
  enable_automatic_updates     = var.enable_automatic_updates
  admin_username               = var.admin_username
  admin_password               = var.admin_password
  network_interface_ids        = [azurerm_network_interface.infinite_nic.id]
  #availability_set_id          = var.availability_set_id
  #proximity_placement_group_id = var.proximity_placement_group_id

  os_disk {
    storage_account_type = var.os_disk_storage_account_type
    name                 = var.os_disk_name
    caching              = var.os_disk_caching
    disk_size_gb         = var.os_disk_size_gb
  }


 /*  source_image_reference {
    publisher = var.source_image_reference_publisher
    offer     = var.source_image_reference_offer
    sku       = var.source_image_reference_sku
    version   = var.source_image_reference_version
  } */
  source_image_id = var.source_image_id
  tags = var.tags
  user_data = var.user_data

  depends_on = [
    azurerm_network_interface.infinite_nic
  ]
}

resource "azurerm_managed_disk" "infinite_disk" {

  for_each             = var.data_disks
  name                 = each.value.data_disk_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = each.value.data_disk_storage_account_type
  create_option        = each.value.data_disk_create_option
  disk_size_gb         = each.value.data_disk_size_gb
}

resource "azurerm_virtual_machine_data_disk_attachment" "infinite_disk_attachment" {

  for_each           = var.data_disks
  managed_disk_id    = azurerm_managed_disk.infinite_disk[each.key].id
  virtual_machine_id = azurerm_windows_virtual_machine.infinite_windows_vm.id
  lun                = each.value.data_disk_lun_number
  caching            = each.value.data_disk_caching

  depends_on = [
    azurerm_managed_disk.infinite_disk,
    azurerm_windows_virtual_machine.infinite_windows_vm
  ]
}


