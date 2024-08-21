
# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

module "KeyVault" {
  source = "../../Modules/KeyVault"
  name = var.name
  rgname = var.rgname
  location = var.location
  sku_name = var.sku_name
  tenant_id = var.tenant_id
}