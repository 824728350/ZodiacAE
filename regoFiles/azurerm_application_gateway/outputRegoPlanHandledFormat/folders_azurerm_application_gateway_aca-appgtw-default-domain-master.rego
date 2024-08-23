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
    "checks": [
        {
            "address": {
                "kind": "var",
                "name": "cidr",
                "to_display": "var.cidr"
            },
            "instances": [
                {
                    "address": {
                        "to_display": "var.cidr"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "name": "prefix",
                "to_display": "var.prefix"
            },
            "instances": [
                {
                    "address": {
                        "to_display": "var.prefix"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        }
    ],
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
                    "address": "azurerm_application_gateway.appgtw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_container_app_environment.main.static_ip_address",
                                        "azurerm_container_app_environment.main"
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
                                "host_name": {
                                    "references": [
                                        "azurerm_container_app.main.latest_revision_fqdn",
                                        "azurerm_container_app.main"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "constant_value": "probe"
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
                                        "azurerm_subnet.appgtw.id",
                                        "azurerm_subnet.appgtw"
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
                                "azurerm_resource_group.main.location",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "probe": [
                            {
                                "host": {
                                    "references": [
                                        "azurerm_container_app.main.latest_revision_fqdn",
                                        "azurerm_container_app.main"
                                    ]
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "probe"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "timeout": {
                                    "constant_value": 30
                                },
                                "unhealthy_threshold": {
                                    "constant_value": 3
                                }
                            }
                        ],
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
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 1
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
                    "name": "appgtw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_container_app.main",
                    "expressions": {
                        "container_app_environment_id": {
                            "references": [
                                "azurerm_container_app_environment.main.id",
                                "azurerm_container_app_environment.main"
                            ]
                        },
                        "ingress": [
                            {
                                "allow_insecure_connections": {
                                    "constant_value": true
                                },
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
                            "constant_value": "example-app"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "revision_mode": {
                            "constant_value": "Single"
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
                                            "constant_value": "examplecontainerapp"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app"
                },
                {
                    "address": "azurerm_container_app_environment.main",
                    "expressions": {
                        "infrastructure_subnet_id": {
                            "references": [
                                "azurerm_subnet.aca.id",
                                "azurerm_subnet.aca"
                            ]
                        },
                        "internal_load_balancer_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.main.location",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "log_analytics_workspace_id": {
                            "references": [
                                "azurerm_log_analytics_workspace.main.id",
                                "azurerm_log_analytics_workspace.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app_environment"
                },
                {
                    "address": "azurerm_log_analytics_workspace.main",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.main.location",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "retention_in_days": {
                            "constant_value": 30
                        },
                        "sku": {
                            "constant_value": "PerGB2018"
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.main.location",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "constant_value": "example-pip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
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
                    "address": "azurerm_resource_group.main",
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
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.aca",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "local.subnets[1]",
                                "local.subnets"
                            ]
                        },
                        "name": {
                            "constant_value": "aca-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.main.name",
                                "azurerm_virtual_network.main"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aca",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.appgtw",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "local.subnets[0]",
                                "local.subnets"
                            ]
                        },
                        "name": {
                            "constant_value": "appgtw-subnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.main.name",
                                "azurerm_virtual_network.main"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgtw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.main",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.cidr"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.main.location",
                                "azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.main.name",
                                "azurerm_resource_group.main"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "cidr": {
                    "default": "10.0.0.0/16"
                },
                "location": {
                    "default": "West Europe",
                    "description": "Location of the env"
                },
                "prefix": {
                    "default": "acaappgtw",
                    "description": "Prefox of the env"
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
                    "address": "azurerm_application_gateway.appgtw",
                    "mode": "managed",
                    "name": "appgtw",
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
                        "probe": [
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
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
                                "name": "acaappgtw-vnet-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "name": "acaappgtw-vnet-be-htst",
                                "path": "/",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "probe",
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
                                "name": "acaappgtw-vnet-feipp",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "acaappgtw-vnet-feport",
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
                                "frontend_ip_configuration_name": "acaappgtw-vnet-feipp",
                                "frontend_port_name": "acaappgtw-vnet-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "acaappgtw-vnet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "acaappgtw-appgtw",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "interval": 30,
                                "match": [
                                    {
                                        "body": "",
                                        "status_code": [
                                            "200"
                                        ]
                                    }
                                ],
                                "minimum_servers": 0,
                                "name": "probe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Http",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "acaappgtw-vnet-beap",
                                "backend_http_settings_name": "acaappgtw-vnet-be-htst",
                                "http_listener_name": "acaappgtw-vnet-httplstn",
                                "name": "acaappgtw-vnet-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "acaappgtw-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 1,
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
                    "address": "azurerm_container_app.main",
                    "mode": "managed",
                    "name": "main",
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
                                "allow_insecure_connections": true,
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
                        "name": "example-app",
                        "registry": [],
                        "resource_group_name": "acaappgtw-rg",
                        "revision_mode": "Single",
                        "secret": [],
                        "tags": null,
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
                                        "name": "examplecontainerapp",
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
                    "address": "azurerm_container_app_environment.main",
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "dapr_application_insights_connection_string": true,
                        "workload_profile": []
                    },
                    "type": "azurerm_container_app_environment",
                    "values": {
                        "dapr_application_insights_connection_string": null,
                        "infrastructure_resource_group_name": null,
                        "internal_load_balancer_enabled": true,
                        "location": "westeurope",
                        "mutual_tls_enabled": false,
                        "name": "acaappgtw-env",
                        "resource_group_name": "acaappgtw-rg",
                        "tags": null,
                        "timeouts": null,
                        "workload_profile": [],
                        "zone_redundancy_enabled": false
                    }
                },
                {
                    "address": "azurerm_log_analytics_workspace.main",
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 3,
                    "sensitive_values": {
                        "identity": [],
                        "primary_shared_key": true,
                        "secondary_shared_key": true
                    },
                    "type": "azurerm_log_analytics_workspace",
                    "values": {
                        "allow_resource_only_permissions": true,
                        "cmk_for_query_forced": null,
                        "daily_quota_gb": -1,
                        "data_collection_rule_id": null,
                        "identity": [],
                        "immediate_data_purge_on_30_days_enabled": null,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "westeurope",
                        "name": "acaappgtw-logs",
                        "reservation_capacity_in_gb_per_day": null,
                        "resource_group_name": "acaappgtw-rg",
                        "retention_in_days": 30,
                        "sku": "PerGB2018",
                        "tags": null,
                        "timeouts": null
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
                        "resource_group_name": "acaappgtw-rg",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.main",
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "acaappgtw-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.aca",
                    "mode": "managed",
                    "name": "aca",
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
                            "10.0.16.0/20"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "aca-subnet",
                        "resource_group_name": "acaappgtw-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "acaappgtw-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.appgtw",
                    "mode": "managed",
                    "name": "appgtw",
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
                            "10.0.0.0/20"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "appgtw-subnet",
                        "resource_group_name": "acaappgtw-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "acaappgtw-vnet"
                    }
                },
                {
                    "address": "azurerm_virtual_network.main",
                    "mode": "managed",
                    "name": "main",
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
                        "location": "westeurope",
                        "name": "acaappgtw-vnet",
                        "resource_group_name": "acaappgtw-rg",
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
            "resource": "azurerm_resource_group.main"
        },
        {
            "attribute": [
                "static_ip_address"
            ],
            "resource": "azurerm_container_app_environment.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_log_analytics_workspace.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_container_app_environment.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appgtw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "latest_revision_fqdn"
            ],
            "resource": "azurerm_container_app.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.aca"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.appgtw",
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
                            "name": "acaappgtw-vnet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "name": "acaappgtw-vnet-be-htst",
                            "path": "/",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "probe",
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
                            "name": "acaappgtw-vnet-feipp",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "acaappgtw-vnet-feport",
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
                            "frontend_ip_configuration_name": "acaappgtw-vnet-feipp",
                            "frontend_port_name": "acaappgtw-vnet-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "acaappgtw-vnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "acaappgtw-appgtw",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "interval": 30,
                            "match": [
                                {
                                    "body": "",
                                    "status_code": [
                                        "200"
                                    ]
                                }
                            ],
                            "minimum_servers": 0,
                            "name": "probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "acaappgtw-vnet-beap",
                            "backend_http_settings_name": "acaappgtw-vnet-be-htst",
                            "http_listener_name": "acaappgtw-vnet-httplstn",
                            "name": "acaappgtw-vnet-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "acaappgtw-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 1,
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
                    "probe": [
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
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
                            "ip_addresses": true
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "host_name": true,
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
                    "probe": [
                        {
                            "host": true,
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
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
            "name": "appgtw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_container_app.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": true,
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
                    "name": "example-app",
                    "registry": [],
                    "resource_group_name": "acaappgtw-rg",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": null,
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
                                    "name": "examplecontainerapp",
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
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "azurerm_container_app_environment.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr_application_insights_connection_string": null,
                    "infrastructure_resource_group_name": null,
                    "internal_load_balancer_enabled": true,
                    "location": "westeurope",
                    "mutual_tls_enabled": false,
                    "name": "acaappgtw-env",
                    "resource_group_name": "acaappgtw-rg",
                    "tags": null,
                    "timeouts": null,
                    "workload_profile": [],
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "dapr_application_insights_connection_string": true,
                    "workload_profile": []
                },
                "after_unknown": {
                    "custom_domain_verification_id": true,
                    "default_domain": true,
                    "docker_bridge_cidr": true,
                    "id": true,
                    "infrastructure_subnet_id": true,
                    "log_analytics_workspace_id": true,
                    "platform_reserved_cidr": true,
                    "platform_reserved_dns_ip_address": true,
                    "static_ip_address": true,
                    "workload_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app_environment"
        },
        {
            "address": "azurerm_log_analytics_workspace.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_resource_only_permissions": true,
                    "cmk_for_query_forced": null,
                    "daily_quota_gb": -1,
                    "data_collection_rule_id": null,
                    "identity": [],
                    "immediate_data_purge_on_30_days_enabled": null,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "westeurope",
                    "name": "acaappgtw-logs",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "acaappgtw-rg",
                    "retention_in_days": 30,
                    "sku": "PerGB2018",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true
                },
                "after_unknown": {
                    "id": true,
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "azurerm_public_ip.pip",
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
                    "resource_group_name": "acaappgtw-rg",
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
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "acaappgtw-rg",
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
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.aca",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.16.0/20"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "aca-subnet",
                    "resource_group_name": "acaappgtw-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "acaappgtw-vnet"
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
            "name": "aca",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.appgtw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/20"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "appgtw-subnet",
                    "resource_group_name": "acaappgtw-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "acaappgtw-vnet"
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
            "name": "appgtw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.main",
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
                    "name": "acaappgtw-vnet",
                    "resource_group_name": "acaappgtw-rg",
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
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:17:43Z",
    "variables": {
        "cidr": {
            "value": "10.0.0.0/16"
        },
        "location": {
            "value": "West Europe"
        },
        "prefix": {
            "value": "acaappgtw"
        }
    }
}