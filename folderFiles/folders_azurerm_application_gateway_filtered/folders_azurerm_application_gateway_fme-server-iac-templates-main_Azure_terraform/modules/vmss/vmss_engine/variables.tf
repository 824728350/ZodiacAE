variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "c6jyhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "v7emhold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "vmss_name" {
  type = string
  description = "Name of the virtual machine scale set"
    default = "w57uhold"

}

variable "engine_type" {
  type = string
  description = "The type of FME Flow Engine. Possible values are STANDARD and DYNAMIC"
    default = "ibq2hold"

}

variable "instance_count_engine" {
  type = number
  description = "Number of engine VM instances"
    default = null

}

variable "be_snet_id" {
  type        = string
  description = "Backend virtual network subnet id"
    default = "5y73hold"

}

variable "db_fqdn" {
  type        = string
  description = "Fully qualified domain name of the postgresql database server"
    default = "n5aihold"

}

variable "vm_admin_user" {
  type        = string
  description = "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "euvyhold"

}

variable "vm_admin_pw" {
  type        = string
  description = "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE."
  sensitive   = true
    default = "hadlhold"

}

variable "lb_private_ip_address" {
  type        = string
  description = "Private IP address of the load balancer"
    default = "10.0.0.0/16"

}

variable "storage_name" {
  type        = string
  description = "FME Flow backend storage account name"
    default = "98echold"

}

variable "storage_key" {
  type        = string
  description = "FME Flow backend storage account key"
  sensitive   = true
    default = "5zlihold"

}

