

provider "azurerm" {
 features {}
}

#Creates Resource Group in specified Location
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

provider "random" {
  
}