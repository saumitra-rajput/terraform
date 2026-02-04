# this is azure storage blob (existing RG)

# Reference existing Resource Group
data "azurerm_resource_group" "existing_rg" {
  name = "CSSClod58540444"
}

# Storage Account
resource "azurerm_storage_account" "mystorage" {
  name                     = "jarvistfblob01"
  resource_group_name      = data.azurerm_resource_group.existing_rg.name
  location                 = data.azurerm_resource_group.existing_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Storage Container
resource "azurerm_storage_container" "mycontainer" {
  name                  = "jarvistf"
  storage_account_name  = azurerm_storage_account.mystorage.name
  container_access_type = "private"
}

# Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "4a5a6077-91a6-4b7a-ae62-a2ed402b1a70"
    # IMPORTANT: required for lab / restricted environments
  resource_provider_registrations = "none"

}
