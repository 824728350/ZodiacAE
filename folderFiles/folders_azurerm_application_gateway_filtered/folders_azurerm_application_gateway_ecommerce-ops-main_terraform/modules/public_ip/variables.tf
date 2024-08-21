variable "name" {
  description = "The name of the resource"
    default = null

}

variable "location" {
  description = "The location of the resource, is the same as the resource group"
  default =  "East US"
}

variable "resource_group_name" {
  description = "Resource group of the IaC"
    default = null

}

variable "allocation_method" {
  description = "Azure method to assign an ip"
    default = "eastus"

}

variable "sku" {
  description = "specific version or offering of the resource"
    default = null

}

