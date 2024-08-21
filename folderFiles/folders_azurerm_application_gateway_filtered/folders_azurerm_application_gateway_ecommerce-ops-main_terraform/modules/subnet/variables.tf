variable "name" {
  description = "The name of the resource"
    default = null

}

variable "resource_group_name" {
  description = "Resource group of the IaC"
    default = null

}

variable "virtual_network_name" {
  description = "Virtual network or supernet of the subnet"
    default = null

}

variable "address_prefixes" {
  description = "Range of ip for the subnet"
    default = "10.0.0.0/16"

}

