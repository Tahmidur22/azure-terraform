terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = var.resource_group_name
  location = var.region
}

# module "my_app" {
#   source           = "./modules/my_app"
#   my_env           = var.my_env
#   azure_region     = var.azure_region
#   resource_group   = azurerm_resource_group.my_resource_group.name
# }

module "db" {
  source                = "./modules/db"
  region                = var.region
  resource_group_name   = var.resource_group_name
  database_account_name = "my-cosmos-db-accounts"
  database_name         = "my-cosmos-db"
}