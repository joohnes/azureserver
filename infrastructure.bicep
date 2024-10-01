param appName string

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'test07-appsrv'
  location: resourceGroup().location
  properties: {}
  sku: {
    name: 'S1'
    capacity: 1
  }
}

resource app 'Microsoft.Web/sites@2021-02-01' = {
  name: appName
  location: resourceGroup().location
  properties: {
    serverFarmId: appServicePlan.id
  }
  kind: 'app'
}

output appName string = app.name
output appServicePlanName string = appServicePlan.name
