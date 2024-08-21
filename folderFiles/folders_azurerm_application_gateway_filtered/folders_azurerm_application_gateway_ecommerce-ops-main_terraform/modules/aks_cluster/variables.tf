variable "name" {
  description = "Name of the AKS cluster"
    default = null

}

variable "location" {
  description = "Name of the AKS cluster"
    default = "eastus"

}

variable "resource_group_name" {
  description = "resource group for the AKS cluster"
    default = null

}

variable "dns_prefix" {
  description = "dns of the AKS cluster"
    default = "zodiac"

}

variable "node_pool_name" {
  description = "name of the AKS cluster's node pool"
    default = null

}

variable "node_count" {
  description = "number of pods replicas for the AKS cluster's node pool"
    default = null

}

variable "vm_size" {
  description = "vm size for the AKS cluster's node pool"
    default = null

}

variable "os_disk_size_gb" {
  description = "size of the operative system disk" 
    default = null

}

variable "subnet_id" {
  description = "id of the subnet for the AKS cluster's node pool"
    default = null

}

variable "network_plugin"{
  description = "enables you to configure communication within your k8s network"
    default = null

}

variable "identity_type"{
  description = "identity type of the aks_cluster"
    default = null

}

variable "secret_rotation_enabled" {
  description = "Must be specified to enable key_vault_secrets_provider"
    default = null

}

variable "local_file" {
  description = "Name of the kuberneter file"
  default = "kubeconfig"
}