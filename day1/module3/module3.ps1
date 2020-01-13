$location = "australiasoutheast"
$resourceGroup = "az103m3"
New-AzResourceGroup -Name $resourceGroup -Location $location
Get-AzStorageAccountNameAvailability -Name az103m3xirus
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name az103m3xirus -Location $location -SkuName Standard_LRS -Kind StorageV2

Set-AzStorageAccount -Name az103m3xirus -ResourceGroupName $resourceGroup -EnableHttpsTrafficOnly $true

## File Share

$storageAccountKeys = Get-AzStorageAccountKey -ResourceGroupName $resourceGroup -Name az103m3xirus
$storageContext = New-AzStorageContext -StorageAccountName az103m3xirus -StorageAccountKey $storageAccountKeys[0].value
$share = New-AzStorageShare "YourFileShareName" -Context $storageContext