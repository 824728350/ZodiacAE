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
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_postgresql_server.example",
                    "expressions": {
                        "administrator_login": {
                            "constant_value": "psqladmin"
                        },
                        "administrator_login_password": {
                            "constant_value": "H@Sh1CoR3!"
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
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "GP_Gen5_4"
                        },
                        "ssl_enforcement_enabled": {
                            "constant_value": true
                        },
                        "storage_mb": {
                            "constant_value": 5120
                        },
                        "version": {
                            "constant_value": "9.5"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_postgresql_server"
                },
                {
                    "address": "azurerm_private_dns_zone.example",
                    "expressions": {
                        "name": {
                            "constant_value": "privatelink.postgres.database.azure.com"
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
                    "address": "azurerm_private_endpoint.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "private_dns_zone_group": [
                            {
                                "name": {
                                    "constant_value": "private-dns-zone-group"
                                },
                                "private_dns_zone_ids": {
                                    "references": [
                                        "azurerm_private_dns_zone.example.id",
                                        "azurerm_private_dns_zone.example"
                                    ]
                                }
                            }
                        ],
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "tfex-postgresql-connection"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_postgresql_server.example.id",
                                        "azurerm_postgresql_server.example"
                                    ]
                                },
                                "subresource_names": {
                                    "constant_value": [
                                        "postgresqlServer"
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
                                "azurerm_subnet.endpoint.id",
                                "azurerm_subnet.endpoint"
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
                    "address": "azurerm_resource_group.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.endpoint",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "endpoint"
                        },
                        "private_endpoint_network_policies_enabled": {
                            "constant_value": false
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
                    "name": "endpoint",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
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
                            "references": [
                                "var.prefix"
                            ]
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
                }
            ],
            "variables": {
                "location": {
                    "default": "eastus",
                    "description": "The Azure Region in which all resources in this example should be created."
                },
                "prefix": {
                    "default": "zodiac",
                    "description": "The Prefix used for all resources in this example"
                }
            }
        }
    },
    "format_version": "1.1",
    "planned_values": {
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_postgresql_server.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_postgresql_server",
                    "values": {
                        "administrator_login": "psqladmin",
                        "administrator_login_password": "H@Sh1CoR3!",
                        "auto_grow_enabled": true,
                        "backup_retention_days": 7,
                        "create_mode": "Default",
                        "creation_source_server_id": null,
                        "geo_redundant_backup_enabled": false,
                        "identity": [],
                        "infrastructure_encryption_enabled": null,
                        "location": "eastus",
                        "name": "zodiac-postgresql",
                        "public_network_access_enabled": true,
                        "resource_group_name": "zodiac-resources",
                        "restore_point_in_time": null,
                        "sku_name": "GP_Gen5_4",
                        "ssl_enforcement_enabled": true,
                        "ssl_minimal_tls_version_enforced": "TLS1_2",
                        "storage_mb": 5120,
                        "tags": null,
                        "threat_detection_policy": [],
                        "timeouts": null,
                        "version": "9.5"
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
                        "name": "privatelink.postgres.database.azure.com",
                        "resource_group_name": "zodiac-resources",
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
                        "private_dns_zone_group": [
                            {
                                "private_dns_zone_ids": []
                            }
                        ],
                        "private_service_connection": [
                            {
                                "subresource_names": [
                                    false
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_private_endpoint",
                    "values": {
                        "custom_network_interface_name": null,
                        "ip_configuration": [],
                        "location": "eastus",
                        "name": "zodiac-pe",
                        "private_dns_zone_group": [
                            {
                                "name": "private-dns-zone-group"
                            }
                        ],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "tfex-postgresql-connection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": [
                                    "postgresqlServer"
                                ]
                            }
                        ],
                        "resource_group_name": "zodiac-resources",
                        "tags": null,
                        "timeouts": null
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
                        "location": "eastus",
                        "managed_by": null,
                        "name": "zodiac-resources",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.endpoint",
                    "mode": "managed",
                    "name": "endpoint",
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
                        "delegation": [],
                        "name": "endpoint",
                        "private_endpoint_network_policies_enabled": false,
                        "resource_group_name": "zodiac-resources",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-vnet"
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
                        "location": "eastus",
                        "name": "zodiac-vnet",
                        "resource_group_name": "zodiac-resources",
                        "tags": null,
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_private_dns_zone.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_postgresql_server.example"
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
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.endpoint"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_postgresql_server.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "psqladmin",
                    "administrator_login_password": "H@Sh1CoR3!",
                    "auto_grow_enabled": true,
                    "backup_retention_days": 7,
                    "create_mode": "Default",
                    "creation_source_server_id": null,
                    "geo_redundant_backup_enabled": false,
                    "identity": [],
                    "infrastructure_encryption_enabled": null,
                    "location": "eastus",
                    "name": "zodiac-postgresql",
                    "public_network_access_enabled": true,
                    "resource_group_name": "zodiac-resources",
                    "restore_point_in_time": null,
                    "sku_name": "GP_Gen5_4",
                    "ssl_enforcement_enabled": true,
                    "ssl_minimal_tls_version_enforced": "TLS1_2",
                    "storage_mb": 5120,
                    "tags": null,
                    "threat_detection_policy": [],
                    "timeouts": null,
                    "version": "9.5"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "identity": [],
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "identity": [],
                    "threat_detection_policy": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_postgresql_server"
        },
        {
            "address": "azurerm_private_dns_zone.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "privatelink.postgres.database.azure.com",
                    "resource_group_name": "zodiac-resources",
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
            "address": "azurerm_private_endpoint.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "eastus",
                    "name": "zodiac-pe",
                    "private_dns_zone_group": [
                        {
                            "name": "private-dns-zone-group"
                        }
                    ],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "tfex-postgresql-connection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": [
                                "postgresqlServer"
                            ]
                        }
                    ],
                    "resource_group_name": "zodiac-resources",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "custom_dns_configs": [],
                    "ip_configuration": [],
                    "network_interface": [],
                    "private_dns_zone_configs": [],
                    "private_dns_zone_group": [
                        {
                            "private_dns_zone_ids": []
                        }
                    ],
                    "private_service_connection": [
                        {
                            "subresource_names": [
                                false
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "custom_dns_configs": true,
                    "id": true,
                    "ip_configuration": [],
                    "network_interface": true,
                    "private_dns_zone_configs": true,
                    "private_dns_zone_group": [
                        {
                            "id": true,
                            "private_dns_zone_ids": true
                        }
                    ],
                    "private_service_connection": [
                        {
                            "private_connection_resource_id": true,
                            "private_ip_address": true,
                            "subresource_names": [
                                false
                            ]
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
            "address": "azurerm_resource_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "zodiac-resources",
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
            "address": "azurerm_subnet.endpoint",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/24"
                    ],
                    "delegation": [],
                    "name": "endpoint",
                    "private_endpoint_network_policies_enabled": false,
                    "resource_group_name": "zodiac-resources",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-vnet"
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
                    "private_link_service_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "endpoint",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
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
                    "location": "eastus",
                    "name": "zodiac-vnet",
                    "resource_group_name": "zodiac-resources",
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
    "terraform_version": "1.3.5",
    "variables": {
        "location": {
            "value": "eastus"
        },
        "prefix": {
            "value": "zodiac"
        }
    }
}