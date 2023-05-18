resource "azurerm_cosmosdb_account" "cosmosdbb" {
  name                     = var.database_account_name
  location                 = var.region
  resource_group_name      = var.resource_group_name
  offer_type               = "Standard"
  capabilities {
    name                   = "EnableCassandra"
  }
  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = var.region
    failover_priority = 0
  }

  
}

resource "azurerm_cosmosdb_sql_database" "database" {
  name                     = var.database_name
  resource_group_name      = var.resource_group_name
  account_name             = azurerm_cosmosdb_account.cosmosdbb.name
}

output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.cosmosdbb.name
}

output "cosmosdb_database_name" {
  value = azurerm_cosmosdb_sql_database.database.name
}

variable "region" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "database_account_name" {
  description = "Cosmos DB account name"
  type        = string
}

variable "database_name" {
  description = "Cosmos DB database name"
  type        = string
}
