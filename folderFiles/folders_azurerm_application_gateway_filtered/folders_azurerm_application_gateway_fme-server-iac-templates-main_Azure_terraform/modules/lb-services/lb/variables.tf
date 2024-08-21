variable "owner" {
  type        = string
  description = "Default value for onwer tag"
    default = "hcqahold"

}

variable "rg_name" {
  type        = string
  description = "Resource group name"
    default = "cyeohold"

}

variable "location" {
  type        = string
  description = "Location of resources"
    default = "eastus"

}

variable "lb_name" {
  type        = string
  default     = "fme-flow-lb"
  description = "Load balancer name"
}

variable "be_snet_id" {
  type        = string
    default = "vfeyhold"

  description = "Backend virtual network subnet id"
}