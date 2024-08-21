variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
    default = null

}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
    default = null

}

variable "location" {
  description = "Location for the Azure Key Vault"
    default = "eastus"

}

variable "tenant_id" {
  description = "Tenant ID"
    default = null

}

variable "soft_delete_retention_days" {
  description = "Soft delete retention period in days"
  type        = number
  default     = 7
}

variable "sku_name" {
  description = "SKU name for the Azure Key Vault"
  default     = "Standard"
}

variable "object_id" {
  description = "Object ID"
    default = null

}

variable "key_permissions" {
  description = "Key permissions"
  type        = list(string)
    default = []

}

variable "secret_permissions" {
  description = "Secret permissions"
  type        = list(string)
    default = []

}

variable "certificate_permissions" {
  description = "Certificate permissions"
  type        = list(string)
    default = []

}

variable "secret_names" {
  description = "Names of the Azure Key Vault secrets"
  type        = list(string)
    default = []

}

variable "secret_values" {
  description = "Values of the Azure Key Vault secrets"
  type        = list(string)
    default = []

}

variable "key_names" {
  description = "Names of the Azure Key Vault keys"
  type        = list(string)
    default = []

}

variable "key_types" {
  description = "Types of the Azure Key Vault keys"
  type        = list(string)
    default = []

}

variable "key_sizes" {
  description = "Sizes of the Azure Key Vault keys"
  type        = list(number)
    default = []

}

variable "key_opts" {
  description = "Key options"
  type        = list(string)
    default = []

}

variable "time_before_expiry" {
  description = "Time before expiry"
    default = null

}

variable "expire_after" {
  description = "Expire after"
    default = null

}

variable "notify_before_expiry" {
  description = "Notify before expiry"
    default = null

}

variable "enabled_for_disk_encryption" {
  description = "Notify before expiry"
  default     = true
}

variable "purge_protection_enabled" {
  description = "Notify before expiry"
  default     = false
}

variable "user_assigned_identity_principal_id" {
  description = "The principal ID of the user-assigned identity."
  type        = string
    default = "10.0.0.0/16"

}

variable "aks_secret_provider_id" {
    
    default = "null"
}
