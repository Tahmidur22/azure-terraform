# output "storage_account_name" {
#   value = module.my_app.storage_account_name
# }

# output "container_name" {
#   value = module.my_app.container_name
# }

output "db_cosmosdb_account_name" {
  value = module.db.cosmosdb_account_name
}

output "db_cosmosdb_database_name" {
  value = module.db.cosmosdb_database_name
}