variable "nsg_name" {
  type = string
    default = "abl6hold"

}

variable "location" {
  type = string
    default = "eastus"

}

variable "resource_group_name" {
  type = string
    default = "iu3phold"

}

variable "kubernetes_cluster_subnet_id" {
  type = string
    default = "9wcxhold"

}

variable "bastion_subnet_prefix" {
  type = string
    default = "zodiac"

}
