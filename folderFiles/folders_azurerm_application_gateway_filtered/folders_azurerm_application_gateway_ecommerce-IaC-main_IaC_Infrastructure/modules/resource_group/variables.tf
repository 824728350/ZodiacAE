# modules/resource_group/variables.tf
variable "name" {
  description = "The name of the resource group"
  type        = string
    default = "qe9yhold"

}

variable "location" {
  description = "The location of the resource group"
    default = "eastus"

  type        = string
}