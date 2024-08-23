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
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "database_function_app": {
                    "expressions": {
                        "app_insights_conn_string": {
                            "references": [
                                "module.logs.app_insights_conn",
                                "module.logs"
                            ]
                        },
                        "asp_name": {
                            "references": [
                                "local.local_app_service_plan_name"
                            ]
                        },
                        "db_name": {
                            "references": [
                                "local.local_database_name"
                            ]
                        },
                        "firewall_rule_name": {
                            "constant_value": "AllowAll"
                        },
                        "fn_app_name": {
                            "references": [
                                "local.local_function_app_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "password": {
                            "constant_value": "@#sWi9ltH0tr6#epHowru-=s2uE@ql"
                        },
                        "rg_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sa_name": {
                            "references": [
                                "local.local_storage_account_name"
                            ]
                        },
                        "sa_primary_key": {
                            "references": [
                                "module.storage.sa_pkey",
                                "module.storage"
                            ]
                        },
                        "subnet": {
                            "references": [
                                "module.network.snet",
                                "module.network"
                            ]
                        },
                        "subnet_id_value": {
                            "references": [
                                "module.network.snet_id",
                                "module.network"
                            ]
                        },
                        "svr_name": {
                            "references": [
                                "local.local_database_server_name"
                            ]
                        },
                        "username": {
                            "constant_value": "rotreyuyuql"
                        },
                        "vnet_rule_1": {
                            "constant_value": "VnetRule"
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_linux_function_app.project_fa",
                                "depends_on": [
                                    "azurerm_service_plan.project_asp"
                                ],
                                "expressions": {
                                    "app_settings": {
                                        "references": [
                                            "var.svr_name",
                                            "var.db_name"
                                        ]
                                    },
                                    "builtin_logging_enabled": {
                                        "constant_value": false
                                    },
                                    "client_certificate_mode": {
                                        "constant_value": "Required"
                                    },
                                    "enabled": {
                                        "constant_value": false
                                    },
                                    "https_only": {
                                        "constant_value": true
                                    },
                                    "identity": [
                                        {
                                            "type": {
                                                "constant_value": "SystemAssigned"
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
                                            "var.fn_app_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "service_plan_id": {
                                        "references": [
                                            "azurerm_service_plan.project_asp.id",
                                            "azurerm_service_plan.project_asp"
                                        ]
                                    },
                                    "site_config": [
                                        {
                                            "application_insights_connection_string": {
                                                "references": [
                                                    "var.app_insights_conn_string"
                                                ]
                                            },
                                            "application_stack": [
                                                {
                                                    "python_version": {
                                                        "constant_value": "3.8"
                                                    }
                                                }
                                            ],
                                            "cors": [
                                                {
                                                    "allowed_origins": {
                                                        "constant_value": [
                                                            "https://portal.azure.com"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "ftps_state": {
                                                "constant_value": "FtpsOnly"
                                            }
                                        }
                                    ],
                                    "storage_account_access_key": {
                                        "references": [
                                            "var.sa_primary_key"
                                        ]
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "var.sa_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.app_insights_conn_string"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_fa",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_linux_function_app"
                            },
                            {
                                "address": "azurerm_mssql_database.project_sql_db",
                                "depends_on": [
                                    "azurerm_mssql_server.project_sql_svr"
                                ],
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.db_name"
                                        ]
                                    },
                                    "server_id": {
                                        "references": [
                                            "azurerm_mssql_server.project_sql_svr.id",
                                            "azurerm_mssql_server.project_sql_svr"
                                        ]
                                    },
                                    "storage_account_type": {
                                        "constant_value": "Local"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sql_db",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_mssql_database"
                            },
                            {
                                "address": "azurerm_mssql_firewall_rule.project_sql_fw_rule",
                                "depends_on": [
                                    "azurerm_mssql_server.project_sql_svr"
                                ],
                                "expressions": {
                                    "end_ip_address": {
                                        "constant_value": "0.0.0.0"
                                    },
                                    "name": {
                                        "references": [
                                            "var.firewall_rule_name"
                                        ]
                                    },
                                    "server_id": {
                                        "references": [
                                            "azurerm_mssql_server.project_sql_svr.id",
                                            "azurerm_mssql_server.project_sql_svr"
                                        ]
                                    },
                                    "start_ip_address": {
                                        "constant_value": "0.0.0.0"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sql_fw_rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_mssql_firewall_rule"
                            },
                            {
                                "address": "azurerm_mssql_server.project_sql_svr",
                                "expressions": {
                                    "administrator_login": {
                                        "references": [
                                            "var.username"
                                        ]
                                    },
                                    "administrator_login_password": {
                                        "references": [
                                            "var.password"
                                        ]
                                    },
                                    "azuread_administrator": [
                                        {
                                            "login_username": {
                                                "references": [
                                                    "var.fn_app_name"
                                                ]
                                            },
                                            "object_id": {
                                                "references": [
                                                    "data.azurerm_client_config.resource_configs.object_id",
                                                    "data.azurerm_client_config.resource_configs"
                                                ]
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
                                            "var.svr_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "version": {
                                        "constant_value": "12.0"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sql_svr",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_mssql_server"
                            },
                            {
                                "address": "azurerm_mssql_server_transparent_data_encryption.project_sql_svr_encrypt",
                                "depends_on": [
                                    "azurerm_mssql_server.project_sql_svr"
                                ],
                                "expressions": {
                                    "server_id": {
                                        "references": [
                                            "azurerm_mssql_server.project_sql_svr.id",
                                            "azurerm_mssql_server.project_sql_svr"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sql_svr_encrypt",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_mssql_server_transparent_data_encryption"
                            },
                            {
                                "address": "azurerm_mssql_virtual_network_rule.project_sql_vnet_rule",
                                "depends_on": [
                                    "var.subnet",
                                    "azurerm_mssql_server.project_sql_svr"
                                ],
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.vnet_rule_1"
                                        ]
                                    },
                                    "server_id": {
                                        "references": [
                                            "azurerm_mssql_server.project_sql_svr.id",
                                            "azurerm_mssql_server.project_sql_svr"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "var.subnet_id_value"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sql_vnet_rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_mssql_virtual_network_rule"
                            },
                            {
                                "address": "azurerm_service_plan.project_asp",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.asp_name"
                                        ]
                                    },
                                    "os_type": {
                                        "constant_value": "Linux"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "B1"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_asp",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_service_plan"
                            },
                            {
                                "address": "data.azurerm_client_config.resource_configs",
                                "mode": "data",
                                "name": "resource_configs",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            }
                        ],
                        "variables": {
                            "app_insights_conn_string": {
                                "default": null,
                                "description": "app inights connection string"
                            },
                            "asp_name": {
                                "default": null,
                                "description": "app service plan name"
                            },
                            "db_name": {
                                "default": null,
                                "description": "database name"
                            },
                            "firewall_rule_name": {
                                "default": null,
                                "description": "firewall rule name"
                            },
                            "fn_app_name": {
                                "default": null,
                                "description": "function plan name"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "instance location"
                            },
                            "password": {
                                "default": null,
                                "description": "admin password login"
                            },
                            "rg_name": {
                                "default": null,
                                "description": "resource group name"
                            },
                            "sa_name": {
                                "default": null,
                                "description": "storage account name"
                            },
                            "sa_primary_key": {
                                "default": null,
                                "description": "primary key of storage account"
                            },
                            "subnet": {
                                "default": null,
                                "description": "sub net"
                            },
                            "subnet_id_value": {
                                "default": null,
                                "description": "sub net id"
                            },
                            "svr_name": {
                                "default": null,
                                "description": "sql server name"
                            },
                            "username": {
                                "default": null,
                                "description": "admin username login"
                            },
                            "vnet_rule_1": {
                                "default": null,
                                "description": "virtual network rule"
                            }
                        }
                    },
                    "source": "./database_function_app"
                },
                "environment": {
                    "expressions": {
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_resource_group.project_rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "instance location"
                            },
                            "rg_name": {
                                "default": null,
                                "description": "resource group name"
                            }
                        }
                    },
                    "source": "./environment"
                },
                "logs": {
                    "expressions": {
                        "app_insights_name": {
                            "references": [
                                "local.local_app_insights_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "log_name": {
                            "constant_value": "loganalytics-devops-project-002"
                        },
                        "rg_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "app_insights_conn": {
                                "expression": {
                                    "references": [
                                        "azurerm_application_insights.project_app_insights.connection_string",
                                        "azurerm_application_insights.project_app_insights"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_insights.project_app_insights",
                                "depends_on": [
                                    "azurerm_log_analytics_workspace.project_logs"
                                ],
                                "expressions": {
                                    "application_type": {
                                        "constant_value": "web"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_insights_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sampling_percentage": {
                                        "constant_value": 0
                                    },
                                    "workspace_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.project_logs.id",
                                            "azurerm_log_analytics_workspace.project_logs"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_app_insights",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_application_insights"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.project_logs",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.log_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_logs",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "azurerm_monitor_action_group.project_monitor_ag",
                                "expressions": {
                                    "arm_role_receiver": [
                                        {
                                            "name": {
                                                "constant_value": "Monitoring Contributor"
                                            },
                                            "role_id": {
                                                "constant_value": "749f88d5-cbae-40b8-bcfc-e573ddc772fa"
                                            },
                                            "use_common_alert_schema": {
                                                "constant_value": true
                                            }
                                        },
                                        {
                                            "name": {
                                                "constant_value": "Monitoring Reader"
                                            },
                                            "role_id": {
                                                "constant_value": "43d0d8ad-25c7-4714-9337-8ba259a9fe05"
                                            },
                                            "use_common_alert_schema": {
                                                "constant_value": true
                                            }
                                        }
                                    ],
                                    "name": {
                                        "constant_value": "Application Insights Smart Detection"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "short_name": {
                                        "constant_value": "SmartDetect"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_monitor_ag",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_monitor_action_group"
                            },
                            {
                                "address": "azurerm_monitor_smart_detector_alert_rule.project_monitor_ar",
                                "expressions": {
                                    "action_group": [
                                        {
                                            "ids": {
                                                "references": [
                                                    "azurerm_monitor_action_group.project_monitor_ag.id",
                                                    "azurerm_monitor_action_group.project_monitor_ag"
                                                ]
                                            }
                                        }
                                    ],
                                    "description": {
                                        "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                                    },
                                    "detector_type": {
                                        "constant_value": "FailureAnomaliesDetector"
                                    },
                                    "frequency": {
                                        "constant_value": "PT1M"
                                    },
                                    "name": {
                                        "constant_value": "Failed HTTP requests"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "scope_resource_ids": {
                                        "references": [
                                            "azurerm_application_insights.project_app_insights.id",
                                            "azurerm_application_insights.project_app_insights"
                                        ]
                                    },
                                    "severity": {
                                        "constant_value": "Sev3"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_monitor_ar",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_monitor_smart_detector_alert_rule"
                            }
                        ],
                        "variables": {
                            "app_insights_name": {
                                "default": null,
                                "description": "app inights name"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "instance location"
                            },
                            "log_name": {
                                "default": null,
                                "description": "log anlaytics workspace name"
                            },
                            "rg_name": {
                                "default": null,
                                "description": "resource group name"
                            }
                        }
                    },
                    "source": "./logs"
                },
                "network": {
                    "expressions": {
                        "agw_name": {
                            "constant_value": "agw-devops-project-002"
                        },
                        "ba_http_name": {
                            "constant_value": "backend-devops-project-002"
                        },
                        "baa_pool_name": {
                            "constant_value": "backendpool-devops-project-002"
                        },
                        "fnt_end_ip_name": {
                            "constant_value": "appGwPublicFrontendIpIPv4"
                        },
                        "gw_ip_name": {
                            "constant_value": "appGatewayIpConfig"
                        },
                        "listener_name": {
                            "constant_value": "listener-devops-project-002"
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "pip_name": {
                            "constant_value": "pip-devops-project-002"
                        },
                        "rg_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "routing_rule_name": {
                            "constant_value": "routerule-devops-project-002"
                        },
                        "subnet_name": {
                            "constant_value": "snet-devops-project-002"
                        },
                        "vnet_name": {
                            "constant_value": "vnet-devops-project-002"
                        }
                    },
                    "module": {
                        "outputs": {
                            "snet": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.project_snet"
                                    ]
                                }
                            },
                            "snet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.project_snet.id",
                                        "azurerm_subnet.project_snet"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.project_agw",
                                "depends_on": [
                                    "azurerm_public_ip.project_pip",
                                    "azurerm_subnet.project_snet"
                                ],
                                "expressions": {
                                    "autoscale_configuration": [
                                        {
                                            "max_capacity": {
                                                "constant_value": 2
                                            },
                                            "min_capacity": {
                                                "constant_value": 0
                                            }
                                        }
                                    ],
                                    "backend_address_pool": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.baa_pool_name"
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
                                                    "var.ba_http_name"
                                                ]
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
                                    "enable_http2": {
                                        "constant_value": true
                                    },
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.fnt_end_ip_name"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.project_pip.id",
                                                    "azurerm_public_ip.project_pip"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "port_80"
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
                                                    "var.gw_ip_name"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "azurerm_subnet.project_snet.id",
                                                    "azurerm_subnet.project_snet"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "references": [
                                                    "var.fnt_end_ip_name"
                                                ]
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "port_80"
                                            },
                                            "name": {
                                                "references": [
                                                    "var.listener_name"
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
                                            "var.agw_name"
                                        ]
                                    },
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "references": [
                                                    "var.baa_pool_name"
                                                ]
                                            },
                                            "backend_http_settings_name": {
                                                "references": [
                                                    "var.ba_http_name"
                                                ]
                                            },
                                            "http_listener_name": {
                                                "references": [
                                                    "var.listener_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.routing_rule_name"
                                                ]
                                            },
                                            "priority": {
                                                "constant_value": 10000
                                            },
                                            "rule_type": {
                                                "constant_value": "Basic"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": [
                                        {
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
                                "name": "project_agw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            },
                            {
                                "address": "azurerm_public_ip.project_pip",
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
                                            "var.pip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "project_pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_subnet.project_snet",
                                "depends_on": [
                                    "azurerm_virtual_network.project_vnet"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "service_endpoints": {
                                        "constant_value": [
                                            "Microsoft.Sql"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_snet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.project_vnet",
                                "expressions": {
                                    "address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "agw_name": {
                                "default": null,
                                "description": "name of application gateway"
                            },
                            "ba_http_name": {
                                "default": null,
                                "description": "name of backend http"
                            },
                            "baa_pool_name": {
                                "default": null,
                                "description": "name of backend address pool"
                            },
                            "fnt_end_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "front end ip configuration name"
                            },
                            "gw_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "gateway ip configuration name"
                            },
                            "listener_name": {
                                "default": null,
                                "description": "http listerner name"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "instance location"
                            },
                            "pip_name": {
                                "default": "10.0.0.0/16",
                                "description": "public ip name"
                            },
                            "rg_name": {
                                "default": null,
                                "description": "resource group name"
                            },
                            "routing_rule_name": {
                                "default": null,
                                "description": "routing rule name"
                            },
                            "subnet_name": {
                                "default": null,
                                "description": "snet name"
                            },
                            "vnet_name": {
                                "default": null,
                                "description": "vnet name"
                            }
                        }
                    },
                    "source": "./network"
                },
                "storage": {
                    "expressions": {
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sa_name": {
                            "references": [
                                "local.local_storage_account_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "sa_pkey": {
                                "expression": {
                                    "references": [
                                        "azurerm_storage_account.project_sa.primary_access_key",
                                        "azurerm_storage_account.project_sa"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_storage_account.project_sa",
                                "expressions": {
                                    "account_replication_type": {
                                        "constant_value": "LRS"
                                    },
                                    "account_tier": {
                                        "constant_value": "Standard"
                                    },
                                    "allow_nested_items_to_be_public": {
                                        "constant_value": false
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.sa_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sa",
                                "provider_config_key": "azurerm",
                                "schema_version": 4,
                                "type": "azurerm_storage_account"
                            },
                            {
                                "address": "azurerm_storage_container.project_sc_hosts",
                                "expressions": {
                                    "name": {
                                        "constant_value": "azure-webjobs-hosts"
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "azurerm_storage_account.project_sa.name",
                                            "azurerm_storage_account.project_sa"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sc_hosts",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_storage_container"
                            },
                            {
                                "address": "azurerm_storage_container.project_sc_secrets",
                                "expressions": {
                                    "name": {
                                        "constant_value": "azure-webjobs-secrets"
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "azurerm_storage_account.project_sa.name",
                                            "azurerm_storage_account.project_sa"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "project_sc_secrets",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_storage_container"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "instance location"
                            },
                            "rg_name": {
                                "default": null,
                                "description": "resource group name"
                            },
                            "sa_name": {
                                "default": null,
                                "description": "storage account name"
                            }
                        }
                    },
                    "source": "./storage"
                }
            },
            "resources": [
                {
                    "address": "random_string.storage_account_name_generator",
                    "expressions": {
                        "length": {
                            "constant_value": 24
                        },
                        "lower": {
                            "constant_value": true
                        },
                        "numeric": {
                            "constant_value": true
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "storage_account_name_generator",
                    "provider_config_key": "random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "module.database_function_app.azurerm_linux_function_app.project_fa",
                    "depends_on": [
                        "module.database_function_app.azurerm_service_plan.project_asp"
                    ],
                    "expressions": {
                        "app_settings": {
                            "references": [
                                "local.local_database_server_name",
                                "local.local_database_name"
                            ]
                        },
                        "builtin_logging_enabled": {
                            "constant_value": false
                        },
                        "client_certificate_mode": {
                            "constant_value": "Required"
                        },
                        "enabled": {
                            "constant_value": false
                        },
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_function_app_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "module.database_function_app.azurerm_service_plan.project_asp.id",
                                "module.database_function_app.azurerm_service_plan.project_asp"
                            ]
                        },
                        "site_config": [
                            {
                                "application_insights_connection_string": {
                                    "references": [
                                        "module.logs.app_insights_conn",
                                        "module.logs"
                                    ]
                                },
                                "application_stack": [
                                    {
                                        "python_version": {
                                            "constant_value": "3.8"
                                        }
                                    }
                                ],
                                "cors": [
                                    {
                                        "allowed_origins": {
                                            "constant_value": [
                                                "https://portal.azure.com"
                                            ]
                                        }
                                    }
                                ],
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                }
                            }
                        ],
                        "storage_account_access_key": {
                            "references": [
                                "module.storage.sa_pkey",
                                "module.storage"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "local.local_storage_account_name"
                            ]
                        },
                        "tags": {
                            "references": [
                                "module.logs.app_insights_conn",
                                "module.logs"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_fa",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_function_app"
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_database.project_sql_db",
                    "depends_on": [
                        "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "local.local_database_name"
                            ]
                        },
                        "server_id": {
                            "references": [
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr.id",
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                            ]
                        },
                        "storage_account_type": {
                            "constant_value": "Local"
                        }
                    },
                    "mode": "managed",
                    "name": "project_sql_db",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_mssql_database"
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_firewall_rule.project_sql_fw_rule",
                    "depends_on": [
                        "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                    ],
                    "expressions": {
                        "end_ip_address": {
                            "constant_value": "0.0.0.0"
                        },
                        "name": {
                            "references": [
                                "root.database_function_app.firewall_rule_name"
                            ]
                        },
                        "server_id": {
                            "references": [
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr.id",
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                            ]
                        },
                        "start_ip_address": {
                            "constant_value": "0.0.0.0"
                        }
                    },
                    "mode": "managed",
                    "name": "project_sql_fw_rule",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_firewall_rule"
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_server.project_sql_svr",
                    "expressions": {
                        "administrator_login": {
                            "references": [
                                "root.database_function_app.username"
                            ]
                        },
                        "administrator_login_password": {
                            "references": [
                                "root.database_function_app.password"
                            ]
                        },
                        "azuread_administrator": [
                            {
                                "login_username": {
                                    "references": [
                                        "local.local_function_app_name"
                                    ]
                                },
                                "object_id": {
                                    "references": [
                                        "module.database_function_app.data.azurerm_client_config.resource_configs.object_id",
                                        "module.database_function_app.data.azurerm_client_config.resource_configs"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_database_server_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "version": {
                            "constant_value": "12.0"
                        }
                    },
                    "mode": "managed",
                    "name": "project_sql_svr",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_server"
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_server_transparent_data_encryption.project_sql_svr_encrypt",
                    "depends_on": [
                        "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                    ],
                    "expressions": {
                        "server_id": {
                            "references": [
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr.id",
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_sql_svr_encrypt",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_mssql_server_transparent_data_encryption"
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_virtual_network_rule.project_sql_vnet_rule",
                    "depends_on": [
                        "module.network.snet",
                        "module.network",
                        "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "root.database_function_app.vnet_rule_1"
                            ]
                        },
                        "server_id": {
                            "references": [
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr.id",
                                "module.database_function_app.azurerm_mssql_server.project_sql_svr"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.network.snet_id",
                                "module.network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_sql_vnet_rule",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_mssql_virtual_network_rule"
                },
                {
                    "address": "module.database_function_app.azurerm_service_plan.project_asp",
                    "expressions": {
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_app_service_plan_name"
                            ]
                        },
                        "os_type": {
                            "constant_value": "Linux"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "B1"
                        }
                    },
                    "mode": "managed",
                    "name": "project_asp",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "module.database_function_app.data.azurerm_client_config.resource_configs",
                    "mode": "data",
                    "name": "resource_configs",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "module.environment.azurerm_resource_group.project_rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.logs.azurerm_application_insights.project_app_insights",
                    "depends_on": [
                        "module.logs.azurerm_log_analytics_workspace.project_logs"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_app_insights_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "references": [
                                "module.logs.azurerm_log_analytics_workspace.project_logs.id",
                                "module.logs.azurerm_log_analytics_workspace.project_logs"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_app_insights",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "module.logs.azurerm_log_analytics_workspace.project_logs",
                    "expressions": {
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.logs.log_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_logs",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.logs.azurerm_monitor_action_group.project_monitor_ag",
                    "expressions": {
                        "arm_role_receiver": [
                            {
                                "name": {
                                    "constant_value": "Monitoring Contributor"
                                },
                                "role_id": {
                                    "constant_value": "749f88d5-cbae-40b8-bcfc-e573ddc772fa"
                                },
                                "use_common_alert_schema": {
                                    "constant_value": true
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "Monitoring Reader"
                                },
                                "role_id": {
                                    "constant_value": "43d0d8ad-25c7-4714-9337-8ba259a9fe05"
                                },
                                "use_common_alert_schema": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "Application Insights Smart Detection"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "short_name": {
                            "constant_value": "SmartDetect"
                        }
                    },
                    "mode": "managed",
                    "name": "project_monitor_ag",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_action_group"
                },
                {
                    "address": "module.logs.azurerm_monitor_smart_detector_alert_rule.project_monitor_ar",
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "references": [
                                        "module.logs.azurerm_monitor_action_group.project_monitor_ag.id",
                                        "module.logs.azurerm_monitor_action_group.project_monitor_ag"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failed HTTP requests"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "scope_resource_ids": {
                            "references": [
                                "module.logs.azurerm_application_insights.project_app_insights.id",
                                "module.logs.azurerm_application_insights.project_app_insights"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "project_monitor_ar",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "module.network.azurerm_application_gateway.project_agw",
                    "depends_on": [
                        "module.network.azurerm_public_ip.project_pip",
                        "module.network.azurerm_subnet.project_snet"
                    ],
                    "expressions": {
                        "autoscale_configuration": [
                            {
                                "max_capacity": {
                                    "constant_value": 2
                                },
                                "min_capacity": {
                                    "constant_value": 0
                                }
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "root.network.baa_pool_name"
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
                                        "root.network.ba_http_name"
                                    ]
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
                        "enable_http2": {
                            "constant_value": true
                        },
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "root.network.fnt_end_ip_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.network.azurerm_public_ip.project_pip.id",
                                        "module.network.azurerm_public_ip.project_pip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "port_80"
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
                                        "root.network.gw_ip_name"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "module.network.azurerm_subnet.project_snet.id",
                                        "module.network.azurerm_subnet.project_snet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "root.network.fnt_end_ip_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_80"
                                },
                                "name": {
                                    "references": [
                                        "root.network.listener_name"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.agw_name"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "root.network.baa_pool_name"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "root.network.ba_http_name"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "root.network.listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "root.network.routing_rule_name"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 10000
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sku": [
                            {
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
                    "name": "project_agw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "module.network.azurerm_public_ip.project_pip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.pip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "project_pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.network.azurerm_subnet.project_snet",
                    "depends_on": [
                        "module.network.azurerm_virtual_network.project_vnet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.0.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.subnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        },
                        "service_endpoints": {
                            "constant_value": [
                                "Microsoft.Sql"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "root.network.vnet_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_snet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "module.network.azurerm_virtual_network.project_vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.vnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "module.storage.azurerm_storage_account.project_sa",
                    "expressions": {
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Standard"
                        },
                        "allow_nested_items_to_be_public": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "local.local_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.local_storage_account_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.local_resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_sa",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.storage.azurerm_storage_container.project_sc_hosts",
                    "expressions": {
                        "name": {
                            "constant_value": "azure-webjobs-hosts"
                        },
                        "storage_account_name": {
                            "references": [
                                "module.storage.azurerm_storage_account.project_sa.name",
                                "module.storage.azurerm_storage_account.project_sa"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_sc_hosts",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "module.storage.azurerm_storage_container.project_sc_secrets",
                    "expressions": {
                        "name": {
                            "constant_value": "azure-webjobs-secrets"
                        },
                        "storage_account_name": {
                            "references": [
                                "module.storage.azurerm_storage_account.project_sa.name",
                                "module.storage.azurerm_storage_account.project_sa"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "project_sc_secrets",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.database_function_app",
                    "resources": [
                        {
                            "address": "module.database_function_app.azurerm_linux_function_app.project_fa",
                            "mode": "managed",
                            "name": "project_fa",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "app_settings": {},
                                "auth_settings": [],
                                "auth_settings_v2": [],
                                "backup": [],
                                "connection_string": [],
                                "custom_domain_verification_id": true,
                                "identity": [
                                    {}
                                ],
                                "outbound_ip_address_list": [],
                                "possible_outbound_ip_address_list": [],
                                "site_config": [
                                    {
                                        "app_service_logs": [],
                                        "application_insights_connection_string": true,
                                        "application_insights_key": true,
                                        "application_stack": [
                                            {
                                                "docker": []
                                            }
                                        ],
                                        "cors": [
                                            {
                                                "allowed_origins": [
                                                    false
                                                ]
                                            }
                                        ],
                                        "default_documents": [],
                                        "ip_restriction": [],
                                        "scm_ip_restriction": []
                                    }
                                ],
                                "site_credential": true,
                                "sticky_settings": [],
                                "storage_account": [],
                                "storage_account_access_key": true,
                                "tags": {}
                            },
                            "type": "azurerm_linux_function_app",
                            "values": {
                                "app_settings": {
                                    "BUILD_FLAGS": "UseExpressBuild",
                                    "DB_CONNECTION_STRING": "DRIVER={ODBC Driver 17 for SQL Server};SERVER=tcp:sqlserver-devops-project-002.database.windows.net,1433;DATABASE=sqldb-devops-project-002;",
                                    "ENABLE_ORYX_BUILD": "true",
                                    "SCM_DO_BUILD_DURING_DEPLOYMENT": "1",
                                    "XDG_CACHE_HOME": "/tmp/.cache"
                                },
                                "auth_settings": [],
                                "auth_settings_v2": [],
                                "backup": [],
                                "builtin_logging_enabled": false,
                                "client_certificate_enabled": false,
                                "client_certificate_exclusion_paths": null,
                                "client_certificate_mode": "Required",
                                "connection_string": [],
                                "content_share_force_disabled": false,
                                "daily_memory_time_quota": 0,
                                "enabled": false,
                                "ftp_publish_basic_authentication_enabled": true,
                                "functions_extension_version": "~4",
                                "https_only": true,
                                "identity": [
                                    {
                                        "identity_ids": null,
                                        "type": "SystemAssigned"
                                    }
                                ],
                                "location": "eastus",
                                "name": "fn-devops-project-002",
                                "public_network_access_enabled": true,
                                "resource_group_name": "rg-devops-project-002",
                                "site_config": [
                                    {
                                        "api_definition_url": null,
                                        "api_management_api_id": null,
                                        "app_command_line": null,
                                        "app_service_logs": [],
                                        "application_insights_key": null,
                                        "application_stack": [
                                            {
                                                "docker": [],
                                                "dotnet_version": null,
                                                "java_version": null,
                                                "node_version": null,
                                                "powershell_core_version": null,
                                                "python_version": "3.8",
                                                "use_custom_runtime": null,
                                                "use_dotnet_isolated_runtime": false
                                            }
                                        ],
                                        "container_registry_managed_identity_client_id": null,
                                        "container_registry_use_managed_identity": false,
                                        "cors": [
                                            {
                                                "allowed_origins": [
                                                    "https://portal.azure.com"
                                                ],
                                                "support_credentials": false
                                            }
                                        ],
                                        "ftps_state": "FtpsOnly",
                                        "health_check_path": null,
                                        "http2_enabled": false,
                                        "ip_restriction": [],
                                        "ip_restriction_default_action": "Allow",
                                        "load_balancing_mode": "LeastRequests",
                                        "managed_pipeline_mode": "Integrated",
                                        "minimum_tls_version": "1.2",
                                        "remote_debugging_enabled": false,
                                        "runtime_scale_monitoring_enabled": null,
                                        "scm_ip_restriction": [],
                                        "scm_ip_restriction_default_action": "Allow",
                                        "scm_minimum_tls_version": "1.2",
                                        "scm_use_main_ip_restriction": false,
                                        "use_32_bit_worker": false,
                                        "vnet_route_all_enabled": false,
                                        "websockets_enabled": false
                                    }
                                ],
                                "sticky_settings": [],
                                "storage_account": [],
                                "storage_key_vault_secret_id": null,
                                "storage_uses_managed_identity": false,
                                "timeouts": null,
                                "virtual_network_subnet_id": null,
                                "webdeploy_publish_basic_authentication_enabled": true
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_mssql_database.project_sql_db",
                            "mode": "managed",
                            "name": "project_sql_db",
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
                                "name": "sqldb-devops-project-002",
                                "recover_database_id": null,
                                "recovery_point_id": null,
                                "restore_dropped_database_id": null,
                                "restore_long_term_retention_backup_id": null,
                                "storage_account_type": "Local",
                                "tags": null,
                                "timeouts": null,
                                "transparent_data_encryption_enabled": true,
                                "transparent_data_encryption_key_automatic_rotation_enabled": false,
                                "transparent_data_encryption_key_vault_key_id": null
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_mssql_firewall_rule.project_sql_fw_rule",
                            "mode": "managed",
                            "name": "project_sql_fw_rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_mssql_firewall_rule",
                            "values": {
                                "end_ip_address": "0.0.0.0",
                                "name": "AllowAll",
                                "start_ip_address": "0.0.0.0",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_mssql_server.project_sql_svr",
                            "mode": "managed",
                            "name": "project_sql_svr",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "administrator_login_password": true,
                                "azuread_administrator": [
                                    {}
                                ],
                                "identity": [],
                                "restorable_dropped_database_ids": []
                            },
                            "type": "azurerm_mssql_server",
                            "values": {
                                "administrator_login": "rotreyuyuql",
                                "administrator_login_password": "@#sWi9ltH0tr6#epHowru-=s2uE@ql",
                                "azuread_administrator": [
                                    {
                                        "login_username": "fn-devops-project-002",
                                        "object_id": "62e5370a-2bf4-4734-8511-cc798825f062"
                                    }
                                ],
                                "connection_policy": "Default",
                                "identity": [],
                                "location": "eastus",
                                "minimum_tls_version": "1.2",
                                "name": "sqlserver-devops-project-002",
                                "outbound_network_restriction_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "rg-devops-project-002",
                                "tags": null,
                                "timeouts": null,
                                "transparent_data_encryption_key_vault_key_id": null,
                                "version": "12.0"
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_mssql_server_transparent_data_encryption.project_sql_svr_encrypt",
                            "mode": "managed",
                            "name": "project_sql_svr_encrypt",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_mssql_server_transparent_data_encryption",
                            "values": {
                                "auto_rotation_enabled": false,
                                "key_vault_key_id": null,
                                "managed_hsm_key_id": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_mssql_virtual_network_rule.project_sql_vnet_rule",
                            "mode": "managed",
                            "name": "project_sql_vnet_rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_mssql_virtual_network_rule",
                            "values": {
                                "ignore_missing_vnet_service_endpoint": false,
                                "name": "VnetRule",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.database_function_app.azurerm_service_plan.project_asp",
                            "mode": "managed",
                            "name": "project_asp",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_service_plan",
                            "values": {
                                "app_service_environment_id": null,
                                "location": "eastus",
                                "name": "asp-devops-project-002",
                                "os_type": "Linux",
                                "per_site_scaling_enabled": false,
                                "resource_group_name": "rg-devops-project-002",
                                "sku_name": "B1",
                                "tags": null,
                                "timeouts": null,
                                "zone_balancing_enabled": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.environment",
                    "resources": [
                        {
                            "address": "module.environment.azurerm_resource_group.project_rg",
                            "mode": "managed",
                            "name": "project_rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "rg-devops-project-002",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.logs",
                    "resources": [
                        {
                            "address": "module.logs.azurerm_application_insights.project_app_insights",
                            "mode": "managed",
                            "name": "project_app_insights",
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
                                "location": "eastus",
                                "name": "appinsights-devops-project-002",
                                "resource_group_name": "rg-devops-project-002",
                                "retention_in_days": 90,
                                "sampling_percentage": 0,
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.logs.azurerm_log_analytics_workspace.project_logs",
                            "mode": "managed",
                            "name": "project_logs",
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
                                "location": "eastus",
                                "name": "loganalytics-devops-project-002",
                                "reservation_capacity_in_gb_per_day": null,
                                "resource_group_name": "rg-devops-project-002",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.logs.azurerm_monitor_action_group.project_monitor_ag",
                            "mode": "managed",
                            "name": "project_monitor_ag",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "arm_role_receiver": [
                                    {},
                                    {}
                                ],
                                "automation_runbook_receiver": [],
                                "azure_app_push_receiver": [],
                                "azure_function_receiver": [],
                                "email_receiver": [],
                                "event_hub_receiver": [],
                                "itsm_receiver": [],
                                "logic_app_receiver": [],
                                "sms_receiver": [],
                                "voice_receiver": [],
                                "webhook_receiver": []
                            },
                            "type": "azurerm_monitor_action_group",
                            "values": {
                                "arm_role_receiver": [
                                    {
                                        "name": "Monitoring Contributor",
                                        "role_id": "749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                                        "use_common_alert_schema": true
                                    },
                                    {
                                        "name": "Monitoring Reader",
                                        "role_id": "43d0d8ad-25c7-4714-9337-8ba259a9fe05",
                                        "use_common_alert_schema": true
                                    }
                                ],
                                "automation_runbook_receiver": [],
                                "azure_app_push_receiver": [],
                                "azure_function_receiver": [],
                                "email_receiver": [],
                                "enabled": true,
                                "event_hub_receiver": [],
                                "itsm_receiver": [],
                                "location": "global",
                                "logic_app_receiver": [],
                                "name": "Application Insights Smart Detection",
                                "resource_group_name": "rg-devops-project-002",
                                "short_name": "SmartDetect",
                                "sms_receiver": [],
                                "tags": null,
                                "timeouts": null,
                                "voice_receiver": [],
                                "webhook_receiver": []
                            }
                        },
                        {
                            "address": "module.logs.azurerm_monitor_smart_detector_alert_rule.project_monitor_ar",
                            "mode": "managed",
                            "name": "project_monitor_ar",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "action_group": [
                                    {
                                        "ids": []
                                    }
                                ],
                                "scope_resource_ids": []
                            },
                            "type": "azurerm_monitor_smart_detector_alert_rule",
                            "values": {
                                "action_group": [
                                    {
                                        "email_subject": null,
                                        "webhook_payload": null
                                    }
                                ],
                                "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                                "detector_type": "FailureAnomaliesDetector",
                                "enabled": true,
                                "frequency": "PT1M",
                                "name": "Failed HTTP requests",
                                "resource_group_name": "rg-devops-project-002",
                                "severity": "Sev3",
                                "tags": null,
                                "throttling_duration": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.network",
                    "resources": [
                        {
                            "address": "module.network.azurerm_application_gateway.project_agw",
                            "mode": "managed",
                            "name": "project_agw",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "authentication_certificate": [],
                                "autoscale_configuration": [
                                    {}
                                ],
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
                                "autoscale_configuration": [
                                    {
                                        "max_capacity": 2,
                                        "min_capacity": 0
                                    }
                                ],
                                "backend_address_pool": [
                                    {
                                        "fqdns": [],
                                        "ip_addresses": [],
                                        "name": "backendpool-devops-project-002"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "backend-devops-project-002",
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
                                "enable_http2": true,
                                "fips_enabled": null,
                                "firewall_policy_id": null,
                                "force_firewall_policy_association": null,
                                "frontend_ip_configuration": [
                                    {
                                        "name": "appGwPublicFrontendIpIPv4",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "port_80",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appGatewayIpConfig"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                        "frontend_port_name": "port_80",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "listener-devops-project-002",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "agw-devops-project-002",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "backendpool-devops-project-002",
                                        "backend_http_settings_name": "backend-devops-project-002",
                                        "http_listener_name": "listener-devops-project-002",
                                        "name": "routerule-devops-project-002",
                                        "priority": 10000,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "rg-devops-project-002",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": null,
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
                            "address": "module.network.azurerm_public_ip.project_pip",
                            "mode": "managed",
                            "name": "project_pip",
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
                                "name": "pip-devops-project-002",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-devops-project-002",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.project_snet",
                            "mode": "managed",
                            "name": "project_snet",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "address_prefixes": [
                                    false
                                ],
                                "delegation": [],
                                "service_endpoints": [
                                    false
                                ]
                            },
                            "type": "azurerm_subnet",
                            "values": {
                                "address_prefixes": [
                                    "10.0.0.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "snet-devops-project-002",
                                "resource_group_name": "rg-devops-project-002",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": [
                                    "Microsoft.Sql"
                                ],
                                "timeouts": null,
                                "virtual_network_name": "vnet-devops-project-002"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.project_vnet",
                            "mode": "managed",
                            "name": "project_vnet",
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
                                "name": "vnet-devops-project-002",
                                "resource_group_name": "rg-devops-project-002",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.storage",
                    "resources": [
                        {
                            "address": "module.storage.azurerm_storage_account.project_sa",
                            "mode": "managed",
                            "name": "project_sa",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 4,
                            "sensitive_values": {
                                "azure_files_authentication": [],
                                "blob_properties": [],
                                "custom_domain": [],
                                "customer_managed_key": [],
                                "identity": [],
                                "immutability_policy": [],
                                "network_rules": [],
                                "primary_access_key": true,
                                "primary_blob_connection_string": true,
                                "primary_connection_string": true,
                                "queue_properties": [],
                                "routing": [],
                                "sas_policy": [],
                                "secondary_access_key": true,
                                "secondary_blob_connection_string": true,
                                "secondary_connection_string": true,
                                "share_properties": [],
                                "static_website": []
                            },
                            "type": "azurerm_storage_account",
                            "values": {
                                "account_kind": "StorageV2",
                                "account_replication_type": "LRS",
                                "account_tier": "Standard",
                                "allow_nested_items_to_be_public": false,
                                "allowed_copy_scope": null,
                                "azure_files_authentication": [],
                                "cross_tenant_replication_enabled": true,
                                "custom_domain": [],
                                "customer_managed_key": [],
                                "default_to_oauth_authentication": false,
                                "dns_endpoint_type": "Standard",
                                "edge_zone": null,
                                "identity": [],
                                "immutability_policy": [],
                                "infrastructure_encryption_enabled": false,
                                "is_hns_enabled": false,
                                "local_user_enabled": true,
                                "location": "eastus",
                                "min_tls_version": "TLS1_2",
                                "nfsv3_enabled": false,
                                "public_network_access_enabled": true,
                                "queue_encryption_key_type": "Service",
                                "resource_group_name": "rg-devops-project-002",
                                "sas_policy": [],
                                "sftp_enabled": false,
                                "shared_access_key_enabled": true,
                                "static_website": [],
                                "table_encryption_key_type": "Service",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.storage.azurerm_storage_container.project_sc_hosts",
                            "mode": "managed",
                            "name": "project_sc_hosts",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "metadata": {}
                            },
                            "type": "azurerm_storage_container",
                            "values": {
                                "container_access_type": "private",
                                "encryption_scope_override_enabled": true,
                                "name": "azure-webjobs-hosts",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.storage.azurerm_storage_container.project_sc_secrets",
                            "mode": "managed",
                            "name": "project_sc_secrets",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "metadata": {}
                            },
                            "type": "azurerm_storage_container",
                            "values": {
                                "container_access_type": "private",
                                "encryption_scope_override_enabled": true,
                                "name": "azure-webjobs-secrets",
                                "timeouts": null
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "random_string.storage_account_name_generator",
                    "mode": "managed",
                    "name": "storage_account_name_generator",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 24,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": false,
                        "upper": false
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_linux_function_app.project_fa",
                    "mode": "managed",
                    "name": "project_fa",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": [],
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "app_service_logs": [],
                                "application_insights_connection_string": true,
                                "application_insights_key": true,
                                "application_stack": [
                                    {
                                        "docker": []
                                    }
                                ],
                                "cors": [
                                    {
                                        "allowed_origins": [
                                            false
                                        ]
                                    }
                                ],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": [],
                        "storage_account_access_key": true,
                        "tags": {}
                    },
                    "type": "azurerm_linux_function_app",
                    "values": {
                        "app_settings": {
                            "BUILD_FLAGS": "UseExpressBuild",
                            "DB_CONNECTION_STRING": "DRIVER={ODBC Driver 17 for SQL Server};SERVER=tcp:sqlserver-devops-project-002.database.windows.net,1433;DATABASE=sqldb-devops-project-002;",
                            "ENABLE_ORYX_BUILD": "true",
                            "SCM_DO_BUILD_DURING_DEPLOYMENT": "1",
                            "XDG_CACHE_HOME": "/tmp/.cache"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "builtin_logging_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "content_share_force_disabled": false,
                        "daily_memory_time_quota": 0,
                        "enabled": false,
                        "ftp_publish_basic_authentication_enabled": true,
                        "functions_extension_version": "~4",
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "eastus",
                        "name": "fn-devops-project-002",
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-devops-project-002",
                        "site_config": [
                            {
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "app_service_logs": [],
                                "application_insights_key": null,
                                "application_stack": [
                                    {
                                        "docker": [],
                                        "dotnet_version": null,
                                        "java_version": null,
                                        "node_version": null,
                                        "powershell_core_version": null,
                                        "python_version": "3.8",
                                        "use_custom_runtime": null,
                                        "use_dotnet_isolated_runtime": false
                                    }
                                ],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [
                                    {
                                        "allowed_origins": [
                                            "https://portal.azure.com"
                                        ],
                                        "support_credentials": false
                                    }
                                ],
                                "ftps_state": "FtpsOnly",
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [],
                                "ip_restriction_default_action": "Allow",
                                "load_balancing_mode": "LeastRequests",
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "runtime_scale_monitoring_enabled": null,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "storage_key_vault_secret_id": null,
                        "storage_uses_managed_identity": false,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_database.project_sql_db",
                    "mode": "managed",
                    "name": "project_sql_db",
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
                        "name": "sqldb-devops-project-002",
                        "recover_database_id": null,
                        "recovery_point_id": null,
                        "restore_dropped_database_id": null,
                        "restore_long_term_retention_backup_id": null,
                        "storage_account_type": "Local",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_enabled": true,
                        "transparent_data_encryption_key_automatic_rotation_enabled": false,
                        "transparent_data_encryption_key_vault_key_id": null
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_firewall_rule.project_sql_fw_rule",
                    "mode": "managed",
                    "name": "project_sql_fw_rule",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_mssql_firewall_rule",
                    "values": {
                        "end_ip_address": "0.0.0.0",
                        "name": "AllowAll",
                        "start_ip_address": "0.0.0.0",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_server.project_sql_svr",
                    "mode": "managed",
                    "name": "project_sql_svr",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "administrator_login_password": true,
                        "azuread_administrator": [
                            {}
                        ],
                        "identity": [],
                        "restorable_dropped_database_ids": []
                    },
                    "type": "azurerm_mssql_server",
                    "values": {
                        "administrator_login": "rotreyuyuql",
                        "administrator_login_password": "@#sWi9ltH0tr6#epHowru-=s2uE@ql",
                        "azuread_administrator": [
                            {
                                "login_username": "fn-devops-project-002",
                                "object_id": "62e5370a-2bf4-4734-8511-cc798825f062"
                            }
                        ],
                        "connection_policy": "Default",
                        "identity": [],
                        "location": "eastus",
                        "minimum_tls_version": "1.2",
                        "name": "sqlserver-devops-project-002",
                        "outbound_network_restriction_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-devops-project-002",
                        "tags": null,
                        "timeouts": null,
                        "transparent_data_encryption_key_vault_key_id": null,
                        "version": "12.0"
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_server_transparent_data_encryption.project_sql_svr_encrypt",
                    "mode": "managed",
                    "name": "project_sql_svr_encrypt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_mssql_server_transparent_data_encryption",
                    "values": {
                        "auto_rotation_enabled": false,
                        "key_vault_key_id": null,
                        "managed_hsm_key_id": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_mssql_virtual_network_rule.project_sql_vnet_rule",
                    "mode": "managed",
                    "name": "project_sql_vnet_rule",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_mssql_virtual_network_rule",
                    "values": {
                        "ignore_missing_vnet_service_endpoint": false,
                        "name": "VnetRule",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.database_function_app.azurerm_service_plan.project_asp",
                    "mode": "managed",
                    "name": "project_asp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "eastus",
                        "name": "asp-devops-project-002",
                        "os_type": "Linux",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "rg-devops-project-002",
                        "sku_name": "B1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "module.environment.azurerm_resource_group.project_rg",
                    "mode": "managed",
                    "name": "project_rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "name": "rg-devops-project-002",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.logs.azurerm_application_insights.project_app_insights",
                    "mode": "managed",
                    "name": "project_app_insights",
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
                        "location": "eastus",
                        "name": "appinsights-devops-project-002",
                        "resource_group_name": "rg-devops-project-002",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.logs.azurerm_log_analytics_workspace.project_logs",
                    "mode": "managed",
                    "name": "project_logs",
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
                        "location": "eastus",
                        "name": "loganalytics-devops-project-002",
                        "reservation_capacity_in_gb_per_day": null,
                        "resource_group_name": "rg-devops-project-002",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.logs.azurerm_monitor_action_group.project_monitor_ag",
                    "mode": "managed",
                    "name": "project_monitor_ag",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "arm_role_receiver": [
                            {},
                            {}
                        ],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [],
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "logic_app_receiver": [],
                        "sms_receiver": [],
                        "voice_receiver": [],
                        "webhook_receiver": []
                    },
                    "type": "azurerm_monitor_action_group",
                    "values": {
                        "arm_role_receiver": [
                            {
                                "name": "Monitoring Contributor",
                                "role_id": "749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                                "use_common_alert_schema": true
                            },
                            {
                                "name": "Monitoring Reader",
                                "role_id": "43d0d8ad-25c7-4714-9337-8ba259a9fe05",
                                "use_common_alert_schema": true
                            }
                        ],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [],
                        "enabled": true,
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "location": "global",
                        "logic_app_receiver": [],
                        "name": "Application Insights Smart Detection",
                        "resource_group_name": "rg-devops-project-002",
                        "short_name": "SmartDetect",
                        "sms_receiver": [],
                        "tags": null,
                        "timeouts": null,
                        "voice_receiver": [],
                        "webhook_receiver": []
                    }
                },
                {
                    "address": "module.logs.azurerm_monitor_smart_detector_alert_rule.project_monitor_ar",
                    "mode": "managed",
                    "name": "project_monitor_ar",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": []
                            }
                        ],
                        "scope_resource_ids": []
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failed HTTP requests",
                        "resource_group_name": "rg-devops-project-002",
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.network.azurerm_application_gateway.project_agw",
                    "mode": "managed",
                    "name": "project_agw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [
                            {}
                        ],
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
                        "autoscale_configuration": [
                            {
                                "max_capacity": 2,
                                "min_capacity": 0
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "ip_addresses": [],
                                "name": "backendpool-devops-project-002"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "backend-devops-project-002",
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
                        "enable_http2": true,
                        "fips_enabled": null,
                        "firewall_policy_id": null,
                        "force_firewall_policy_association": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "appGwPublicFrontendIpIPv4",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "port_80",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "appGatewayIpConfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_80",
                                "host_name": "",
                                "host_names": [],
                                "name": "listener-devops-project-002",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "agw-devops-project-002",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "backendpool-devops-project-002",
                                "backend_http_settings_name": "backend-devops-project-002",
                                "http_listener_name": "listener-devops-project-002",
                                "name": "routerule-devops-project-002",
                                "priority": 10000,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "rg-devops-project-002",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": null,
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
                    "address": "module.network.azurerm_public_ip.project_pip",
                    "mode": "managed",
                    "name": "project_pip",
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
                        "name": "pip-devops-project-002",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-devops-project-002",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.network.azurerm_subnet.project_snet",
                    "mode": "managed",
                    "name": "project_snet",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": [],
                        "service_endpoints": [
                            false
                        ]
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-devops-project-002",
                        "resource_group_name": "rg-devops-project-002",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": [
                            "Microsoft.Sql"
                        ],
                        "timeouts": null,
                        "virtual_network_name": "vnet-devops-project-002"
                    }
                },
                {
                    "address": "module.network.azurerm_virtual_network.project_vnet",
                    "mode": "managed",
                    "name": "project_vnet",
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
                        "name": "vnet-devops-project-002",
                        "resource_group_name": "rg-devops-project-002",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.azurerm_storage_account.project_sa",
                    "mode": "managed",
                    "name": "project_sa",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 4,
                    "sensitive_values": {
                        "azure_files_authentication": [],
                        "blob_properties": [],
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "identity": [],
                        "immutability_policy": [],
                        "network_rules": [],
                        "primary_access_key": true,
                        "primary_blob_connection_string": true,
                        "primary_connection_string": true,
                        "queue_properties": [],
                        "routing": [],
                        "sas_policy": [],
                        "secondary_access_key": true,
                        "secondary_blob_connection_string": true,
                        "secondary_connection_string": true,
                        "share_properties": [],
                        "static_website": []
                    },
                    "type": "azurerm_storage_account",
                    "values": {
                        "account_kind": "StorageV2",
                        "account_replication_type": "LRS",
                        "account_tier": "Standard",
                        "allow_nested_items_to_be_public": false,
                        "allowed_copy_scope": null,
                        "azure_files_authentication": [],
                        "cross_tenant_replication_enabled": true,
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "default_to_oauth_authentication": false,
                        "dns_endpoint_type": "Standard",
                        "edge_zone": null,
                        "identity": [],
                        "immutability_policy": [],
                        "infrastructure_encryption_enabled": false,
                        "is_hns_enabled": false,
                        "local_user_enabled": true,
                        "location": "eastus",
                        "min_tls_version": "TLS1_2",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "rg-devops-project-002",
                        "sas_policy": [],
                        "sftp_enabled": false,
                        "shared_access_key_enabled": true,
                        "static_website": [],
                        "table_encryption_key_type": "Service",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.azurerm_storage_container.project_sc_hosts",
                    "mode": "managed",
                    "name": "project_sc_hosts",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_container",
                    "values": {
                        "container_access_type": "private",
                        "encryption_scope_override_enabled": true,
                        "name": "azure-webjobs-hosts",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.azurerm_storage_container.project_sc_secrets",
                    "mode": "managed",
                    "name": "project_sc_secrets",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_container",
                    "values": {
                        "container_access_type": "private",
                        "encryption_scope_override_enabled": true,
                        "name": "azure-webjobs-secrets",
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
            "root_module": {
                "child_modules": [
                    {
                        "address": "module.database_function_app",
                        "resources": [
                            {
                                "address": "module.database_function_app.data.azurerm_client_config.resource_configs",
                                "mode": "data",
                                "name": "resource_configs",
                                "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                "schema_version": 0,
                                "sensitive_values": {},
                                "type": "azurerm_client_config",
                                "values": {
                                    "client_id": "04b07795-8ddb-461a-bbee-02f9e1bf7b46",
                                    "id": "Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wNGIwNzc5NS04ZGRiLTQ2MWEtYmJlZS0wMmY5ZTFiZjdiNDY7b2JqZWN0SWQ9NjJlNTM3MGEtMmJmNC00NzM0LTg1MTEtY2M3OTg4MjVmMDYyO3N1YnNjcmlwdGlvbklkPTFiNzQxNGEzLWIwMzQtNGY3Yi05NzA4LTM1N2YxZGRlY2Q3YTt0ZW5hbnRJZD1lNjZlNzdiNC01NzI0LTQ0ZDctODcyMS0wNmRmMTYwNDUwY2U=",
                                    "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                    "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                    "timeouts": null
                                }
                            }
                        ]
                    }
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "id"
            ],
            "resource": "module.database_function_app.azurerm_service_plan.project_asp"
        },
        {
            "attribute": [],
            "resource": "module.network.azurerm_subnet.project_snet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.logs.azurerm_log_analytics_workspace.project_logs"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.logs.azurerm_application_insights.project_app_insights"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.storage.azurerm_storage_account.project_sa"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_public_ip.project_pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.project_snet"
        },
        {
            "attribute": [
                "connection_string"
            ],
            "resource": "module.logs.azurerm_application_insights.project_app_insights"
        },
        {
            "attribute": [
                "primary_access_key"
            ],
            "resource": "module.storage.azurerm_storage_account.project_sa"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_string.storage_account_name_generator"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "module.database_function_app.data.azurerm_client_config.resource_configs"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.database_function_app.azurerm_mssql_server.project_sql_svr"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.logs.azurerm_monitor_action_group.project_monitor_ag"
        }
    ],
    "resource_changes": [
        {
            "address": "random_string.storage_account_name_generator",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 24,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": false,
                    "upper": false
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "storage_account_name_generator",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        },
        {
            "address": "module.database_function_app.azurerm_linux_function_app.project_fa",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "BUILD_FLAGS": "UseExpressBuild",
                        "DB_CONNECTION_STRING": "DRIVER={ODBC Driver 17 for SQL Server};SERVER=tcp:sqlserver-devops-project-002.database.windows.net,1433;DATABASE=sqldb-devops-project-002;",
                        "ENABLE_ORYX_BUILD": "true",
                        "SCM_DO_BUILD_DURING_DEPLOYMENT": "1",
                        "XDG_CACHE_HOME": "/tmp/.cache"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "builtin_logging_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "content_share_force_disabled": false,
                    "daily_memory_time_quota": 0,
                    "enabled": false,
                    "ftp_publish_basic_authentication_enabled": true,
                    "functions_extension_version": "~4",
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "eastus",
                    "name": "fn-devops-project-002",
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-devops-project-002",
                    "site_config": [
                        {
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "app_service_logs": [],
                            "application_insights_key": null,
                            "application_stack": [
                                {
                                    "docker": [],
                                    "dotnet_version": null,
                                    "java_version": null,
                                    "node_version": null,
                                    "powershell_core_version": null,
                                    "python_version": "3.8",
                                    "use_custom_runtime": null,
                                    "use_dotnet_isolated_runtime": false
                                }
                            ],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [
                                {
                                    "allowed_origins": [
                                        "https://portal.azure.com"
                                    ],
                                    "support_credentials": false
                                }
                            ],
                            "ftps_state": "FtpsOnly",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [],
                            "ip_restriction_default_action": "Allow",
                            "load_balancing_mode": "LeastRequests",
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "runtime_scale_monitoring_enabled": null,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "storage_key_vault_secret_id": null,
                    "storage_uses_managed_identity": false,
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
                    "identity": [
                        {}
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "app_service_logs": [],
                            "application_insights_connection_string": true,
                            "application_insights_key": true,
                            "application_stack": [
                                {
                                    "docker": []
                                }
                            ],
                            "cors": [
                                {
                                    "allowed_origins": [
                                        false
                                    ]
                                }
                            ],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": [],
                    "storage_account_access_key": true,
                    "tags": {}
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "always_on": true,
                            "app_scale_limit": true,
                            "app_service_logs": [],
                            "application_insights_connection_string": true,
                            "application_stack": [
                                {
                                    "docker": []
                                }
                            ],
                            "cors": [
                                {
                                    "allowed_origins": [
                                        false
                                    ]
                                }
                            ],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "elastic_instance_minimum": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "linux_fx_version": true,
                            "pre_warmed_instance_count": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": [],
                    "storage_account_access_key": true,
                    "storage_account_name": true,
                    "tags": true,
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database_function_app",
            "name": "project_fa",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_function_app"
        },
        {
            "address": "module.database_function_app.azurerm_mssql_database.project_sql_db",
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
                    "name": "sqldb-devops-project-002",
                    "recover_database_id": null,
                    "recovery_point_id": null,
                    "restore_dropped_database_id": null,
                    "restore_long_term_retention_backup_id": null,
                    "storage_account_type": "Local",
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
            "module_address": "module.database_function_app",
            "name": "project_sql_db",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_database"
        },
        {
            "address": "module.database_function_app.azurerm_mssql_firewall_rule.project_sql_fw_rule",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "end_ip_address": "0.0.0.0",
                    "name": "AllowAll",
                    "start_ip_address": "0.0.0.0",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "server_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database_function_app",
            "name": "project_sql_fw_rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_firewall_rule"
        },
        {
            "address": "module.database_function_app.azurerm_mssql_server.project_sql_svr",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "rotreyuyuql",
                    "administrator_login_password": "@#sWi9ltH0tr6#epHowru-=s2uE@ql",
                    "azuread_administrator": [
                        {
                            "login_username": "fn-devops-project-002",
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062"
                        }
                    ],
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "eastus",
                    "minimum_tls_version": "1.2",
                    "name": "sqlserver-devops-project-002",
                    "outbound_network_restriction_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-devops-project-002",
                    "tags": null,
                    "timeouts": null,
                    "transparent_data_encryption_key_vault_key_id": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "azuread_administrator": [
                        {}
                    ],
                    "identity": [],
                    "restorable_dropped_database_ids": []
                },
                "after_unknown": {
                    "azuread_administrator": [
                        {
                            "azuread_authentication_only": true,
                            "tenant_id": true
                        }
                    ],
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
            "module_address": "module.database_function_app",
            "name": "project_sql_svr",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server"
        },
        {
            "address": "module.database_function_app.azurerm_mssql_server_transparent_data_encryption.project_sql_svr_encrypt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_rotation_enabled": false,
                    "key_vault_key_id": null,
                    "managed_hsm_key_id": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "server_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database_function_app",
            "name": "project_sql_svr_encrypt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_server_transparent_data_encryption"
        },
        {
            "address": "module.database_function_app.azurerm_mssql_virtual_network_rule.project_sql_vnet_rule",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ignore_missing_vnet_service_endpoint": false,
                    "name": "VnetRule",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "server_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database_function_app",
            "name": "project_sql_vnet_rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_mssql_virtual_network_rule"
        },
        {
            "address": "module.database_function_app.azurerm_service_plan.project_asp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "eastus",
                    "name": "asp-devops-project-002",
                    "os_type": "Linux",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "rg-devops-project-002",
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
            "module_address": "module.database_function_app",
            "name": "project_asp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "module.environment.azurerm_resource_group.project_rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "rg-devops-project-002",
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
            "module_address": "module.environment",
            "name": "project_rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.logs.azurerm_application_insights.project_app_insights",
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
                    "location": "eastus",
                    "name": "appinsights-devops-project-002",
                    "resource_group_name": "rg-devops-project-002",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null
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
                    "instrumentation_key": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.logs",
            "name": "project_app_insights",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "module.logs.azurerm_log_analytics_workspace.project_logs",
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
                    "location": "eastus",
                    "name": "loganalytics-devops-project-002",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "rg-devops-project-002",
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
                    "retention_in_days": true,
                    "secondary_shared_key": true,
                    "sku": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.logs",
            "name": "project_logs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.logs.azurerm_monitor_action_group.project_monitor_ag",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "arm_role_receiver": [
                        {
                            "name": "Monitoring Contributor",
                            "role_id": "749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                            "use_common_alert_schema": true
                        },
                        {
                            "name": "Monitoring Reader",
                            "role_id": "43d0d8ad-25c7-4714-9337-8ba259a9fe05",
                            "use_common_alert_schema": true
                        }
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "enabled": true,
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "location": "global",
                    "logic_app_receiver": [],
                    "name": "Application Insights Smart Detection",
                    "resource_group_name": "rg-devops-project-002",
                    "short_name": "SmartDetect",
                    "sms_receiver": [],
                    "tags": null,
                    "timeouts": null,
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_sensitive": {
                    "arm_role_receiver": [
                        {},
                        {}
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_unknown": {
                    "arm_role_receiver": [
                        {},
                        {}
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "event_hub_receiver": [],
                    "id": true,
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.logs",
            "name": "project_monitor_ag",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_action_group"
        },
        {
            "address": "module.logs.azurerm_monitor_smart_detector_alert_rule.project_monitor_ar",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failed HTTP requests",
                    "resource_group_name": "rg-devops-project-002",
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": []
                        }
                    ],
                    "scope_resource_ids": []
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": true
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.logs",
            "name": "project_monitor_ar",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "module.network.azurerm_application_gateway.project_agw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {
                            "max_capacity": 2,
                            "min_capacity": 0
                        }
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "ip_addresses": [],
                            "name": "backendpool-devops-project-002"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "backend-devops-project-002",
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
                    "enable_http2": true,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "appGwPublicFrontendIpIPv4",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "port_80",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appGatewayIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_80",
                            "host_name": "",
                            "host_names": [],
                            "name": "listener-devops-project-002",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "agw-devops-project-002",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "backendpool-devops-project-002",
                            "backend_http_settings_name": "backend-devops-project-002",
                            "http_listener_name": "listener-devops-project-002",
                            "name": "routerule-devops-project-002",
                            "priority": 10000,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "rg-devops-project-002",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": null,
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
                    "autoscale_configuration": [
                        {}
                    ],
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
                    "autoscale_configuration": [
                        {}
                    ],
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
            "module_address": "module.network",
            "name": "project_agw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.network.azurerm_public_ip.project_pip",
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
                    "name": "pip-devops-project-002",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-devops-project-002",
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
            "module_address": "module.network",
            "name": "project_pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.network.azurerm_subnet.project_snet",
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
                    "name": "snet-devops-project-002",
                    "resource_group_name": "rg-devops-project-002",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": [
                        "Microsoft.Sql"
                    ],
                    "timeouts": null,
                    "virtual_network_name": "vnet-devops-project-002"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "service_endpoints": [
                        false
                    ]
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
                    "private_link_service_network_policies_enabled": true,
                    "service_endpoints": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.network",
            "name": "project_snet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_virtual_network.project_vnet",
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
                    "name": "vnet-devops-project-002",
                    "resource_group_name": "rg-devops-project-002",
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
            "module_address": "module.network",
            "name": "project_vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.storage.azurerm_storage_account.project_sa",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_kind": "StorageV2",
                    "account_replication_type": "LRS",
                    "account_tier": "Standard",
                    "allow_nested_items_to_be_public": false,
                    "allowed_copy_scope": null,
                    "azure_files_authentication": [],
                    "cross_tenant_replication_enabled": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "default_to_oauth_authentication": false,
                    "dns_endpoint_type": "Standard",
                    "edge_zone": null,
                    "identity": [],
                    "immutability_policy": [],
                    "infrastructure_encryption_enabled": false,
                    "is_hns_enabled": false,
                    "local_user_enabled": true,
                    "location": "eastus",
                    "min_tls_version": "TLS1_2",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "rg-devops-project-002",
                    "sas_policy": [],
                    "sftp_enabled": false,
                    "shared_access_key_enabled": true,
                    "static_website": [],
                    "table_encryption_key_type": "Service",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "azure_files_authentication": [],
                    "blob_properties": [],
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "identity": [],
                    "immutability_policy": [],
                    "network_rules": [],
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_connection_string": true,
                    "queue_properties": [],
                    "routing": [],
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_connection_string": true,
                    "share_properties": [],
                    "static_website": []
                },
                "after_unknown": {
                    "access_tier": true,
                    "azure_files_authentication": [],
                    "blob_properties": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "enable_https_traffic_only": true,
                    "https_traffic_only_enabled": true,
                    "id": true,
                    "identity": [],
                    "immutability_policy": [],
                    "large_file_share_enabled": true,
                    "name": true,
                    "network_rules": true,
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_blob_endpoint": true,
                    "primary_blob_host": true,
                    "primary_blob_internet_endpoint": true,
                    "primary_blob_internet_host": true,
                    "primary_blob_microsoft_endpoint": true,
                    "primary_blob_microsoft_host": true,
                    "primary_connection_string": true,
                    "primary_dfs_endpoint": true,
                    "primary_dfs_host": true,
                    "primary_dfs_internet_endpoint": true,
                    "primary_dfs_internet_host": true,
                    "primary_dfs_microsoft_endpoint": true,
                    "primary_dfs_microsoft_host": true,
                    "primary_file_endpoint": true,
                    "primary_file_host": true,
                    "primary_file_internet_endpoint": true,
                    "primary_file_internet_host": true,
                    "primary_file_microsoft_endpoint": true,
                    "primary_file_microsoft_host": true,
                    "primary_location": true,
                    "primary_queue_endpoint": true,
                    "primary_queue_host": true,
                    "primary_queue_microsoft_endpoint": true,
                    "primary_queue_microsoft_host": true,
                    "primary_table_endpoint": true,
                    "primary_table_host": true,
                    "primary_table_microsoft_endpoint": true,
                    "primary_table_microsoft_host": true,
                    "primary_web_endpoint": true,
                    "primary_web_host": true,
                    "primary_web_internet_endpoint": true,
                    "primary_web_internet_host": true,
                    "primary_web_microsoft_endpoint": true,
                    "primary_web_microsoft_host": true,
                    "queue_properties": true,
                    "routing": true,
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_blob_endpoint": true,
                    "secondary_blob_host": true,
                    "secondary_blob_internet_endpoint": true,
                    "secondary_blob_internet_host": true,
                    "secondary_blob_microsoft_endpoint": true,
                    "secondary_blob_microsoft_host": true,
                    "secondary_connection_string": true,
                    "secondary_dfs_endpoint": true,
                    "secondary_dfs_host": true,
                    "secondary_dfs_internet_endpoint": true,
                    "secondary_dfs_internet_host": true,
                    "secondary_dfs_microsoft_endpoint": true,
                    "secondary_dfs_microsoft_host": true,
                    "secondary_file_endpoint": true,
                    "secondary_file_host": true,
                    "secondary_file_internet_endpoint": true,
                    "secondary_file_internet_host": true,
                    "secondary_file_microsoft_endpoint": true,
                    "secondary_file_microsoft_host": true,
                    "secondary_location": true,
                    "secondary_queue_endpoint": true,
                    "secondary_queue_host": true,
                    "secondary_queue_microsoft_endpoint": true,
                    "secondary_queue_microsoft_host": true,
                    "secondary_table_endpoint": true,
                    "secondary_table_host": true,
                    "secondary_table_microsoft_endpoint": true,
                    "secondary_table_microsoft_host": true,
                    "secondary_web_endpoint": true,
                    "secondary_web_host": true,
                    "secondary_web_internet_endpoint": true,
                    "secondary_web_internet_host": true,
                    "secondary_web_microsoft_endpoint": true,
                    "secondary_web_microsoft_host": true,
                    "share_properties": true,
                    "static_website": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.storage",
            "name": "project_sa",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "module.storage.azurerm_storage_container.project_sc_hosts",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "azure-webjobs-hosts",
                    "timeouts": null
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "default_encryption_scope": true,
                    "has_immutability_policy": true,
                    "has_legal_hold": true,
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true,
                    "storage_account_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.storage",
            "name": "project_sc_hosts",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "module.storage.azurerm_storage_container.project_sc_secrets",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "azure-webjobs-secrets",
                    "timeouts": null
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "default_encryption_scope": true,
                    "has_immutability_policy": true,
                    "has_legal_hold": true,
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true,
                    "storage_account_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.storage",
            "name": "project_sc_secrets",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:44:30Z"
}