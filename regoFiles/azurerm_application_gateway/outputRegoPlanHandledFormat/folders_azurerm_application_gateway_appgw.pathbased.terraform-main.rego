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
            "aws": {
                "expressions": {
                    "access_key": {
                        "constant_value": "mock_access_key"
                    },
                    "region": {
                        "constant_value": "us-east-1"
                    },
                    "secret_key": {
                        "constant_value": "mock_secret_key"
                    },
                    "skip_credentials_validation": {
                        "constant_value": true
                    },
                    "skip_metadata_api_check": {
                        "constant_value": true
                    },
                    "skip_requesting_account_id": {
                        "constant_value": true
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/aws",
                "name": "aws"
            },
            "azurerm": {
                "expressions": {
                    "features": [
                        {}
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "name": "azurerm",
                "version_constraint": "3.116.0"
            },
            "google": {
                "expressions": {
                    "project": {
                        "constant_value": "ZODIAC"
                    },
                    "region": {
                        "constant_value": "us-central1"
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/google",
                "name": "google"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "expressions": {
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "references": [
                                        "var.appgw_backend_http_settings.cookie_based_affinity",
                                        "var.appgw_backend_http_settings"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.appgw_backend_http_settings.name",
                                        "var.appgw_backend_http_settings"
                                    ]
                                },
                                "port": {
                                    "references": [
                                        "var.appgw_backend_http_settings.port",
                                        "var.appgw_backend_http_settings"
                                    ]
                                },
                                "protocol": {
                                    "references": [
                                        "var.appgw_backend_http_settings.protocol",
                                        "var.appgw_backend_http_settings"
                                    ]
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "var.appgw_frontend_ip_configuration"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.pip.id",
                                        "azurerm_public_ip.pip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "var.appgw_frontend_port"
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
                                    "references": [
                                        "var.appgw_gateway_ip_configuration"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "var.appgw_listener.frontend_ip_configuration_name",
                                        "var.appgw_listener"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.appgw_listener.frontend_port_name",
                                        "var.appgw_listener"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.appgw_listener.name",
                                        "var.appgw_listener"
                                    ]
                                },
                                "protocol": {
                                    "references": [
                                        "var.appgw_listener.protocol",
                                        "var.appgw_listener"
                                    ]
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
                                "var.appgw_name"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "http_listener_name": {
                                    "references": [
                                        "var.app_gw_request_routing_rule.http_listener_name",
                                        "var.app_gw_request_routing_rule"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.app_gw_request_routing_rule.name",
                                        "var.app_gw_request_routing_rule"
                                    ]
                                },
                                "priority": {
                                    "references": [
                                        "var.app_gw_request_routing_rule.priority",
                                        "var.app_gw_request_routing_rule"
                                    ]
                                },
                                "rule_type": {
                                    "references": [
                                        "var.app_gw_request_routing_rule.rule_type",
                                        "var.app_gw_request_routing_rule"
                                    ]
                                },
                                "url_path_map_name": {
                                    "references": [
                                        "var.app_gw_request_routing_rule.url_path_map_name",
                                        "var.app_gw_request_routing_rule"
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
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 1
                                },
                                "name": {
                                    "references": [
                                        "var.appgw_sku"
                                    ]
                                },
                                "tier": {
                                    "references": [
                                        "var.appgw_tier"
                                    ]
                                }
                            }
                        ],
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": {
                                    "constant_value": "backend-pool-default"
                                },
                                "default_backend_http_settings_name": {
                                    "constant_value": "HTTP-Default"
                                },
                                "name": {
                                    "constant_value": "path_map"
                                },
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": {
                                            "constant_value": "backend-pool-imagens"
                                        },
                                        "backend_http_settings_name": {
                                            "constant_value": "HTTP-Default"
                                        },
                                        "name": {
                                            "constant_value": "imagens-path"
                                        },
                                        "paths": {
                                            "constant_value": [
                                                "/imagens/*"
                                            ]
                                        }
                                    },
                                    {
                                        "backend_address_pool_name": {
                                            "constant_value": "backend-pool-videos"
                                        },
                                        "backend_http_settings_name": {
                                            "constant_value": "HTTP-Default"
                                        },
                                        "name": {
                                            "constant_value": "videos-path"
                                        },
                                        "paths": {
                                            "constant_value": [
                                                "/videos/*"
                                            ]
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "expressions": {
                        "allocation_method": {
                            "references": [
                                "var.pip_appgw_allocation_method"
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
                                "var.pip_appgw_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": {
                            "references": [
                                "var.pip_sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.rg_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.rg_name"
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
                    "address": "azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.subnet_appgw_address_space"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.subnet_name"
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
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.vnet_address_space"
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
                                "var.vnet_name"
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
                    "name": "vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "app_gw_request_routing_rule": {},
                "appgw_backend_http_settings": {},
                "appgw_capacity": {},
                "appgw_frontend_ip_configuration": {},
                "appgw_frontend_port": {},
                "appgw_gateway_ip_configuration": {},
                "appgw_listener": {},
                "appgw_name": {},
                "appgw_sku": {},
                "appgw_tier": {},
                "pip_appgw_allocation_method": {},
                "pip_appgw_name": {},
                "pip_sku": {},
                "rg_location": {},
                "rg_name": {},
                "subnet_appgw_address_space": {},
                "subnet_name": {},
                "vnet_address_space": {},
                "vnet_name": {}
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "mode": "managed",
                    "name": "appgw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
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
                        "url_path_map": [
                            {
                                "path_rule": [
                                    {
                                        "paths": [
                                            false
                                        ]
                                    },
                                    {
                                        "paths": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "waf_configuration": []
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [
                                    "vm-01-imagens"
                                ],
                                "ip_addresses": [],
                                "name": "backend-pool-imagens"
                            },
                            {
                                "fqdns": [
                                    "vm-02-videos"
                                ],
                                "ip_addresses": [],
                                "name": "backend-pool-videos"
                            },
                            {
                                "fqdns": [
                                    "vm-03-default"
                                ],
                                "ip_addresses": [],
                                "name": "backend-pool-default"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "HTTP-Default",
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
                                "name": "FE-Public-IP",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "FE-PORT-HTTP",
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
                                "frontend_ip_configuration_name": "FE-Public-IP",
                                "frontend_port_name": "FE-PORT-HTTP",
                                "host_name": "",
                                "host_names": [],
                                "name": "LT-HTTP",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "appgw-westeurope-01",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "LT-HTTP",
                                "name": "Rule-Http",
                                "priority": 10,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "PathBasedRouting",
                                "url_path_map_name": "path_map"
                            }
                        ],
                        "resource_group_name": "RG-APP-GATEWAY",
                        "rewrite_rule_set": [],
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": "backend-pool-default",
                                "default_backend_http_settings_name": "HTTP-Default",
                                "default_redirect_configuration_name": null,
                                "default_rewrite_rule_set_name": null,
                                "name": "path_map",
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": "backend-pool-imagens",
                                        "backend_http_settings_name": "HTTP-Default",
                                        "firewall_policy_id": null,
                                        "name": "imagens-path",
                                        "paths": [
                                            "/imagens/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    },
                                    {
                                        "backend_address_pool_name": "backend-pool-videos",
                                        "backend_http_settings_name": "HTTP-Default",
                                        "firewall_policy_id": null,
                                        "name": "videos-path",
                                        "paths": [
                                            "/videos/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    }
                                ]
                            }
                        ],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
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
                        "location": "westeurope",
                        "name": "pip-westeurope-app-gw",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "RG-APP-GATEWAY",
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
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "RG-APP-GATEWAY",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.subnet",
                    "mode": "managed",
                    "name": "subnet",
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
                            "192.168.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-app-gw",
                        "resource_group_name": "RG-APP-GATEWAY",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-westeurope-app-gw"
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
                            "192.168.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "vnet-westeurope-app-gw",
                        "resource_group_name": "RG-APP-GATEWAY",
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
            "resource": "azurerm_resource_group.rg"
        },
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
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [
                                "vm-01-imagens"
                            ],
                            "ip_addresses": [],
                            "name": "backend-pool-imagens"
                        },
                        {
                            "fqdns": [
                                "vm-02-videos"
                            ],
                            "ip_addresses": [],
                            "name": "backend-pool-videos"
                        },
                        {
                            "fqdns": [
                                "vm-03-default"
                            ],
                            "ip_addresses": [],
                            "name": "backend-pool-default"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "HTTP-Default",
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
                            "name": "FE-Public-IP",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "FE-PORT-HTTP",
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
                            "frontend_ip_configuration_name": "FE-Public-IP",
                            "frontend_port_name": "FE-PORT-HTTP",
                            "host_name": "",
                            "host_names": [],
                            "name": "LT-HTTP",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "appgw-westeurope-01",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "LT-HTTP",
                            "name": "Rule-Http",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "path_map"
                        }
                    ],
                    "resource_group_name": "RG-APP-GATEWAY",
                    "rewrite_rule_set": [],
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_name": "backend-pool-default",
                            "default_backend_http_settings_name": "HTTP-Default",
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "path_map",
                            "path_rule": [
                                {
                                    "backend_address_pool_name": "backend-pool-imagens",
                                    "backend_http_settings_name": "HTTP-Default",
                                    "firewall_policy_id": null,
                                    "name": "imagens-path",
                                    "paths": [
                                        "/imagens/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                },
                                {
                                    "backend_address_pool_name": "backend-pool-videos",
                                    "backend_http_settings_name": "HTTP-Default",
                                    "firewall_policy_id": null,
                                    "name": "videos-path",
                                    "paths": [
                                        "/videos/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        }
                    ],
                    "waf_configuration": [],
                    "zones": null
                },
                "after_sensitive": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
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
                    "url_path_map": [
                        {
                            "path_rule": [
                                {
                                    "paths": [
                                        false
                                    ]
                                },
                                {
                                    "paths": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "waf_configuration": []
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_http_settings_id": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                },
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        }
                    ],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_public_ip.pip",
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
                    "location": "westeurope",
                    "name": "pip-westeurope-app-gw",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "RG-APP-GATEWAY",
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
            "name": "pip",
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
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "RG-APP-GATEWAY",
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
            "address": "azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "192.168.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-app-gw",
                    "resource_group_name": "RG-APP-GATEWAY",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-westeurope-app-gw"
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
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.vnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "192.168.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "vnet-westeurope-app-gw",
                    "resource_group_name": "RG-APP-GATEWAY",
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
    "timestamp": "2024-08-23T00:11:37Z",
    "variables": {
        "app_gw_request_routing_rule": {
            "value": {
                "http_listener_name": "LT-HTTP",
                "name": "Rule-Http",
                "priority": 10,
                "rule_type": "PathBasedRouting",
                "url_path_map_name": "path_map"
            }
        },
        "appgw_backend_http_settings": {
            "value": {
                "cookie_based_affinity": "Disabled",
                "name": "HTTP-Default",
                "port": 80,
                "protocol": "Http"
            }
        },
        "appgw_capacity": {
            "value": 1
        },
        "appgw_frontend_ip_configuration": {
            "value": "FE-Public-IP"
        },
        "appgw_frontend_port": {
            "value": "FE-PORT-HTTP"
        },
        "appgw_gateway_ip_configuration": {
            "value": "my-gateway-ip-configuration"
        },
        "appgw_listener": {
            "value": {
                "frontend_ip_configuration_name": "FE-Public-IP",
                "frontend_port_name": "FE-PORT-HTTP",
                "name": "LT-HTTP",
                "protocol": "Http"
            }
        },
        "appgw_name": {
            "value": "appgw-westeurope-01"
        },
        "appgw_sku": {
            "value": "Standard_v2"
        },
        "appgw_tier": {
            "value": "Standard_v2"
        },
        "pip_appgw_allocation_method": {
            "value": "Static"
        },
        "pip_appgw_name": {
            "value": "pip-westeurope-app-gw"
        },
        "pip_sku": {
            "value": "Standard"
        },
        "rg_location": {
            "value": "West Europe"
        },
        "rg_name": {
            "value": "RG-APP-GATEWAY"
        },
        "subnet_appgw_address_space": {
            "value": [
                "192.168.0.0/24"
            ]
        },
        "subnet_name": {
            "value": "snet-app-gw"
        },
        "vnet_address_space": {
            "value": [
                "192.168.0.0/16"
            ]
        },
        "vnet_name": {
            "value": "vnet-westeurope-app-gw"
        }
    }
}