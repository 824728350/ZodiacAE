
# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

module "NetworkInterface" {
  source = "../../Modules/NetworkInterface"
  name = var.name
  location = var.location
  rgname = var.rgname
  ip_configuration = var.ip_configuration
}