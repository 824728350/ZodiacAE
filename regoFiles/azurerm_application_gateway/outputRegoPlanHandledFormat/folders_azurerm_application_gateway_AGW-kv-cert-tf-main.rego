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
            "outputs": {
                "application_gateway_id": {
                    "description": "ID of app gateway",
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.network"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.network",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_names",
                                        "count.index"
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
                                        "local.http_setting_names",
                                        "count.index"
                                    ]
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
                                    "references": [
                                        "local.frontend_public_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.ag-pip",
                                        "count.index"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_port_names",
                                        "count.index"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "my-gateway-ip-configuration"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.ingress-appgateway-subnet",
                                        "count.index"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.frontend_public_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.frontend_port_names",
                                        "count.index"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_names",
                                        "count.index"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "azurerm_user_assigned_identity.agic_identity",
                                        "count.index"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "local.backend_address_pool_names",
                                        "count.index"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_names",
                                        "count.index"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_names",
                                        "count.index"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_names",
                                        "count.index"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 9
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
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
                        ],
                        "ssl_certificate": [
                            {
                                "key_vault_secret_id": {
                                    "constant_value": "https://agw-kv-0.vault.azure.net/secrets/test-cert"
                                },
                                "name": {
                                    "constant_value": "ssl-cert"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "network",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_key_vault.example",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "enable_rbac_authorization": {
                            "constant_value": true
                        },
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "var.rg-location"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "soft_delete_retention_days": {
                            "constant_value": 7
                        },
                        "tenant_id": {
                            "constant_value": "16b3c013-d300-468d-ac64-7eda0820b6d3"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_key_vault_certificate.upload-cert",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "certificate": [
                            {
                                "contents": {},
                                "password": {
                                    "constant_value": "test"
                                }
                            }
                        ],
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.example",
                                "count.index"
                            ]
                        },
                        "name": {
                            "constant_value": "test-cert"
                        }
                    },
                    "mode": "managed",
                    "name": "upload-cert",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_certificate"
                },
                {
                    "address": "azurerm_kubernetes_cluster.k8s",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "default"
                                },
                                "node_count": {
                                    "references": [
                                        "var.agent_count"
                                    ]
                                },
                                "pod_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.pod-subnet",
                                        "count.index"
                                    ]
                                },
                                "vm_size": {
                                    "constant_value": "Standard_D2_v2"
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.node-subnet",
                                        "count.index"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.dns_prefix"
                            ]
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "ingress_application_gateway": [
                            {
                                "gateway_id": {
                                    "references": [
                                        "azurerm_application_gateway.network",
                                        "count.index"
                                    ]
                                }
                            }
                        ],
                        "kubernetes_version": {
                            "constant_value": "1.27.7"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.cluster_names",
                                "count.index"
                            ]
                        },
                        "network_profile": [
                            {
                                "load_balancer_sku": {
                                    "constant_value": "standard"
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "tags": {
                            "constant_value": {
                                "Environment": "Development -"
                            }
                        }
                    },
                    "mode": "managed",
                    "name": "k8s",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_public_ip.ag-pip",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "ag-pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.k8s-rg",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "var.rg-location"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "k8s-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.agic_operator_role_assignment",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.auto_created_agic_mi",
                                "count.index"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Managed Identity Operator"
                        },
                        "scope": {
                            "references": [
                                "azurerm_user_assigned_identity.agic_identity",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agic_operator_role_assignment",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.agw_keyvault_admin",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.agic_identity",
                                "count.index"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "azurerm_key_vault.example",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agw_keyvault_admin",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.assign_contributor_agic",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.auto_created_agic_mi",
                                "count.index"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_application_gateway.network",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "assign_contributor_agic",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.assign_reader_appgw_rg",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.auto_created_agic_mi",
                                "count.index"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Reader"
                        },
                        "scope": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "assign_reader_appgw_rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.ingress-appgateway-subnet",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "172.0.34.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "ingress-appgateway-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.k8s-vnet",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ingress-appgateway-subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.node-subnet",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "172.0.32.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "node-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.k8s-vnet",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "node-subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.pod-subnet",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "172.0.48.0/20"
                            ]
                        },
                        "delegation": [
                            {
                                "name": {
                                    "constant_value": "aks-delegation"
                                },
                                "service_delegation": [
                                    {
                                        "actions": {
                                            "constant_value": [
                                                "Microsoft.Network/virtualNetworks/subnets/join/action"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "Microsoft.ContainerService/managedClusters"
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "pod-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.k8s-vnet",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "pod-subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_user_assigned_identity.agic_identity",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "name": {
                            "constant_value": "agic-identity"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agic_identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_network.k8s-vnet",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "172.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        },
                        "name": {
                            "constant_value": "k8s-vnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.k8s-rg",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "k8s-vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "data.azurerm_resource_group.mc_rg",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "depends_on": [
                        "azurerm_resource_group.k8s-rg"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "azurerm_kubernetes_cluster.k8s",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "mc_rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "data.azurerm_user_assigned_identity.auto_created_agic_mi",
                    "count_expression": {
                        "references": [
                            "var.resource_count"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.cluster_names",
                                "count.index"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "data.azurerm_resource_group.mc_rg",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "auto_created_agic_mi",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_user_assigned_identity"
                }
            ],
            "variables": {
                "agent_count": {
                    "default": 3
                },
                "cluster_name": {
                    "default": "agic-test-cluster"
                },
                "dns_prefix": {
                    "default": "agic-test"
                },
                "resource_count": {
                    "default": 1,
                    "description": "The number of resource groups to create"
                },
                "rg-location": {
                    "default": "eastus"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "application_gateway_id": {
            "actions": [
                "create"
            ],
            "after": [
                null
            ],
            "after_sensitive": false,
            "after_unknown": [
                true
            ],
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "application_gateway_id": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.network[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "network",
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
                        "identity": [
                            {
                                "identity_ids": []
                            }
                        ],
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
                                "ip_addresses": [],
                                "name": "k8s-vnet-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "k8s-vnet-be-htst",
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
                                "name": "public-ip-configuration",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "k8s-vnet-feport",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "my-gateway-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "public-ip-configuration",
                                "frontend_port_name": "k8s-vnet-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "k8s-vnet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [
                            {
                                "type": "UserAssigned"
                            }
                        ],
                        "location": "eastus",
                        "name": "appgw-0",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "k8s-vnet-beap",
                                "backend_http_settings_name": "k8s-vnet-be-htst",
                                "http_listener_name": "k8s-vnet-httplstn",
                                "name": "k8s-vnet-rqrt",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "agw-kv-0",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_v2",
                                "tier": "Standard_v2"
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": "",
                                "key_vault_secret_id": "https://agw-kv-0.vault.azure.net/secrets/test-cert",
                                "name": "ssl-cert",
                                "password": ""
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
                    "address": "azurerm_key_vault.example[0]",
                    "index": 0,
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
                        "enable_rbac_authorization": true,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": true,
                        "enabled_for_template_deployment": null,
                        "location": "eastus",
                        "name": "agw-kv-0",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "agw-kv-0",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "16b3c013-d300-468d-ac64-7eda0820b6d3",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault_certificate.upload-cert[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "upload-cert",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "certificate": [
                            {
                                "contents": true,
                                "password": true
                            }
                        ],
                        "certificate_attribute": [],
                        "certificate_policy": []
                    },
                    "type": "azurerm_key_vault_certificate",
                    "values": {
                        "certificate": [
                            {
                                "contents": "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",
                                "password": "test"
                            }
                        ],
                        "name": "test-cert",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.k8s[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "k8s",
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
                            {}
                        ],
                        "ingress_application_gateway": [
                            {
                                "ingress_application_gateway_identity": []
                            }
                        ],
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
                        "tags": {},
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
                                "node_count": 3,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_type": "Managed",
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": null,
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [],
                                "vm_size": "Standard_D2_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "agic-test",
                        "dns_prefix_private_cluster": null,
                        "edge_zone": null,
                        "enable_pod_security_policy": null,
                        "http_application_routing_enabled": null,
                        "http_proxy_config": [],
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "image_cleaner_enabled": false,
                        "image_cleaner_interval_hours": 48,
                        "ingress_application_gateway": [
                            {
                                "gateway_name": null,
                                "subnet_cidr": null,
                                "subnet_id": null
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kubernetes_version": "1.27.7",
                        "linux_profile": [],
                        "local_account_disabled": null,
                        "location": "eastus",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "aks-0",
                        "network_profile": [
                            {
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": null,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "agw-kv-0",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": {
                            "Environment": "Development -"
                        },
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "azurerm_public_ip.ag-pip[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "ag-pip",
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
                        "name": "ag-pip-0",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "agw-kv-0",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.k8s-rg[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "k8s-rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "name": "agw-kv-0",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.agic_operator_role_assignment[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "agic_operator_role_assignment",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Managed Identity Operator",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.agw_keyvault_admin[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "agw_keyvault_admin",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Administrator",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.assign_contributor_agic[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "assign_contributor_agic",
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
                    "address": "azurerm_role_assignment.assign_reader_appgw_rg[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "assign_reader_appgw_rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Reader",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.ingress-appgateway-subnet[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "ingress-appgateway-subnet",
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
                            "172.0.34.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "ingress-appgateway-subnet",
                        "resource_group_name": "agw-kv-0",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "k8s-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.node-subnet[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "node-subnet",
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
                            "172.0.32.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "node-subnet",
                        "resource_group_name": "agw-kv-0",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "k8s-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.pod-subnet[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "pod-subnet",
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
                            "172.0.48.0/20"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [
                            {
                                "name": "aks-delegation",
                                "service_delegation": [
                                    {
                                        "actions": [
                                            "Microsoft.Network/virtualNetworks/subnets/join/action"
                                        ],
                                        "name": "Microsoft.ContainerService/managedClusters"
                                    }
                                ]
                            }
                        ],
                        "name": "pod-subnet",
                        "resource_group_name": "agw-kv-0",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "k8s-vnet"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.agic_identity[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "agic_identity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "eastus",
                        "name": "agic-identity",
                        "resource_group_name": "agw-kv-0",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.k8s-vnet[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "k8s-vnet",
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
                            "172.0.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "name": "k8s-vnet",
                        "resource_group_name": "agw-kv-0",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "data.azurerm_resource_group.mc_rg[0]",
                    "index": 0,
                    "mode": "data",
                    "name": "mc_rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "data.azurerm_user_assigned_identity.auto_created_agic_mi[0]",
                    "index": 0,
                    "mode": "data",
                    "name": "auto_created_agic_mi",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "name": "ingressapplicationgateway-aks-0",
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [],
            "resource": "azurerm_subnet.ingress-appgateway-subnet"
        },
        {
            "attribute": [],
            "resource": "azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [],
            "resource": "data.azurerm_resource_group.mc_rg"
        },
        {
            "attribute": [],
            "resource": "azurerm_user_assigned_identity.agic_identity"
        },
        {
            "attribute": [],
            "resource": "azurerm_virtual_network.k8s-vnet"
        },
        {
            "attribute": [],
            "resource": "azurerm_key_vault.example"
        },
        {
            "attribute": [],
            "resource": "azurerm_public_ip.ag-pip"
        },
        {
            "attribute": [],
            "resource": "azurerm_subnet.node-subnet"
        },
        {
            "attribute": [],
            "resource": "azurerm_subnet.pod-subnet"
        },
        {
            "attribute": [],
            "resource": "azurerm_application_gateway.network"
        },
        {
            "attribute": [],
            "resource": "data.azurerm_user_assigned_identity.auto_created_agic_mi"
        },
        {
            "attribute": [],
            "resource": "azurerm_resource_group.k8s-rg"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_resource_group.mc_rg[0]",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "name": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "data",
            "name": "mc_rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_user_assigned_identity.auto_created_agic_mi[0]",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "name": "ingressapplicationgateway-aks-0",
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "location": true,
                    "principal_id": true,
                    "resource_group_name": true,
                    "tags": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "data",
            "name": "auto_created_agic_mi",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_application_gateway.network[0]",
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
                            "name": "k8s-vnet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "k8s-vnet-be-htst",
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
                            "name": "public-ip-configuration",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "k8s-vnet-feport",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "my-gateway-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "public-ip-configuration",
                            "frontend_port_name": "k8s-vnet-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "k8s-vnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "location": "eastus",
                    "name": "appgw-0",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "k8s-vnet-beap",
                            "backend_http_settings_name": "k8s-vnet-be-htst",
                            "http_listener_name": "k8s-vnet-httplstn",
                            "name": "k8s-vnet-rqrt",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "agw-kv-0",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_v2",
                            "tier": "Standard_v2"
                        }
                    ],
                    "ssl_certificate": [
                        {
                            "data": "",
                            "key_vault_secret_id": "https://agw-kv-0.vault.azure.net/secrets/test-cert",
                            "name": "ssl-cert",
                            "password": ""
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
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
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
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
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
            "index": 0,
            "mode": "managed",
            "name": "network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_key_vault.example[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": true,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "agw-kv-0",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "agw-kv-0",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "tenant_id": "16b3c013-d300-468d-ac64-7eda0820b6d3",
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
            "index": 0,
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_key_vault_certificate.upload-cert[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "certificate": [
                        {
                            "contents": "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",
                            "password": "test"
                        }
                    ],
                    "name": "test-cert",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "certificate": [
                        {
                            "contents": true,
                            "password": true
                        }
                    ],
                    "certificate_attribute": [],
                    "certificate_policy": []
                },
                "after_unknown": {
                    "certificate": [
                        {}
                    ],
                    "certificate_attribute": true,
                    "certificate_data": true,
                    "certificate_data_base64": true,
                    "certificate_policy": true,
                    "id": true,
                    "key_vault_id": true,
                    "resource_manager_id": true,
                    "resource_manager_versionless_id": true,
                    "secret_id": true,
                    "thumbprint": true,
                    "version": true,
                    "versionless_id": true,
                    "versionless_secret_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "upload-cert",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_certificate"
        },
        {
            "address": "azurerm_kubernetes_cluster.k8s[0]",
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
                            "node_count": 3,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_type": "Managed",
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": null,
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [],
                            "vm_size": "Standard_D2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "agic-test",
                    "dns_prefix_private_cluster": null,
                    "edge_zone": null,
                    "enable_pod_security_policy": null,
                    "http_application_routing_enabled": null,
                    "http_proxy_config": [],
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "image_cleaner_enabled": false,
                    "image_cleaner_interval_hours": 48,
                    "ingress_application_gateway": [
                        {
                            "gateway_name": null,
                            "subnet_cidr": null,
                            "subnet_id": null
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kubernetes_version": "1.27.7",
                    "linux_profile": [],
                    "local_account_disabled": null,
                    "location": "eastus",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "aks-0",
                    "network_profile": [
                        {
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "agw-kv-0",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "Environment": "Development -"
                    },
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
                        {}
                    ],
                    "ingress_application_gateway": [
                        {
                            "ingress_application_gateway_identity": []
                        }
                    ],
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
                    "tags": {},
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
                            "pod_subnet_id": true,
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
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "ingress_application_gateway": [
                        {
                            "effective_gateway_id": true,
                            "gateway_id": true,
                            "ingress_application_gateway_identity": true
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": true,
                    "linux_profile": [],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "dns_service_ip": true,
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
                            "service_cidr": true,
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
                    "tags": {},
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "k8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_public_ip.ag-pip[0]",
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
                    "name": "ag-pip-0",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "agw-kv-0",
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
            "index": 0,
            "mode": "managed",
            "name": "ag-pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.k8s-rg[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "agw-kv-0",
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
            "index": 0,
            "mode": "managed",
            "name": "k8s-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.agic_operator_role_assignment[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Managed Identity Operator",
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
            "index": 0,
            "mode": "managed",
            "name": "agic_operator_role_assignment",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.agw_keyvault_admin[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Administrator",
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
            "index": 0,
            "mode": "managed",
            "name": "agw_keyvault_admin",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.assign_contributor_agic[0]",
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
            "index": 0,
            "mode": "managed",
            "name": "assign_contributor_agic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.assign_reader_appgw_rg[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Reader",
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
            "index": 0,
            "mode": "managed",
            "name": "assign_reader_appgw_rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.ingress-appgateway-subnet[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.0.34.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "ingress-appgateway-subnet",
                    "resource_group_name": "agw-kv-0",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "k8s-vnet"
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
            "index": 0,
            "mode": "managed",
            "name": "ingress-appgateway-subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.node-subnet[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.0.32.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "node-subnet",
                    "resource_group_name": "agw-kv-0",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "k8s-vnet"
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
            "index": 0,
            "mode": "managed",
            "name": "node-subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.pod-subnet[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.0.48.0/20"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [
                        {
                            "name": "aks-delegation",
                            "service_delegation": [
                                {
                                    "actions": [
                                        "Microsoft.Network/virtualNetworks/subnets/join/action"
                                    ],
                                    "name": "Microsoft.ContainerService/managedClusters"
                                }
                            ]
                        }
                    ],
                    "name": "pod-subnet",
                    "resource_group_name": "agw-kv-0",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "k8s-vnet"
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
            "index": 0,
            "mode": "managed",
            "name": "pod-subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_user_assigned_identity.agic_identity[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "agic-identity",
                    "resource_group_name": "agw-kv-0",
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
            "index": 0,
            "mode": "managed",
            "name": "agic_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_network.k8s-vnet[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "172.0.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
                    "name": "k8s-vnet",
                    "resource_group_name": "agw-kv-0",
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
            "index": 0,
            "mode": "managed",
            "name": "k8s-vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:21:33Z",
    "variables": {
        "agent_count": {
            "value": 3
        },
        "cluster_name": {
            "value": "agic-test-cluster"
        },
        "dns_prefix": {
            "value": "agic-test"
        },
        "resource_count": {
            "value": 1
        },
        "rg-location": {
            "value": "eastus"
        }
    }
}