variable "resource_group_name" {
  description = "The resource group name to deploy to."
  type        = string
    default = "l03shold"

}
variable "location" {
  description = "The location to deploy to."
    default = "eastus"

}
variable "common_tags" {
    default = null

  description = "The tags to be added to all resources."
}