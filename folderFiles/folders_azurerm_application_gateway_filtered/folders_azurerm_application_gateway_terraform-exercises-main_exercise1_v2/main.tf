
provider "azurerm" {
 features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "example-rg"
  location = "West Us"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "vm" {
  name                 = "vm-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "gateway" {
  name                 = "gateway-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "endpoints" {
  name                 = "endpoints-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.3.0/24"]
}

resource "azurerm_network_security_group" "example" {
  name                = "example-nsg"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet_network_security_group_association" "vm" {
  subnet_id                 = azurerm_subnet.vm.id
  network_security_group_id = azurerm_network_security_group.example.id
}

resource "azurerm_subnet_network_security_group_association" "gateway" {
  subnet_id                 = azurerm_subnet.gateway.id
  network_security_group_id = azurerm_network_security_group.example.id
}

resource "azurerm_subnet_network_security_group_association" "endpoints" {
  subnet_id                 = azurerm_subnet.endpoints.id
  network_security_group_id = azurerm_network_security_group.example.id
}

resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = "example-machine"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "24.04-LTS"
    version   = "latest"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx",
    ]

    connection {
      type        = "ssh"
      user        = "adminuser"
      private_key ="-----BEGIN OPENSSH PRIVATE KEY-----b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcnNhAAAAAwEAAQAAAQEA03DWQV3mvAwhWgl1Lh9MVFgWuc79mEVwSkp0QGiHMBdn0ScRXRvz4JyeB6ANdInfHUiC1Urlyy46fbE7ajYLZxKysv/s0z13G+rHh3fzMnGW+dfNY2CCMiwrmK39mR7puD5TEN0UFHpW42Ncnv5OeK5oHcfYJis78tL9KMkXdV0mrdJr71ZtUHrFXLuKldLsgR4Gvl2JupmISQLnDS28AfSVP4BwnOMonXJFsxbBcq6LGbZmxIuQvIVzaIySHjATBaGkEjuHmR7TYZV6bHEbfPlsz6ktVf+rd8Gv143RY2TxxUDo0zwW+XWWheRYdpcUQzPKGD8Zrlayz5bHHahiawAAA8AE4vH1BOLx9QAAAAdzc2gtcnNhAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJrAAAAAwEAAQAAAQBg6GV6niQDaffbQVxwoC2mtpzr2l/Ga4T0t70iTAYx13hgluxRZV9YQc/4JLYmBI666CH2yhYaEn0CYLmfi1ecjShT/BI6GwC9TdTXVPWk2ATfS7Y55uClSDNPDeeeR1nNdNszbnAmlo++NiscP+gNTbowdAiwLb6TI3qeN9RFmG9xrTw72za5JfwapFLHHmrLWGk2VGew0S/oJyQlS7yqgfZO/vbtjFbryFJ71lYZw5F9fJG90lOeLJQlpU1e++0KZgexysgpPb+TlWRhIy4hHTswiox/ST+svFLduY0m8wSHb9vFDIXIwCg7yu9ijIGDD/dJ8w86ToxaZqvdEYqZAAAAgQDMqQ2A0sQJlDkn0DNo1onrb4RXzXgVygT6GwGHmW5Uq86FBR8j2VJmAx61pKEJWGWP/7kW84F6+hMlSVlK4oPtPhhSkIqRxtlDToppWU8xCSHmfw9SZl4DDlYaY7gwVeUWKVQCC+QPl+0/YRgXLMM3iARTe4l+DEckerzUBFEYZwAAAIEA9VvDlA9Er8wkAfQGY2xqN5xtKeCvahlxpJBEaXcIeqq4doOmXGprDaiqJWGkxNp2JAA66HQBeZAuft+AI/yRZrbsnOP6k/9GrJ/TC2gAqSrptSwRAAnXr8AjhiPjEICVU8VxWa2+4XfZAr2gkAGQdD/54CA70HpFQijLdAqPbW8AAACBANyce2QD52k5IKQotMQQKan+ofFs2YwSbwX7AjXazm7+1K4dE/DkKMD6zih7TWhDN23Qp4U2+pi3QGAiUbQcGl+DmWNDRFXk+3i1ob2M9iip7+hXI3CEtQ/W+1inVLd0mde2QWntld3wxEszzecB3/2WnadN038598OAmEDly5TFAAAABm5vbmFtZQECAwQ=-----END OPENSSH PRIVATE KEY-----"
      host        = self.private_ip_address
    }
  }
}

resource "azurerm_application_gateway" "example" {
  name                = "example-appgateway"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  sku {
    name     = "Standard_Small"
    tier     = "Standard"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "example-gateway-ip-configuration"
    subnet_id = azurerm_subnet.gateway.id
  }

  frontend_port {
    name = "https-port"
    port = 443
  }

  frontend_ip_configuration {
    name                 = "frontend-ip"
    public_ip_address_id = azurerm_public_ip.example.id
  }

  backend_address_pool {
    name = "example-backend-pool"
    ip_addresses = [
      azurerm_linux_virtual_machine.example.private_ip_address,
    ]
  }

  backend_http_settings {
    name                  = "example-backend-http-settings"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    port                  = 443
    protocol              = "Https"
    request_timeout       = 60
  }

  http_listener {
    name                           = "example-listener"
    frontend_ip_configuration_name = "frontend-ip"
    frontend_port_name             = "https-port"
    protocol                       = "Https"
    ssl_certificate_name           = "example-ssl-cert"
  }

  request_routing_rule {
    name                       = "example-routing-rule"
    rule_type                  = "Basic"
    http_listener_name         = "example-listener"
    backend_address_pool_name  = "example-backend-pool"
    backend_http_settings_name = "example-backend-http-settings"
  }

  ssl_certificate {
    name     = "example-ssl-cert"
    data     = filebase64("certificate.pfx")
    password = "export"
  }
}

resource "azurerm_public_ip" "example" {
  name                = "example-public-ip"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Dynamic"
}

resource "azurerm_mssql_server" "example" {
  name                         = "example-sqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "Strong!Passw0rd"
}

resource "azurerm_mssql_database" "example" {
  name      = "exampledb"
  server_id = azurerm_mssql_server.example.id
}

resource "azurerm_key_vault" "example" {
  name                       = "example-keyvault"
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  purge_protection_enabled   = false
}

resource "azurerm_key_vault_secret" "example" {
  name         = "sql-password"
  value        = "Strong!Passw0rd"
  key_vault_id = azurerm_key_vault.example.id
}

resource "azurerm_redis_cache" "example" {
  name                = "example-redis"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  capacity            = 0
  family              = "C"
  sku_name            = "Basic"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }
}

resource "azurerm_private_endpoint" "example" {
  name                = "example-private-endpoint"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  subnet_id           = azurerm_subnet.endpoints.id

  private_service_connection {
    name                           = "example-privateserviceconnection"
    private_connection_resource_id = azurerm_mssql_server.example.id
    is_manual_connection           = false
  }
}

resource "azurerm_private_dns_zone" "example" {
  name                = "privatelink.database.windows.net"
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  name                  = "example-pdzvnetlink"
  resource_group_name   = azurerm_resource_group.example.name
  private_dns_zone_name = azurerm_private_dns_zone.example.name
  virtual_network_id    = azurerm_virtual_network.example.id
}