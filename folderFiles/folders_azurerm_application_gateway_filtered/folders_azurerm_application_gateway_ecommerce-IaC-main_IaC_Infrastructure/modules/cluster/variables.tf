variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
    default = "390qhold"

}

variable "location" {
  description = "The location of the resources"
  type        = string
    default = "eastus"

}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
    default = "2ktnhold"

}

variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster"
  type        = string
    default = "zodiac"

}

variable "node_pool_name" {
  description = "The name of the default node pool"
  type        = string
    default = "hba6hold"

}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
    default = null

}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
    default = "r1e6hold"

}

variable "vnet_subnet_id" {
  description = "The ID of the subnet where the AKS cluster will be created"
  type        = string
    default = "c5klhold"

}

variable "secret_rotation_enabled" {
    default = null

  description = "Name of the kuberneter file"
}