variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "w6lvhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "oliuhold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "db_admin_user" {
  type        = string
  description = "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "0fx2hold"

}

variable "db_admin_pw" {
  type        = string
  description = "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "1uvhhold"

}

variable "be_snet_id" {
  type        = string
    default = "jjz9hold"

  description = "Backend virtual network subnet id"
}