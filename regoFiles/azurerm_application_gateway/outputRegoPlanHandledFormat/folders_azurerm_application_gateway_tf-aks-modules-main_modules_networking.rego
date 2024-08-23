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
                "aks_subnet_id": {
                    "expression": {
                        "references": [
                            "azurerm_subnet.aks.id",
                            "azurerm_subnet.aks"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.network",
                    "count_expression": {
                        "references": [
                            "var.enable_gateway"
                        ]
                    },
                    "depends_on": [
                        "azurerm_virtual_network.aks_vnet",
                        "azurerm_public_ip.gw_ip",
                        "azurerm_subnet.gateway"
                    ],
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                        "var.prefix"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 1
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.gw_ip[0].id",
                                        "azurerm_public_ip.gw_ip[0]",
                                        "azurerm_public_ip.gw_ip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "httpsPort"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            },
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                    "constant_value": "appGatewayIpConfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.gateway[0].id",
                                        "azurerm_subnet.gateway[0]",
                                        "azurerm_subnet.gateway"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
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
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
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
                        ],
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "network",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_public_ip.gw_ip",
                    "count_expression": {
                        "references": [
                            "var.enable_gateway"
                        ]
                    },
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
                            "references": [
                                "var.prefix"
                            ]
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
                    "name": "gw_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.aks",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.aks_subnet_cidr"
                            ]
                        },
                        "enforce_private_link_endpoint_network_policies": {
                            "constant_value": true
                        },
                        "enforce_private_link_service_network_policies": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.aks_vnet.name",
                                "azurerm_virtual_network.aks_vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.gateway",
                    "count_expression": {
                        "references": [
                            "var.enable_gateway"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.gateway_subnet_cidr"
                            ]
                        },
                        "enforce_private_link_endpoint_network_policies": {
                            "constant_value": true
                        },
                        "enforce_private_link_service_network_policies": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.aks_vnet.name",
                                "azurerm_virtual_network.aks_vnet"
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
                    "address": "azurerm_virtual_network.aks_vnet",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.vnet_cidr"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "aks_subnet_cidr": {
                    "default": [
                        "10.0.0.0/24"
                    ],
                    "description": "CIDR of the aks subnet for hosting"
                },
                "enable_gateway": {
                    "default": false,
                    "description": "Flag to add the gateway subnet"
                },
                "gateway_subnet_cidr": {
                    "default": [
                        "10.0.0.0/24"
                    ],
                    "description": "CIDR of the gateway subnet for hosting"
                },
                "prefix": {
                    "default": "test-app",
                    "description": "Prefix to be used for resources to will be created"
                },
                "region": {
                    "default": "eastus",
                    "description": "Region name where rg will be hosted"
                },
                "tags": {
                    "default": {
                        "environment_name": "dev",
                        "owner_email": "amit.894@gmail.com"
                    },
                    "description": "Tags for the resource"
                },
                "vnet_cidr": {
                    "default": [
                        "10.0.0.0/16"
                    ],
                    "description": "CIDR of the VNET for hosting"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "aks_subnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "aks_subnet_id": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_resource_group.rg",
                    "mode": "managed",
                    "name": "rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "name": "test-app-network-rg",
                        "tags": {
                            "environment_name": "dev",
                            "owner_email": "amit.894@gmail.com"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.aks",
                    "mode": "managed",
                    "name": "aks",
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
                            "10.0.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "enforce_private_link_endpoint_network_policies": true,
                        "enforce_private_link_service_network_policies": true,
                        "name": "test-app-aks-subnet",
                        "resource_group_name": "test-app-network-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "test-app-vnet"
                    }
                },
                {
                    "address": "azurerm_virtual_network.aks_vnet",
                    "mode": "managed",
                    "name": "aks_vnet",
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
                        "name": "test-app-vnet",
                        "resource_group_name": "test-app-network-rg",
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
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
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
            "resource": "azurerm_virtual_network.aks_vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.aks"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "test-app-network-rg",
                    "tags": {
                        "environment_name": "dev",
                        "owner_email": "amit.894@gmail.com"
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
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "enforce_private_link_endpoint_network_policies": true,
                    "enforce_private_link_service_network_policies": true,
                    "name": "test-app-aks-subnet",
                    "resource_group_name": "test-app-network-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "test-app-vnet"
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
                    "id": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.aks_vnet",
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
                    "name": "test-app-vnet",
                    "resource_group_name": "test-app-network-rg",
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
            "name": "aks_vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:51:03Z",
    "variables": {
        "aks_subnet_cidr": {
            "value": [
                "10.0.0.0/24"
            ]
        },
        "enable_gateway": {
            "value": false
        },
        "gateway_subnet_cidr": {
            "value": [
                "10.0.0.0/24"
            ]
        },
        "prefix": {
            "value": "test-app"
        },
        "region": {
            "value": "eastus"
        },
        "tags": {
            "value": {
                "environment_name": "dev",
                "owner_email": "amit.894@gmail.com"
            }
        },
        "vnet_cidr": {
            "value": [
                "10.0.0.0/16"
            ]
        }
    }
}