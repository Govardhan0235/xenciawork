resource_groups = {

  rg-devqa-ts-db = {
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
  }

}
proximity_placement_groups = {

}
/*availability_sets = {

  avs-brtp1opsndbx = {
    availability_set_name          = "avs-brtp1opsndbx"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-dnalbploradb = {
    availability_set_name          = "avs-dnalbploradb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-dnalbtspgedb = {
    availability_set_name          = "avs-dnalbtspgedb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-dnalbtspgsdb = {
    availability_set_name          = "avs-dnalbtspgsdb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-drtp1tsrtcdb = {
    availability_set_name          = "avs-drtp1tsrtcdb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-qnalbploradb = {
    availability_set_name          = "avs-qnalbploradb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

  avs-qnalbtspgedb = {
    availability_set_name          = "avs-qnalbtspgedb"
    resource_group_name            = "rg-devqa-ts-db"
    location                       = "eastus2"
    proximity_placement_group_name = null
  }

}*/


infinite_linux_vms = {
    

    brtp1opsndbx03= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-brtp1opsndbx03"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.15"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
       # availability_set_name          =  "avs-brtp1opsndbx"
        proximity_placement_group_name =  ""
        computer_name                  = "brtp1opsndbx03"
        size                           =  "Standard_B1MS"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "zuH*41e9ovO&"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "brtp1opsndbx03_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
      
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbploradb03= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbploradb03"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.4"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbploradb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbploradb03"
        size                           =  "Standard_B4MS"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "3nU6L$8D5ba5"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "dnalbploradb03_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
          
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgedb01= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgedb01"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.6"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgedb01"
        size                           =  "Standard_F8S_V2"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "14wCj*K9sRFl"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "StandardSSD_LRS"
    
        os_disk_name                 = "dnalbtspgedb01_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
         
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgedb02= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgedb02"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.7"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgedb02"
        size                           =  "Standard_B4ms"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "G9o61itw#sp%"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "dnalbtspgedb02_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
          
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgedb03= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgedb03"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.8"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgedb03"
        size                           =  "Standard_B4ms"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "v1B&4P0teM43"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "dnalbtspgedb03_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
           
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgedb04= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgedb04"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.9"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgedb04"
        size                           =  "Standard_B2ms"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "@Qkc91K3Nq@m"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "dnalbtspgedb04_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgsdb01= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgsdb01"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.13"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgsdb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgsdb01"
        size                           =  "Standard_B2S"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "fT*S2v67AnX1"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "dnalbtspgsdb01_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
            
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    dnalbtspgsdb02= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-dnalbtspgsdb02"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.14"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-dnalbtspgsdb"
        proximity_placement_group_name =  ""
        computer_name                  = "dnalbtspgsdb02"
        size                           =  "Standard_F8S_V2"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "GpA675YGF4b*"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "StandardSSD_LRS"
    
        os_disk_name                 = "dnalbtspgsdb02_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    drtp1tsrtcdb01= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-drtp1tsrtcdb01"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.16"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-drtp1tsrtcdb"
        proximity_placement_group_name =  ""
        computer_name                  = "drtp1tsrtcdb01"
        size                           =  "Standard_B4MS"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "*ju51$5aX1AA"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "drtp1tsrtcdb01_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
           
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    drtp1tsrtcdb02= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-drtp1tsrtcdb02"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.17"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-drtp1tsrtcdb"
        proximity_placement_group_name =  ""
        computer_name                  = "drtp1tsrtcdb02"
        size                           =  "Standard_E2S_V5"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "wWy#0Ve^X963"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "drtp1tsrtcdb02_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
            
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    qnalbploradb01= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-qnalbploradb01"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.5"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-qnalbploradb"
        proximity_placement_group_name =  ""
        computer_name                  = "qnalbploradb01"
        size                           =  "Standard_B8MS"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "$N#P2he6B95m"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "StandardSSD_LRS"
    
        os_disk_name                 = "qnalbploradb01_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
           
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    qnalbtspgedb01= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-qnalbtspgedb01"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.10"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-qnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "qnalbtspgedb01"
        size                           =  "Standard_B2ms"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "92jH0F9rC&Fh"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "qnalbtspgedb01_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    qnalbtspgedb02= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-qnalbtspgedb02"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.11"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        #availability_set_name          =  "avs-qnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "qnalbtspgedb02"
        size                           =  "Standard_B2ms"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "&4uYA0GSkuj7"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "qnalbtspgedb02_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    

    qnalbtspgedb03= {

        resource_group_name            = "rg-devqa-ts-db"
        location                       = "eastus2"
        zone                          =  "3"
        nic_name                       = "nic-qnalbtspgedb03"
        network_security_group_id     = ""
        enable_accelerated_networking  = "false"
        public_ip_name                 =  ""
        public_ip_address_allocation   =  ""
        private_ip_address_allocation  =  "Static"
        private_ip_address             =  "172.18.3.12"
        vnet_name                      =  "vnet-devqa-us"
        subnet_names                   =  "snet-devqa-tsdb-us"
        subnet_id                      =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Network/virtualNetworks/vnet-devqa-us/subnets/snet-devqa-tsdb-us"
        availability_set_name          =  "avs-qnalbtspgedb"
        proximity_placement_group_name =  ""
        computer_name                  = "qnalbtspgedb03"
        size                           =  "Standard_F2s_v2"
        tags				= {
                                
                                Environment = "devqa"
                               }
        user_data                       = null
        patch_mode                      = "ImageDefault"
        admin_username                  = "sysadmin"
        admin_password                  = "fP17Q2$4eflO"
        disable_password_authentication = "false"
        admin_ssh_key_username          = ""
        public_key                      = ""

        os_disk_storage_account_type =  "Standard_LRS"
    
        os_disk_name                 = "qnalbtspgedb03_OSDisk"
        os_disk_caching              = "ReadWrite"
        os_disk_size_gb              = 64

        data_disks = {
        
            
        
        }

        source_image_reference_publisher = ""
        source_image_reference_offer     = ""
        source_image_reference_sku       = ""
        source_image_reference_version   =  ""
        source_image_id                  =  "/subscriptions/2fb84a78-d4b0-453d-b228-96733f9ef9df/resourceGroups/rg-devqa-us/providers/Microsoft.Compute/galleries/rheltaslabs/images/taslabsRHEL7.9-63G/versions/1.0.0"
    }
    
}
infinite_windows_vms = {
  
}
