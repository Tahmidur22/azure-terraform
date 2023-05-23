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

module "db" {
  source                = "./modules/db"
  region                = var.region
  resource_group_name   = var.resource_group_name
  database_account_name = var.cosmosdb_account_name
  database_name         = var.database_name
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.region
  subnet_cidr         = var.subnet_cidr
}