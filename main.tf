# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "secure-storage-rg"
  location = "westus2"
}

resource "azurerm_storage_account" "storage" {
  name                     = "cyberguysecurestorage25" 
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
# Enable secure transfer
  min_tls_version          = "TLS1_2"
  tags = {
    environment = "cyberguy-storageacct-demo"
    owner       = "thatcyberguy"
  }
}