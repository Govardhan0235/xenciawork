variable "resource_groups" {
  description = "Name of the VPC network"
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}
/*
variable "availability_sets" {
  description = "Availability set names"
  type = map(object({
    availability_set_name          = string
    resource_group_name            = string
    location                       = string
    #proximity_placement_group_name = string
  }))
}*/

/*variable "proximity_placement_groups" {
  description = "Proximity Placement Group Names"
  type = map(object({
    proximity_placement_group_name = string
    resource_group_name            = string
    location                       = string
  }))
}*/




/* variable "vnets" {
  description = "Specifications for multiple Virtual networks and subnets"
  type = map(object({
    vnet_name           = string
    resource_group_name = string
    address_space       = list(string)
    location            = string

    subnets = map(object({
      subnet_name   = string
      subnet_prefix = list(string)
    }))
  }))
} */

variable "infinite_linux_vms" {
  description = "Specifications for multiple linux VMs creation"



  type = map(object({
    location = string
    zone     = string
    nic_name = string
    #network_security_group_id     = string
    enable_accelerated_networking  = bool
    resource_group_name            = string
    private_ip_address_allocation  = string
    #availability_set_name          = string
   # proximity_placement_group_name = string
    private_ip_address             = string
    subnet_id                      = string
    computer_name                  = string
    size                           = string

    patch_mode                      = string
    admin_username                  = string
    admin_password = string
    disable_password_authentication = bool
    /* admin_ssh_key_username          = string
    public_key                      = string */

    os_disk_storage_account_type = string
    os_disk_name                 = string
    os_disk_caching              = string
    os_disk_size_gb              = number

    /* source_image_reference_publisher = string
    source_image_reference_offer     = string
    source_image_reference_sku       = string
    source_image_reference_version   = string

    gallery_image_name           = string
    azure_compute_gallery_name   = string */

    
    source_image_id = string

    tags                         = map(string)
    user_data                    = string
    public_ip_name               = string
    public_ip_address_allocation = string

    data_disks = map(object({
      data_disk_name                 = string
      data_disk_storage_account_type = string
      data_disk_size_gb              = number
      data_disk_lun_number           = string
      data_disk_caching              = string
      data_disk_create_option        = string
    }))
  }))

}


variable "infinite_windows_vms" {
  description = "Specifications for multiple windows VMs creation"


  type = map(object({
    location = string
    zone     = string
    nic_name = string
    #network_security_group_id     = string
    enable_accelerated_networking  = bool
    resource_group_name            = string
    private_ip_address_allocation  = string
    #availability_set_name          = string
    #proximity_placement_group_name = string
    private_ip_address             = string
    subnet_id                      = string
    computer_name                  = string
    size                           = string

    patch_mode                   = string
    enable_automatic_updates     = bool
    admin_username               = string
    admin_password               = string
    os_disk_storage_account_type = string
    os_disk_name                 = string
    os_disk_caching              = string
    os_disk_size_gb              = number

    /* source_image_reference_publisher = string
    source_image_reference_offer     = string
    source_image_reference_sku       = string
    source_image_reference_version   = string */
    source_image_id = string

    /* gallery_image_name           = string
    azure_compute_gallery_name   = string */

    tags                         = map(string)
    user_data                    = string
    public_ip_name               = string
    public_ip_address_allocation = string

    data_disks = map(object({
      data_disk_name                 = string
      data_disk_storage_account_type = string
      data_disk_size_gb              = number
      data_disk_lun_number           = string
      data_disk_caching              = string
      data_disk_create_option        = string
    }))
  }))

}








/* 

variable "location" {
  description = "Region where resources are located"
  type        = string
}

variable "vnet_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "address_space" {
  description = "Address space of the Virtual Network created"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "Prefix of the Subnetwork created"
  type        = list(string)
}

variable "subnet_names" {
  description = "Name of the Subnetwork created"
  type        = string
} */


/*
variable "public_ip_name" {
  description = "Public IP Name allocated to VM"
  type        = string
}

variable "public_ip_address_allocation" {
  description = "Type of Public IP allocation to VM"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Type of Private IP allocation to VM"
  type        = string
}

variable "private_ip_address" {
  description = "Private IP allocated to VM"
  type        = string
}

variable "vm_name" {
  description = "Name of VM"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM to be created"
  type        = string
}

variable "admin_username" {
  description = "Admin username for VM login"
  type        = string
}

variable "ssh_public_key_file_path" {
  description = "Provide the local file path where SSH public key is located on the machine"
  type        = string
}

variable "disable_password_authentication" {
  description = "Enable or disable password login to VM"
  type        = string
}

variable "admin_password" {
  description = "Password for Admin account"
  type        = string
}

variable "ssh_username" {
  description = "Username for SSH authentication"
  type        = string
}

variable "public_key" {
  description = "Public key file path on local machine"
  type        = string
}

variable "caching_type" {
  description = "Type of Caching which should be used for the Internal OS Disk"
  type        = string
}

variable "os_disk_storage_account_type" {
  description = "Storage type for the OS disk"
  type        = string
}

variable "publisher" {
  description = "Publisher of this VM image in Azure marketplace"
  type        = string
}

variable "offer" {
  description = "Offer of the VM image"
  type        = string
}

variable "sku" {
  description = "SKU version of the OS"
  type        = any
}

variable "os_version" {
  description = "OS Version of the VM image"
  type        = any
}

variable "data_disk_name" {
  description = "Name of data disk to be attached to VM"
  type        = string
}

variable "data_disk_storage_account_type" {
  description = "Storage type for the data disk"
  type        = string
}

variable "data_disk_create_option" {
  #description check
  description = "Create empty disk or attach existing disk"
  type        = string
}

variable "data_disk_size_gb" {
  description = "Data disk size in GB"
  type        = number
}

variable "data_disk_lun_number" {
  description = "LUN number to be assigned to data disk"
  type        = string
}

variable "data_disk_caching" {
  description = "Type of data disk caching"
  type        = string
}*/
