
# Configure the Microsoft Azure Provider

provider "azurerm" {
 features {}
}

resource "azurerm_resource_group" "application-rg" {
  location = var.resource_group_location
  name     = var.application_rg_name
}

resource "azurerm_resource_group" "shared-rg" {
  location = var.resource_group_location
  name     = var.shared_rg_name
}
