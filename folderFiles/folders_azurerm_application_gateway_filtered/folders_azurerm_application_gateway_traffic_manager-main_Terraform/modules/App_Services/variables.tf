variable "rg_name" {
  description = "Name for the resource group"
  type        = string
    default = "1854hold"

}

variable "location" {
  description = "Location for the resource group"
  type        = string
    default = "eastus"

}

variable "app_service_plan_name" {
  description = "Name for the App Service Plan"
  type        = string
    default = "v75fhold"

}

variable "app_service_name" {
  description = "Name for the App Service"
  type        = string
    default = "r8wqhold"

}

variable "repo_url" {
  description = "URL of the Git repository"
  type        = string
    default = "he5whold"

}

variable "branch" {
  description = "Branch of the Git repository"
  type        = string
    default = "i4uqhold"

}
