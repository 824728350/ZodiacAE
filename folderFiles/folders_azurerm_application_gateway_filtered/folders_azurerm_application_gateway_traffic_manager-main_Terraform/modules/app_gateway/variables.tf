variable "name" {
  description = "Name for the Application Gateway"
  type        = string
    default = "t08ghold"

}
variable "rg_name" {
  description = "Name for the Resource Group"
  type        = string
    default = "m1lhhold"

}

variable "location" {
  description = "Location for the Application Gateway"
  type        = string
    default = "eastus"

}

variable "vnet_subnet_id" {
  description = "ID of the VNet Subnet for the Application Gateway"
  type        = string
    default = "a534hold"

}

variable "public_ip_id" {
  description = "ID of the Public IP for the Application Gateway"
  type        = string
    default = "10.0.0.0/16"

}

variable "app_service_fqdn" {
  description = "FQDN of the App Service to be used in the Application Gateway configuration"
  type        = string
    default = "9f43hold"

}
