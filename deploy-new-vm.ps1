$subscriptionId = "e8226998-b9e4-474d-b159-e7bdf5bad35f"
Select-AzureRmSubscription -SubscriptionId $subscriptionId

$resourceGroup = "batch001-infra"
$location = "North Europe"

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment `
    -Name batch001-infra-deployment `
    -ResourceGroupName $resourceGroup `
    -TemplateFile new-vm.json `
    -Verbose -Force