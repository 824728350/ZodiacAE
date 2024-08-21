variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
    default = null

}

variable "location" {
  description = "Location for the Azure Key Vault"
    default = "eastus"

}


variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
    default = null

}


variable "tenant_id" {
  description = "Tenant ID"
    default = null

}

variable "soft_delete_retention_days" {
  description = "Soft delete retention period in days"
    default = null

}

variable "sku_name" {
  description = "SKU name for the Azure Key Vault"
    default = null

}

variable "enabled_for_disk_encryption" {
  description = "Notify before expiry"
    default = null

}

variable "purge_protection_enabled" {
    default = null

  description = "Notify before expiry"
}