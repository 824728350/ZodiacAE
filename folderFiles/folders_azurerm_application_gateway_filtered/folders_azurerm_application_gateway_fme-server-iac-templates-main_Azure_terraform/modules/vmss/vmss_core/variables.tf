variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "humrhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "6dv6hold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "instance_count_core" {
  type = number
  description = "Number of Core VM instances"
    default = null

}

variable "be_snet_id" {
  type        = string
  description = "Backend virtual network subnet id"
    default = "d23xhold"

}

variable "lb_be_address_pool_id" {
  type        = string
  description = "Load balancer backend address pool id"
    default = "gxt3hold"

}

variable "agw_backend_address_pool_ids" {
  type        = set(string)
  description = "Application gateway backend address pool id"
    default = null

}

variable "vm_admin_user" {
  type        = string
  description = "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "fay6hold"

}

variable "vm_admin_pw" {
  type        = string
  description = "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "ngoyhold"

}

variable "db_admin_user" {
  type        = string
  description = "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "t9w7hold"

}

variable "db_admin_pw" {
  type        = string
  description = "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "iporhold"

}

variable "db_fqdn" {
  type        = string
  description = "Fully qualified domain name of the postgresql database server"
    default = "22tehold"

}

variable "fqdn" {
  type        = string
  description = "Fully qualified domain name of the A DNS record associated with the public IP."
    default = "w8wqhold"

}

variable "storage_name" {
  type        = string
  description = "FME Flow backend storage account name"
    default = "mp58hold"

}

variable "storage_key" {
  type        = string
  description = "FME Flow backend storage account key"
  sensitive   = true
    default = "egiehold"

}


