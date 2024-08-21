variable "key_vault_id" {
  description="The ID of the Key Vault where the policy should be created"
    default = null

}

variable "tenant_id"{
 description=""
    default = null

}

variable "object_id" {
  description = "value"
    default = null

}

variable "key_permissions" {
  description = "value"
    default = null

}

variable "secret_permissions" {
  description = "value"
    default = null

}

variable "certificate_permissions" {
    default = null

  description = "value"
}