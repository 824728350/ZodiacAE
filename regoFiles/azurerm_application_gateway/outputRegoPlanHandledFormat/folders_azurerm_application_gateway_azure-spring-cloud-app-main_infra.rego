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
                "name": "azurerm"
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            }
        },
        "root_module": {
            "outputs": {
                "self": {
                    "description": "Runtime environment",
                    "expression": {
                        "references": [
                            "terraform.workspace"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.this",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_spring_cloud_app.this.fqdn",
                                        "azurerm_spring_cloud_app.this"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.name"
                                    ]
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "references": [
                                        "local.name"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "fe-config"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.public_ip.id",
                                        "azurerm_public_ip.public_ip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "fe-port"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "local.name"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.waf.id",
                                        "azurerm_subnet.waf"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "fe-config"
                                },
                                "frontend_port_name": {
                                    "constant_value": "fe-port"
                                },
                                "name": {
                                    "constant_value": "be-listener"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.this.location",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "name": {
                            "constant_value": "appgateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "springapp_ap"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "demo-bhs"
                                },
                                "http_listener_name": {
                                    "constant_value": "be-listener"
                                },
                                "name": {
                                    "constant_value": "demo-rqrt"
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
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
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        },
                        "waf_configuration": [
                            {
                                "disabled_rule_group": [
                                    {
                                        "rule_group_name": {
                                            "constant_value": "REQUEST-941-APPLICATION-ATTACK-XSS"
                                        }
                                    }
                                ],
                                "enabled": {
                                    "constant_value": false
                                },
                                "firewall_mode": {
                                    "constant_value": "Prevention"
                                },
                                "rule_set_type": {
                                    "constant_value": "OWASP"
                                },
                                "rule_set_version": {
                                    "constant_value": "3.1"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_dns_zone.dns_zone",
                    "expressions": {
                        "name": {
                            "constant_value": "publicdns.com"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "dns_zone",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_dns_zone"
                },
                {
                    "address": "azurerm_key_vault.key_vault_main",
                    "expressions": {
                        "access_policy": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current",
                                "data.azurerm_client_config.current.object_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_string.kv_random_string.result",
                                "random_string.kv_random_string"
                            ]
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "soft_delete_retention_days": {
                            "constant_value": 7
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "key_vault_main",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_postgresql_database.this",
                    "expressions": {
                        "charset": {
                            "constant_value": "UTF8"
                        },
                        "collation": {
                            "constant_value": "English_United States.1252"
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "server_name": {
                            "references": [
                                "azurerm_postgresql_server.this.name",
                                "azurerm_postgresql_server.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_postgresql_database"
                },
                {
                    "address": "azurerm_postgresql_server.this",
                    "expressions": {
                        "administrator_login": {
                            "constant_value": "psqladmin"
                        },
                        "administrator_login_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "auto_grow_enabled": {
                            "constant_value": true
                        },
                        "backup_retention_days": {
                            "constant_value": 7
                        },
                        "geo_redundant_backup_enabled": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.this.location",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "B_Gen5_2"
                        },
                        "ssl_enforcement_enabled": {
                            "constant_value": true
                        },
                        "storage_mb": {
                            "constant_value": 5120
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        },
                        "version": {
                            "constant_value": "9.5"
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_postgresql_server"
                },
                {
                    "address": "azurerm_private_dns_zone.private_dns_zone",
                    "expressions": {
                        "name": {
                            "constant_value": "private.foo"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "private_dns_zone",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_endpoint.private_endpoint_keyvault",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "constant_value": "pe_keyvault"
                        },
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "connectiontokv"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_key_vault.key_vault_main.id",
                                        "azurerm_key_vault.key_vault_main"
                                    ]
                                },
                                "subresource_names": {
                                    "constant_value": [
                                        "Vault"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.springapps.id",
                                "azurerm_subnet.springapps"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "private_endpoint_keyvault",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_endpoint"
                },
                {
                    "address": "azurerm_public_ip.public_ip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.this.location",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "name": {
                            "constant_value": "pip-ag"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.this",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_spring_cloud_app.this",
                    "expressions": {
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "service_name": {
                            "references": [
                                "azurerm_spring_cloud_service.this.name",
                                "azurerm_spring_cloud_service.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_spring_cloud_app"
                },
                {
                    "address": "azurerm_spring_cloud_service.this",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        },
                        "zone_redundant": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_spring_cloud_service"
                },
                {
                    "address": "azurerm_subnet.database",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.2.0/24"
                            ]
                        },
                        "delegation": [
                            {
                                "name": {
                                    "constant_value": "Microsoft.DBforPostgreSQL/serversv2"
                                },
                                "service_delegation": [
                                    {
                                        "actions": {
                                            "constant_value": [
                                                "Microsoft.Network/virtualNetworks/subnets/action",
                                                "Microsoft.Network/virtualNetworks/subnets/join/action"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "Microsoft.DBforPostgreSQL/serversv2"
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "snet_database_name"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.this.name",
                                "azurerm_virtual_network.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "database",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.springapps",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.3.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "snet_springapp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.this.name",
                                "azurerm_virtual_network.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "springapps",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.subnet_keyvault",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "snet_endpoint"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.this.name",
                                "azurerm_virtual_network.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "subnet_keyvault",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.waf",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.4.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "snet_waf"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.this.name",
                                "azurerm_virtual_network.this"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "waf",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.this",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.this.name",
                                "azurerm_resource_group.this"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "random_string.kv_random_string",
                    "expressions": {
                        "length": {
                            "constant_value": 8
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "kv_random_string",
                    "provider_config_key": "random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ],
            "variables": {
                "admin_password": {
                    "default": "Br@inb0ard",
                    "sensitive": true
                },
                "location": {
                    "default": "West Europe"
                },
                "tags": {
                    "default": {},
                    "description": "Default tags to apply to all resources."
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "self": {
            "actions": [
                "create"
            ],
            "after": {
                "workspace": "default"
            },
            "after_sensitive": false,
            "after_unknown": {
                "last_update": true
            },
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "self": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.this",
                    "mode": "managed",
                    "name": "this",
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
                        "tags": {},
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [
                            {
                                "disabled_rule_group": [
                                    {}
                                ],
                                "exclusion": []
                            }
                        ]
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "ip_addresses": [],
                                "name": "spring-boot"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "spring-boot",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "",
                                "protocol": "Http",
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
                                "name": "fe-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "fe-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "spring-boot-gateway-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "fe-config",
                                "frontend_port_name": "fe-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "be-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "appgateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "springapp_ap",
                                "backend_http_settings_name": "demo-bhs",
                                "http_listener_name": "be-listener",
                                "name": "demo-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "rg-spring-boot",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_Small",
                                "tier": "Standard"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_profile": [],
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [
                            {
                                "disabled_rule_group": [
                                    {
                                        "rule_group_name": "REQUEST-941-APPLICATION-ATTACK-XSS",
                                        "rules": null
                                    }
                                ],
                                "enabled": false,
                                "exclusion": [],
                                "file_upload_limit_mb": 100,
                                "firewall_mode": "Prevention",
                                "max_request_body_size_kb": 128,
                                "request_body_check": true,
                                "rule_set_type": "OWASP",
                                "rule_set_version": "3.1"
                            }
                        ],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_dns_zone.dns_zone",
                    "mode": "managed",
                    "name": "dns_zone",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "name_servers": [],
                        "soa_record": [],
                        "tags": {}
                    },
                    "type": "azurerm_dns_zone",
                    "values": {
                        "name": "publicdns.com",
                        "resource_group_name": "rg-spring-boot",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault.key_vault_main",
                    "mode": "managed",
                    "name": "key_vault_main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [
                            {
                                "key_permissions": [
                                    false,
                                    false,
                                    false
                                ],
                                "secret_permissions": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "storage_permissions": [
                                    false,
                                    false
                                ]
                            }
                        ],
                        "contact": [],
                        "network_acls": [],
                        "tags": {}
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "access_policy": [
                            {
                                "application_id": null,
                                "certificate_permissions": null,
                                "key_permissions": [
                                    "Get",
                                    "Create",
                                    "List"
                                ],
                                "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                "secret_permissions": [
                                    "Set",
                                    "Get",
                                    "Delete",
                                    "Purge",
                                    "Recover",
                                    "List"
                                ],
                                "storage_permissions": [
                                    "Get",
                                    "List"
                                ],
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                            }
                        ],
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": true,
                        "enabled_for_template_deployment": null,
                        "location": "westeurope",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "rg-spring-boot",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": {
                            "env": "Development"
                        },
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_postgresql_database.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_postgresql_database",
                    "values": {
                        "charset": "UTF8",
                        "collation": "English_United States.1252",
                        "name": "spring-boot-db",
                        "resource_group_name": "rg-spring-boot",
                        "server_name": "spring-boot-postgresql-server",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_postgresql_server.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "administrator_login_password": true,
                        "identity": [],
                        "tags": {},
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_postgresql_server",
                    "values": {
                        "administrator_login": "psqladmin",
                        "administrator_login_password": "Br@inb0ard",
                        "auto_grow_enabled": true,
                        "backup_retention_days": 7,
                        "create_mode": "Default",
                        "creation_source_server_id": null,
                        "geo_redundant_backup_enabled": false,
                        "identity": [],
                        "infrastructure_encryption_enabled": null,
                        "location": "westeurope",
                        "name": "spring-boot-postgresql-server",
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-spring-boot",
                        "restore_point_in_time": null,
                        "sku_name": "B_Gen5_2",
                        "ssl_enforcement_enabled": true,
                        "ssl_minimal_tls_version_enforced": "TLS1_2",
                        "storage_mb": 5120,
                        "tags": {
                            "env": "Development"
                        },
                        "threat_detection_policy": [],
                        "timeouts": null,
                        "version": "9.5"
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.private_dns_zone",
                    "mode": "managed",
                    "name": "private_dns_zone",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": [],
                        "tags": {}
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "name": "private.foo",
                        "resource_group_name": "rg-spring-boot",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_endpoint.private_endpoint_keyvault",
                    "mode": "managed",
                    "name": "private_endpoint_keyvault",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "custom_dns_configs": [],
                        "ip_configuration": [],
                        "network_interface": [],
                        "private_dns_zone_configs": [],
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "subresource_names": [
                                    false
                                ]
                            }
                        ],
                        "tags": {}
                    },
                    "type": "azurerm_private_endpoint",
                    "values": {
                        "custom_network_interface_name": null,
                        "ip_configuration": [],
                        "location": "westeurope",
                        "name": "pe_keyvault",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "connectiontokv",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": [
                                    "Vault"
                                ]
                            }
                        ],
                        "resource_group_name": "rg-spring-boot",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.public_ip",
                    "mode": "managed",
                    "name": "public_ip",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
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
                        "location": "westeurope",
                        "name": "pip-ag",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-spring-boot",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "rg-spring-boot",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_spring_cloud_app.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "custom_persistent_disk": [],
                        "identity": [],
                        "ingress_settings": [],
                        "persistent_disk": []
                    },
                    "type": "azurerm_spring_cloud_app",
                    "values": {
                        "custom_persistent_disk": [],
                        "https_only": false,
                        "identity": [],
                        "is_public": false,
                        "name": "spring-boot-app",
                        "public_endpoint_enabled": null,
                        "resource_group_name": "rg-spring-boot",
                        "service_name": "spring-boot-svc",
                        "timeouts": null,
                        "tls_enabled": false
                    }
                },
                {
                    "address": "azurerm_spring_cloud_service.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "config_server_git_setting": [],
                        "container_registry": [],
                        "default_build_service": [],
                        "marketplace": [],
                        "network": [],
                        "outbound_public_ip_addresses": [],
                        "required_network_traffic_rules": [],
                        "tags": {},
                        "trace": []
                    },
                    "type": "azurerm_spring_cloud_service",
                    "values": {
                        "build_agent_pool_size": null,
                        "config_server_git_setting": [],
                        "container_registry": [],
                        "default_build_service": [],
                        "location": "westeurope",
                        "log_stream_public_endpoint_enabled": null,
                        "managed_environment_id": null,
                        "name": "spring-boot-svc",
                        "network": [],
                        "resource_group_name": "rg-spring-boot",
                        "service_registry_enabled": null,
                        "sku_name": "S0",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null,
                        "trace": [],
                        "zone_redundant": true
                    }
                },
                {
                    "address": "azurerm_subnet.database",
                    "mode": "managed",
                    "name": "database",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": [
                            {
                                "service_delegation": [
                                    {
                                        "actions": [
                                            false,
                                            false
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.1.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [
                            {
                                "name": "Microsoft.DBforPostgreSQL/serversv2",
                                "service_delegation": [
                                    {
                                        "actions": [
                                            "Microsoft.Network/virtualNetworks/subnets/action",
                                            "Microsoft.Network/virtualNetworks/subnets/join/action"
                                        ],
                                        "name": "Microsoft.DBforPostgreSQL/serversv2"
                                    }
                                ]
                            }
                        ],
                        "name": "snet_database_name",
                        "resource_group_name": "rg-spring-boot",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "spring-boot"
                    }
                },
                {
                    "address": "azurerm_subnet.springapps",
                    "mode": "managed",
                    "name": "springapps",
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
                            "10.1.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet_springapp",
                        "resource_group_name": "rg-spring-boot",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "spring-boot"
                    }
                },
                {
                    "address": "azurerm_subnet.subnet_keyvault",
                    "mode": "managed",
                    "name": "subnet_keyvault",
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
                            "10.1.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet_endpoint",
                        "resource_group_name": "rg-spring-boot",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "spring-boot"
                    }
                },
                {
                    "address": "azurerm_subnet.waf",
                    "mode": "managed",
                    "name": "waf",
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
                            "10.1.4.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet_waf",
                        "resource_group_name": "rg-spring-boot",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "spring-boot"
                    }
                },
                {
                    "address": "azurerm_virtual_network.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_space": [
                            false
                        ],
                        "ddos_protection_plan": [],
                        "dns_servers": [],
                        "encryption": [],
                        "subnet": [],
                        "tags": {}
                    },
                    "type": "azurerm_virtual_network",
                    "values": {
                        "address_space": [
                            "10.1.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "spring-boot",
                        "resource_group_name": "rg-spring-boot",
                        "tags": {
                            "env": "Development"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "random_string.kv_random_string",
                    "mode": "managed",
                    "name": "kv_random_string",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 8,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": false,
                        "upper": false
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
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.springapps"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "azurerm_spring_cloud_app.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.this"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_spring_cloud_service.this"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_postgresql_server.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_key_vault.key_vault_main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.waf"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.this"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_string.kv_random_string"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "ip_addresses": [],
                            "name": "spring-boot"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "spring-boot",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
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
                            "name": "fe-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "fe-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "spring-boot-gateway-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "fe-config",
                            "frontend_port_name": "fe-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "be-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "appgateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "springapp_ap",
                            "backend_http_settings_name": "demo-bhs",
                            "http_listener_name": "be-listener",
                            "name": "demo-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "rg-spring-boot",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_Small",
                            "tier": "Standard"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [
                                {
                                    "rule_group_name": "REQUEST-941-APPLICATION-ATTACK-XSS",
                                    "rules": null
                                }
                            ],
                            "enabled": false,
                            "exclusion": [],
                            "file_upload_limit_mb": 100,
                            "firewall_mode": "Prevention",
                            "max_request_body_size_kb": 128,
                            "request_body_check": true,
                            "rule_set_type": "OWASP",
                            "rule_set_version": "3.1"
                        }
                    ],
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [
                                {}
                            ],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [
                                {}
                            ],
                            "exclusion": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_dns_zone.dns_zone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "publicdns.com",
                    "resource_group_name": "rg-spring-boot",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "name_servers": [],
                    "soa_record": [],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "name_servers": true,
                    "number_of_record_sets": true,
                    "soa_record": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "dns_zone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dns_zone"
        },
        {
            "address": "azurerm_key_vault.key_vault_main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": null,
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List"
                            ],
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "secret_permissions": [
                                "Set",
                                "Get",
                                "Delete",
                                "Purge",
                                "Recover",
                                "List"
                            ],
                            "storage_permissions": [
                                "Get",
                                "List"
                            ],
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "westeurope",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "rg-spring-boot",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": {
                        "env": "Development"
                    },
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [
                        {
                            "key_permissions": [
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "storage_permissions": [
                                false,
                                false
                            ]
                        }
                    ],
                    "contact": [],
                    "network_acls": [],
                    "tags": {}
                },
                "after_unknown": {
                    "access_policy": [
                        {
                            "key_permissions": [
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "storage_permissions": [
                                false,
                                false
                            ]
                        }
                    ],
                    "contact": true,
                    "id": true,
                    "name": true,
                    "network_acls": true,
                    "tags": {},
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "key_vault_main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_postgresql_database.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "charset": "UTF8",
                    "collation": "English_United States.1252",
                    "name": "spring-boot-db",
                    "resource_group_name": "rg-spring-boot",
                    "server_name": "spring-boot-postgresql-server",
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
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_postgresql_database"
        },
        {
            "address": "azurerm_postgresql_server.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "psqladmin",
                    "administrator_login_password": "Br@inb0ard",
                    "auto_grow_enabled": true,
                    "backup_retention_days": 7,
                    "create_mode": "Default",
                    "creation_source_server_id": null,
                    "geo_redundant_backup_enabled": false,
                    "identity": [],
                    "infrastructure_encryption_enabled": null,
                    "location": "westeurope",
                    "name": "spring-boot-postgresql-server",
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-spring-boot",
                    "restore_point_in_time": null,
                    "sku_name": "B_Gen5_2",
                    "ssl_enforcement_enabled": true,
                    "ssl_minimal_tls_version_enforced": "TLS1_2",
                    "storage_mb": 5120,
                    "tags": {
                        "env": "Development"
                    },
                    "threat_detection_policy": [],
                    "timeouts": null,
                    "version": "9.5"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "identity": [],
                    "tags": {},
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "identity": [],
                    "tags": {},
                    "threat_detection_policy": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_postgresql_server"
        },
        {
            "address": "azurerm_private_dns_zone.private_dns_zone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "private.foo",
                    "resource_group_name": "rg-spring-boot",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": [],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "number_of_record_sets": true,
                    "soa_record": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "private_dns_zone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "azurerm_private_endpoint.private_endpoint_keyvault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "westeurope",
                    "name": "pe_keyvault",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "connectiontokv",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": [
                                "Vault"
                            ]
                        }
                    ],
                    "resource_group_name": "rg-spring-boot",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "custom_dns_configs": [],
                    "ip_configuration": [],
                    "network_interface": [],
                    "private_dns_zone_configs": [],
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "subresource_names": [
                                false
                            ]
                        }
                    ],
                    "tags": {}
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
                            "private_ip_address": true,
                            "subresource_names": [
                                false
                            ]
                        }
                    ],
                    "subnet_id": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "private_endpoint_keyvault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_endpoint"
        },
        {
            "address": "azurerm_public_ip.public_ip",
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
                    "location": "westeurope",
                    "name": "pip-ag",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-spring-boot",
                    "reverse_fqdn": null,
                    "sku": "Basic",
                    "sku_tier": "Regional",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "rg-spring-boot",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_spring_cloud_app.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_persistent_disk": [],
                    "https_only": false,
                    "identity": [],
                    "is_public": false,
                    "name": "spring-boot-app",
                    "public_endpoint_enabled": null,
                    "resource_group_name": "rg-spring-boot",
                    "service_name": "spring-boot-svc",
                    "timeouts": null,
                    "tls_enabled": false
                },
                "after_sensitive": {
                    "custom_persistent_disk": [],
                    "identity": [],
                    "ingress_settings": [],
                    "persistent_disk": []
                },
                "after_unknown": {
                    "addon_json": true,
                    "custom_persistent_disk": [],
                    "fqdn": true,
                    "id": true,
                    "identity": [],
                    "ingress_settings": true,
                    "persistent_disk": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_spring_cloud_app"
        },
        {
            "address": "azurerm_spring_cloud_service.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "build_agent_pool_size": null,
                    "config_server_git_setting": [],
                    "container_registry": [],
                    "default_build_service": [],
                    "location": "westeurope",
                    "log_stream_public_endpoint_enabled": null,
                    "managed_environment_id": null,
                    "name": "spring-boot-svc",
                    "network": [],
                    "resource_group_name": "rg-spring-boot",
                    "service_registry_enabled": null,
                    "sku_name": "S0",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null,
                    "trace": [],
                    "zone_redundant": true
                },
                "after_sensitive": {
                    "config_server_git_setting": [],
                    "container_registry": [],
                    "default_build_service": [],
                    "marketplace": [],
                    "network": [],
                    "outbound_public_ip_addresses": [],
                    "required_network_traffic_rules": [],
                    "tags": {},
                    "trace": []
                },
                "after_unknown": {
                    "config_server_git_setting": [],
                    "container_registry": [],
                    "default_build_service": [],
                    "id": true,
                    "marketplace": true,
                    "network": [],
                    "outbound_public_ip_addresses": true,
                    "required_network_traffic_rules": true,
                    "service_registry_id": true,
                    "sku_tier": true,
                    "tags": {},
                    "trace": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_spring_cloud_service"
        },
        {
            "address": "azurerm_subnet.database",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [
                        {
                            "name": "Microsoft.DBforPostgreSQL/serversv2",
                            "service_delegation": [
                                {
                                    "actions": [
                                        "Microsoft.Network/virtualNetworks/subnets/action",
                                        "Microsoft.Network/virtualNetworks/subnets/join/action"
                                    ],
                                    "name": "Microsoft.DBforPostgreSQL/serversv2"
                                }
                            ]
                        }
                    ],
                    "name": "snet_database_name",
                    "resource_group_name": "rg-spring-boot",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "spring-boot"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [
                        {
                            "service_delegation": [
                                {
                                    "actions": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [
                        {
                            "service_delegation": [
                                {
                                    "actions": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
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
            "name": "database",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.springapps",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet_springapp",
                    "resource_group_name": "rg-spring-boot",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "spring-boot"
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
            "name": "springapps",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.subnet_keyvault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet_endpoint",
                    "resource_group_name": "rg-spring-boot",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "spring-boot"
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
            "name": "subnet_keyvault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.waf",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.4.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet_waf",
                    "resource_group_name": "rg-spring-boot",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "spring-boot"
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
            "name": "waf",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.1.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "spring-boot",
                    "resource_group_name": "rg-spring-boot",
                    "tags": {
                        "env": "Development"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [],
                    "encryption": [],
                    "subnet": [],
                    "tags": {}
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
                    "subnet": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "random_string.kv_random_string",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 8,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": false,
                    "upper": false
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv_random_string",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:53:37Z",
    "variables": {
        "admin_password": {
            "value": "Br@inb0ard"
        },
        "location": {
            "value": "West Europe"
        },
        "tags": {
            "value": {}
        }
    }
}