# Variables del bastion

variable "name" {
  description = "The name of the Bastion."
    default = null

}

variable "location" {
  description = "The location of the Bastion."
    default = "eastus"

}

variable "resource_group_name" {
  description = "The location of the Bastion."
    default = null

}

# Variables del ip_configuration

variable "ip_configuration_name" {
  description = "The name of the ip_configuration of the Bastion."
    default = "10.0.0.0/16"

}

variable "subnet_id" {
  description = "The name of the ip_configuration of the Bastion."
    default = null

}

variable "public_ip_address_id" {
  description = "The name of the ip_configuration of the Bastion."
    default = "10.0.0.0/16"

}
