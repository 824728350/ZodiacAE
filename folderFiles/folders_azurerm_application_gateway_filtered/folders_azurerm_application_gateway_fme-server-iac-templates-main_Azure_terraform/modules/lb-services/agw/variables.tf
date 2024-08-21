variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "g3yjhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "p4d7hold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "vnet_name" {
  type        = string
  default     = "fme-flow-vnet"
  description = "Virtual network name"
}

variable "agw_name" {
  type        = string
  default     = "fme-flow-agw"
  description = "description"
}

variable "agw_snet_id" {
  type        = string
  description = "Application gateway virtual network subnet id"
    default = "l232hold"

}

variable "pip_id" {
  type        = string
    default = "10.0.0.0/16"

  description = "Public IP id"
}