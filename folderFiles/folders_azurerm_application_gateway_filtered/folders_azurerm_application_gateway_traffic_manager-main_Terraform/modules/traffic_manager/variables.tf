variable "name" {
  description = "Relative name for DNS configuration"
  type        = string
    default = "6r0zhold"

}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
    default = "p9e6hold"

}
variable "location" {
  description = "Locationn of the resource group"
  type        = string
    default = "eastus"

}

variable "profile_name" {
  description = "Name of the Traffic Manager profile"
  type        = string
    default = "y027hold"

}

variable "ttl" {
  description = "Time to live for DNS records"
  type        = number
    default = null

}

variable "monitor_protocol" {
  description = "Protocol used for monitoring"
  type        = string
    default = "an5rhold"

}

variable "monitor_port" {
  description = "Port used for monitoring"
  type        = number
    default = null

}

variable "monitor_path" {
  description = "Path used for monitoring"
  type        = string
    default = "rhwxhold"

}

variable "monitor_interval" {
  description = "Interval in seconds for monitoring"
  type        = number
    default = null

}

variable "monitor_timeout" {
  description = "Timeout in seconds for monitoring"
  type        = number
    default = null

}

variable "monitor_failures" {
  description = "Number of tolerated failures for monitoring"
  type        = number
    default = null

}

variable "primary_target_resource_id" {
  description = "ID of the primary target resource (e.g., App Service)"
  type        = string
    default = "as1mhold"

}

variable "secondary_target_resource_id" {
  description = "ID of the secondary target resource (e.g., App Service)"
  type        = string
    default = "ug14hold"

}
