variable "agw_name" {
  description = "name of application gateway"
    default = null

}

variable "baa_pool_name" {
  description = "name of backend address pool"
    default = null

}


variable "ba_http_name" {
  description = "name of backend http"
    default = null

}

variable "fnt_end_ip_name" {
  description = "front end ip configuration name"
    default = "10.0.0.0/16"

}

variable "gw_ip_name" {
  description = "gateway ip configuration name"
    default = "10.0.0.0/16"

}

variable "listener_name" {
  description = "http listerner name"
    default = null

}

variable "routing_rule_name" {
  description = "routing rule name"
    default = null

}

variable "pip_name" {
  description = "public ip name"
    default = "10.0.0.0/16"

}

variable "vnet_name" {
  description = "vnet name"
    default = null

}

variable "subnet_name" {
  description = "snet name"
    default = null

}

variable "rg_name" {

  description = "resource group name"
    default = null

}

variable "location" {

  description = "instance location"
    default = "eastus"

}

