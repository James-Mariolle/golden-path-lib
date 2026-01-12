@description('Location for all resources')
param location string = resourceGroup().location

@description('Storage account name (3-24 lowercase letters and numbers)')
param storageAccountName string

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}

output storageAccountId string = storage.id
output storageAccountName string = storage.name
