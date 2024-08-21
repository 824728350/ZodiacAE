variable "virtual_network_name" {
  description = "The name of the Azure Virtual Network."
  type        = string
    default = "mn7shold"

}

variable "create_virtual_network" {
  description = "If true, create the Virtual Network, otherwise just use a pre-existing network."
  default     = true
  type        = bool
}

variable "location" {
  description = "Location of the resources that will be deployed."
  type        = string
    default = "eastus"

}

variable "tags" {
  description = "Map of tags to assign to all of the created resources."
  type        = map(any)
  default     = {}
}

variable "resource_group_name" {
  description = "Name of the Resource Group to use."
  type        = string
    default = "rwvrhold"

}

variable "address_space" {
  description = "The address space used by the virtual network. You can supply more than one address space."
  type        = list(string)
    default = []

}

