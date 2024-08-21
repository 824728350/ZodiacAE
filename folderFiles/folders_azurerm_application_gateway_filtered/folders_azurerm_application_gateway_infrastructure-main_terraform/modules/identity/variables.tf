variable "name" {
  description = "The name of the user-assigned identity."
  type        = string
    default = "phv9hold"

}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
    default = "i2y7hold"

}

variable "location" {
  description = "The location/region where the identity should be created."
    default = "eastus"

  type        = string
}