param sqlServer1Name string = 'azdevops-eus-int-sqlserver1' 
param sqlDBname string = 'azdevops-eus-int-sqlDB1'

resource sqlServer1 'Microsoft.Sql/servers@2021-05-01-preview' ={
  name: sqlServer1Name
  location: resourceGroup().location
}

resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2021-05-01-preview' = {
  parent: sqlServer1
  name: sqlDBname
  location: resourceGroup().location
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
  }
}

