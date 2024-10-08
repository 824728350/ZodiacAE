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
                    "address": "azurerm_application_gateway.appgw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_container_app.my_app.latest_revision_fqdn",
                                        "azurerm_container_app.my_app"
                                    ]
                                },
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
                                "pick_host_name_from_backend_address": {
                                    "constant_value": true
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
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
                                        "azurerm_public_ip.public_ip.id",
                                        "azurerm_public_ip.public_ip"
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
                                    "constant_value": "myIPConfig"
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
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "myAppGateway"
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
                                    "constant_value": "WAF_v2"
                                },
                                "tier": {
                                    "constant_value": "WAF_v2"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "waf_configuration": [
                            {
                                "enabled": {
                                    "constant_value": true
                                },
                                "firewall_mode": {
                                    "constant_value": "Prevention"
                                },
                                "rule_set_type": {
                                    "constant_value": "OWASP"
                                },
                                "rule_set_version": {
                                    "constant_value": "3.2"
                                }
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
                    "address": "azurerm_container_app.my_app",
                    "expressions": {
                        "container_app_environment_id": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.id",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "ingress": [
                            {
                                "external_enabled": {
                                    "constant_value": true
                                },
                                "target_port": {
                                    "constant_value": 80
                                },
                                "traffic_weight": [
                                    {
                                        "latest_revision": {
                                            "constant_value": true
                                        },
                                        "percentage": {
                                            "constant_value": 100
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "backend1"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "revision_mode": {
                            "constant_value": "Single"
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "template": [
                            {
                                "container": [
                                    {
                                        "cpu": {
                                            "constant_value": 0.25
                                        },
                                        "image": {
                                            "constant_value": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
                                        },
                                        "memory": {
                                            "constant_value": "0.5Gi"
                                        },
                                        "name": {
                                            "constant_value": "myapp"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "my_app",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app"
                },
                {
                    "address": "azurerm_container_app_environment.aca_env",
                    "expressions": {
                        "infrastructure_subnet_id": {
                            "references": [
                                "azurerm_subnet.acasubnet.id",
                                "azurerm_subnet.acasubnet"
                            ]
                        },
                        "internal_load_balancer_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "myContainerAppEnv"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aca_env",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app_environment"
                },
                {
                    "address": "azurerm_private_dns_a_record.example_at",
                    "expressions": {
                        "name": {
                            "constant_value": "@"
                        },
                        "records": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.static_ip_address",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "ttl": {
                            "constant_value": 300
                        },
                        "zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example_at",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_a_record"
                },
                {
                    "address": "azurerm_private_dns_a_record.example_star",
                    "expressions": {
                        "name": {
                            "constant_value": "*"
                        },
                        "records": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.static_ip_address",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "ttl": {
                            "constant_value": 300
                        },
                        "zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example_star",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_a_record"
                },
                {
                    "address": "azurerm_private_dns_zone.dnszone",
                    "depends_on": [
                        "azurerm_container_app.my_app"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "azurerm_container_app.my_app.latest_revision_fqdn",
                                "azurerm_container_app.my_app",
                                "azurerm_container_app.my_app.latest_revision_fqdn",
                                "azurerm_container_app.my_app"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "dnszone",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "expressions": {
                        "name": {
                            "constant_value": "my-custom-vnet-pdns-link"
                        },
                        "private_dns_zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone_virtual_network_link"
                },
                {
                    "address": "azurerm_public_ip.public_ip",
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
                            "constant_value": "myPublicIP"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                    "name": "public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "appgwtest"
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
                    "address": "azurerm_subnet.acasubnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/23"
                            ]
                        },
                        "name": {
                            "constant_value": "ACASubnet"
                        },
                        "private_link_service_network_policies_enabled": {
                            "constant_value": false
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
                    "name": "acasubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AppGWSubnet"
                        },
                        "private_link_service_network_policies_enabled": {
                            "constant_value": false
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
                            "constant_value": "appGW-VNET"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                "tags": {
                    "default": {
                        "source": "Dev/GitHub/AppGW"
                    }
                }
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
                                "disabled_rule_group": [],
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
                                "name": "appgwtest-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "appgwtest-be-htst",
                                "path": "",
                                "pick_host_name_from_backend_address": true,
                                "port": 443,
                                "probe_name": "",
                                "protocol": "Https",
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
                                "name": "appgwtest-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "appgwtest-feport",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "myIPConfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appgwtest-feip",
                                "frontend_port_name": "appgwtest-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "appgwtest-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "myAppGateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "appgwtest-beap",
                                "backend_http_settings_name": "appgwtest-be-htst",
                                "http_listener_name": "appgwtest-httplstn",
                                "name": "appgwtest-rqrt",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "appgwtest",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "WAF_v2",
                                "tier": "WAF_v2"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_profile": [],
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [
                            {
                                "disabled_rule_group": [],
                                "enabled": true,
                                "exclusion": [],
                                "file_upload_limit_mb": 100,
                                "firewall_mode": "Prevention",
                                "max_request_body_size_kb": 128,
                                "request_body_check": true,
                                "rule_set_type": "OWASP",
                                "rule_set_version": "3.2"
                            }
                        ],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_container_app.my_app",
                    "mode": "managed",
                    "name": "my_app",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "custom_domain_verification_id": true,
                        "dapr": [],
                        "identity": [],
                        "ingress": [
                            {
                                "custom_domain": [],
                                "ip_security_restriction": [],
                                "traffic_weight": [
                                    {}
                                ]
                            }
                        ],
                        "outbound_ip_addresses": [],
                        "registry": [],
                        "secret": [],
                        "tags": {},
                        "template": [
                            {
                                "azure_queue_scale_rule": [],
                                "container": [
                                    {
                                        "env": [],
                                        "liveness_probe": [],
                                        "readiness_probe": [],
                                        "startup_probe": [],
                                        "volume_mounts": []
                                    }
                                ],
                                "custom_scale_rule": [],
                                "http_scale_rule": [],
                                "init_container": [],
                                "tcp_scale_rule": [],
                                "volume": []
                            }
                        ]
                    },
                    "type": "azurerm_container_app",
                    "values": {
                        "dapr": [],
                        "identity": [],
                        "ingress": [
                            {
                                "allow_insecure_connections": false,
                                "exposed_port": null,
                                "external_enabled": true,
                                "ip_security_restriction": [],
                                "target_port": 80,
                                "traffic_weight": [
                                    {
                                        "label": null,
                                        "latest_revision": true,
                                        "percentage": 100,
                                        "revision_suffix": null
                                    }
                                ],
                                "transport": "auto"
                            }
                        ],
                        "name": "backend1",
                        "registry": [],
                        "resource_group_name": "appgwtest",
                        "revision_mode": "Single",
                        "secret": [],
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "template": [
                            {
                                "azure_queue_scale_rule": [],
                                "container": [
                                    {
                                        "args": null,
                                        "command": null,
                                        "cpu": 0.25,
                                        "env": [],
                                        "image": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest",
                                        "liveness_probe": [],
                                        "memory": "0.5Gi",
                                        "name": "myapp",
                                        "readiness_probe": [],
                                        "startup_probe": [],
                                        "volume_mounts": []
                                    }
                                ],
                                "custom_scale_rule": [],
                                "http_scale_rule": [],
                                "init_container": [],
                                "max_replicas": 10,
                                "min_replicas": 0,
                                "tcp_scale_rule": [],
                                "volume": []
                            }
                        ],
                        "timeouts": null,
                        "workload_profile_name": null
                    }
                },
                {
                    "address": "azurerm_container_app_environment.aca_env",
                    "mode": "managed",
                    "name": "aca_env",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "dapr_application_insights_connection_string": true,
                        "tags": {},
                        "workload_profile": []
                    },
                    "type": "azurerm_container_app_environment",
                    "values": {
                        "dapr_application_insights_connection_string": null,
                        "infrastructure_resource_group_name": null,
                        "internal_load_balancer_enabled": true,
                        "location": "westeurope",
                        "log_analytics_workspace_id": null,
                        "mutual_tls_enabled": false,
                        "name": "myContainerAppEnv",
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null,
                        "workload_profile": [],
                        "zone_redundancy_enabled": false
                    }
                },
                {
                    "address": "azurerm_private_dns_a_record.example_at",
                    "mode": "managed",
                    "name": "example_at",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "records": []
                    },
                    "type": "azurerm_private_dns_a_record",
                    "values": {
                        "name": "@",
                        "resource_group_name": "appgwtest",
                        "tags": null,
                        "timeouts": null,
                        "ttl": 300
                    }
                },
                {
                    "address": "azurerm_private_dns_a_record.example_star",
                    "mode": "managed",
                    "name": "example_star",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "records": []
                    },
                    "type": "azurerm_private_dns_a_record",
                    "values": {
                        "name": "*",
                        "resource_group_name": "appgwtest",
                        "tags": null,
                        "timeouts": null,
                        "ttl": 300
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.dnszone",
                    "mode": "managed",
                    "name": "dnszone",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": [],
                        "tags": {}
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_private_dns_zone_virtual_network_link",
                    "values": {
                        "name": "my-custom-vnet-pdns-link",
                        "registration_enabled": false,
                        "resource_group_name": "appgwtest",
                        "tags": null,
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
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "westeurope",
                        "name": "myPublicIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "appgwtest",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
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
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.acasubnet",
                    "mode": "managed",
                    "name": "acasubnet",
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
                            "10.0.2.0/23"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "ACASubnet",
                        "private_link_service_network_policies_enabled": false,
                        "resource_group_name": "appgwtest",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appGW-VNET"
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
                            "10.0.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AppGWSubnet",
                        "private_link_service_network_policies_enabled": false,
                        "resource_group_name": "appgwtest",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appGW-VNET"
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
                        "subnet": [],
                        "tags": {}
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
                        "location": "westeurope",
                        "name": "appGW-VNET",
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
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
            "resource": "azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.acasubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_container_app_environment.aca_env"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_private_dns_zone.dnszone"
        },
        {
            "attribute": [
                "static_ip_address"
            ],
            "resource": "azurerm_container_app_environment.aca_env"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.vnet"
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
                "latest_revision_fqdn"
            ],
            "resource": "azurerm_container_app.my_app"
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
                            "ip_addresses": [],
                            "name": "appgwtest-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "appgwtest-be-htst",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
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
                            "name": "appgwtest-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "appgwtest-feport",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "myIPConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appgwtest-feip",
                            "frontend_port_name": "appgwtest-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "appgwtest-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "myAppGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "appgwtest-beap",
                            "backend_http_settings_name": "appgwtest-be-htst",
                            "http_listener_name": "appgwtest-httplstn",
                            "name": "appgwtest-rqrt",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "appgwtest",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "enabled": true,
                            "exclusion": [],
                            "file_upload_limit_mb": 100,
                            "firewall_mode": "Prevention",
                            "max_request_body_size_kb": 128,
                            "request_body_check": true,
                            "rule_set_type": "OWASP",
                            "rule_set_version": "3.2"
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
                            "disabled_rule_group": [],
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
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
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
            "address": "azurerm_container_app.my_app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": false,
                            "exposed_port": null,
                            "external_enabled": true,
                            "ip_security_restriction": [],
                            "target_port": 80,
                            "traffic_weight": [
                                {
                                    "label": null,
                                    "latest_revision": true,
                                    "percentage": 100,
                                    "revision_suffix": null
                                }
                            ],
                            "transport": "auto"
                        }
                    ],
                    "name": "backend1",
                    "registry": [],
                    "resource_group_name": "appgwtest",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [],
                                    "image": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "name": "myapp",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 10,
                            "min_replicas": 0,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ],
                    "timeouts": null,
                    "workload_profile_name": null
                },
                "after_sensitive": {
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": [],
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "outbound_ip_addresses": [],
                    "registry": [],
                    "secret": [],
                    "tags": {},
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [],
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "container_app_environment_id": true,
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "id": true,
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": true,
                            "fqdn": true,
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "latest_revision_fqdn": true,
                    "latest_revision_name": true,
                    "location": true,
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "tags": {},
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "revision_suffix": true,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "my_app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "azurerm_container_app_environment.aca_env",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr_application_insights_connection_string": null,
                    "infrastructure_resource_group_name": null,
                    "internal_load_balancer_enabled": true,
                    "location": "westeurope",
                    "log_analytics_workspace_id": null,
                    "mutual_tls_enabled": false,
                    "name": "myContainerAppEnv",
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
                    "timeouts": null,
                    "workload_profile": [],
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "dapr_application_insights_connection_string": true,
                    "tags": {},
                    "workload_profile": []
                },
                "after_unknown": {
                    "custom_domain_verification_id": true,
                    "default_domain": true,
                    "docker_bridge_cidr": true,
                    "id": true,
                    "infrastructure_subnet_id": true,
                    "platform_reserved_cidr": true,
                    "platform_reserved_dns_ip_address": true,
                    "static_ip_address": true,
                    "tags": {},
                    "workload_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aca_env",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app_environment"
        },
        {
            "address": "azurerm_private_dns_a_record.example_at",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "@",
                    "resource_group_name": "appgwtest",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example_at",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "azurerm_private_dns_a_record.example_star",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "*",
                    "resource_group_name": "appgwtest",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example_star",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "azurerm_private_dns_zone.dnszone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
                    "name": true,
                    "number_of_record_sets": true,
                    "soa_record": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "dnszone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "azurerm_private_dns_zone_virtual_network_link.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "my-custom-vnet-pdns-link",
                    "registration_enabled": false,
                    "resource_group_name": "appgwtest",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "private_dns_zone_name": true,
                    "virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "azurerm_public_ip.public_ip",
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
                    "name": "myPublicIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "appgwtest",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "address": "azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "address": "azurerm_subnet.acasubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/23"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "ACASubnet",
                    "private_link_service_network_policies_enabled": false,
                    "resource_group_name": "appgwtest",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appGW-VNET"
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
                    "private_endpoint_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "acasubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.subnet",
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
                    "name": "AppGWSubnet",
                    "private_link_service_network_policies_enabled": false,
                    "resource_group_name": "appgwtest",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appGW-VNET"
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
                    "private_endpoint_network_policies_enabled": true
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
                        "10.0.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "appGW-VNET",
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:05:35Z",
    "variables": {
        "tags": {
            "value": {
                "source": "Dev/GitHub/AppGW"
            }
        }
    }
}