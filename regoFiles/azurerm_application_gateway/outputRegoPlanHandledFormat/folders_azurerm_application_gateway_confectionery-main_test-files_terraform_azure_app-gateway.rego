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
                    "address": "azurerm_application_gateway.invalid",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name"
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
                                        "local.http_setting_name"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/path1/"
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
                                    "references": [
                                        "local.frontend_ip_configuration_name"
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
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_port_name"
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
                                        "azurerm_subnet.frontend.id",
                                        "azurerm_subnet.frontend"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.frontend_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_name"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                                    "references": [
                                        "local.backend_address_pool_name"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_name"
                                    ]
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
                        ]
                    },
                    "mode": "managed",
                    "name": "invalid",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_application_gateway.valid",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name"
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
                                        "local.http_setting_name"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/path1/"
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
                        "firewall_policy_id": {
                            "references": [
                                "azurerm_frontdoor_firewall_policy.example.id",
                                "azurerm_frontdoor_firewall_policy.example"
                            ]
                        },
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_ip_configuration_name"
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
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_port_name"
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
                                        "azurerm_subnet.frontend.id",
                                        "azurerm_subnet.frontend"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.frontend_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_name"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                                    "references": [
                                        "local.backend_address_pool_name"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_name"
                                    ]
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
                        ]
                    },
                    "mode": "managed",
                    "name": "valid",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_frontdoor_firewall_policy.example",
                    "expressions": {
                        "custom_block_response_body": {
                            "constant_value": "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="
                        },
                        "custom_block_response_status_code": {
                            "constant_value": 403
                        },
                        "custom_rule": [
                            {
                                "action": {
                                    "constant_value": "Block"
                                },
                                "enabled": {
                                    "constant_value": true
                                },
                                "match_condition": [
                                    {
                                        "match_values": {
                                            "constant_value": [
                                                "192.168.1.0/24",
                                                "10.0.0.0/24"
                                            ]
                                        },
                                        "match_variable": {
                                            "constant_value": "RemoteAddr"
                                        },
                                        "negation_condition": {
                                            "constant_value": false
                                        },
                                        "operator": {
                                            "constant_value": "IPMatch"
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "Rule1"
                                },
                                "priority": {
                                    "constant_value": 1
                                },
                                "rate_limit_duration_in_minutes": {
                                    "constant_value": 1
                                },
                                "rate_limit_threshold": {
                                    "constant_value": 10
                                },
                                "type": {
                                    "constant_value": "MatchRule"
                                }
                            },
                            {
                                "action": {
                                    "constant_value": "Block"
                                },
                                "enabled": {
                                    "constant_value": true
                                },
                                "match_condition": [
                                    {
                                        "match_values": {
                                            "constant_value": [
                                                "192.168.1.0/24"
                                            ]
                                        },
                                        "match_variable": {
                                            "constant_value": "RemoteAddr"
                                        },
                                        "negation_condition": {
                                            "constant_value": false
                                        },
                                        "operator": {
                                            "constant_value": "IPMatch"
                                        }
                                    },
                                    {
                                        "match_values": {
                                            "constant_value": [
                                                "windows"
                                            ]
                                        },
                                        "match_variable": {
                                            "constant_value": "RequestHeader"
                                        },
                                        "negation_condition": {
                                            "constant_value": false
                                        },
                                        "operator": {
                                            "constant_value": "Contains"
                                        },
                                        "selector": {
                                            "constant_value": "UserAgent"
                                        },
                                        "transforms": {
                                            "constant_value": [
                                                "Lowercase",
                                                "Trim"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "Rule2"
                                },
                                "priority": {
                                    "constant_value": 2
                                },
                                "rate_limit_duration_in_minutes": {
                                    "constant_value": 1
                                },
                                "rate_limit_threshold": {
                                    "constant_value": 10
                                },
                                "type": {
                                    "constant_value": "MatchRule"
                                }
                            }
                        ],
                        "enabled": {
                            "constant_value": true
                        },
                        "managed_rule": [
                            {
                                "exclusion": [
                                    {
                                        "match_variable": {
                                            "constant_value": "QueryStringArgNames"
                                        },
                                        "operator": {
                                            "constant_value": "Equals"
                                        },
                                        "selector": {
                                            "constant_value": "not_suspicious"
                                        }
                                    }
                                ],
                                "override": [
                                    {
                                        "rule": [
                                            {
                                                "action": {
                                                    "constant_value": "Block"
                                                },
                                                "enabled": {
                                                    "constant_value": false
                                                },
                                                "rule_id": {
                                                    "constant_value": "933100"
                                                }
                                            }
                                        ],
                                        "rule_group_name": {
                                            "constant_value": "PHP"
                                        }
                                    },
                                    {
                                        "exclusion": [
                                            {
                                                "match_variable": {
                                                    "constant_value": "QueryStringArgNames"
                                                },
                                                "operator": {
                                                    "constant_value": "Equals"
                                                },
                                                "selector": {
                                                    "constant_value": "really_not_suspicious"
                                                }
                                            }
                                        ],
                                        "rule": [
                                            {
                                                "action": {
                                                    "constant_value": "Block"
                                                },
                                                "exclusion": [
                                                    {
                                                        "match_variable": {
                                                            "constant_value": "QueryStringArgNames"
                                                        },
                                                        "operator": {
                                                            "constant_value": "Equals"
                                                        },
                                                        "selector": {
                                                            "constant_value": "innocent"
                                                        }
                                                    }
                                                ],
                                                "rule_id": {
                                                    "constant_value": "942200"
                                                }
                                            }
                                        ],
                                        "rule_group_name": {
                                            "constant_value": "SQLI"
                                        }
                                    }
                                ],
                                "type": {
                                    "constant_value": "DefaultRuleSet"
                                },
                                "version": {
                                    "constant_value": "1.0"
                                }
                            },
                            {
                                "type": {
                                    "constant_value": "Microsoft_BotManagerRuleSet"
                                },
                                "version": {
                                    "constant_value": "1.0"
                                }
                            }
                        ],
                        "mode": {
                            "constant_value": "Prevention"
                        },
                        "name": {
                            "constant_value": "examplefdwafpolicy"
                        },
                        "redirect_url": {
                            "constant_value": "https://www.contoso.com"
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
                    "schema_version": 1,
                    "type": "azurerm_frontdoor_firewall_policy"
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
                            "constant_value": "example-pip"
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
                    "address": "azurerm_resource_group.example",
                    "expressions": {
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "FrontDoorExampleResourceGroup"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.254.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "backend"
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
                    "name": "backend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.frontend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.254.0.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "frontend"
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
                    "name": "frontend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.254.0.0/16"
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
                    "address": "azurerm_application_gateway.invalid",
                    "mode": "managed",
                    "name": "invalid",
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
                                "name": "example-network-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "example-network-be-htst",
                                "path": "/path1/",
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
                                "name": "example-network-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "example-network-feport",
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
                                "frontend_ip_configuration_name": "example-network-feip",
                                "frontend_port_name": "example-network-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "example-network-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "example-appgateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "example-network-beap",
                                "backend_http_settings_name": "example-network-be-htst",
                                "http_listener_name": "example-network-httplstn",
                                "name": "example-network-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "FrontDoorExampleResourceGroup",
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
                    "address": "azurerm_application_gateway.valid",
                    "mode": "managed",
                    "name": "valid",
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
                                "name": "example-network-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "example-network-be-htst",
                                "path": "/path1/",
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
                        "force_firewall_policy_association": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "example-network-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "example-network-feport",
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
                                "frontend_ip_configuration_name": "example-network-feip",
                                "frontend_port_name": "example-network-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "example-network-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "example-appgateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "example-network-beap",
                                "backend_http_settings_name": "example-network-be-htst",
                                "http_listener_name": "example-network-httplstn",
                                "name": "example-network-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "FrontDoorExampleResourceGroup",
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
                    "address": "azurerm_frontdoor_firewall_policy.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "custom_rule": [
                            {
                                "match_condition": [
                                    {
                                        "match_values": [
                                            false,
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match_condition": [
                                    {
                                        "match_values": [
                                            false
                                        ]
                                    },
                                    {
                                        "match_values": [
                                            false
                                        ],
                                        "transforms": [
                                            false,
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "frontend_endpoint_ids": [],
                        "managed_rule": [
                            {
                                "exclusion": [
                                    {}
                                ],
                                "override": [
                                    {
                                        "exclusion": [],
                                        "rule": [
                                            {
                                                "exclusion": []
                                            }
                                        ]
                                    },
                                    {
                                        "exclusion": [
                                            {}
                                        ],
                                        "rule": [
                                            {
                                                "exclusion": [
                                                    {}
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            {
                                "exclusion": [],
                                "override": []
                            }
                        ]
                    },
                    "type": "azurerm_frontdoor_firewall_policy",
                    "values": {
                        "custom_block_response_body": "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
                        "custom_block_response_status_code": 403,
                        "custom_rule": [
                            {
                                "action": "Block",
                                "enabled": true,
                                "match_condition": [
                                    {
                                        "match_values": [
                                            "192.168.1.0/24",
                                            "10.0.0.0/24"
                                        ],
                                        "match_variable": "RemoteAddr",
                                        "negation_condition": false,
                                        "operator": "IPMatch",
                                        "selector": null,
                                        "transforms": null
                                    }
                                ],
                                "name": "Rule1",
                                "priority": 1,
                                "rate_limit_duration_in_minutes": 1,
                                "rate_limit_threshold": 10,
                                "type": "MatchRule"
                            },
                            {
                                "action": "Block",
                                "enabled": true,
                                "match_condition": [
                                    {
                                        "match_values": [
                                            "192.168.1.0/24"
                                        ],
                                        "match_variable": "RemoteAddr",
                                        "negation_condition": false,
                                        "operator": "IPMatch",
                                        "selector": null,
                                        "transforms": null
                                    },
                                    {
                                        "match_values": [
                                            "windows"
                                        ],
                                        "match_variable": "RequestHeader",
                                        "negation_condition": false,
                                        "operator": "Contains",
                                        "selector": "UserAgent",
                                        "transforms": [
                                            "Lowercase",
                                            "Trim"
                                        ]
                                    }
                                ],
                                "name": "Rule2",
                                "priority": 2,
                                "rate_limit_duration_in_minutes": 1,
                                "rate_limit_threshold": 10,
                                "type": "MatchRule"
                            }
                        ],
                        "enabled": true,
                        "managed_rule": [
                            {
                                "exclusion": [
                                    {
                                        "match_variable": "QueryStringArgNames",
                                        "operator": "Equals",
                                        "selector": "not_suspicious"
                                    }
                                ],
                                "override": [
                                    {
                                        "exclusion": [],
                                        "rule": [
                                            {
                                                "action": "Block",
                                                "enabled": false,
                                                "exclusion": [],
                                                "rule_id": "933100"
                                            }
                                        ],
                                        "rule_group_name": "PHP"
                                    },
                                    {
                                        "exclusion": [
                                            {
                                                "match_variable": "QueryStringArgNames",
                                                "operator": "Equals",
                                                "selector": "really_not_suspicious"
                                            }
                                        ],
                                        "rule": [
                                            {
                                                "action": "Block",
                                                "enabled": false,
                                                "exclusion": [
                                                    {
                                                        "match_variable": "QueryStringArgNames",
                                                        "operator": "Equals",
                                                        "selector": "innocent"
                                                    }
                                                ],
                                                "rule_id": "942200"
                                            }
                                        ],
                                        "rule_group_name": "SQLI"
                                    }
                                ],
                                "type": "DefaultRuleSet",
                                "version": "1.0"
                            },
                            {
                                "exclusion": [],
                                "override": [],
                                "type": "Microsoft_BotManagerRuleSet",
                                "version": "1.0"
                            }
                        ],
                        "mode": "Prevention",
                        "name": "examplefdwafpolicy",
                        "redirect_url": "https://www.contoso.com",
                        "resource_group_name": "FrontDoorExampleResourceGroup",
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
                        "location": "westeurope",
                        "name": "example-pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "FrontDoorExampleResourceGroup",
                        "reverse_fqdn": null,
                        "sku": "Basic",
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
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "FrontDoorExampleResourceGroup",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.backend",
                    "mode": "managed",
                    "name": "backend",
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
                            "10.254.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "backend",
                        "resource_group_name": "FrontDoorExampleResourceGroup",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
                    }
                },
                {
                    "address": "azurerm_subnet.frontend",
                    "mode": "managed",
                    "name": "frontend",
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
                            "10.254.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "frontend",
                        "resource_group_name": "FrontDoorExampleResourceGroup",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-network"
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
                            "10.254.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "example-network",
                        "resource_group_name": "FrontDoorExampleResourceGroup",
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
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
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
            "resource": "azurerm_frontdoor_firewall_policy.example"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.invalid",
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
                            "name": "example-network-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "example-network-be-htst",
                            "path": "/path1/",
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
                            "name": "example-network-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "example-network-feport",
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
                            "frontend_ip_configuration_name": "example-network-feip",
                            "frontend_port_name": "example-network-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "example-network-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "example-appgateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "example-network-beap",
                            "backend_http_settings_name": "example-network-be-htst",
                            "http_listener_name": "example-network-httplstn",
                            "name": "example-network-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
            "name": "invalid",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_application_gateway.valid",
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
                            "name": "example-network-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "example-network-be-htst",
                            "path": "/path1/",
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
                    "force_firewall_policy_association": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "example-network-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "example-network-feport",
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
                            "frontend_ip_configuration_name": "example-network-feip",
                            "frontend_port_name": "example-network-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "example-network-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "example-appgateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "example-network-beap",
                            "backend_http_settings_name": "example-network-be-htst",
                            "http_listener_name": "example-network-httplstn",
                            "name": "example-network-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
                    "firewall_policy_id": true,
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
            "name": "valid",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_frontdoor_firewall_policy.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_block_response_body": "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
                    "custom_block_response_status_code": 403,
                    "custom_rule": [
                        {
                            "action": "Block",
                            "enabled": true,
                            "match_condition": [
                                {
                                    "match_values": [
                                        "192.168.1.0/24",
                                        "10.0.0.0/24"
                                    ],
                                    "match_variable": "RemoteAddr",
                                    "negation_condition": false,
                                    "operator": "IPMatch",
                                    "selector": null,
                                    "transforms": null
                                }
                            ],
                            "name": "Rule1",
                            "priority": 1,
                            "rate_limit_duration_in_minutes": 1,
                            "rate_limit_threshold": 10,
                            "type": "MatchRule"
                        },
                        {
                            "action": "Block",
                            "enabled": true,
                            "match_condition": [
                                {
                                    "match_values": [
                                        "192.168.1.0/24"
                                    ],
                                    "match_variable": "RemoteAddr",
                                    "negation_condition": false,
                                    "operator": "IPMatch",
                                    "selector": null,
                                    "transforms": null
                                },
                                {
                                    "match_values": [
                                        "windows"
                                    ],
                                    "match_variable": "RequestHeader",
                                    "negation_condition": false,
                                    "operator": "Contains",
                                    "selector": "UserAgent",
                                    "transforms": [
                                        "Lowercase",
                                        "Trim"
                                    ]
                                }
                            ],
                            "name": "Rule2",
                            "priority": 2,
                            "rate_limit_duration_in_minutes": 1,
                            "rate_limit_threshold": 10,
                            "type": "MatchRule"
                        }
                    ],
                    "enabled": true,
                    "managed_rule": [
                        {
                            "exclusion": [
                                {
                                    "match_variable": "QueryStringArgNames",
                                    "operator": "Equals",
                                    "selector": "not_suspicious"
                                }
                            ],
                            "override": [
                                {
                                    "exclusion": [],
                                    "rule": [
                                        {
                                            "action": "Block",
                                            "enabled": false,
                                            "exclusion": [],
                                            "rule_id": "933100"
                                        }
                                    ],
                                    "rule_group_name": "PHP"
                                },
                                {
                                    "exclusion": [
                                        {
                                            "match_variable": "QueryStringArgNames",
                                            "operator": "Equals",
                                            "selector": "really_not_suspicious"
                                        }
                                    ],
                                    "rule": [
                                        {
                                            "action": "Block",
                                            "enabled": false,
                                            "exclusion": [
                                                {
                                                    "match_variable": "QueryStringArgNames",
                                                    "operator": "Equals",
                                                    "selector": "innocent"
                                                }
                                            ],
                                            "rule_id": "942200"
                                        }
                                    ],
                                    "rule_group_name": "SQLI"
                                }
                            ],
                            "type": "DefaultRuleSet",
                            "version": "1.0"
                        },
                        {
                            "exclusion": [],
                            "override": [],
                            "type": "Microsoft_BotManagerRuleSet",
                            "version": "1.0"
                        }
                    ],
                    "mode": "Prevention",
                    "name": "examplefdwafpolicy",
                    "redirect_url": "https://www.contoso.com",
                    "resource_group_name": "FrontDoorExampleResourceGroup",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "custom_rule": [
                        {
                            "match_condition": [
                                {
                                    "match_values": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match_condition": [
                                {
                                    "match_values": [
                                        false
                                    ]
                                },
                                {
                                    "match_values": [
                                        false
                                    ],
                                    "transforms": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "frontend_endpoint_ids": [],
                    "managed_rule": [
                        {
                            "exclusion": [
                                {}
                            ],
                            "override": [
                                {
                                    "exclusion": [],
                                    "rule": [
                                        {
                                            "exclusion": []
                                        }
                                    ]
                                },
                                {
                                    "exclusion": [
                                        {}
                                    ],
                                    "rule": [
                                        {
                                            "exclusion": [
                                                {}
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "exclusion": [],
                            "override": []
                        }
                    ]
                },
                "after_unknown": {
                    "custom_rule": [
                        {
                            "match_condition": [
                                {
                                    "match_values": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match_condition": [
                                {
                                    "match_values": [
                                        false
                                    ]
                                },
                                {
                                    "match_values": [
                                        false
                                    ],
                                    "transforms": [
                                        false,
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "frontend_endpoint_ids": true,
                    "id": true,
                    "location": true,
                    "managed_rule": [
                        {
                            "exclusion": [
                                {}
                            ],
                            "override": [
                                {
                                    "exclusion": [],
                                    "rule": [
                                        {
                                            "exclusion": []
                                        }
                                    ]
                                },
                                {
                                    "exclusion": [
                                        {}
                                    ],
                                    "rule": [
                                        {
                                            "exclusion": [
                                                {}
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "exclusion": [],
                            "override": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_frontdoor_firewall_policy"
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
                    "location": "westeurope",
                    "name": "example-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
            "address": "azurerm_resource_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "FrontDoorExampleResourceGroup",
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
            "address": "azurerm_subnet.backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "backend",
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
            "name": "backend",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.frontend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "frontend",
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
            "name": "frontend",
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
                        "10.254.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "example-network",
                    "resource_group_name": "FrontDoorExampleResourceGroup",
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
    "timestamp": "2024-08-22T23:55:17Z"
}