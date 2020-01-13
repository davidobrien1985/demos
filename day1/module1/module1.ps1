Login-AzAccount

Get-AzSubscription

# rg creation
New-AzResourceGroup -name az103m1 -location australiasoutheast
Get-AzResourceGroup
Remove-AzResourceGroup -Name az103m1

# locks
New-AzResourceGroup -name az103m1 -location australiasoutheast
New-AzResourceLock -LockName az103lock -LockLevel CanNotDelete -ResourceGroupName az103m1
Get-AzResourceLock
Remove-AzResourceLock -LockName az103lock
Get-AzResourceLock

# template deployment
$templateUri = 'https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-windows/azuredeploy.json'
New-AzResourceGroupDeployment -Name az103m1 -ResourceGroupName az103m1 -TemplateUri $templateUri

Get-AzVM

Get-AzVM -Name <name> -ResourceGroupName az103m1

## Update VM
$vm = Get-AzVM -Name MyVM -ResourceGroupName az103m1
$vm.HardwareProfile.vmSize = "Standard_A3"
Update-AzVM -ResourceGroupName az103m1 -VM $vm