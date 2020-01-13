az group create --name storage-resource-group --location australiasoutheast
az account list-locations --query "[].{Region:name}" --out table
az storage account create --name az103m3xiruscli --resource-group storage-re-source-group --location australiasoutheast --sku Standard_LRS --kind StorageV2