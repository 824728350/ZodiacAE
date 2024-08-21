variable "svr_name" {
  description = "sql server name"
    default = null

}

variable "username" {
  description = "admin username login"
    default = null

}

variable "password" {
  description = "admin password login"
    default = null

}

variable "db_name" {
  description = "database name"
    default = null

}

variable "vnet_rule_1" {
  description = "virtual network rule"
    default = null

}

variable "rg_name" {
  description = "resource group name"
    default = null

}

variable "location" {
  description = "instance location"
    default = "eastus"

}

variable "fn_app_name" {
  description = "function plan name"
    default = null

}

variable "subnet_id_value" {
  description = "sub net id"
    default = null

}

variable "subnet" {
  description = "sub net"
    default = null

}

variable "firewall_rule_name" {
  description = "firewall rule name"
    default = null

}

variable "asp_name" {
  description = "app service plan name"
    default = null

}


variable "sa_name" {
  description = "storage account name"
    default = null

}

variable "sa_primary_key" {
  description = "primary key of storage account"
    default = null

}

variable "app_insights_conn_string" {
  description = "app inights connection string"
    default = null

}



