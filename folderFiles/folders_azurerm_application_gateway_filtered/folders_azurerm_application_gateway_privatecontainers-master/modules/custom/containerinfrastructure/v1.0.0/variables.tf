variable "subscription_id" {
  description = "The subscription id to deploy to."
  type        = string
    default = "10.0.0.0/16"

}
variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "y0rehold"

}
variable "location" {
  description = "The location to deploy to."
    default = "eastus"

}
variable "common_tags" {
    default = null

  description = "The tags to be added to all resources."
}