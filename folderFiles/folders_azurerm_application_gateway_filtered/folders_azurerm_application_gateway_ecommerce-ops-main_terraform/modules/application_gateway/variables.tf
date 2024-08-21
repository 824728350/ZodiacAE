
# Variables de api_gateway

variable "name" {
  description = "The name of the Application Gateway."
    default = null

}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Gateway."
    default = null

}

variable "location" {
  description = "The location/region where the Application Gateway will be deployed."
    default = "eastus"

}

#Variables del SKU

variable "sku_name" {
  description = "The name of the SKU for the Application Gateway."
    default = null

}

variable "sku_tier" {
  description = "The tier of the SKU for the Application Gateway."
    default = null

}

variable "sku_capacity" {
  description = "The capacity (instance count) of the SKU for the Application Gateway."
    default = null

}

# Variables del gateway_ip_configuration

variable "gateway_ip_configuration_name" {
  description = "The name of the gateway IP configuration."
    default = "10.0.0.0/16"

}

variable "subnet_id" {
  description = "The ID of the subnet to which the Application Gateway should be deployed."
    default = null

}

# Variables del frontend_ip_configuration

variable "frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration."
    default = "10.0.0.0/16"

}

variable "public_ip_address_id" {
  description = "The ID of the public IP address to associate with the frontend IP configuration."
    default = "10.0.0.0/16"

}

# Variables del frontend_port

variable "frontend_port_name" {
  description = "The name of the frontend port."
    default = null

}

variable "frontend_port_port" {
  description = "The port number of the frontend port."
    default = null

}

# Variables del backend_address_pool

variable "backend_address_pool_name" {
  description = "The name of the backend address pool."
    default = null

}

# Variables backend_http_settings

variable "backend_http_settings_name" {
  description = "The name of the backend HTTP settings."
    default = null

}

variable "cookie_based_affinity" {
    default = null

}

variable "backend_http_settings_port" {
  description = "The port number for the backend HTTP settings."
    default = null

}

variable "backend_http_settings_protocol" {
  description = "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
    default = null

}

variable "backend_http_settings_request_timeout" {
  description = "The request timeout for the backend HTTP settings (in seconds)."
    default = null

}

# Variables del http_listener

variable "http_listener_name" {
  description = "The name of the HTTP listener."
    default = null

}

variable "http_listener_frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration associated with the HTTP listener."
    default = "10.0.0.0/16"

}

variable "http_listener_frontend_port_name" {
  description = "The name of the frontend port associated with the HTTP listener."
    default = null

}

variable "http_listener_protocol" {
  description = "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
    default = null

}

# Variable request_routing_rule

variable "request_routing_rule_name" {
  description = "The name of the request routing rule."
    default = null

}

variable "request_routing_rule_rule_type" {
  description = "The type of the request routing rule."
    default = null

}

variable "request_routing_rule_priority" {
  description = "The priority of the request routing rule."
    default = null

}

variable "request_routing_rule_http_listener_name" {
  description = "The name of the HTTP listener associated with the request routing rule."
    default = null

}

variable "request_routing_rule_backend_address_pool_name" {
  description = "The name of the backend address pool associated with the request routing rule."
    default = null

}

variable "request_routing_rule_backend_http_settings_name" {
    default = null

  description = "The name of the backend HTTP settings associated with the request routing rule."
}