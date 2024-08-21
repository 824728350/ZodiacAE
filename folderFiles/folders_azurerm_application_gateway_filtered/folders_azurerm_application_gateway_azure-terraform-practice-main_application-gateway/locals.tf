
provider "azurerm" {
 features {}
}

provider "google" {
 project   = "ZODIAC"
 region   = "us-central1"
}

provider "aws" {
 region           = "us-east-1"
 skip_credentials_validation = true
 skip_requesting_account_id = true
 skip_metadata_api_check   = true
 s3_force_path_style     = true
 access_key         = "mock_access_key"
 secret_key         = "mock_secret_key"
}
locals {
  resource_group_name="app-grp"
  location="North Europe"
  virtual_network = {
    name="app-network"
    address_space="10.0.0.0/16"
}

function=["videos","images"]
}