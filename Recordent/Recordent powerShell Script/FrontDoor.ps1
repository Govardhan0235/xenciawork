. "/home/vsts/work/1/s/Recordent_DR/Powershell/FrontDoor_Variables.ps1"



$backEndObject1 = New-AzFrontDoorBackendObject -Address $backobject1





$HealthProbeSettingObject1 = New-AzFrontDoorHealthProbeSettingObject -Name $probeName -Protocol Https
$LoadBalancingSettingObject1 = New-AzFrontDoorLoadBalancingSettingObject -Name $LbName
$FrontendEndpointObject1 = New-AzFrontDoorFrontendEndpointObject -Name $FrontendEndpointName -HostName $FrontendEndpointHostname 

$BackendPoolObject1 = New-AzFrontDoorBackendPoolObject -Name $bpoolname -FrontDoorName $frontDoorName -ResourceGroupName $rgname -Backend $backendObject1 -HealthProbeSettingsName $probeName -LoadBalancingSettingsName $LbName





$RoutingRuleObject1 = New-AzFrontDoorRoutingRuleObject -Name $routingRuleName -FrontDoorName $frontDoorName -ResourceGroupName $rgname -FrontendEndpointName $FrontendEndpointName -BackendPoolName $bpoolname -PatternToMatch "/new1"


$frontDoor = Get-AzFrontDoor `
            -ResourceGroupName $rgname -Name $frontdoorname;




$frontDoor.HealthProbeSettings.Add($HealthProbeSettingObject1);
$frontDoor.LoadBalancingSettings.Add($LoadBalancingSettingObject1);
$frontDoor.BackendPools.Add($BackendPoolObject1);
$frontDoor.RoutingRules.Add($RoutingRuleObject1);




Set-AzFrontDoor -InputObject $frontDoor  -BackendPool $frontDoor.BackendPools -RoutingRule $frontDoor.RoutingRules  -LoadBalancingSetting $frontDoor.LoadBalancingSettings  -HealthProbeSetting $frontDoor.HealthProbeSettings -Debug
