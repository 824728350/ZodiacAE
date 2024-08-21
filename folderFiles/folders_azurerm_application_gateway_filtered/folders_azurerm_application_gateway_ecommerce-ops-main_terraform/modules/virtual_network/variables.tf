variable "name" {
  description = "The name of the resource"
    default = null

}

variable "address_space" {
  description = "Range of ip for the virtual network"
    default = "10.0.0.0/16"

}

variable "location" {
  description = "The location of the resource, is the same as the resource group"
  default =  "East US"
}

variable "resource_group_name" {
    default = null

  description = "Resource group of the IaC"
}