# variable "my_env" {
#   description = "Environment name"
#   type        = string
# }

variable "region" {
  description = "Azure region where the infrastructure will be provisioned"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "my-resource-group"
}

variable "cosmosdb_account_name" {
  description = "Name of the Cosmos DB account"
  type        = string
  default     = "my-cosmosdb-account"
}

variable "database_name" {
  description = "Name of the SQL database"
  type        = string
  default     = "my-database"
}