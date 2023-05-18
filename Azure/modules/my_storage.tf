# resource "azurerm_storage_account" "my_storage_account" {
#   name                     = "mystorageaccount"
#   resource_group_name      = azurerm_resource_group.my_resource_group.name
#   location                 = "eastus"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# resource "azurerm_storage_container" "my_container" {
#   name                  = "mycontainer"
#   storage_account_name  = azurerm_storage_account.my_storage_account.name
#   container_access_type = "private"
# }