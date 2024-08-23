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
                    "address": "azurerm_api_management.apim",
                    "expressions": {
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-ApiManagement"
                        },
                        "publisher_email": {
                            "constant_value": "devsu@example.com"
                        },
                        "publisher_name": {
                            "constant_value": "devsu-test"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Developer_1"
                        },
                        "virtual_network_configuration": [
                            {
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.apim_subnet.id",
                                        "azurerm_subnet.apim_subnet"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "apim",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_api_management"
                },
                {
                    "address": "azurerm_application_gateway.app_gateway",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "constant_value": "AppGwBackendPool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "AppGwHttpSettings"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "AppGwFrontendIpConfig"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.app_gateway_public_ip.id",
                                        "azurerm_public_ip.app_gateway_public_ip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "http"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "AppGwIpConfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.agic_subnet.id",
                                        "azurerm_subnet.agic_subnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "AppGwFrontendIpConfig"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http"
                                },
                                "name": {
                                    "constant_value": "AppGwHttpListener"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-AppGateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "AppGwBackendPool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "AppGwHttpSettings"
                                },
                                "http_listener_name": {
                                    "constant_value": "AppGwHttpListener"
                                },
                                "name": {
                                    "constant_value": "AppGwRoutingRule"
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "constant_value": "Standard_v2"
                                },
                                "tier": {
                                    "constant_value": "Standard_v2"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "app_gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_container_registry.acr",
                    "expressions": {
                        "admin_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsuContainerRegistry"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Basic"
                        }
                    },
                    "mode": "managed",
                    "name": "acr",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_container_registry"
                },
                {
                    "address": "azurerm_key_vault.key_vault",
                    "expressions": {
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-KeyVault"
                        },
                        "network_acls": [
                            {
                                "bypass": {
                                    "constant_value": "AzureServices"
                                },
                                "default_action": {
                                    "constant_value": "Allow"
                                },
                                "ip_rules": {
                                    "constant_value": [
                                        "0.0.0.0/0"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "key_vault",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "default"
                                },
                                "node_count": {
                                    "constant_value": 1
                                },
                                "vm_size": {
                                    "constant_value": "Standard_DS2_v2"
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.aks_subnet.id",
                                        "azurerm_subnet.aks_subnet"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "constant_value": "myaks"
                        },
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "azurerm_user_assigned_identity.aks_identity.id",
                                        "azurerm_user_assigned_identity.aks_identity"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-AKSCluster"
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "constant_value": "10.0.0.10"
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "service_cidr": {
                                    "constant_value": "10.0.0.0/16"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_mssql_firewall_rule.example",
                    "expressions": {
                        "end_ip_address": {
                            "constant_value": "10.0.255.255"
                        },
                        "name": {
                            "constant_value": "allow-vnet"
                        },
                        "server_id": {
                            "references": [
                                "azurerm_mssql_server.sql_server.id",
                                "azurerm_mssql_server.sql_server"
                            ]
                        },
                        "start_ip_address": {
                            "constant_value": "10.0.0.0"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_firewall_rule"
                },
                {
                    "address": "azurerm_mssql_server.sql_server",
                    "expressions": {
                        "administrator_login": {
                            "constant_value": "sqladmin"
                        },
                        "administrator_login_password": {
                            "constant_value": "H@Sh1CoR3!"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "minimum_tls_version": {
                            "constant_value": "1.2"
                        },
                        "name": {
                            "constant_value": "devsusqlserver"
                        },
                        "public_network_access_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "version": {
                            "constant_value": "12.0"
                        }
                    },
                    "mode": "managed",
                    "name": "sql_server",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_server"
                },
                {
                    "address": "azurerm_network_security_group.nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-myNSG"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "security_rule": {
                            "constant_value": [
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "10.0.4.0/24",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": null,
                                    "destination_port_ranges": [
                                        "1433"
                                    ],
                                    "direction": "Inbound",
                                    "name": "allow_sql",
                                    "priority": 100,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.0.0/16",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                },
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "10.0.5.0/24",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": null,
                                    "destination_port_ranges": [
                                        "443"
                                    ],
                                    "direction": "Inbound",
                                    "name": "allow_acr",
                                    "priority": 101,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.0.0/16",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                },
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "10.0.2.0/24",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": null,
                                    "destination_port_ranges": [
                                        "80"
                                    ],
                                    "direction": "Inbound",
                                    "name": "allow_http",
                                    "priority": 102,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.0.0/16",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                },
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "10.0.2.0/24",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": null,
                                    "destination_port_ranges": [
                                        "443"
                                    ],
                                    "direction": "Inbound",
                                    "name": "allow_https",
                                    "priority": 103,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.0.0/16",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                },
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "10.0.1.0/24",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": null,
                                    "destination_port_ranges": [
                                        "443"
                                    ],
                                    "direction": "Inbound",
                                    "name": "allow_apim",
                                    "priority": 104,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.0.0/16",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                }
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_public_ip.app_gateway_public_ip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "AppGwPublicIP"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "app_gateway_public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "constant_value": "devsu-rg"
                        }
                    },
                    "mode": "managed",
                    "name": "rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.acr_pull",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.aks_identity.principal_id",
                                "azurerm_user_assigned_identity.aks_identity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "AcrPull"
                        },
                        "scope": {
                            "references": [
                                "azurerm_container_registry.acr.id",
                                "azurerm_container_registry.acr"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "acr_pull",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.sql_access",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.aks_identity.principal_id",
                                "azurerm_user_assigned_identity.aks_identity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_mssql_server.sql_server.id",
                                "azurerm_mssql_server.sql_server"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sql_access",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.acr_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.5.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-ACRSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "acr_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.agic_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-AgicSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agic_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.aks_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.3.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-AksSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.apim_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-ApimSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "apim_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.sql_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.4.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-SQLSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sql_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.acr_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.acr_subnet.id",
                                "azurerm_subnet.acr_subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "acr_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.agic_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.agic_subnet.id",
                                "azurerm_subnet.agic_subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agic_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.aks_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.aks_subnet.id",
                                "azurerm_subnet.aks_subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.apim_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.apim_subnet.id",
                                "azurerm_subnet.apim_subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "apim_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sql_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.sql_subnet.id",
                                "azurerm_subnet.sql_subnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sql_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_user_assigned_identity.aks_identity",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "aks-identity"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "devsu-Vnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vnet",
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
                },
                {
                    "address": "data.azurerm_mssql_database.sql_database",
                    "expressions": {
                        "name": {
                            "constant_value": "example-mssql-db"
                        },
                        "server_id": {
                            "references": [
                                "azurerm_mssql_server.sql_server.id",
                                "azurerm_mssql_server.sql_server"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "sql_database",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_database"
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
                    "address": "azurerm_api_management.apim",
                    "mode": "managed",
                    "name": "apim",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_location": [],
                        "certificate": [],
                        "delegation": [],
                        "hostname_configuration": [],
                        "identity": [
                            {}
                        ],
                        "policy": [],
                        "private_ip_addresses": [],
                        "protocols": [],
                        "public_ip_addresses": [],
                        "security": [],
                        "sign_in": [],
                        "sign_up": [],
                        "tenant_access": [],
                        "virtual_network_configuration": [
                            {}
                        ]
                    },
                    "type": "azurerm_api_management",
                    "values": {
                        "additional_location": [],
                        "certificate": [],
                        "client_certificate_enabled": false,
                        "gateway_disabled": false,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "eastus",
                        "min_api_version": null,
                        "name": "devsu-ApiManagement",
                        "public_ip_address_id": null,
                        "public_network_access_enabled": true,
                        "publisher_email": "devsu@example.com",
                        "publisher_name": "devsu-test",
                        "resource_group_name": "devsu-rg",
                        "sku_name": "Developer_1",
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_configuration": [
                            {}
                        ],
                        "virtual_network_type": "None",
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_application_gateway.app_gateway",
                    "mode": "managed",
                    "name": "app_gateway",
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
                        "ssl_certificate": [],
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
                                "ip_addresses": [],
                                "name": "AppGwBackendPool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "AppGwHttpSettings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "",
                                "protocol": "Http",
                                "request_timeout": 30,
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
                                "name": "AppGwFrontendIpConfig",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "http",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "AppGwIpConfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "AppGwFrontendIpConfig",
                                "frontend_port_name": "http",
                                "host_name": "",
                                "host_names": [],
                                "name": "AppGwHttpListener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "devsu-AppGateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "AppGwBackendPool",
                                "backend_http_settings_name": "AppGwHttpSettings",
                                "http_listener_name": "AppGwHttpListener",
                                "name": "AppGwRoutingRule",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "devsu-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_v2",
                                "tier": "Standard_v2"
                            }
                        ],
                        "ssl_certificate": [],
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
                    "address": "azurerm_container_registry.acr",
                    "mode": "managed",
                    "name": "acr",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "admin_password": true,
                        "encryption": [],
                        "georeplications": [],
                        "identity": [],
                        "network_rule_set": [],
                        "retention_policy": [],
                        "trust_policy": []
                    },
                    "type": "azurerm_container_registry",
                    "values": {
                        "admin_enabled": true,
                        "anonymous_pull_enabled": null,
                        "data_endpoint_enabled": null,
                        "export_policy_enabled": true,
                        "georeplications": [],
                        "identity": [],
                        "location": "eastus",
                        "name": "devsuContainerRegistry",
                        "network_rule_bypass_option": "AzureServices",
                        "public_network_access_enabled": true,
                        "quarantine_policy_enabled": null,
                        "resource_group_name": "devsu-rg",
                        "sku": "Basic",
                        "tags": null,
                        "timeouts": null,
                        "zone_redundancy_enabled": false
                    }
                },
                {
                    "address": "azurerm_key_vault.key_vault",
                    "mode": "managed",
                    "name": "key_vault",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": [
                            {
                                "ip_rules": [
                                    false
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": true,
                        "enabled_for_template_deployment": null,
                        "location": "eastus",
                        "name": "devsu-KeyVault",
                        "network_acls": [
                            {
                                "bypass": "AzureServices",
                                "default_action": "Allow",
                                "ip_rules": [
                                    "0.0.0.0/0"
                                ],
                                "virtual_network_subnet_ids": null
                            }
                        ],
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": null,
                        "resource_group_name": "devsu-rg",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 90,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
                    "mode": "managed",
                    "name": "aks",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "aci_connector_linux": [],
                        "api_server_access_profile": [],
                        "api_server_authorized_ip_ranges": [],
                        "auto_scaler_profile": [],
                        "azure_active_directory_role_based_access_control": [],
                        "confidential_computing": [],
                        "default_node_pool": [
                            {
                                "kubelet_config": [],
                                "linux_os_config": [],
                                "node_labels": {},
                                "node_network_profile": [],
                                "upgrade_settings": []
                            }
                        ],
                        "http_proxy_config": [],
                        "identity": [
                            {
                                "identity_ids": []
                            }
                        ],
                        "ingress_application_gateway": [],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kube_admin_config": true,
                        "kube_admin_config_raw": true,
                        "kube_config": true,
                        "kube_config_raw": true,
                        "kubelet_identity": [],
                        "linux_profile": [],
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "network_profile": [
                            {
                                "ip_versions": [],
                                "load_balancer_profile": [],
                                "nat_gateway_profile": [],
                                "outbound_ip_address_ids": [],
                                "outbound_ip_prefix_ids": [],
                                "pod_cidrs": [],
                                "service_cidrs": []
                            }
                        ],
                        "oms_agent": [],
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "storage_profile": [],
                        "web_app_routing": [],
                        "windows_profile": [],
                        "workload_autoscaler_profile": []
                    },
                    "type": "azurerm_kubernetes_cluster",
                    "values": {
                        "aci_connector_linux": [],
                        "automatic_channel_upgrade": null,
                        "azure_active_directory_role_based_access_control": [],
                        "azure_policy_enabled": null,
                        "confidential_computing": [],
                        "cost_analysis_enabled": null,
                        "custom_ca_trust_certificates_base64": null,
                        "default_node_pool": [
                            {
                                "capacity_reservation_group_id": null,
                                "custom_ca_trust_enabled": null,
                                "enable_auto_scaling": null,
                                "enable_host_encryption": null,
                                "enable_node_public_ip": null,
                                "fips_enabled": null,
                                "gpu_instance": null,
                                "host_group_id": null,
                                "kubelet_config": [],
                                "linux_os_config": [],
                                "max_count": null,
                                "message_of_the_day": null,
                                "min_count": null,
                                "name": "default",
                                "node_count": 1,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_type": "Managed",
                                "pod_subnet_id": null,
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": null,
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [],
                                "vm_size": "Standard_DS2_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "myaks",
                        "dns_prefix_private_cluster": null,
                        "edge_zone": null,
                        "enable_pod_security_policy": null,
                        "http_application_routing_enabled": null,
                        "http_proxy_config": [],
                        "identity": [
                            {
                                "type": "UserAssigned"
                            }
                        ],
                        "image_cleaner_enabled": false,
                        "image_cleaner_interval_hours": 48,
                        "ingress_application_gateway": [],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "linux_profile": [],
                        "local_account_disabled": null,
                        "location": "eastus",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "devsu-AKSCluster",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.0.0.10",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.0.0.0/16"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": null,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "devsu-rg",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": null,
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "azurerm_mssql_firewall_rule.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_mssql_firewall_rule",
                    "values": {
                        "end_ip_address": "10.0.255.255",
                        "name": "allow-vnet",
                        "start_ip_address": "10.0.0.0",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_mssql_server.sql_server",
                    "mode": "managed",
                    "name": "sql_server",
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
                        "administrator_login_password": "H@Sh1CoR3!",
                        "azuread_administrator": [],
                        "connection_policy": "Default",
                        "identity": [],
                        "location": "eastus",
                        "minimum_tls_version": "1.2",
                        "name": "devsusqlserver",
                        "outbound_network_restriction_enabled": false,
                        "public_network_access_enabled": false,
                        "resource_group_name": "devsu-rg",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_key_vault_key_id": null,
                        "version": "12.0"
                    }
                },
                {
                    "address": "azurerm_network_security_group.nsg",
                    "mode": "managed",
                    "name": "nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": [
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [
                                    false
                                ],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            }
                        ]
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "devsu-myNSG",
                        "resource_group_name": "devsu-rg",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "10.0.1.0/24",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "443"
                                ],
                                "direction": "Inbound",
                                "name": "allow_apim",
                                "priority": 104,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.0.0.0/16",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "10.0.2.0/24",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "443"
                                ],
                                "direction": "Inbound",
                                "name": "allow_https",
                                "priority": 103,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.0.0.0/16",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "10.0.2.0/24",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "80"
                                ],
                                "direction": "Inbound",
                                "name": "allow_http",
                                "priority": 102,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.0.0.0/16",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "10.0.4.0/24",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "1433"
                                ],
                                "direction": "Inbound",
                                "name": "allow_sql",
                                "priority": 100,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.0.0.0/16",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "10.0.5.0/24",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "",
                                "destination_port_ranges": [
                                    "443"
                                ],
                                "direction": "Inbound",
                                "name": "allow_acr",
                                "priority": 101,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.0.0.0/16",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.app_gateway_public_ip",
                    "mode": "managed",
                    "name": "app_gateway_public_ip",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "eastus",
                        "name": "AppGwPublicIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "devsu-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "mode": "managed",
                    "name": "rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "name": "devsu-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.acr_pull",
                    "mode": "managed",
                    "name": "acr_pull",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "AcrPull",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.sql_access",
                    "mode": "managed",
                    "name": "sql_access",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.acr_subnet",
                    "mode": "managed",
                    "name": "acr_subnet",
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
                            "10.0.5.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "devsu-ACRSubnet",
                        "resource_group_name": "devsu-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "devsu-Vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.agic_subnet",
                    "mode": "managed",
                    "name": "agic_subnet",
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
                        "name": "devsu-AgicSubnet",
                        "resource_group_name": "devsu-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "devsu-Vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.aks_subnet",
                    "mode": "managed",
                    "name": "aks_subnet",
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
                        "name": "devsu-AksSubnet",
                        "resource_group_name": "devsu-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "devsu-Vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.apim_subnet",
                    "mode": "managed",
                    "name": "apim_subnet",
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
                        "name": "devsu-ApimSubnet",
                        "resource_group_name": "devsu-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "devsu-Vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.sql_subnet",
                    "mode": "managed",
                    "name": "sql_subnet",
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
                            "10.0.4.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "devsu-SQLSubnet",
                        "resource_group_name": "devsu-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "devsu-Vnet"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.acr_nsg",
                    "mode": "managed",
                    "name": "acr_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.agic_nsg",
                    "mode": "managed",
                    "name": "agic_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.aks_nsg",
                    "mode": "managed",
                    "name": "aks_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.apim_nsg",
                    "mode": "managed",
                    "name": "apim_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.sql_nsg",
                    "mode": "managed",
                    "name": "sql_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.aks_identity",
                    "mode": "managed",
                    "name": "aks_identity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "eastus",
                        "name": "aks-identity",
                        "resource_group_name": "devsu-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "mode": "managed",
                    "name": "vnet",
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
                        "location": "eastus",
                        "name": "devsu-Vnet",
                        "resource_group_name": "devsu-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "data.azurerm_mssql_database.sql_database",
                    "mode": "data",
                    "name": "sql_database",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "identity": [],
                        "tags": {}
                    },
                    "type": "azurerm_mssql_database",
                    "values": {
                        "name": "example-mssql-db",
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
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.app_gateway_public_ip"
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
            "resource": "azurerm_container_registry.acr"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.aks_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_mssql_server.sql_server"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "azurerm_user_assigned_identity.aks_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.acr_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_user_assigned_identity.aks_identity"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.apim_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.agic_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.sql_subnet"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_mssql_database.sql_database",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "name": "example-mssql-db",
                    "timeouts": null
                },
                "after_sensitive": {
                    "identity": [],
                    "tags": {}
                },
                "after_unknown": {
                    "collation": true,
                    "elastic_pool_id": true,
                    "enclave_type": true,
                    "id": true,
                    "identity": true,
                    "license_type": true,
                    "max_size_gb": true,
                    "read_replica_count": true,
                    "read_scale": true,
                    "server_id": true,
                    "sku_name": true,
                    "storage_account_type": true,
                    "tags": true,
                    "transparent_data_encryption_enabled": true,
                    "transparent_data_encryption_key_automatic_rotation_enabled": true,
                    "transparent_data_encryption_key_vault_key_id": true,
                    "zone_redundant": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "sql_database",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_database"
        },
        {
            "address": "azurerm_api_management.apim",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_location": [],
                    "certificate": [],
                    "client_certificate_enabled": false,
                    "gateway_disabled": false,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "eastus",
                    "min_api_version": null,
                    "name": "devsu-ApiManagement",
                    "public_ip_address_id": null,
                    "public_network_access_enabled": true,
                    "publisher_email": "devsu@example.com",
                    "publisher_name": "devsu-test",
                    "resource_group_name": "devsu-rg",
                    "sku_name": "Developer_1",
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_configuration": [
                        {}
                    ],
                    "virtual_network_type": "None",
                    "zones": null
                },
                "after_sensitive": {
                    "additional_location": [],
                    "certificate": [],
                    "delegation": [],
                    "hostname_configuration": [],
                    "identity": [
                        {}
                    ],
                    "policy": [],
                    "private_ip_addresses": [],
                    "protocols": [],
                    "public_ip_addresses": [],
                    "security": [],
                    "sign_in": [],
                    "sign_up": [],
                    "tenant_access": [],
                    "virtual_network_configuration": [
                        {}
                    ]
                },
                "after_unknown": {
                    "additional_location": [],
                    "certificate": [],
                    "delegation": true,
                    "developer_portal_url": true,
                    "gateway_regional_url": true,
                    "gateway_url": true,
                    "hostname_configuration": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "management_api_url": true,
                    "notification_sender_email": true,
                    "policy": true,
                    "portal_url": true,
                    "private_ip_addresses": true,
                    "protocols": true,
                    "public_ip_addresses": true,
                    "scm_url": true,
                    "security": true,
                    "sign_in": true,
                    "sign_up": true,
                    "tenant_access": true,
                    "virtual_network_configuration": [
                        {
                            "subnet_id": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "apim",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_api_management"
        },
        {
            "address": "azurerm_application_gateway.app_gateway",
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
                            "ip_addresses": [],
                            "name": "AppGwBackendPool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "AppGwHttpSettings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 30,
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
                            "name": "AppGwFrontendIpConfig",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "http",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "AppGwIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "AppGwFrontendIpConfig",
                            "frontend_port_name": "http",
                            "host_name": "",
                            "host_names": [],
                            "name": "AppGwHttpListener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "devsu-AppGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AppGwBackendPool",
                            "backend_http_settings_name": "AppGwHttpSettings",
                            "http_listener_name": "AppGwHttpListener",
                            "name": "AppGwRoutingRule",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "devsu-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_v2",
                            "tier": "Standard_v2"
                        }
                    ],
                    "ssl_certificate": [],
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
                    "ssl_certificate": [],
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
                            "ip_addresses": []
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
                    "ssl_certificate": [],
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
            "name": "app_gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_container_registry.acr",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "admin_enabled": true,
                    "anonymous_pull_enabled": null,
                    "data_endpoint_enabled": null,
                    "export_policy_enabled": true,
                    "georeplications": [],
                    "identity": [],
                    "location": "eastus",
                    "name": "devsuContainerRegistry",
                    "network_rule_bypass_option": "AzureServices",
                    "public_network_access_enabled": true,
                    "quarantine_policy_enabled": null,
                    "resource_group_name": "devsu-rg",
                    "sku": "Basic",
                    "tags": null,
                    "timeouts": null,
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "admin_password": true,
                    "encryption": [],
                    "georeplications": [],
                    "identity": [],
                    "network_rule_set": [],
                    "retention_policy": [],
                    "trust_policy": []
                },
                "after_unknown": {
                    "admin_password": true,
                    "admin_username": true,
                    "encryption": true,
                    "georeplications": [],
                    "id": true,
                    "identity": [],
                    "login_server": true,
                    "network_rule_set": true,
                    "retention_policy": true,
                    "trust_policy": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "acr",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_registry"
        },
        {
            "address": "azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "devsu-KeyVault",
                    "network_acls": [
                        {
                            "bypass": "AzureServices",
                            "default_action": "Allow",
                            "ip_rules": [
                                "0.0.0.0/0"
                            ],
                            "virtual_network_subnet_ids": null
                        }
                    ],
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "devsu-rg",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 90,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [],
                    "contact": [],
                    "network_acls": [
                        {
                            "ip_rules": [
                                false
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "access_policy": true,
                    "contact": true,
                    "id": true,
                    "network_acls": [
                        {
                            "ip_rules": [
                                false
                            ]
                        }
                    ],
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_kubernetes_cluster.aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "aci_connector_linux": [],
                    "automatic_channel_upgrade": null,
                    "azure_active_directory_role_based_access_control": [],
                    "azure_policy_enabled": null,
                    "confidential_computing": [],
                    "cost_analysis_enabled": null,
                    "custom_ca_trust_certificates_base64": null,
                    "default_node_pool": [
                        {
                            "capacity_reservation_group_id": null,
                            "custom_ca_trust_enabled": null,
                            "enable_auto_scaling": null,
                            "enable_host_encryption": null,
                            "enable_node_public_ip": null,
                            "fips_enabled": null,
                            "gpu_instance": null,
                            "host_group_id": null,
                            "kubelet_config": [],
                            "linux_os_config": [],
                            "max_count": null,
                            "message_of_the_day": null,
                            "min_count": null,
                            "name": "default",
                            "node_count": 1,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_type": "Managed",
                            "pod_subnet_id": null,
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": null,
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [],
                            "vm_size": "Standard_DS2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "myaks",
                    "dns_prefix_private_cluster": null,
                    "edge_zone": null,
                    "enable_pod_security_policy": null,
                    "http_application_routing_enabled": null,
                    "http_proxy_config": [],
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "image_cleaner_enabled": false,
                    "image_cleaner_interval_hours": 48,
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "linux_profile": [],
                    "local_account_disabled": null,
                    "location": "eastus",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "devsu-AKSCluster",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.0.0.10",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.0.0.0/16"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "devsu-rg",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": null,
                    "timeouts": null,
                    "web_app_routing": [],
                    "workload_autoscaler_profile": [],
                    "workload_identity_enabled": false
                },
                "after_sensitive": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": [],
                    "api_server_authorized_ip_ranges": [],
                    "auto_scaler_profile": [],
                    "azure_active_directory_role_based_access_control": [],
                    "confidential_computing": [],
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "linux_os_config": [],
                            "node_labels": {},
                            "node_network_profile": [],
                            "upgrade_settings": []
                        }
                    ],
                    "http_proxy_config": [],
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": [],
                    "linux_profile": [],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "ip_versions": [],
                            "load_balancer_profile": [],
                            "nat_gateway_profile": [],
                            "outbound_ip_address_ids": [],
                            "outbound_ip_prefix_ids": [],
                            "pod_cidrs": [],
                            "service_cidrs": []
                        }
                    ],
                    "oms_agent": [],
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "storage_profile": [],
                    "web_app_routing": [],
                    "windows_profile": [],
                    "workload_autoscaler_profile": []
                },
                "after_unknown": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": true,
                    "api_server_authorized_ip_ranges": true,
                    "auto_scaler_profile": true,
                    "azure_active_directory_role_based_access_control": [],
                    "confidential_computing": [],
                    "current_kubernetes_version": true,
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "kubelet_disk_type": true,
                            "linux_os_config": [],
                            "max_pods": true,
                            "node_labels": true,
                            "node_network_profile": [],
                            "orchestrator_version": true,
                            "os_disk_size_gb": true,
                            "os_sku": true,
                            "upgrade_settings": [],
                            "vnet_subnet_id": true,
                            "workload_runtime": true
                        }
                    ],
                    "fqdn": true,
                    "http_application_routing_zone_name": true,
                    "http_proxy_config": [],
                    "id": true,
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": true,
                    "kubernetes_version": true,
                    "linux_profile": [],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "docker_bridge_cidr": true,
                            "ebpf_data_plane": true,
                            "ip_versions": true,
                            "load_balancer_profile": true,
                            "nat_gateway_profile": true,
                            "network_data_plane": true,
                            "network_mode": true,
                            "network_policy": true,
                            "outbound_ip_address_ids": true,
                            "outbound_ip_prefix_ids": true,
                            "pod_cidr": true,
                            "pod_cidrs": true,
                            "service_cidrs": true
                        }
                    ],
                    "node_resource_group": true,
                    "node_resource_group_id": true,
                    "oidc_issuer_url": true,
                    "oms_agent": [],
                    "portal_fqdn": true,
                    "private_dns_zone_id": true,
                    "private_fqdn": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "storage_profile": [],
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_mssql_firewall_rule.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "end_ip_address": "10.0.255.255",
                    "name": "allow-vnet",
                    "start_ip_address": "10.0.0.0",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "server_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_firewall_rule"
        },
        {
            "address": "azurerm_mssql_server.sql_server",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "sqladmin",
                    "administrator_login_password": "H@Sh1CoR3!",
                    "azuread_administrator": [],
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "eastus",
                    "minimum_tls_version": "1.2",
                    "name": "devsusqlserver",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": false,
                    "resource_group_name": "devsu-rg",
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
            "name": "sql_server",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
        },
        {
            "address": "azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "devsu-myNSG",
                    "resource_group_name": "devsu-rg",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "10.0.1.0/24",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "443"
                            ],
                            "direction": "Inbound",
                            "name": "allow_apim",
                            "priority": 104,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.0.0/16",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "10.0.2.0/24",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "443"
                            ],
                            "direction": "Inbound",
                            "name": "allow_https",
                            "priority": 103,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.0.0/16",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "10.0.2.0/24",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "80"
                            ],
                            "direction": "Inbound",
                            "name": "allow_http",
                            "priority": 102,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.0.0/16",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "10.0.4.0/24",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "1433"
                            ],
                            "direction": "Inbound",
                            "name": "allow_sql",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.0.0/16",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "10.0.5.0/24",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "",
                            "destination_port_ranges": [
                                "443"
                            ],
                            "direction": "Inbound",
                            "name": "allow_acr",
                            "priority": 101,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.0.0/16",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        }
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [
                                false
                            ],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_public_ip.app_gateway_public_ip",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": null,
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "eastus",
                    "name": "AppGwPublicIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "devsu-rg",
                    "reverse_fqdn": null,
                    "sku": "Standard",
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
            "name": "app_gateway_public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "devsu-rg",
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
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.acr_pull",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "AcrPull",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "acr_pull",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.sql_access",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "sql_access",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.acr_subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.5.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "devsu-ACRSubnet",
                    "resource_group_name": "devsu-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "devsu-Vnet"
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
            "name": "acr_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.agic_subnet",
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
                    "name": "devsu-AgicSubnet",
                    "resource_group_name": "devsu-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "devsu-Vnet"
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
            "name": "agic_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.aks_subnet",
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
                    "name": "devsu-AksSubnet",
                    "resource_group_name": "devsu-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "devsu-Vnet"
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
            "name": "aks_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.apim_subnet",
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
                    "name": "devsu-ApimSubnet",
                    "resource_group_name": "devsu-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "devsu-Vnet"
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
            "name": "apim_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.sql_subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.4.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "devsu-SQLSubnet",
                    "resource_group_name": "devsu-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "devsu-Vnet"
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
            "name": "sql_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.acr_nsg",
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
            "name": "acr_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.agic_nsg",
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
            "name": "agic_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.aks_nsg",
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
            "name": "aks_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.apim_nsg",
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
            "name": "apim_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.sql_nsg",
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
            "name": "sql_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_user_assigned_identity.aks_identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "aks-identity",
                    "resource_group_name": "devsu-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "principal_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_network.vnet",
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
                    "location": "eastus",
                    "name": "devsu-Vnet",
                    "resource_group_name": "devsu-rg",
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
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:51:53Z"
}