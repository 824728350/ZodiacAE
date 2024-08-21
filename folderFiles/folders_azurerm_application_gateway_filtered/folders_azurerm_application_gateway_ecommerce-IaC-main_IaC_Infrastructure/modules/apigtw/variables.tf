// Define the API Gateway

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
    default = "ij4ahold"

}

variable "location" {
  description = "The location of the resources"
  type        = string
    default = "eastus"

}

variable "api_gateway_name" {
  description = "The name of the API Gateway"
  type        = string
    default = "pvidhold"

}

variable "subnet_id" {
  description = "The ID of the subnet where the API Gateway will be placed"
  type        = string
    default = "ubnlhold"

}

variable "sku_name" {
  description = "The name of the SKU for the Application Gateway."
  type        = string
    default = "Standard"

}

variable "sku_tier" {
  description = "The tier of the SKU for the Application Gateway."
  type        = string
    default = "Standard"

}

variable "sku_capacity" {
  description = "The capacity (instance count) of the SKU for the Application Gateway."
  type        = string
    default = "Standard"

}

variable "gateway_ip_configuration_name" {
  description = "The name of the gateway IP configuration."
  type        = string
    default = "10.0.0.0/16"

}

variable "frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration."
  type        = string
    default = "10.0.0.0/16"

}

variable "public_ip_address_id" {
  description = "The ID of the public IP address to associate with the frontend IP configuration."
  type        = string
    default = "10.0.0.0/16"

}

variable "frontend_port_name" {
  description = "The name of the frontend port."
  type        = string
    default = "hrvnhold"

}

variable "frontend_port_port" {
  description = "The port number of the frontend port."
  type        = string
    default = "jiyphold"

}

variable "backend_address_pool_name" {
  description = "The name of the backend address pool."
  type        = string
    default = "gqsvhold"

}

variable "backend_http_settings_name" {
  description = "The name of the backend HTTP settings."
  type        = string
    default = "bitxhold"

}

variable "backend_http_settings_port" {
  description = "The port number for the backend HTTP settings."
  type        = string
    default = "mq2thold"

}

variable "backend_http_settings_protocol" {
  description = "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
  type        = string
    default = "xg5fhold"

}

variable "backend_http_settings_request_timeout" {
  description = "The request timeout for the backend HTTP settings (in seconds)."
  type        = string
    default = "ef10hold"

}

variable "http_listener_name" {
  description = "The name of the HTTP listener."
  type        = string
    default = "wpfnhold"

}

variable "http_listener_frontend_ip_configuration_name" {
  description = "The name of the frontend IP configuration associated with the HTTP listener."
  type        = string
    default = "10.0.0.0/16"

}

variable "http_listener_frontend_port_name" {
  description = "The name of the frontend port associated with the HTTP listener."
  type        = string
    default = "kyemhold"

}

variable "http_listener_protocol" {
  description = "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
  type        = string
    default = "351qhold"

}

variable "request_routing_rule_name" {
  description = "The name of the request routing rule."
  type        = string
    default = "sq7yhold"

}

variable "request_routing_rule_rule_type" {
  description = "The type of the request routing rule."
  type        = string
    default = "9s37hold"

}

variable "request_routing_rule_priority" {
  description = "The priority of the request routing rule."
  type        = string
    default = "6rijhold"

}

variable "request_routing_rule_http_listener_name" {
  description = "The name of the HTTP listener associated with the request routing rule."
  type        = string
    default = "z0v5hold"

}

variable "request_routing_rule_backend_address_pool_name" {
  description = "The name of the backend address pool associated with the request routing rule."
  type        = string
    default = "5qr5hold"

}

variable "request_routing_rule_backend_http_settings_name" {
  description = "The name of the backend HTTP settings associated with the request routing rule."
  type        = string
    default = "zozwhold"

}

variable "cookie_based_affinity" {
  description = "The cookie-based affinity setting for the backend HTTP settings."
    default = "o95nhold"

  type        = string
}