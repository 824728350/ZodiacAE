variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "8d9fhold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "2z2xhold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "vnet_name" {
  type        = string
  description = "Virtual network name"
    default = "0k4vhold"

}

variable "be_snet_name" {
  type        = string
  description = "Backend virtual network subnet name"
    default = "5jt2hold"

}

variable "agw_snet_name" {
  type        = string
  description = "Application gateway virtual network subnet name"
    default = "2lkohold"

}

variable "pip_name" {
  type        = string
  description = "Public ip name"
    default = "10.0.0.0/16"

}

variable "domain_name_label" {
  type        = string
  description = "Label for the Domain Name. Will be used to make up the FQDN"
    default = "2qbqhold"

}
