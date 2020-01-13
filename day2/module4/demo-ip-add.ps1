Get-AzNetworkInterface -Name myNic1 -ResourceGroupName myResourceGroup

# Check output / IP addresses

# Retrieve the NIC information
$nic= Get-AzNetworkInterface -Name myNic1 -ResourceGroupName myResourceGroup

# Change to the Dynamic allocation method
$nic.IpConfigurations[0].PrivateIpAllocationMethod = "Dynamic"

# Implement your changes
Set-AzNetworkInterface -NetworkInterface $nic