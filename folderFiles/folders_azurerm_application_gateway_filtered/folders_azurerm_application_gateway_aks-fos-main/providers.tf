

provider "azurerm" {
 features {}
}

# DO NOT DO THIS IN PRODUCTION ENVIRONMENT
provider "kubernetes" {
  host                   = module.aks.admin_host
  client_certificate     = base64decode(module.aks.admin_client_certificate)
  client_key             = base64decode(module.aks.admin_client_key)
  cluster_ca_certificate = base64decode(module.aks.admin_cluster_ca_certificate)
}

provider "random" {}
