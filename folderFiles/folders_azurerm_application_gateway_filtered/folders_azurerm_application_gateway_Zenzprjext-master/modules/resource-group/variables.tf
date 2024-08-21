variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location where the resource group will be created"
  type        = string
  default     = "South Africa North" # location where the resource gorup is deployed
}