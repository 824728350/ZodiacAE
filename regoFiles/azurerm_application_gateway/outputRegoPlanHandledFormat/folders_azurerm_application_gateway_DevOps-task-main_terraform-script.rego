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
                "name": "azurerm"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.main",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_linux_web_app.api1.default_hostname",
                                        "azurerm_linux_web_app.api1",
                                        "azurerm_linux_web_app.api2.default_hostname",
                                        "azurerm_linux_web_app.api2"
                                    ]
                                },
                                "name": {
                                    "constant_value": "api-backend-pool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "app-gateway-http-settings"
                                },
                                "port": {
                                    "constant_value": 8080
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 30
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-gateway-frontend-ip"
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
                                    "constant_value": "http-port"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-gateway-ip-config"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.gateway-subnet.id",
                                        "azurerm_subnet.gateway-subnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "app-gateway-frontend-ip"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http-port"
                                },
                                "name": {
                                    "constant_value": "app-gateway-http-listener"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "my-app-gateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "api-backend-pool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "app-gateway-http-settings"
                                },
                                "http_listener_name": {
                                    "constant_value": "app-gateway-http-listener"
                                },
                                "name": {
                                    "constant_value": "api-routing-rule"
                                },
                                "priority": {
                                    "constant_value": 100
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
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
                        ]
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_application_insights.application_insights",
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.shared-rg.location",
                                "azurerm_resource_group.shared-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "my-application-insights"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.shared-rg.name",
                                "azurerm_resource_group.shared-rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_insights",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_linux_web_app.api1",
                    "expressions": {
                        "app_settings": {
                            "references": [
                                "azurerm_application_insights.application_insights.instrumentation_key",
                                "azurerm_application_insights.application_insights",
                                "azurerm_application_insights.application_insights.connection_string",
                                "azurerm_application_insights.application_insights"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.WEBAPPNAME1"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "azurerm_service_plan.webplan1.id",
                                "azurerm_service_plan.webplan1"
                            ]
                        },
                        "site_config": [
                            {
                                "always_on": {
                                    "constant_value": false
                                },
                                "application_stack": [
                                    {
                                        "dotnet_version": {
                                            "constant_value": "7.0"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "api1",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_web_app"
                },
                {
                    "address": "azurerm_linux_web_app.api2",
                    "expressions": {
                        "app_settings": {
                            "references": [
                                "azurerm_application_insights.application_insights.instrumentation_key",
                                "azurerm_application_insights.application_insights",
                                "azurerm_application_insights.application_insights.connection_string",
                                "azurerm_application_insights.application_insights"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.WEBAPPNAME2"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "azurerm_service_plan.webplan2.id",
                                "azurerm_service_plan.webplan2"
                            ]
                        },
                        "site_config": [
                            {
                                "always_on": {
                                    "constant_value": false
                                },
                                "application_stack": [
                                    {
                                        "dotnet_version": {
                                            "constant_value": "7.0"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "api2",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_web_app"
                },
                {
                    "address": "azurerm_mssql_database.db",
                    "expressions": {
                        "name": {
                            "references": [
                                "var.sql_db_name"
                            ]
                        },
                        "server_id": {
                            "references": [
                                "azurerm_mssql_server.server.id",
                                "azurerm_mssql_server.server"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "db",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_mssql_database"
                },
                {
                    "address": "azurerm_mssql_server.server",
                    "expressions": {
                        "administrator_login": {
                            "references": [
                                "var.admin_username"
                            ]
                        },
                        "administrator_login_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.shared-rg.location",
                                "azurerm_resource_group.shared-rg"
                            ]
                        },
                        "minimum_tls_version": {
                            "constant_value": "1.2"
                        },
                        "name": {
                            "constant_value": "abdul-sql-server"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.shared-rg.name",
                                "azurerm_resource_group.shared-rg"
                            ]
                        },
                        "version": {
                            "constant_value": "12.0"
                        }
                    },
                    "mode": "managed",
                    "name": "server",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_server"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "gateway-pip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.application-rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.application_rg_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_resource_group.shared-rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.shared_rg_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "shared-rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_service_plan.webplan1",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.WEBAPP_PLAN_NAME_1"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "var.OS_TYPE"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "sku_name": {
                            "references": [
                                "var.SKU_NAME_1"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "webplan1",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_service_plan.webplan2",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.WEBAPP_PLAN_NAME_2"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "var.OS_TYPE"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "sku_name": {
                            "references": [
                                "var.SKU_NAME_2"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "webplan2",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_subnet.gateway-subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.0.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "default"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.gateway-vnet.name",
                                "azurerm_virtual_network.gateway-vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gateway-subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.gateway-vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.application-rg.location",
                                "azurerm_resource_group.application-rg"
                            ]
                        },
                        "name": {
                            "constant_value": "Application-gateway-vnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.application-rg.name",
                                "azurerm_resource_group.application-rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gateway-vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "OS_TYPE": {
                    "default": "Linux"
                },
                "SKU_NAME_1": {
                    "default": "F1"
                },
                "SKU_NAME_2": {
                    "default": "B1"
                },
                "WEBAPPNAME1": {
                    "default": "abdul-api-1"
                },
                "WEBAPPNAME2": {
                    "default": "abdulll-api-2"
                },
                "WEBAPP_PLAN_NAME_1": {
                    "default": "NETApi-plan1"
                },
                "WEBAPP_PLAN_NAME_2": {
                    "default": "NETApi-plan2"
                },
                "admin_password": {
                    "default": "Reddeadredemption2",
                    "description": "The administrator password of the SQL server.",
                    "sensitive": true
                },
                "admin_username": {
                    "default": "azureadmin",
                    "description": "The administrator username of the SQL server."
                },
                "application_rg_name": {
                    "default": "application-rg",
                    "description": "Name of the application resource group"
                },
                "client_secret": {
                    "sensitive": true
                },
                "resource_group_location": {
                    "default": "uaenorth",
                    "description": "Location of the resource group."
                },
                "shared_rg_name": {
                    "default": "shared-rg",
                    "description": "Name of the shared resource group"
                },
                "sql_db_name": {
                    "default": "SampleDB",
                    "description": "The name of the SQL Database."
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
                    "address": "azurerm_application_gateway.main",
                    "mode": "managed",
                    "name": "main",
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
                                "ip_addresses": [],
                                "name": "api-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "app-gateway-http-settings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 8080,
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
                                "name": "app-gateway-frontend-ip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "http-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "app-gateway-ip-config"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "app-gateway-frontend-ip",
                                "frontend_port_name": "http-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "app-gateway-http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "uaenorth",
                        "name": "my-app-gateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "api-backend-pool",
                                "backend_http_settings_name": "app-gateway-http-settings",
                                "http_listener_name": "app-gateway-http-listener",
                                "name": "api-routing-rule",
                                "priority": 100,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "application-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
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
                    "address": "azurerm_application_insights.application_insights",
                    "mode": "managed",
                    "name": "application_insights",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "uaenorth",
                        "name": "my-application-insights",
                        "resource_group_name": "shared-rg",
                        "retention_in_days": 90,
                        "sampling_percentage": 100,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": null
                    }
                },
                {
                    "address": "azurerm_linux_web_app.api1",
                    "mode": "managed",
                    "name": "api1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": [],
                        "custom_domain_verification_id": true,
                        "identity": [],
                        "logs": [],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_registry_password": true
                                    }
                                ],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_linux_web_app",
                    "values": {
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": false,
                        "identity": [],
                        "location": "uaenorth",
                        "logs": [],
                        "name": "abdul-api-1",
                        "public_network_access_enabled": true,
                        "resource_group_name": "application-rg",
                        "site_config": [
                            {
                                "always_on": false,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "application_stack": [
                                    {
                                        "docker_image": null,
                                        "docker_image_name": null,
                                        "docker_image_tag": null,
                                        "dotnet_version": "7.0",
                                        "go_version": null,
                                        "java_server": null,
                                        "java_server_version": null,
                                        "java_version": null,
                                        "node_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "ruby_version": null
                                    }
                                ],
                                "auto_heal_enabled": null,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "Disabled",
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [],
                                "ip_restriction_default_action": "Allow",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": true,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_linux_web_app.api2",
                    "mode": "managed",
                    "name": "api2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": [],
                        "custom_domain_verification_id": true,
                        "identity": [],
                        "logs": [],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_registry_password": true
                                    }
                                ],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_linux_web_app",
                    "values": {
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": false,
                        "identity": [],
                        "location": "uaenorth",
                        "logs": [],
                        "name": "abdulll-api-2",
                        "public_network_access_enabled": true,
                        "resource_group_name": "application-rg",
                        "site_config": [
                            {
                                "always_on": false,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "application_stack": [
                                    {
                                        "docker_image": null,
                                        "docker_image_name": null,
                                        "docker_image_tag": null,
                                        "dotnet_version": "7.0",
                                        "go_version": null,
                                        "java_server": null,
                                        "java_server_version": null,
                                        "java_version": null,
                                        "node_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "ruby_version": null
                                    }
                                ],
                                "auto_heal_enabled": null,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "Disabled",
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [],
                                "ip_restriction_default_action": "Allow",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": true,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_mssql_database.db",
                    "mode": "managed",
                    "name": "db",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "identity": [],
                        "import": [],
                        "long_term_retention_policy": [],
                        "short_term_retention_policy": [],
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_mssql_database",
                    "values": {
                        "create_mode": "Default",
                        "elastic_pool_id": null,
                        "geo_backup_enabled": true,
                        "identity": [],
                        "import": [],
                        "name": "SampleDB",
                        "recover_database_id": null,
                        "recovery_point_id": null,
                        "restore_dropped_database_id": null,
                        "restore_long_term_retention_backup_id": null,
                        "storage_account_type": "Geo",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_enabled": true,
                        "transparent_data_encryption_key_automatic_rotation_enabled": false,
                        "transparent_data_encryption_key_vault_key_id": null
                    }
                },
                {
                    "address": "azurerm_mssql_server.server",
                    "mode": "managed",
                    "name": "server",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "administrator_login_password": true,
                        "azuread_administrator": [],
                        "identity": [],
                        "restorable_dropped_database_ids": []
                    },
                    "type": "azurerm_mssql_server",
                    "values": {
                        "administrator_login": "azureadmin",
                        "administrator_login_password": "Reddeadredemption2",
                        "azuread_administrator": [],
                        "connection_policy": "Default",
                        "identity": [],
                        "location": "uaenorth",
                        "minimum_tls_version": "1.2",
                        "name": "abdul-sql-server",
                        "outbound_network_restriction_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "shared-rg",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_key_vault_key_id": null,
                        "version": "12.0"
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
                        "location": "uaenorth",
                        "name": "gateway-pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "application-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.application-rg",
                    "mode": "managed",
                    "name": "application-rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "uaenorth",
                        "managed_by": null,
                        "name": "application-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_resource_group.shared-rg",
                    "mode": "managed",
                    "name": "shared-rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "uaenorth",
                        "managed_by": null,
                        "name": "shared-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webplan1",
                    "mode": "managed",
                    "name": "webplan1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "uaenorth",
                        "name": "NETApi-plan1",
                        "os_type": "Linux",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "application-rg",
                        "sku_name": "F1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webplan2",
                    "mode": "managed",
                    "name": "webplan2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "uaenorth",
                        "name": "NETApi-plan2",
                        "os_type": "Linux",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "application-rg",
                        "sku_name": "B1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_subnet.gateway-subnet",
                    "mode": "managed",
                    "name": "gateway-subnet",
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
                        "name": "default",
                        "resource_group_name": "application-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "Application-gateway-vnet"
                    }
                },
                {
                    "address": "azurerm_virtual_network.gateway-vnet",
                    "mode": "managed",
                    "name": "gateway-vnet",
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
                        "location": "uaenorth",
                        "name": "Application-gateway-vnet",
                        "resource_group_name": "application-rg",
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
            "resource": "azurerm_resource_group.application-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.gateway-subnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.shared-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_mssql_server.server"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.shared-rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_service_plan.webplan2"
        },
        {
            "attribute": [
                "connection_string"
            ],
            "resource": "azurerm_application_insights.application_insights"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_service_plan.webplan1"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "default_hostname"
            ],
            "resource": "azurerm_linux_web_app.api1"
        },
        {
            "attribute": [
                "default_hostname"
            ],
            "resource": "azurerm_linux_web_app.api2"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.application-rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.gateway-vnet"
        },
        {
            "attribute": [
                "instrumentation_key"
            ],
            "resource": "azurerm_application_insights.application_insights"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.main",
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
                            "name": "api-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "app-gateway-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 8080,
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
                            "name": "app-gateway-frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "http-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "app-gateway-ip-config"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "app-gateway-frontend-ip",
                            "frontend_port_name": "http-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "app-gateway-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "uaenorth",
                    "name": "my-app-gateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "api-backend-pool",
                            "backend_http_settings_name": "app-gateway-http-settings",
                            "http_listener_name": "app-gateway-http-listener",
                            "name": "api-routing-rule",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "application-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
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
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_application_insights.application_insights",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "uaenorth",
                    "name": "my-application-insights",
                    "resource_group_name": "shared-rg",
                    "retention_in_days": 90,
                    "sampling_percentage": 100,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": null
                },
                "after_sensitive": {
                    "connection_string": true,
                    "instrumentation_key": true
                },
                "after_unknown": {
                    "app_id": true,
                    "connection_string": true,
                    "daily_data_cap_in_gb": true,
                    "daily_data_cap_notifications_disabled": true,
                    "id": true,
                    "instrumentation_key": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "application_insights",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_linux_web_app.api1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "uaenorth",
                    "logs": [],
                    "name": "abdul-api-1",
                    "public_network_access_enabled": true,
                    "resource_group_name": "application-rg",
                    "site_config": [
                        {
                            "always_on": false,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "application_stack": [
                                {
                                    "docker_image": null,
                                    "docker_image_name": null,
                                    "docker_image_tag": null,
                                    "dotnet_version": "7.0",
                                    "go_version": null,
                                    "java_server": null,
                                    "java_server_version": null,
                                    "java_version": null,
                                    "node_version": null,
                                    "php_version": null,
                                    "python_version": null,
                                    "ruby_version": null
                                }
                            ],
                            "auto_heal_enabled": null,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "Disabled",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [],
                            "ip_restriction_default_action": "Allow",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": true,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": null,
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": true,
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true,
                                    "docker_registry_url": true,
                                    "docker_registry_username": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "api1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_web_app"
        },
        {
            "address": "azurerm_linux_web_app.api2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "uaenorth",
                    "logs": [],
                    "name": "abdulll-api-2",
                    "public_network_access_enabled": true,
                    "resource_group_name": "application-rg",
                    "site_config": [
                        {
                            "always_on": false,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "application_stack": [
                                {
                                    "docker_image": null,
                                    "docker_image_name": null,
                                    "docker_image_tag": null,
                                    "dotnet_version": "7.0",
                                    "go_version": null,
                                    "java_server": null,
                                    "java_server_version": null,
                                    "java_version": null,
                                    "node_version": null,
                                    "php_version": null,
                                    "python_version": null,
                                    "ruby_version": null
                                }
                            ],
                            "auto_heal_enabled": null,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "Disabled",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [],
                            "ip_restriction_default_action": "Allow",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": true,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": null,
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": true,
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true,
                                    "docker_registry_url": true,
                                    "docker_registry_username": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "api2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_web_app"
        },
        {
            "address": "azurerm_mssql_database.db",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_mode": "Default",
                    "elastic_pool_id": null,
                    "geo_backup_enabled": true,
                    "identity": [],
                    "import": [],
                    "name": "SampleDB",
                    "recover_database_id": null,
                    "recovery_point_id": null,
                    "restore_dropped_database_id": null,
                    "restore_long_term_retention_backup_id": null,
                    "storage_account_type": "Geo",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_enabled": true,
                    "transparent_data_encryption_key_automatic_rotation_enabled": false,
                    "transparent_data_encryption_key_vault_key_id": null
                },
                "after_sensitive": {
                    "identity": [],
                    "import": [],
                    "long_term_retention_policy": [],
                    "short_term_retention_policy": [],
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "auto_pause_delay_in_minutes": true,
                    "collation": true,
                    "creation_source_database_id": true,
                    "enclave_type": true,
                    "id": true,
                    "identity": [],
                    "import": [],
                    "ledger_enabled": true,
                    "license_type": true,
                    "long_term_retention_policy": true,
                    "maintenance_configuration_name": true,
                    "max_size_gb": true,
                    "min_capacity": true,
                    "read_replica_count": true,
                    "read_scale": true,
                    "restore_point_in_time": true,
                    "sample_name": true,
                    "secondary_type": true,
                    "server_id": true,
                    "short_term_retention_policy": true,
                    "sku_name": true,
                    "threat_detection_policy": true,
                    "zone_redundant": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "db",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_database"
        },
        {
            "address": "azurerm_mssql_server.server",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "azureadmin",
                    "administrator_login_password": "Reddeadredemption2",
                    "azuread_administrator": [],
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "uaenorth",
                    "minimum_tls_version": "1.2",
                    "name": "abdul-sql-server",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "shared-rg",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_key_vault_key_id": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "azuread_administrator": [],
                    "identity": [],
                    "restorable_dropped_database_ids": []
                },
                "after_unknown": {
                    "azuread_administrator": [],
                    "fully_qualified_domain_name": true,
                    "id": true,
                    "identity": [],
                    "primary_user_assigned_identity_id": true,
                    "restorable_dropped_database_ids": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "server",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
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
                    "location": "uaenorth",
                    "name": "gateway-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "application-rg",
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
            "address": "azurerm_resource_group.application-rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "uaenorth",
                    "managed_by": null,
                    "name": "application-rg",
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
            "name": "application-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_resource_group.shared-rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "uaenorth",
                    "managed_by": null,
                    "name": "shared-rg",
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
            "name": "shared-rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_service_plan.webplan1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "uaenorth",
                    "name": "NETApi-plan1",
                    "os_type": "Linux",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "application-rg",
                    "sku_name": "F1",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webplan1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_service_plan.webplan2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "uaenorth",
                    "name": "NETApi-plan2",
                    "os_type": "Linux",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "application-rg",
                    "sku_name": "B1",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webplan2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_subnet.gateway-subnet",
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
                    "name": "default",
                    "resource_group_name": "application-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "Application-gateway-vnet"
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
            "name": "gateway-subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.gateway-vnet",
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
                    "location": "uaenorth",
                    "name": "Application-gateway-vnet",
                    "resource_group_name": "application-rg",
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
            "name": "gateway-vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:47:00Z",
    "variables": {
        "OS_TYPE": {
            "value": "Linux"
        },
        "SKU_NAME_1": {
            "value": "F1"
        },
        "SKU_NAME_2": {
            "value": "B1"
        },
        "WEBAPPNAME1": {
            "value": "abdul-api-1"
        },
        "WEBAPPNAME2": {
            "value": "abdulll-api-2"
        },
        "WEBAPP_PLAN_NAME_1": {
            "value": "NETApi-plan1"
        },
        "WEBAPP_PLAN_NAME_2": {
            "value": "NETApi-plan2"
        },
        "admin_password": {
            "value": "Reddeadredemption2"
        },
        "admin_username": {
            "value": "azureadmin"
        },
        "application_rg_name": {
            "value": "application-rg"
        },
        "client_secret": {
            "value": "lD48Q~T_vfahJWIL7v0a_okBZ104WyNCtN5p~cEX"
        },
        "resource_group_location": {
            "value": "uaenorth"
        },
        "shared_rg_name": {
            "value": "shared-rg"
        },
        "sql_db_name": {
            "value": "SampleDB"
        }
    }
}