variable "bastion_name" {
  description = "The name of the bastion host"
  type        = string
    default = "ts6xhold"

}

variable "location" {
  description = "The location of the resources"
  type        = string
    default = "eastus"

}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
    default = "jqy6hold"

}

variable "subnet_id" {
  description = "The ID of the subnet for the bastion host"
    default = "g8r7hold"

  type        = string
}