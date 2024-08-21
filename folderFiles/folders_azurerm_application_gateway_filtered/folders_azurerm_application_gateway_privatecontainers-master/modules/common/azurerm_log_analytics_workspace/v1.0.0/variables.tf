variable "log_analytics_workspace_name" {
  description = "The log analytics name to deploy."
  type        = string
    default = "p013hold"

}
variable "log_analytics_workspace_sku" {
  description = "The log analytics sku."
  type        = string
  default = "PerGB2018"
}
variable "log_analytics_workspace_retention_in_days" {
  description = "The log analytics retension."
  type        = number
  default     = 30
}
variable "location" {
  description = "The location to deploy to."
    default = "eastus"

}
variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "9tphhold"

}
variable "common_tags" {
  description = "The tags to be added to all resources."
    default = null

}
