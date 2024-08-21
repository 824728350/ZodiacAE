
provider "azurerm" {
 features {}
}

provider "google" {
 project   = "ZODIAC"
 region   = "us-central1"
}

provider "aws" {
 region           = "us-east-1"
 skip_credentials_validation = true
 skip_requesting_account_id = true
 skip_metadata_api_check   = true
 s3_force_path_style     = true
 access_key         = "mock_access_key"
 secret_key         = "mock_secret_key"
}
variable "application_gateway_list" {
  type        = list(any)
  default     = []
  description = "application_gateway list"
}

variable "resource_group_output" {
  type        = map(any)
  default     = {}
  description = "resource group output"
}

variable "subnet_output" {
  type        = map(any)
  default     = {}
  description = "subnet output"
}

variable "public_ip_output" {
  type = map(any)
  default = {}
  description = "list of public ip objects"
}

variable "web_application_firewall_output" {
  type        = map(any)
  default     = {}
  description = "web application firewall output"
}

variable "user_assigned_identity_output" {
  type        = map(any)
  default     = {}
  description = "user identity output"
}