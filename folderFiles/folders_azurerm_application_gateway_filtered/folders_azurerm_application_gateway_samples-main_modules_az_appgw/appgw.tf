
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
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.resource_prefix}-net"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  address_space       = [var.vnet_ingress_address_space]
}

resource "azurerm_subnet" "frontend" {
  name                 = "frontend"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.vnet_ingress_frontend_subnet]
}

resource "azurerm_subnet" "backend" {
  name                 = "backend"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.vnet_ingress_backend_subnet]
}

resource "azurerm_public_ip" "ingress" {
  name                = "${var.resource_prefix}-pip"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
  sku                 = "Standard"
  allocation_method   = "Static"
}

locals {
  backend_address_pool_name      = "beap"
  frontend_port_name             = "feport"
  frontend_ip_configuration_name = "feip"
  http_setting_name              = "be-htst"
  listener_name                  = "httplstn"
  request_routing_rule_name      = "rqrt"
  redirect_configuration_name    = "rdrcfg"
}

resource "azurerm_application_gateway" "gw" {
  name                = "${var.resource_prefix}-appgw"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 1
  }

  gateway_ip_configuration {
    name      = "gw-ip-config"
    subnet_id = azurerm_subnet.frontend.id
  }

  frontend_port {
    name = local.frontend_port_name
    port = var.frontend_port
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.ingress.id
  }

  backend_address_pool {
    name = local.backend_address_pool_name
  }

  backend_http_settings {
    name                  = local.http_setting_name
    port                  = 80
    protocol              = "Http"
    cookie_based_affinity = "Disabled"
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    rule_type                  = "Basic"
    backend_address_pool_name  = local.backend_address_pool_name
    http_listener_name         = local.listener_name
    backend_http_settings_name = local.http_setting_name
    priority                   = 1
  }

  http_listener {
    name                           = local.listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }
}
