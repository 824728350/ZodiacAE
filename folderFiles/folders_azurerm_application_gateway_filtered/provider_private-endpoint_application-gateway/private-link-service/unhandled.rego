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
                    "address": "azurerm_lb.example",
                    "expressions": {
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "azurerm_public_ip.example.name",
                                        "azurerm_public_ip.example"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.example.id",
                                        "azurerm_public_ip.example"
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
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_lb"
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
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "tfex-pls-connection"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_private_link_service.example.id",
                                        "azurerm_private_link_service.example"
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
                    "address": "azurerm_private_link_service.example",
                    "expressions": {
                        "auto_approval_subscription_ids": {
                            "references": [
                                "data.azurerm_subscription.current.subscription_id",
                                "data.azurerm_subscription.current"
                            ]
                        },
                        "load_balancer_frontend_ip_configuration_ids": {
                            "references": [
                                "azurerm_lb.example.frontend_ip_configuration[0].id",
                                "azurerm_lb.example.frontend_ip_configuration[0]",
                                "azurerm_lb.example.frontend_ip_configuration",
                                "azurerm_lb.example"
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
                        "nat_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "azurerm_public_ip.example.name",
                                        "azurerm_public_ip.example"
                                    ]
                                },
                                "primary": {
                                    "constant_value": true
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.service.id",
                                        "azurerm_subnet.service"
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
                        "visibility_subscription_ids": {
                            "references": [
                                "data.azurerm_subscription.current.subscription_id",
                                "data.azurerm_subscription.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_link_service"
                },
                {
                    "address": "azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
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
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
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
                    "address": "azurerm_subnet.service",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "service"
                        },
                        "private_link_service_network_policies_enabled": {
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
                    "name": "service",
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
                },
                {
                    "address": "data.azurerm_subscription.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subscription"
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
                    "address": "azurerm_lb.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "frontend_ip_configuration": [
                            {
                                "inbound_nat_rules": [],
                                "load_balancer_rules": [],
                                "outbound_rules": []
                            }
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_lb",
                    "values": {
                        "edge_zone": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "zodiac-pip",
                                "zones": null
                            }
                        ],
                        "location": "eastus",
                        "name": "zodiac-lb",
                        "resource_group_name": "zodiac-resources",
                        "sku": "Standard",
                        "sku_tier": "Regional",
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
                        "location": "eastus",
                        "name": "zodiac-pe",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "tfex-pls-connection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": null
                            }
                        ],
                        "resource_group_name": "zodiac-resources",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_link_service.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "auto_approval_subscription_ids": [
                            false
                        ],
                        "load_balancer_frontend_ip_configuration_ids": [],
                        "nat_ip_configuration": [
                            {}
                        ],
                        "visibility_subscription_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_private_link_service",
                    "values": {
                        "auto_approval_subscription_ids": [
                            "1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                        ],
                        "enable_proxy_protocol": null,
                        "fqdns": null,
                        "location": "eastus",
                        "name": "zodiac-pls",
                        "nat_ip_configuration": [
                            {
                                "name": "zodiac-pip",
                                "primary": true,
                                "private_ip_address": null,
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "resource_group_name": "zodiac-resources",
                        "tags": null,
                        "timeouts": null,
                        "visibility_subscription_ids": [
                            "1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                        ]
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
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "eastus",
                        "name": "zodiac-pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "zodiac-resources",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
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
                    "address": "azurerm_subnet.service",
                    "mode": "managed",
                    "name": "service",
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
                        "delegation": [],
                        "name": "service",
                        "private_link_service_network_policies_enabled": false,
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
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.3.5",
        "values": {
            "root_module": {
                "resources": [
                    {
                        "address": "data.azurerm_subscription.current",
                        "mode": "data",
                        "name": "current",
                        "provider_name": "registry.terraform.io/hashicorp/azurerm",
                        "schema_version": 0,
                        "sensitive_values": {
                            "tags": {}
                        },
                        "type": "azurerm_subscription",
                        "values": {
                            "display_name": "UM-Campus-secure-systems-01",
                            "id": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                            "location_placement_id": "Public_2014-09-01",
                            "quota_id": "EnterpriseAgreement_2014-09-01",
                            "spending_limit": "Off",
                            "state": "Enabled",
                            "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                            "tags": {},
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
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "subscription_id"
            ],
            "resource": "data.azurerm_subscription.current"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_private_link_service.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.service"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.endpoint"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.example"
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
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "frontend_ip_configuration",
                0,
                "id"
            ],
            "resource": "azurerm_lb.example"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_lb.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "edge_zone": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "zodiac-pip",
                            "zones": null
                        }
                    ],
                    "location": "eastus",
                    "name": "zodiac-lb",
                    "resource_group_name": "zodiac-resources",
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "frontend_ip_configuration": [
                        {
                            "inbound_nat_rules": [],
                            "load_balancer_rules": [],
                            "outbound_rules": []
                        }
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "frontend_ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "id": true,
                            "inbound_nat_rules": true,
                            "load_balancer_rules": true,
                            "outbound_rules": true,
                            "private_ip_address": true,
                            "private_ip_address_allocation": true,
                            "private_ip_address_version": true,
                            "public_ip_address_id": true,
                            "public_ip_prefix_id": true,
                            "subnet_id": true
                        }
                    ],
                    "id": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb"
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
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "tfex-pls-connection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": null
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
            "address": "azurerm_private_link_service.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_approval_subscription_ids": [
                        "1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                    ],
                    "enable_proxy_protocol": null,
                    "fqdns": null,
                    "location": "eastus",
                    "name": "zodiac-pls",
                    "nat_ip_configuration": [
                        {
                            "name": "zodiac-pip",
                            "primary": true,
                            "private_ip_address": null,
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "resource_group_name": "zodiac-resources",
                    "tags": null,
                    "timeouts": null,
                    "visibility_subscription_ids": [
                        "1b7414a3-b034-4f7b-9708-357f1ddecd7a"
                    ]
                },
                "after_sensitive": {
                    "auto_approval_subscription_ids": [
                        false
                    ],
                    "load_balancer_frontend_ip_configuration_ids": [],
                    "nat_ip_configuration": [
                        {}
                    ],
                    "visibility_subscription_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "alias": true,
                    "auto_approval_subscription_ids": [
                        false
                    ],
                    "id": true,
                    "load_balancer_frontend_ip_configuration_ids": true,
                    "nat_ip_configuration": [
                        {
                            "subnet_id": true
                        }
                    ],
                    "visibility_subscription_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_link_service"
        },
        {
            "address": "azurerm_public_ip.example",
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
                    "name": "zodiac-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "zodiac-resources",
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
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
            "address": "azurerm_subnet.service",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.1.0/24"
                    ],
                    "delegation": [],
                    "name": "service",
                    "private_link_service_network_policies_enabled": false,
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
                    "private_endpoint_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "service",
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