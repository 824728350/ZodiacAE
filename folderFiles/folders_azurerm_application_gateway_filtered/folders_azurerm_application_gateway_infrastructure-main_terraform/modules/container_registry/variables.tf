variable "cr_name" {
  description = "The name of the Azure Container Registry."
    default = null

}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure Container Registry."
    default = null

}

variable "location" {
  description = "The location of the resource group in which to create the Azure Container Registry."
    default = "eastus"

}

variable "container_sku" {
  description = "The SKU name of the Azure Container Registry."
  default = "Standard"
}