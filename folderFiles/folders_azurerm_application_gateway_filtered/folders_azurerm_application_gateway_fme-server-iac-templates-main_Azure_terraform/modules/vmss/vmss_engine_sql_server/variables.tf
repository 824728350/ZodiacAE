variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "hnb5hold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "faa7hold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "instance_count_engine" {
  type = number
  description = "Number of engine VM instances"
    default = null

}

variable "be_snet_id" {
  type        = string
  description = "Backend virtual network subnet id"
    default = "vqauhold"

}

variable "db_fqdn" {
  type        = string
  description = "Fully qualified domain name of the postgresql database server"
    default = "ofxjhold"

}

variable "db_user" {
  type        = string
  description = "The login for the fmeflow database (Only used for Azure SQL Server). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "k1zghold"

}

variable "db_pw" {
  type        = string
  description = "The password for the fmeflow database (Only used for Azure SQL Server. Please review the [SQL Server Password Policy](https://docs.microsoft.com/en-us/sql/relational-databases/security/password-policy?view=azuresqldb-current)). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "662mhold"

}

variable "vm_admin_user" {
  type        = string
  description = "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "kuq2hold"

}

variable "vm_admin_pw" {
  type        = string
  description = "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "45xdhold"

}

variable "lb_private_ip_address" {
  type        = string
  description = "Private IP address of the load balancer"
    default = "10.0.0.0/16"

}

variable "storage_name" {
  type        = string
  description = "FME Flow backend storage account name"
    default = "v1nohold"

}

variable "storage_key" {
  type        = string
  description = "FME Flow backend storage account key"
  sensitive   = true
    default = "z4idhold"

}

