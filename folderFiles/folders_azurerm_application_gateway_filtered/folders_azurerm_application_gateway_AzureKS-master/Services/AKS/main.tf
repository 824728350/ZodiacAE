
# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}


module "AKS" {
  source = "../../Modules/AKS"
  aks_name = var.aks_name
  location = var.location
  rgname = var.rgname
  default_node_pool = var.default_node_pool
}