variable "virtual_network_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "tj3uhold"

}
variable "virtual_network_address_space" {
  description = "List of all virtual network addresses"
  type        = list(string)
    default = []

}
variable "location" {
  description = "The location to deploy to."
    default = "eastus"

}
variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "8urvhold"

}
variable "common_tags" {
  description = "The tags to be added to all resources."
    default = null

}
