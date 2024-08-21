variable "rg_name" {
  description = "Name for the resource group"
  type        = string
    default = "4j6qhold"

}

variable "location" {
  description = "Location for the resource group"
  type        = string
    default = "eastus"

}

variable "vnet_name" {
  description = "Name for the virtual network"
  type        = string
    default = "03urhold"

}

variable "public_ip_name" {
  description = "Name for the public IP"
  type        = string
    default = "10.0.0.0/16"

}

variable "domain_name" {
  description = "Domaine Name for the public IP"
    default = "zchjhold"

  type        = string
}