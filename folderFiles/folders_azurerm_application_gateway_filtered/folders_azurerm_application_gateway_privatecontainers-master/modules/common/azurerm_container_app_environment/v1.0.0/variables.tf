variable "managed_environments_name" {
  description = "The managed environment name to deploy."
  type        = string
    default = "c93ihold"

}
variable "log_analytics_workspace_id" {
  description = "The log analytics workspace id to connect."
  type        = string
    default = "owwnhold"

}
variable "vnet_id" {
  description = "The vnet id to connect."
  type        = string
    default = "hkw2hold"

}
variable "subnet_id" {
  description = "The subnet id to connect."
  type        = string
    default = "nqazhold"

}
variable "location" {
  description = "The location to deploy to."
    default = "eastus"

}
variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "aq5chold"

}
variable "resource_group_id" {
  description = "The resource group id to deploy to."
  type        = string
    default = "apcehold"

}
variable "common_tags" {
  description = "The tags to be added to all resources."
    default = null

}
