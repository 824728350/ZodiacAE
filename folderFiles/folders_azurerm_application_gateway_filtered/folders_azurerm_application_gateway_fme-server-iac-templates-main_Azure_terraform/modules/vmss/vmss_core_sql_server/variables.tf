variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "wfq0hold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "dd5phold"

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
    default = "ezm9hold"

}

variable "lb_be_address_pool_id" {
  type        = string
  description = "Load balancer backend address pool id"
    default = "sldqhold"

}

variable "agw_backend_address_pool_ids" {
  type        = set(string)
  description = "Application gateway backend address pool id"
    default = null

}

variable "vm_admin_user" {
  type        = string
  description = "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "66blhold"

}

variable "vm_admin_pw" {
  type        = string
  description = "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "ch5vhold"

}

variable "db_admin_user" {
  type        = string
  description = "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "hjp1hold"

}

variable "db_admin_pw" {
  type        = string
  description = "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "b4nnhold"

}

variable "db_user" {
  type        = string
  description = "The login for the fmeflow database (Only used for Azure SQL Server). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "06hkhold"

}

variable "db_pw" {
  type        = string
  description = "The password for the fmeflow database (Only used for Azure SQL Server. Please review the [SQL Server Password Policy](https://docs.microsoft.com/en-us/sql/relational-databases/security/password-policy?view=azuresqldb-current)). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DOT NOT HARDCODE."
  sensitive   = true
    default = "micxhold"

}

variable "db_fqdn" {
  type        = string
  description = "Fully qualified domain name of the postgresql database server"
    default = "qxjjhold"

}

variable "fqdn" {
  type        = string
  description = "Fully qualified domain name of the A DNS record associated with the public IP."
    default = "z3i4hold"

}

variable "storage_name" {
  type        = string
  description = "FME Flow backend storage account name"
    default = "fvk8hold"

}

variable "storage_key" {
  type        = string
  description = "FME Flow backend storage account key"
  sensitive   = true
    default = "ltczhold"

}


