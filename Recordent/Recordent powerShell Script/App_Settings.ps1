. "/home/vsts/work/1/s/Recordent_DR/Powershell/AppSettings_Variables.ps1"

$webApp = Get-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName

$appSettings = $webApp.SiteConfig.AppSettings

$newAppSettings = @{”newSetting05"=”newValue05"}
ForEach ($item in $appSettings) {
$newAppSettings[$item.Name] = $item.Value
}




Set-AzWebApp -AppSettings $newAppSettings -Name $webAppName -ResourceGroupName $resourceGroupName

