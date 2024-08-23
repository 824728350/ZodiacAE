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
            "outputs": {
                "BACKEND_SUBNET_ID": {
                    "expression": {
                        "references": [
                            "azurerm_subnet.backend.id",
                            "azurerm_subnet.backend"
                        ]
                    }
                },
                "GATEWAY_FRONTEND_PORT": {
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.gw.frontend_port",
                            "azurerm_application_gateway.gw",
                            "local.frontend_port_name"
                        ]
                    }
                },
                "GATEWAY_ID": {
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.gw.id",
                            "azurerm_application_gateway.gw"
                        ]
                    }
                },
                "GATEWAY_NAME": {
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.gw.name",
                            "azurerm_application_gateway.gw"
                        ]
                    }
                },
                "GATEWAY_PUBLIC_IP": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.ingress.ip_address",
                            "azurerm_public_ip.ingress"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.gw",
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
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.ingress.id",
                                        "azurerm_public_ip.ingress"
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
                                    "references": [
                                        "var.frontend_port"
                                    ]
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "gw-ip-config"
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
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_prefix"
                            ]
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
                                "priority": {
                                    "constant_value": 1
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
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
                        ],
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_public_ip.ingress",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ingress",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.vnet_ingress_backend_subnet"
                            ]
                        },
                        "name": {
                            "constant_value": "backend"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
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
                    "name": "backend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.frontend",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.vnet_ingress_frontend_subnet"
                            ]
                        },
                        "name": {
                            "constant_value": "frontend"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
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
                    "name": "frontend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.vnet_ingress_address_space"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
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
                "frontend_port": {
                    "default": 8080,
                    "description": "Front End port number"
                },
                "location": {
                    "default": "eastus",
                    "description": "The supported Azure location where the resource deployed"
                },
                "resource_group_name": {
                    "default": "td5xhold",
                    "description": "The name of the resource group to deploy resources into"
                },
                "resource_prefix": {
                    "default": "zodiac",
                    "description": "A suffix string to centrally mitigate resource name collisions."
                },
                "tags": {
                    "default": {},
                    "description": "A list of tags used for deployed services."
                },
                "vnet_ingress_address_space": {
                    "default": "10.254.0.0/16",
                    "description": "Virtual network address space for ingress"
                },
                "vnet_ingress_backend_subnet": {
                    "default": "10.254.2.0/24",
                    "description": "Subnet address space for ingress backend (AKS nodepool)"
                },
                "vnet_ingress_frontend_subnet": {
                    "default": "10.254.0.0/24",
                    "description": "Subnet address space for ingress frontend (AppGw)"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "BACKEND_SUBNET_ID": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "GATEWAY_FRONTEND_PORT": {
            "actions": [
                "create"
            ],
            "after": 8080,
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "GATEWAY_ID": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "GATEWAY_NAME": {
            "actions": [
                "create"
            ],
            "after": "zodiac-appgw",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "GATEWAY_PUBLIC_IP": {
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
            "BACKEND_SUBNET_ID": {
                "sensitive": false
            },
            "GATEWAY_FRONTEND_PORT": {
                "sensitive": false,
                "type": "number",
                "value": 8080
            },
            "GATEWAY_ID": {
                "sensitive": false
            },
            "GATEWAY_NAME": {
                "sensitive": false,
                "type": "string",
                "value": "zodiac-appgw"
            },
            "GATEWAY_PUBLIC_IP": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.gw",
                    "mode": "managed",
                    "name": "gw",
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
                                "name": "beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "be-htst",
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
                                "name": "feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "feport",
                                "port": 8080
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "gw-ip-config"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "feip",
                                "frontend_port_name": "feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "zodiac-appgw",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "beap",
                                "backend_http_settings_name": "be-htst",
                                "http_listener_name": "httplstn",
                                "name": "rqrt",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "td5xhold",
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
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.ingress",
                    "mode": "managed",
                    "name": "ingress",
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
                        "resource_group_name": "td5xhold",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
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
                        "resource_group_name": "td5xhold",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-net"
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
                        "resource_group_name": "td5xhold",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-net"
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
                            "10.254.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "name": "zodiac-net",
                        "resource_group_name": "td5xhold",
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
            "outputs": {
                "GATEWAY_FRONTEND_PORT": {
                    "sensitive": false,
                    "type": "number",
                    "value": 8080
                },
                "GATEWAY_NAME": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zodiac-appgw"
                }
            },
            "root_module": {}
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.backend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.gw"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_application_gateway.gw"
        },
        {
            "attribute": [
                "frontend_port"
            ],
            "resource": "azurerm_application_gateway.gw"
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
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.ingress"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.ingress"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.gw",
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
                            "name": "beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "be-htst",
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
                            "name": "feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "feport",
                            "port": 8080
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "gw-ip-config"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "feip",
                            "frontend_port_name": "feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "zodiac-appgw",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "beap",
                            "backend_http_settings_name": "be-htst",
                            "http_listener_name": "httplstn",
                            "name": "rqrt",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "td5xhold",
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
            "name": "gw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_public_ip.ingress",
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
                    "resource_group_name": "td5xhold",
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
            "name": "ingress",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
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
                    "resource_group_name": "td5xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-net"
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
                    "resource_group_name": "td5xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-net"
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
            "address": "azurerm_virtual_network.vnet",
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
                    "location": "eastus",
                    "name": "zodiac-net",
                    "resource_group_name": "td5xhold",
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
    "timestamp": "2024-08-23T00:00:22Z",
    "variables": {
        "frontend_port": {
            "value": 8080
        },
        "location": {
            "value": "eastus"
        },
        "resource_group_name": {
            "value": "td5xhold"
        },
        "resource_prefix": {
            "value": "zodiac"
        },
        "tags": {
            "value": {}
        },
        "vnet_ingress_address_space": {
            "value": "10.254.0.0/16"
        },
        "vnet_ingress_backend_subnet": {
            "value": "10.254.2.0/24"
        },
        "vnet_ingress_frontend_subnet": {
            "value": "10.254.0.0/24"
        }
    }
}