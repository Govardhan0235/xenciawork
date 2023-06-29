. "/home/vsts/work/1/s/Recordent_DR/Powershell/Variables.ps1"



# Backend App service Restore
$Backend_snapshot = (Get-AzWebAppSnapshot -ResourceGroupName $S_backupedresourceGroupName -Name $S_backupedappserviceName)[0] 

Restore-AzWebAppSnapshot -ResourceGroupName $D_backendresourceGroupName -Name $D_backendappservicename  -InputObject $Backend_snapshot -RecoverConfiguration -Debug -Force -confirm:$false



# Buyerapp app service Restore
$Buyerapp_snapshot = (Get-AzWebAppSnapshot -ResourceGroupName $S_buyerappresourceGroupName -Name $S_buyerappappserviceName)[0] 

Restore-AzWebAppSnapshot -ResourceGroupName $D_buyerappresourceGroupName  -Name $D_buyerappappservicename  -InputObject $Buyerapp_snapshot -RecoverConfiguration -Debug -Force -confirm:$false