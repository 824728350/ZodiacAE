# modules/subnets/variables.tf
variable "vnet_name_cluster" {
  description = "The name of the virtual network"
  type        = string
    default = "1qmmhold"

}

variable "vnet_name_api_gtw" {
  description = "The name of the virtual network"
  type        = string
    default = "ft00hold"

}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
    default = "9oa5hold"

}

variable "location" {
  description = "The location of the resources"
  type        = string
    default = "eastus"

}

variable "vnet_address_space_api_gtw" {
  description = "The address space of the virtual network"
  type        = list(string)
    default = []

}

variable "vnet_address_space_cluster" {
  description = "The address space of the virtual network"
  type        = list(string)
    default = []

}

variable "api_gtw_subnet_name" {
  description = "The name of the API gateway subnet"
  type        = string
    default = "tdlyhold"

}

variable "api_gateway_subnet_prefix" {
  description = "The address prefix of the API gateway subnet"
  type        = string
    default = "zodiac"

}

variable "cluster_subnet_name" {
  description = "The name of the Kubernetes cluster subnet"
  type        = string
    default = "zne8hold"

}

variable "cluster_subnet_prefix" {
  description = "The address prefix of the Kubernetes cluster subnet"
  type        = string
    default = "zodiac"

}

variable "nameClusterToApiGtw" {
  description = "The name of the virtual network"
  type        = string
    default = "r4r6hold"

}

variable "nameApiToCluster" {
  description = "The name of the virtual network"
  type        = string
    default = "0lx0hold"

}

variable "allow_virtual_network_access" {
  description = "Allow network access between peered VNets"
  type        = bool
  default     = true
}
variable "bastion_subnet_prefix" {
  type = string
    default = "zodiac"

}

variable "public_ip_name" {
  description = "The name of the public IP address"
  type = string
    default = "10.0.0.0/16"

}

variable "allocation_method" {
  description = "The allocation method of the public IP address"
  type = string
    default = "eastus"

}

variable "sku" {
  description = "The SKU of the public IP address"
    default = "Standard"

  type = string
}