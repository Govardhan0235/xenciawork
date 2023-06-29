. "/home/vsts/work/1/s/Recordent_DR/Powershell/Variables.ps1"


 # This returns an array of keys for your storage account. Be sure to select the appropriate key. Here we select the first key as a default.
 $storageAccountKey = Get-AzStorageAccountKey -ResourceGroupName $storageAccountRg -Name $storageAccountName
 
 $context = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey[0].Value

 $sasUrl = New-AzStorageContainerSASToken -Name $blobContainerName -Permission rwdl -Context $context -ExpiryTime (Get-Date).AddMonths(1) -FullUri

 #BACKEND Details
 Restore-AzWebAppBackup -ResourceGroupName $D_backendresourceGroupName -Name $D_backendappservicename  -StorageAccountUrl $sasUrl -BlobName $blobName  -Overwrite  -debug 


 #Buyerapp Details
 Restore-AzWebAppBackup -ResourceGroupName $D_buyerappresourceGroupName -Name $D_buyerappappservicename  -StorageAccountUrl $sasUrl -BlobName $blobName  -Overwrite -debug