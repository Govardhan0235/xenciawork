$bpoolname= "backendpooldown1"
$backobject1= "pizza-lunchesapp.azurewebsites.net"
$frontdoorname= "testingfrotend"
$rgname = "FrontDoorQS_rg"
$routingRuleName = "backendroutingrule"
$FrontendEndpointHostname = "testingfrotend.azurefd.net"
$FrontendEndpointName = "testingfrotend"
$LbName = $bpoolname + "-lb02"
$probeName = $bpoolname + "-probe02"

$backobject2= "gggrbackupweb.azurewebsites.net"