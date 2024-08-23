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
                    "address": "azurerm_application_gateway.app-rg",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "constant_value": "app-rg-backend-pool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "app-rg-backend-http-settings"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-rg-frontend-ip"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.app-rg.id",
                                        "azurerm_public_ip.app-rg"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "app-rg-frontend-port"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-rg-gateway-ip"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.app-rg.id",
                                        "azurerm_subnet.app-rg"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "app-rg-frontend-ip"
                                },
                                "frontend_port_name": {
                                    "constant_value": "app-rg-frontend-port"
                                },
                                "name": {
                                    "constant_value": "app-rg-http-listener"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.app-rg.location",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "app-rg-appgw"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "app-rg-backend-pool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "app-rg-backend-http-settings"
                                },
                                "http_listener_name": {
                                    "constant_value": "app-rg-http-listener"
                                },
                                "name": {
                                    "constant_value": "app-rg-routing-rule"
                                },
                                "priority": {
                                    "constant_value": 9
                                },
                                "rewrite_rule_set_name": {
                                    "constant_value": "apprwrule"
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.app-rg.name",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "rewrite_rule_set": [
                            {
                                "name": {
                                    "constant_value": "apprwrule"
                                },
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {
                                                "negate": {
                                                    "constant_value": true
                                                },
                                                "pattern": {
                                                    "constant_value": "/webhook"
                                                },
                                                "variable": {
                                                    "constant_value": "var_uri_path"
                                                }
                                            }
                                        ],
                                        "name": {
                                            "constant_value": "rule01"
                                        },
                                        "rule_sequence": {
                                            "constant_value": 100
                                        },
                                        "url": [
                                            {
                                                "components": {
                                                    "constant_value": "path_only"
                                                },
                                                "path": {
                                                    "constant_value": "/invalid"
                                                }
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 1
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
                    "name": "app-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_public_ip.app-rg",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.app-rg.location",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "app-rg-public-ip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.app-rg.name",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "app-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.app-rg",
                    "expressions": {
                        "location": {
                            "constant_value": "SoutheastAsia"
                        },
                        "name": {
                            "constant_value": "app-rg"
                        }
                    },
                    "mode": "managed",
                    "name": "app-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.app-rg",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "internal"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.app-rg.name",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.app-rg.name",
                                "azurerm_virtual_network.app-rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.app-rg",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.app-rg.location",
                                "azurerm_resource_group.app-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-vnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.app-rg.name",
                                "azurerm_resource_group.app-rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
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
                    "address": "azurerm_application_gateway.app-rg",
                    "mode": "managed",
                    "name": "app-rg",
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
                        "rewrite_rule_set": [
                            {
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {}
                                        ],
                                        "request_header_configuration": [],
                                        "response_header_configuration": [],
                                        "url": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ],
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
                                "name": "app-rg-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "app-rg-backend-http-settings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "",
                                "protocol": "Http",
                                "request_timeout": 20,
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
                                "name": "app-rg-frontend-ip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "app-rg-frontend-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "app-rg-gateway-ip"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "app-rg-frontend-ip",
                                "frontend_port_name": "app-rg-frontend-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "app-rg-http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "southeastasia",
                        "name": "app-rg-appgw",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "app-rg-backend-pool",
                                "backend_http_settings_name": "app-rg-backend-http-settings",
                                "http_listener_name": "app-rg-http-listener",
                                "name": "app-rg-routing-rule",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "apprwrule",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "app-rg",
                        "rewrite_rule_set": [
                            {
                                "name": "apprwrule",
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {
                                                "ignore_case": false,
                                                "negate": true,
                                                "pattern": "/webhook",
                                                "variable": "var_uri_path"
                                            }
                                        ],
                                        "name": "rule01",
                                        "request_header_configuration": [],
                                        "response_header_configuration": [],
                                        "rule_sequence": 100,
                                        "url": [
                                            {
                                                "components": "path_only",
                                                "path": "/invalid",
                                                "query_string": null,
                                                "reroute": false
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "sku": [
                            {
                                "capacity": 1,
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
                    "address": "azurerm_public_ip.app-rg",
                    "mode": "managed",
                    "name": "app-rg",
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
                        "location": "southeastasia",
                        "name": "app-rg-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "app-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.app-rg",
                    "mode": "managed",
                    "name": "app-rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "southeastasia",
                        "managed_by": null,
                        "name": "app-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.app-rg",
                    "mode": "managed",
                    "name": "app-rg",
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
                        "name": "internal",
                        "resource_group_name": "app-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appgw-vnet"
                    }
                },
                {
                    "address": "azurerm_virtual_network.app-rg",
                    "mode": "managed",
                    "name": "app-rg",
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
                        "location": "southeastasia",
                        "name": "appgw-vnet",
                        "resource_group_name": "app-rg",
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
                "name"
            ],
            "resource": "azurerm_resource_group.app-rg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.app-rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.app-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.app-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.app-rg"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.app-rg",
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
                            "name": "app-rg-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "app-rg-backend-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 20,
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
                            "name": "app-rg-frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "app-rg-frontend-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "app-rg-gateway-ip"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "app-rg-frontend-ip",
                            "frontend_port_name": "app-rg-frontend-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "app-rg-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "southeastasia",
                    "name": "app-rg-appgw",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "app-rg-backend-pool",
                            "backend_http_settings_name": "app-rg-backend-http-settings",
                            "http_listener_name": "app-rg-http-listener",
                            "name": "app-rg-routing-rule",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "apprwrule",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "app-rg",
                    "rewrite_rule_set": [
                        {
                            "name": "apprwrule",
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {
                                            "ignore_case": false,
                                            "negate": true,
                                            "pattern": "/webhook",
                                            "variable": "var_uri_path"
                                        }
                                    ],
                                    "name": "rule01",
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "rule_sequence": 100,
                                    "url": [
                                        {
                                            "components": "path_only",
                                            "path": "/invalid",
                                            "query_string": null,
                                            "reroute": false
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "sku": [
                        {
                            "capacity": 1,
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
                    "rewrite_rule_set": [
                        {
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {}
                                    ],
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "url": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
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
                    "rewrite_rule_set": [
                        {
                            "id": true,
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {}
                                    ],
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "url": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
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
            "name": "app-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_public_ip.app-rg",
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
                    "location": "southeastasia",
                    "name": "app-rg-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "app-rg",
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
            "name": "app-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.app-rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "southeastasia",
                    "managed_by": null,
                    "name": "app-rg",
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
            "name": "app-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.app-rg",
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
                    "name": "internal",
                    "resource_group_name": "app-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appgw-vnet"
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
            "name": "app-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.app-rg",
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
                    "location": "southeastasia",
                    "name": "appgw-vnet",
                    "resource_group_name": "app-rg",
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
            "name": "app-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:41:22Z"
}