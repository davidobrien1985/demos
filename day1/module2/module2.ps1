New-AzResourceGroup -Name az103m2 -Location australiasoutheast

New-AzVm `
-ResourceGroupName az103m2 `
-Name "myVM" `
-Location "Australia Southeast" `
-VirtualNetworkName "myVnet" `
-SubnetName "mySubnet" `
-SecurityGroupName "myNetworkSecurityGroup" `
-PublicIpAddressName "myPublicIpAddress" `
-OpenPorts 80,3389

Get-AzPublicIpAddress -ResourceGroupName az103m2 | Select-Object "IpAddress"

Remove-AzResourceGroup -Name az103m2