variable "name" {
  
    default = null

}

variable "resource_group_name" {
  
    default = null

}

variable "priority" {
  default ="1001"
}

variable "direction" {
  
    default = null

}

variable "access" {
  
    default = null

}
variable "protocol" {
  
    default = null

}

variable "source_port_range" {
  
    default = null

}

variable "destination_port_range" {
  
    default = null

}

variable "source_address_prefix" {
  
    default = "10.0.0.0/16"

}

variable "destination_address_prefix" {
  
    default = "10.0.0.0/16"

}

variable "network_security_group_name" {
    default = null

  
}