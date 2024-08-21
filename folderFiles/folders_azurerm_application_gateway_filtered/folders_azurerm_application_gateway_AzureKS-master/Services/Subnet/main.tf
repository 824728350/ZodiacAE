
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

module "Subnet" {
  source = "../../Modules/Subnet"
  name = var.name
  rgname = var.rgname
  vnetname = var.vnetname
  address_prefixes = var.address_prefixes
}