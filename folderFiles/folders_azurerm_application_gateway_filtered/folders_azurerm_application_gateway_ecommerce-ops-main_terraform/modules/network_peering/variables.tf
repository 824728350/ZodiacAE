variable "name" {
  description = "Name of the Azure Key Vault"
    default = null

}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
    default = null

}

variable "virtual_network_name" {
  description = "Location for the Azure Key Vault"
    default = null

}

variable "remote_virtual_network_id" {
  description = "Tenant ID"
    default = null

}

variable "allow_virtual_network_access" {
  description = "Soft delete retention period in days"
  default = true
}
