variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "5zfrhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "f280hold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "be_snet_id" {
  type        = string
  description = "Backend virtual network subnet id"
    default = "ntabhold"

}

variable "build_agent_public_ip" {
  type = string
    default = "10.0.0.0/16"

  description = "Public IP of the build agent or machine that is running terraform deployment to be whitelisted in the storage account. This is a workaround for the following known issue: https://github.com/hashicorp/terraform-provider-azurerm/issues/2977"
}