variable "subnet_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "m7euhold"

}
variable "subnet_address_prefixes" {
  description = "List of all virtual network addresses"
  type        = list(string)
    default = []

}
variable "subnet_virtual_network_name" {
  description = "The virtual network name to deploy to."
  type        = string
    default = "muydhold"

}
variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "0nnthold"

}
