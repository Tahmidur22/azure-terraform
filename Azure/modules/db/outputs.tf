output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.cosmosdbb.name
}

output "cosmosdb_database_name" {
  value = azurerm_cosmosdb_sql_database.database.name
}