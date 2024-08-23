# Copyright 2020-2021 Fugue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
package plan_json

import data.fugue.resource_view.resource_view_input

mock_input := ret {
  ret = resource_view_input with input as mock_config
}
mock_resources := mock_input.resources
mock_config := {
    "applyable": true,
    "complete": true,
    "configuration": {
        "provider_config": {
            "azurerm": {
                "expressions": {
                    "features": [
                        {}
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "name": "azurerm",
                "version_constraint": "3.116.0"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_linux_virtual_machine.example.private_ip_address",
                                        "azurerm_linux_virtual_machine.example"
                                    ]
                                },
                                "name": {
                                    "constant_value": "example-backend-pool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "example-backend-http-settings"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "frontend-ip"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.example.id",
                                        "azurerm_public_ip.example"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "https-port"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "example-gateway-ip-configuration"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.gateway.id",
                                        "azurerm_subnet.gateway"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "frontend-ip"
                                },
                                "frontend_port_name": {
                                    "constant_value": "https-port"
                                },
                                "name": {
                                    "constant_value": "example-listener"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "example-ssl-cert"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-appgateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "example-backend-pool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "example-backend-http-settings"
                                },
                                "http_listener_name": {
                                    "constant_value": "example-listener"
                                },
                                "name": {
                                    "constant_value": "example-routing-rule"
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "constant_value": "Standard_Small"
                                },
                                "tier": {
                                    "constant_value": "Standard"
                                }
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": {},
                                "name": {
                                    "constant_value": "example-ssl-cert"
                                },
                                "password": {
                                    "constant_value": "export"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_key_vault.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-keyvault"
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "soft_delete_retention_days": {
                            "constant_value": 7
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_key_vault_secret.example",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        },
                        "name": {
                            "constant_value": "sql-password"
                        },
                        "value": {
                            "constant_value": "Strong!Passw0rd"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_secret"
                },
                {
                    "address": "azurerm_linux_virtual_machine.example",
                    "expressions": {
                        "admin_ssh_key": [
                            {
                                "public_key": {
                                    "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                },
                                "username": {
                                    "constant_value": "adminuser"
                                }
                            }
                        ],
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-machine"
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.example.id",
                                "azurerm_network_interface.example"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Standard_LRS"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "size": {
                            "constant_value": "Standard_F2"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "UbuntuServer"
                                },
                                "publisher": {
                                    "constant_value": "Canonical"
                                },
                                "sku": {
                                    "constant_value": "24.04-LTS"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "provisioners": [
                        {
                            "expressions": {
                                "inline": {
                                    "constant_value": [
                                        "sudo apt-get update",
                                        "sudo apt-get install -y nginx",
                                        "sudo systemctl start nginx",
                                        "sudo systemctl enable nginx"
                                    ]
                                }
                            },
                            "type": "remote-exec"
                        }
                    ],
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "azurerm_mssql_database.example",
                    "expressions": {
                        "name": {
                            "constant_value": "exampledb"
                        },
                        "server_id": {
                            "references": [
                                "azurerm_mssql_server.example.id",
                                "azurerm_mssql_server.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_mssql_database"
                },
                {
                    "address": "azurerm_mssql_server.example",
                    "expressions": {
                        "administrator_login": {
                            "constant_value": "sqladmin"
                        },
                        "administrator_login_password": {
                            "constant_value": "Strong!Passw0rd"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-sqlserver"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "version": {
                            "constant_value": "12.0"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_server"
                },
                {
                    "address": "azurerm_network_interface.example",
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "internal"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.vm.id",
                                        "azurerm_subnet.vm"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-nic"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_security_group.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_private_dns_zone.example",
                    "expressions": {
                        "name": {
                            "constant_value": "privatelink.database.windows.net"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "expressions": {
                        "name": {
                            "constant_value": "example-pdzvnetlink"
                        },
                        "private_dns_zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.example.name",
                                "azurerm_private_dns_zone.example"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.example.id",
                                "azurerm_virtual_network.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone_virtual_network_link"
                },
                {
                    "address": "azurerm_private_endpoint.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-private-endpoint"
                        },
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "example-privateserviceconnection"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_mssql_server.example.id",
                                        "azurerm_mssql_server.example"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.endpoints.id",
                                "azurerm_subnet.endpoints"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_endpoint"
                },
                {
                    "address": "azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-public-ip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_redis_cache.example",
                    "expressions": {
                        "capacity": {
                            "constant_value": 0
                        },
                        "enable_non_ssl_port": {
                            "constant_value": false
                        },
                        "family": {
                            "constant_value": "C"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "minimum_tls_version": {
                            "constant_value": "1.2"
                        },
                        "name": {
                            "constant_value": "example-redis"
                        },
                        "redis_configuration": [
                            {}
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Basic"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_redis_cache"
                },
                {
                    "address": "azurerm_resource_group.example",
                    "expressions": {
                        "location": {
                            "constant_value": "West Us"
                        },
                        "name": {
                            "constant_value": "example-rg"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.endpoints",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.3.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "endpoints-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.example.name",
                                "azurerm_virtual_network.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.gateway",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "gateway-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.example.name",
                                "azurerm_virtual_network.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.vm",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "vm-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.example.name",
                                "azurerm_virtual_network.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.endpoints",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.endpoints.id",
                                "azurerm_subnet.endpoints"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.gateway",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.gateway.id",
                                "azurerm_subnet.gateway"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.vm",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.example.id",
                                "azurerm_network_security_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.vm.id",
                                "azurerm_subnet.vm"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-network"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "ip_addresses": []
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            }
                        ],
                        "custom_error_configuration": [],
                        "frontend_ip_configuration": [
                            {}
                        ],
                        "frontend_port": [
                            {}
                        ],
                        "gateway_ip_configuration": [
                            {}
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            }
                        ],
                        "identity": [],
                        "private_endpoint_connection": [],
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {}
                        ],
                        "rewrite_rule_set": [],
                        "sku": [
                            {}
                        ],
                        "ssl_certificate": true,
                        "ssl_policy": [],
                        "ssl_profile": [],
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": []
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "name": "example-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "example-backend-http-settings",
                                "path": "/",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "",
                                "protocol": "Https",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": []
                            }
                        ],
                        "custom_error_configuration": [],
                        "enable_http2": null,
                        "fips_enabled": null,
                        "firewall_policy_id": null,
                        "force_firewall_policy_association": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "frontend-ip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "https-port",
                                "port": 443
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "example-gateway-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "frontend-ip",
                                "frontend_port_name": "https-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "example-listener",
                                "protocol": "Https",
                                "require_sni": null,
                                "ssl_certificate_name": "example-ssl-cert",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus",
                        "name": "example-appgateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "example-backend-pool",
                                "backend_http_settings_name": "example-backend-http-settings",
                                "http_listener_name": "example-listener",
                                "name": "example-routing-rule",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_Small",
                                "tier": "Standard"
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": "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",
                                "key_vault_secret_id": "",
                                "name": "example-ssl-cert",
                                "password": "export"
                            }
                        ],
                        "ssl_profile": [],
                        "tags": null,
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_key_vault.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "westus",
                        "name": "example-keyvault",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "example-rg",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault_secret.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "value": true
                    },
                    "type": "azurerm_key_vault_secret",
                    "values": {
                        "content_type": null,
                        "expiration_date": null,
                        "name": "sql-password",
                        "not_before_date": null,
                        "tags": null,
                        "timeouts": null,
                        "value": "Strong!Passw0rd"
                    }
                },
                {
                    "address": "azurerm_linux_virtual_machine.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [],
                        "network_interface_ids": [],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "os_image_notification": [],
                        "plan": [],
                        "private_ip_addresses": [],
                        "public_ip_addresses": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": null,
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "adminuser"
                            }
                        ],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": true,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "westus",
                        "max_bid_price": -1,
                        "name": "example-machine",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "ImageDefault",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "example-rg",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_F2",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "UbuntuServer",
                                "publisher": "Canonical",
                                "sku": "24.04-LTS",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "zone": null
                    }
                },
                {
                    "address": "azurerm_mssql_database.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "import": [],
                        "long_term_retention_policy": [],
                        "short_term_retention_policy": [],
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_mssql_database",
                    "values": {
                        "create_mode": "Default",
                        "elastic_pool_id": null,
                        "geo_backup_enabled": true,
                        "identity": [],
                        "import": [],
                        "name": "exampledb",
                        "recover_database_id": null,
                        "recovery_point_id": null,
                        "restore_dropped_database_id": null,
                        "restore_long_term_retention_backup_id": null,
                        "storage_account_type": "Geo",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_enabled": true,
                        "transparent_data_encryption_key_automatic_rotation_enabled": false,
                        "transparent_data_encryption_key_vault_key_id": null
                    }
                },
                {
                    "address": "azurerm_mssql_server.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "administrator_login_password": true,
                        "azuread_administrator": [],
                        "identity": [],
                        "restorable_dropped_database_ids": []
                    },
                    "type": "azurerm_mssql_server",
                    "values": {
                        "administrator_login": "sqladmin",
                        "administrator_login_password": "Strong!Passw0rd",
                        "azuread_administrator": [],
                        "connection_policy": "Default",
                        "identity": [],
                        "location": "westus",
                        "minimum_tls_version": "1.2",
                        "name": "example-sqlserver",
                        "outbound_network_restriction_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_key_vault_key_id": null,
                        "version": "12.0"
                    }
                },
                {
                    "address": "azurerm_network_interface.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "applied_dns_servers": [],
                        "dns_servers": [],
                        "ip_configuration": [
                            {}
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "internal",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westus",
                        "name": "example-nic",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "westus",
                        "name": "example-nsg",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": []
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "name": "privatelink.database.windows.net",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_private_dns_zone_virtual_network_link",
                    "values": {
                        "name": "example-pdzvnetlink",
                        "private_dns_zone_name": "privatelink.database.windows.net",
                        "registration_enabled": false,
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_endpoint.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "custom_dns_configs": [],
                        "ip_configuration": [],
                        "network_interface": [],
                        "private_dns_zone_configs": [],
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {}
                        ]
                    },
                    "type": "azurerm_private_endpoint",
                    "values": {
                        "custom_network_interface_name": null,
                        "ip_configuration": [],
                        "location": "westus",
                        "name": "example-private-endpoint",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "example-privateserviceconnection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": null
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Dynamic",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "westus",
                        "name": "example-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "example-rg",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_redis_cache.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "patch_schedule": [],
                        "primary_access_key": true,
                        "primary_connection_string": true,
                        "redis_configuration": [
                            {
                                "aof_storage_connection_string_0": true,
                                "aof_storage_connection_string_1": true,
                                "rdb_storage_connection_string": true
                            }
                        ],
                        "secondary_access_key": true,
                        "secondary_connection_string": true
                    },
                    "type": "azurerm_redis_cache",
                    "values": {
                        "capacity": 0,
                        "enable_non_ssl_port": false,
                        "family": "C",
                        "identity": [],
                        "location": "westus",
                        "minimum_tls_version": "1.2",
                        "name": "example-redis",
                        "patch_schedule": [],
                        "public_network_access_enabled": true,
                        "redis_configuration": [
                            {
                                "active_directory_authentication_enabled": null,
                                "aof_backup_enabled": null,
                                "aof_storage_connection_string_0": null,
                                "aof_storage_connection_string_1": null,
                                "data_persistence_authentication_method": "SAS",
                                "enable_authentication": true,
                                "maxmemory_policy": "volatile-lru",
                                "notify_keyspace_events": null,
                                "rdb_backup_enabled": null,
                                "rdb_backup_frequency": null,
                                "rdb_backup_max_snapshot_count": null,
                                "rdb_storage_connection_string": null,
                                "storage_account_subscription_id": null
                            }
                        ],
                        "resource_group_name": "example-rg",
                        "shard_count": null,
                        "sku_name": "Basic",
                        "subnet_id": null,
                        "tags": null,
                        "tenant_settings": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westus",
                        "managed_by": null,
                        "name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.endpoints",
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": []
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "endpoints-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet.gateway",
                    "mode": "managed",
                    "name": "gateway",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": []
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "gateway-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet.vm",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": []
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "vm-subnet",
                        "resource_group_name": "example-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.endpoints",
                    "mode": "managed",
                    "name": "endpoints",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.gateway",
                    "mode": "managed",
                    "name": "gateway",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.vm",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_space": [
                            false
                        ],
                        "ddos_protection_plan": [],
                        "dns_servers": [],
                        "encryption": [],
                        "subnet": []
                    },
                    "type": "azurerm_virtual_network",
                    "values": {
                        "address_space": [
                            "10.0.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westus",
                        "name": "example-network",
                        "resource_group_name": "example-rg",
                        "tags": null,
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "root_module": {
                "resources": [
                    {
                        "address": "data.azurerm_client_config.current",
                        "mode": "data",
                        "name": "current",
                        "provider_name": "registry.terraform.io/hashicorp/azurerm",
                        "schema_version": 0,
                        "sensitive_values": {},
                        "type": "azurerm_client_config",
                        "values": {
                            "client_id": "04b07795-8ddb-461a-bbee-02f9e1bf7b46",
                            "id": "Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wNGIwNzc5NS04ZGRiLTQ2MWEtYmJlZS0wMmY5ZTFiZjdiNDY7b2JqZWN0SWQ9NjJlNTM3MGEtMmJmNC00NzM0LTg1MTEtY2M3OTg4MjVmMDYyO3N1YnNjcmlwdGlvbklkPTFiNzQxNGEzLWIwMzQtNGY3Yi05NzA4LTM1N2YxZGRlY2Q3YTt0ZW5hbnRJZD1lNjZlNzdiNC01NzI0LTQ0ZDctODcyMS0wNmRmMTYwNDUwY2U=",
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                            "timeouts": null
                        }
                    }
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.endpoints"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_interface.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.gateway"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_key_vault.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_mssql_server.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_private_dns_zone.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.vm"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "azurerm_linux_virtual_machine.example"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.example"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "name": "example-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "example-backend-http-settings",
                            "path": "/",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": null,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "https-port",
                            "port": 443
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "example-gateway-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend-ip",
                            "frontend_port_name": "https-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "example-listener",
                            "protocol": "Https",
                            "require_sni": null,
                            "ssl_certificate_name": "example-ssl-cert",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus",
                    "name": "example-appgateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "example-backend-pool",
                            "backend_http_settings_name": "example-backend-http-settings",
                            "http_listener_name": "example-listener",
                            "name": "example-routing-rule",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "example-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_Small",
                            "tier": "Standard"
                        }
                    ],
                    "ssl_certificate": [
                        {
                            "data": "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",
                            "key_vault_secret_id": "",
                            "name": "example-ssl-cert",
                            "password": "export"
                        }
                    ],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [],
                    "zones": null
                },
                "after_sensitive": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "ip_addresses": []
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": [
                        {}
                    ],
                    "frontend_port": [
                        {}
                    ],
                    "gateway_ip_configuration": [
                        {}
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        }
                    ],
                    "identity": [],
                    "private_endpoint_connection": [],
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {}
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": true,
                    "ssl_policy": [],
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "id": true,
                            "ip_addresses": true
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": [
                        {
                            "id": true,
                            "private_ip_address": true,
                            "private_link_configuration_id": true,
                            "public_ip_address_id": true
                        }
                    ],
                    "frontend_port": [
                        {
                            "id": true
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "id": true,
                            "subnet_id": true
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "frontend_ip_configuration_id": true,
                            "frontend_port_id": true,
                            "host_names": [],
                            "id": true,
                            "ssl_certificate_id": true,
                            "ssl_profile_id": true
                        }
                    ],
                    "id": true,
                    "identity": [],
                    "private_endpoint_connection": true,
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        }
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": [
                        {
                            "id": true,
                            "public_cert_data": true
                        }
                    ],
                    "ssl_policy": true,
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_key_vault.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "westus",
                    "name": "example-keyvault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "example-rg",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": true,
                    "contact": true,
                    "id": true,
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_key_vault_secret.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "sql-password",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "Strong!Passw0rd"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "azurerm_linux_virtual_machine.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": null,
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "adminuser"
                        }
                    ],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": true,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "westus",
                    "max_bid_price": -1,
                    "name": "example-machine",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "ImageDefault",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "example-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_F2",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "UbuntuServer",
                            "publisher": "Canonical",
                            "sku": "24.04-LTS",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [],
                    "network_interface_ids": [],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_addresses": [],
                    "public_ip_addresses": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
                    "network_interface_ids": true,
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true,
                            "name": true
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "public_ip_address": true,
                    "public_ip_addresses": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_mssql_database.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_mode": "Default",
                    "elastic_pool_id": null,
                    "geo_backup_enabled": true,
                    "identity": [],
                    "import": [],
                    "name": "exampledb",
                    "recover_database_id": null,
                    "recovery_point_id": null,
                    "restore_dropped_database_id": null,
                    "restore_long_term_retention_backup_id": null,
                    "storage_account_type": "Geo",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_enabled": true,
                    "transparent_data_encryption_key_automatic_rotation_enabled": false,
                    "transparent_data_encryption_key_vault_key_id": null
                },
                "after_sensitive": {
                    "identity": [],
                    "import": [],
                    "long_term_retention_policy": [],
                    "short_term_retention_policy": [],
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "auto_pause_delay_in_minutes": true,
                    "collation": true,
                    "creation_source_database_id": true,
                    "enclave_type": true,
                    "id": true,
                    "identity": [],
                    "import": [],
                    "ledger_enabled": true,
                    "license_type": true,
                    "long_term_retention_policy": true,
                    "maintenance_configuration_name": true,
                    "max_size_gb": true,
                    "min_capacity": true,
                    "read_replica_count": true,
                    "read_scale": true,
                    "restore_point_in_time": true,
                    "sample_name": true,
                    "secondary_type": true,
                    "server_id": true,
                    "short_term_retention_policy": true,
                    "sku_name": true,
                    "threat_detection_policy": true,
                    "zone_redundant": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_database"
        },
        {
            "address": "azurerm_mssql_server.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "sqladmin",
                    "administrator_login_password": "Strong!Passw0rd",
                    "azuread_administrator": [],
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "westus",
                    "minimum_tls_version": "1.2",
                    "name": "example-sqlserver",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_key_vault_key_id": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "azuread_administrator": [],
                    "identity": [],
                    "restorable_dropped_database_ids": []
                },
                "after_unknown": {
                    "azuread_administrator": [],
                    "fully_qualified_domain_name": true,
                    "id": true,
                    "identity": [],
                    "primary_user_assigned_identity_id": true,
                    "restorable_dropped_database_ids": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
        },
        {
            "address": "azurerm_network_interface.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "internal",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westus",
                    "name": "example-nic",
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "applied_dns_servers": [],
                    "dns_servers": [],
                    "ip_configuration": [
                        {}
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "accelerated_networking_enabled": true,
                    "applied_dns_servers": true,
                    "dns_servers": true,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "id": true,
                    "internal_domain_name_suffix": true,
                    "ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "primary": true,
                            "private_ip_address": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_security_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus",
                    "name": "example-nsg",
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_private_dns_zone.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "privatelink.database.windows.net",
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": []
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "number_of_record_sets": true,
                    "soa_record": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "azurerm_private_dns_zone_virtual_network_link.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "example-pdzvnetlink",
                    "private_dns_zone_name": "privatelink.database.windows.net",
                    "registration_enabled": false,
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "azurerm_private_endpoint.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "westus",
                    "name": "example-private-endpoint",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "example-privateserviceconnection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": null
                        }
                    ],
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "custom_dns_configs": [],
                    "ip_configuration": [],
                    "network_interface": [],
                    "private_dns_zone_configs": [],
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {}
                    ]
                },
                "after_unknown": {
                    "custom_dns_configs": true,
                    "id": true,
                    "ip_configuration": [],
                    "network_interface": true,
                    "private_dns_zone_configs": true,
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "private_connection_resource_id": true,
                            "private_ip_address": true
                        }
                    ],
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_endpoint"
        },
        {
            "address": "azurerm_public_ip.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Dynamic",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": null,
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "westus",
                    "name": "example-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "example-rg",
                    "reverse_fqdn": null,
                    "sku": "Basic",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_redis_cache.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "capacity": 0,
                    "enable_non_ssl_port": false,
                    "family": "C",
                    "identity": [],
                    "location": "westus",
                    "minimum_tls_version": "1.2",
                    "name": "example-redis",
                    "patch_schedule": [],
                    "public_network_access_enabled": true,
                    "redis_configuration": [
                        {
                            "active_directory_authentication_enabled": null,
                            "aof_backup_enabled": null,
                            "aof_storage_connection_string_0": null,
                            "aof_storage_connection_string_1": null,
                            "data_persistence_authentication_method": "SAS",
                            "enable_authentication": true,
                            "maxmemory_policy": "volatile-lru",
                            "notify_keyspace_events": null,
                            "rdb_backup_enabled": null,
                            "rdb_backup_frequency": null,
                            "rdb_backup_max_snapshot_count": null,
                            "rdb_storage_connection_string": null,
                            "storage_account_subscription_id": null
                        }
                    ],
                    "resource_group_name": "example-rg",
                    "shard_count": null,
                    "sku_name": "Basic",
                    "subnet_id": null,
                    "tags": null,
                    "tenant_settings": null,
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {
                    "identity": [],
                    "patch_schedule": [],
                    "primary_access_key": true,
                    "primary_connection_string": true,
                    "redis_configuration": [
                        {
                            "aof_storage_connection_string_0": true,
                            "aof_storage_connection_string_1": true,
                            "rdb_storage_connection_string": true
                        }
                    ],
                    "secondary_access_key": true,
                    "secondary_connection_string": true
                },
                "after_unknown": {
                    "hostname": true,
                    "id": true,
                    "identity": [],
                    "non_ssl_port_enabled": true,
                    "patch_schedule": [],
                    "port": true,
                    "primary_access_key": true,
                    "primary_connection_string": true,
                    "private_static_ip_address": true,
                    "redis_configuration": [
                        {
                            "authentication_enabled": true,
                            "maxclients": true,
                            "maxfragmentationmemory_reserved": true,
                            "maxmemory_delta": true,
                            "maxmemory_reserved": true
                        }
                    ],
                    "redis_version": true,
                    "replicas_per_master": true,
                    "replicas_per_primary": true,
                    "secondary_access_key": true,
                    "secondary_connection_string": true,
                    "ssl_port": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_redis_cache"
        },
        {
            "address": "azurerm_resource_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus",
                    "managed_by": null,
                    "name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.endpoints",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "endpoints-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": []
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "id": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "endpoints",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.gateway",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "gateway-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": []
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "id": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.vm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "vm-subnet",
                    "resource_group_name": "example-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-network"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": []
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "id": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.endpoints",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "endpoints",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.gateway",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.vm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_network.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.0.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westus",
                    "name": "example-network",
                    "resource_group_name": "example-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [],
                    "encryption": [],
                    "subnet": []
                },
                "after_unknown": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": true,
                    "encryption": [],
                    "guid": true,
                    "id": true,
                    "subnet": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:09:03Z"
}