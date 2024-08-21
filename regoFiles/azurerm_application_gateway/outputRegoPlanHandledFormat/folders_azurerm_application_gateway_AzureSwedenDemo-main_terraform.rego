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
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            }
        },
        "root_module": {
            "outputs": {
                "gateway_frontend_ip": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.pip.ip_address",
                            "azurerm_public_ip.pip"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.main",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
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
                                        "var.location",
                                        "var.environment"
                                    ]
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
                                        "var.frontend_ip_configuration_name"
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
                                        "var.location",
                                        "var.environment"
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
                                        "var.location",
                                        "var.environment"
                                    ]
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
                                        "var.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "azurerm_user_assigned_identity.base.id",
                                        "azurerm_user_assigned_identity.base"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
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
                                "var.location",
                                "var.environment"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.location",
                                        "var.environment"
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
                    "address": "azurerm_application_insights.app_insights",
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
                                "var.location",
                                "var.environment"
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
                    "name": "app_insights",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_key_vault.kv",
                    "depends_on": [
                        "azurerm_resource_group.rg"
                    ],
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_string.key_vault_name.result",
                                "random_string.key_vault_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kv",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_network_interface.nic",
                    "count_expression": {
                        "constant_value": 2
                    },
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "var.location",
                                        "var.environment",
                                        "count.index"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.backend.id",
                                        "azurerm_subnet.backend"
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
                                "var.location",
                                "var.environment",
                                "count.index"
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
                    "name": "nic",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc",
                    "count_expression": {
                        "constant_value": 2
                    },
                    "expressions": {
                        "backend_address_pool_id": {
                            "references": [
                                "azurerm_application_gateway.main.backend_address_pool",
                                "azurerm_application_gateway.main"
                            ]
                        },
                        "ip_configuration_name": {
                            "references": [
                                "var.location",
                                "var.environment",
                                "count.index"
                            ]
                        },
                        "network_interface_id": {
                            "references": [
                                "azurerm_network_interface.nic",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nic-assoc",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
                },
                {
                    "address": "azurerm_public_ip.pip",
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
                                "var.location",
                                "var.environment"
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
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
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
                    "address": "azurerm_service_plan.plan",
                    "depends_on": [
                        "azurerm_resource_group.rg"
                    ],
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
                            ]
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Y1"
                        }
                    },
                    "mode": "managed",
                    "name": "plan",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_storage_account.storageaccount",
                    "depends_on": [
                        "azurerm_resource_group.rg"
                    ],
                    "expressions": {
                        "account_kind": {
                            "constant_value": "Storage"
                        },
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
                            "constant_value": "stfunazuresweden"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "storageaccount",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "azurerm_storage_container.app_container",
                    "expressions": {
                        "name": {
                            "constant_value": "funcazureswedensssw-applease"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app_container",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "azurerm_storage_container.container",
                    "expressions": {
                        "name": {
                            "constant_value": "funcazureswedensssw-leases"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "container",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "azurerm_storage_container.webjobs_hosts",
                    "expressions": {
                        "name": {
                            "constant_value": "azure-webjobs-hosts"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "webjobs_hosts",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "azurerm_storage_container.webjobs_secrets",
                    "expressions": {
                        "name": {
                            "constant_value": "azure-webjobs-secrets"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "webjobs_secrets",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "azurerm_storage_queue.control-00",
                    "expressions": {
                        "name": {
                            "constant_value": "funcazureswedensssw-control-00"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "control-00",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_queue"
                },
                {
                    "address": "azurerm_storage_queue.control-01",
                    "expressions": {
                        "name": {
                            "constant_value": "funcazureswedensssw-control-01"
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "control-01",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_queue"
                },
                {
                    "address": "azurerm_storage_share.share",
                    "expressions": {
                        "name": {
                            "constant_value": "func-azure-sweden-sssw"
                        },
                        "quota": {
                            "constant_value": 5120
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "share",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_storage_share"
                },
                {
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.21.1.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
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
                                "10.21.0.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
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
                    "name": "frontend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_user_assigned_identity.base",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
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
                    "name": "base",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_machine_extension.vm-extensions",
                    "count_expression": {
                        "constant_value": 2
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "publisher": {
                            "constant_value": "Microsoft.Compute"
                        },
                        "settings": {
                            "constant_value": "    {\n        \"commandToExecute\": \"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \\\"C:\\\\inetpub\\\\wwwroot\\\\Default.htm\\\" -Value $($env:computername)\"\n    }\n"
                        },
                        "type": {
                            "constant_value": "CustomScriptExtension"
                        },
                        "type_handler_version": {
                            "constant_value": "1.10"
                        },
                        "virtual_machine_id": {
                            "references": [
                                "azurerm_windows_virtual_machine.vm",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vm-extensions",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_machine_extension"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.21.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.location",
                                "var.environment"
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
                },
                {
                    "address": "azurerm_windows_function_app.func",
                    "depends_on": [
                        "azurerm_service_plan.plan"
                    ],
                    "expressions": {
                        "app_settings": {
                            "references": [
                                "var.acmebot_contacts",
                                "azurerm_key_vault.kv.vault_uri",
                                "azurerm_key_vault.kv",
                                "var.microsoft_authentication_secret",
                                "var.cloudflare_api_token"
                            ]
                        },
                        "auth_settings_v2": [
                            {
                                "active_directory_v2": [
                                    {
                                        "allowed_audiences": {
                                            "constant_value": [
                                                "api://12ce76e9-bf13-4bca-9e50-8a86d35b21b6"
                                            ]
                                        },
                                        "client_id": {
                                            "constant_value": "12ce76e9-bf13-4bca-9e50-8a86d35b21b6"
                                        },
                                        "client_secret_setting_name": {
                                            "constant_value": "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET"
                                        },
                                        "tenant_auth_endpoint": {
                                            "constant_value": "https://sts.windows.net/edb75dc6-1736-4e41-97cc-d8a56f171897/v2.0"
                                        }
                                    }
                                ],
                                "auth_enabled": {
                                    "constant_value": false
                                },
                                "default_provider": {
                                    "constant_value": "azureactivedirectory"
                                },
                                "login": [
                                    {
                                        "token_store_enabled": {
                                            "constant_value": true
                                        }
                                    }
                                ],
                                "require_authentication": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "builtin_logging_enabled": {
                            "constant_value": false
                        },
                        "client_certificate_mode": {
                            "constant_value": "Required"
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
                                "var.location",
                                "var.environment"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "azurerm_service_plan.plan.id",
                                "azurerm_service_plan.plan"
                            ]
                        },
                        "site_config": [
                            {
                                "application_insights_connection_string": {
                                    "references": [
                                        "azurerm_application_insights.app_insights.connection_string",
                                        "azurerm_application_insights.app_insights"
                                    ]
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET"
                                    ]
                                }
                            }
                        ],
                        "storage_account_access_key": {
                            "references": [
                                "azurerm_storage_account.storageaccount.primary_access_key",
                                "azurerm_storage_account.storageaccount"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storageaccount.name",
                                "azurerm_storage_account.storageaccount"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "func",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_function_app"
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm",
                    "count_expression": {
                        "constant_value": 2
                    },
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "random_password.password.result",
                                "random_password.password"
                            ]
                        },
                        "admin_username": {
                            "constant_value": "azureadmin"
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.nic",
                                "count.index"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Standard_LRS"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "size": {
                            "constant_value": "Standard_B2s"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "WindowsServer"
                                },
                                "publisher": {
                                    "constant_value": "MicrosoftWindowsServer"
                                },
                                "sku": {
                                    "constant_value": "2019-Datacenter"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine"
                },
                {
                    "address": "random_password.password",
                    "expressions": {
                        "length": {
                            "constant_value": 16
                        },
                        "lower": {
                            "constant_value": true
                        },
                        "numeric": {
                            "constant_value": true
                        },
                        "special": {
                            "constant_value": true
                        },
                        "upper": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "password",
                    "provider_config_key": "random",
                    "schema_version": 3,
                    "type": "random_password"
                },
                {
                    "address": "random_string.key_vault_name",
                    "expressions": {
                        "length": {
                            "constant_value": 8
                        },
                        "special": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "key_vault_name",
                    "provider_config_key": "random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ],
            "variables": {
                "acmebot_contacts": {
                    "description": "ACMEbot contacts"
                },
                "acmebot_vault_base_url": {
                    "description": "ACMEbot vault base URL"
                },
                "cloudflare_api_token": {},
                "environment": {
                    "description": "Environment name"
                },
                "frontend_ip_configuration_name": {
                    "default": "azure-sweden-frontend-ip-config",
                    "description": "Frontend IP configuration name"
                },
                "location": {
                    "description": "Azure Location of resources"
                },
                "microsoft_authentication_secret": {}
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "gateway_frontend_ip": {
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
            "gateway_frontend_ip": {
                "sensitive": false
            }
        },
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
                        "identity": [
                            {
                                "identity_ids": []
                            }
                        ],
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
                                "name": "backend-address-pool-uksouth-dev"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "http-setting-uksouth-dev",
                                "path": "",
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
                                "name": "azure-sweden-frontend-ip-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "frontend-port-uksouth-dev",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "gw-ip-config-uksouth-dev"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "azure-sweden-frontend-ip-config",
                                "frontend_port_name": "frontend-port-uksouth-dev",
                                "host_name": "",
                                "host_names": [],
                                "name": "http-listener-uksouth-dev",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [
                            {
                                "type": "UserAssigned"
                            }
                        ],
                        "location": "uksouth",
                        "name": "azure-swewden-app-gateway-uksouth-dev",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "backend-address-pool-uksouth-dev",
                                "backend_http_settings_name": "http-setting-uksouth-dev",
                                "http_listener_name": "http-listener-uksouth-dev",
                                "name": "request-routing-rule-uksouth-dev",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
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
                    "address": "azurerm_application_insights.app_insights",
                    "mode": "managed",
                    "name": "app_insights",
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
                        "location": "uksouth",
                        "name": "app-insights-uksouth-dev",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "retention_in_days": 90,
                        "sampling_percentage": 100,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": null
                    }
                },
                {
                    "address": "azurerm_key_vault.kv",
                    "mode": "managed",
                    "name": "kv",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "uksouth",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": null,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 90,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "applied_dns_servers": [],
                        "dns_servers": [],
                        "ip_configuration": [
                            {}
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "nic-ipconfig-uksouth-dev-1",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "uksouth",
                        "name": "nic-azure-sweden-uksouth-dev-1",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "applied_dns_servers": [],
                        "dns_servers": [],
                        "ip_configuration": [
                            {}
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "nic-ipconfig-uksouth-dev-2",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "uksouth",
                        "name": "nic-azure-sweden-uksouth-dev-2",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic-assoc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-uksouth-dev-1",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic-assoc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-uksouth-dev-2",
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
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "uksouth",
                        "name": "pub-uksouth-dev",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
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
                        "location": "uksouth",
                        "managed_by": null,
                        "name": "rg-azuresweden-uksouth-dev",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_service_plan.plan",
                    "mode": "managed",
                    "name": "plan",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "uksouth",
                        "name": "plan-uksouth-dev",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "sku_name": "Y1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_storage_account.storageaccount",
                    "mode": "managed",
                    "name": "storageaccount",
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
                        "account_kind": "Storage",
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
                        "location": "uksouth",
                        "min_tls_version": "TLS1_2",
                        "name": "stfunazuresweden",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
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
                    "address": "azurerm_storage_container.app_container",
                    "mode": "managed",
                    "name": "app_container",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_container",
                    "values": {
                        "container_access_type": "private",
                        "encryption_scope_override_enabled": true,
                        "name": "funcazureswedensssw-applease",
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_container.container",
                    "mode": "managed",
                    "name": "container",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_container",
                    "values": {
                        "container_access_type": "private",
                        "encryption_scope_override_enabled": true,
                        "name": "funcazureswedensssw-leases",
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_container.webjobs_hosts",
                    "mode": "managed",
                    "name": "webjobs_hosts",
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
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_container.webjobs_secrets",
                    "mode": "managed",
                    "name": "webjobs_secrets",
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
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_queue.control-00",
                    "mode": "managed",
                    "name": "control-00",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_storage_queue",
                    "values": {
                        "metadata": null,
                        "name": "funcazureswedensssw-control-00",
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_queue.control-01",
                    "mode": "managed",
                    "name": "control-01",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_storage_queue",
                    "values": {
                        "metadata": null,
                        "name": "funcazureswedensssw-control-01",
                        "storage_account_name": "stfunazuresweden",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_share.share",
                    "mode": "managed",
                    "name": "share",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "acl": [],
                        "metadata": {}
                    },
                    "type": "azurerm_storage_share",
                    "values": {
                        "acl": [],
                        "enabled_protocol": "SMB",
                        "name": "func-azure-sweden-sssw",
                        "quota": 5120,
                        "storage_account_name": "stfunazuresweden",
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
                            "10.21.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "backend-subnet-uksouth-dev",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azuresweden-uksouth-dev"
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
                            "10.21.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "subnet1-uksouth-dev",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azuresweden-uksouth-dev"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.base",
                    "mode": "managed",
                    "name": "base",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "uksouth",
                        "name": "mi-appgw-keyvault-uksouth-dev",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_machine_extension.vm-extensions[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "vm-extensions",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "protected_settings": true,
                        "protected_settings_from_key_vault": []
                    },
                    "type": "azurerm_virtual_machine_extension",
                    "values": {
                        "auto_upgrade_minor_version": null,
                        "automatic_upgrade_enabled": null,
                        "failure_suppression_enabled": false,
                        "name": "ext1",
                        "protected_settings": null,
                        "protected_settings_from_key_vault": [],
                        "provision_after_extensions": null,
                        "publisher": "Microsoft.Compute",
                        "settings": "    {\n        \"commandToExecute\": \"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \\\"C:\\\\inetpub\\\\wwwroot\\\\Default.htm\\\" -Value $($env:computername)\"\n    }\n",
                        "tags": null,
                        "timeouts": null,
                        "type": "CustomScriptExtension",
                        "type_handler_version": "1.10"
                    }
                },
                {
                    "address": "azurerm_virtual_machine_extension.vm-extensions[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "vm-extensions",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "protected_settings": true,
                        "protected_settings_from_key_vault": []
                    },
                    "type": "azurerm_virtual_machine_extension",
                    "values": {
                        "auto_upgrade_minor_version": null,
                        "automatic_upgrade_enabled": null,
                        "failure_suppression_enabled": false,
                        "name": "ext2",
                        "protected_settings": null,
                        "protected_settings_from_key_vault": [],
                        "provision_after_extensions": null,
                        "publisher": "Microsoft.Compute",
                        "settings": "    {\n        \"commandToExecute\": \"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \\\"C:\\\\inetpub\\\\wwwroot\\\\Default.htm\\\" -Value $($env:computername)\"\n    }\n",
                        "tags": null,
                        "timeouts": null,
                        "type": "CustomScriptExtension",
                        "type_handler_version": "1.10"
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
                            "10.21.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "uksouth",
                        "name": "vnet-azuresweden-uksouth-dev",
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_windows_function_app.func",
                    "mode": "managed",
                    "name": "func",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [
                            {
                                "active_directory_v2": [
                                    {
                                        "allowed_audiences": [
                                            false
                                        ]
                                    }
                                ],
                                "apple_v2": [],
                                "azure_static_web_app_v2": [],
                                "custom_oidc_v2": [],
                                "facebook_v2": [],
                                "github_v2": [],
                                "google_v2": [],
                                "login": [
                                    {}
                                ],
                                "microsoft_v2": [],
                                "twitter_v2": []
                            }
                        ],
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
                                "application_stack": [],
                                "cors": [],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": [],
                        "storage_account_access_key": true
                    },
                    "type": "azurerm_windows_function_app",
                    "values": {
                        "auth_settings": [],
                        "auth_settings_v2": [
                            {
                                "active_directory_v2": [
                                    {
                                        "allowed_applications": null,
                                        "allowed_audiences": [
                                            "api://12ce76e9-bf13-4bca-9e50-8a86d35b21b6"
                                        ],
                                        "allowed_groups": null,
                                        "allowed_identities": null,
                                        "client_id": "12ce76e9-bf13-4bca-9e50-8a86d35b21b6",
                                        "client_secret_certificate_thumbprint": null,
                                        "client_secret_setting_name": "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET",
                                        "jwt_allowed_client_applications": null,
                                        "jwt_allowed_groups": null,
                                        "login_parameters": null,
                                        "tenant_auth_endpoint": "https://sts.windows.net/edb75dc6-1736-4e41-97cc-d8a56f171897/v2.0",
                                        "www_authentication_disabled": null
                                    }
                                ],
                                "apple_v2": [],
                                "auth_enabled": false,
                                "azure_static_web_app_v2": [],
                                "config_file_path": null,
                                "custom_oidc_v2": [],
                                "default_provider": "azureactivedirectory",
                                "excluded_paths": null,
                                "facebook_v2": [],
                                "forward_proxy_convention": "NoProxy",
                                "forward_proxy_custom_host_header_name": null,
                                "forward_proxy_custom_scheme_header_name": null,
                                "github_v2": [],
                                "google_v2": [],
                                "http_route_api_prefix": "/.auth",
                                "login": [
                                    {
                                        "allowed_external_redirect_urls": null,
                                        "cookie_expiration_convention": "FixedTime",
                                        "cookie_expiration_time": "08:00:00",
                                        "logout_endpoint": null,
                                        "nonce_expiration_time": "00:05:00",
                                        "preserve_url_fragments_for_logins": false,
                                        "token_refresh_extension_time": 72,
                                        "token_store_enabled": true,
                                        "token_store_path": null,
                                        "token_store_sas_setting_name": null,
                                        "validate_nonce": true
                                    }
                                ],
                                "microsoft_v2": [],
                                "require_authentication": true,
                                "require_https": true,
                                "runtime_version": "~1",
                                "twitter_v2": [],
                                "unauthenticated_action": "RedirectToLoginPage"
                            }
                        ],
                        "backup": [],
                        "builtin_logging_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "content_share_force_disabled": false,
                        "daily_memory_time_quota": 0,
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "functions_extension_version": "~4",
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "uksouth",
                        "name": "func-insights-uksouth-dev",
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "site_config": [
                            {
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "app_service_logs": [],
                                "application_insights_key": null,
                                "cors": [],
                                "ftps_state": "Disabled",
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
                                "use_32_bit_worker": true,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "storage_account_name": "stfunazuresweden",
                        "storage_key_vault_secret_id": null,
                        "storage_uses_managed_identity": false,
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [],
                        "network_interface_ids": [],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "os_image_notification": [],
                        "plan": [],
                        "private_ip_addresses": [],
                        "public_ip_addresses": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_username": "azureadmin",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "hotpatching_enabled": false,
                        "identity": [],
                        "license_type": null,
                        "location": "uksouth",
                        "max_bid_price": -1,
                        "name": "azure-sweden-1",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B2s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "WindowsServer",
                                "publisher": "MicrosoftWindowsServer",
                                "sku": "2019-Datacenter",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone": null
                    }
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [],
                        "network_interface_ids": [],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "os_image_notification": [],
                        "plan": [],
                        "private_ip_addresses": [],
                        "public_ip_addresses": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_username": "azureadmin",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "hotpatching_enabled": false,
                        "identity": [],
                        "license_type": null,
                        "location": "uksouth",
                        "max_bid_price": -1,
                        "name": "azure-sweden-2",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "rg-azuresweden-uksouth-dev",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B2s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "WindowsServer",
                                "publisher": "MicrosoftWindowsServer",
                                "sku": "2019-Datacenter",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone": null
                    }
                },
                {
                    "address": "random_password.password",
                    "mode": "managed",
                    "name": "password",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 3,
                    "sensitive_values": {
                        "bcrypt_hash": true,
                        "result": true
                    },
                    "type": "random_password",
                    "values": {
                        "keepers": null,
                        "length": 16,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": true,
                        "upper": true
                    }
                },
                {
                    "address": "random_string.key_vault_name",
                    "mode": "managed",
                    "name": "key_vault_name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 8,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": false,
                        "upper": true
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
                "resources": [
                    {
                        "address": "data.azurerm_client_config.current",
                        "mode": "data",
                        "name": "current",
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
                "name"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [],
            "resource": "azurerm_windows_virtual_machine.vm"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "azurerm_application_gateway.main"
        },
        {
            "attribute": [
                "vault_uri"
            ],
            "resource": "azurerm_key_vault.kv"
        },
        {
            "attribute": [
                "connection_string"
            ],
            "resource": "azurerm_application_insights.app_insights"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_string.key_vault_name"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.backend"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_password.password"
        },
        {
            "attribute": [],
            "resource": "azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_storage_account.storageaccount"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_user_assigned_identity.base"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_service_plan.plan"
        },
        {
            "attribute": [
                "primary_access_key"
            ],
            "resource": "azurerm_storage_account.storageaccount"
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
                            "fqdns": [],
                            "ip_addresses": [],
                            "name": "backend-address-pool-uksouth-dev"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http-setting-uksouth-dev",
                            "path": "",
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
                            "name": "azure-sweden-frontend-ip-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "frontend-port-uksouth-dev",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "gw-ip-config-uksouth-dev"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "azure-sweden-frontend-ip-config",
                            "frontend_port_name": "frontend-port-uksouth-dev",
                            "host_name": "",
                            "host_names": [],
                            "name": "http-listener-uksouth-dev",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "location": "uksouth",
                    "name": "azure-swewden-app-gateway-uksouth-dev",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "backend-address-pool-uksouth-dev",
                            "backend_http_settings_name": "http-setting-uksouth-dev",
                            "http_listener_name": "http-listener-uksouth-dev",
                            "name": "request-routing-rule-uksouth-dev",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
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
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
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
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
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
            "address": "azurerm_application_insights.app_insights",
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
                    "location": "uksouth",
                    "name": "app-insights-uksouth-dev",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
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
            "name": "app_insights",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_key_vault.kv",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "uksouth",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 90,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": true,
                    "contact": true,
                    "id": true,
                    "name": true,
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_network_interface.nic[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "nic-ipconfig-uksouth-dev-1",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "uksouth",
                    "name": "nic-azure-sweden-uksouth-dev-1",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "applied_dns_servers": [],
                    "dns_servers": [],
                    "ip_configuration": [
                        {}
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "accelerated_networking_enabled": true,
                    "applied_dns_servers": true,
                    "dns_servers": true,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "id": true,
                    "internal_domain_name_suffix": true,
                    "ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "primary": true,
                            "private_ip_address": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.nic[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "nic-ipconfig-uksouth-dev-2",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "uksouth",
                    "name": "nic-azure-sweden-uksouth-dev-2",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "applied_dns_servers": [],
                    "dns_servers": [],
                    "ip_configuration": [
                        {}
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "accelerated_networking_enabled": true,
                    "applied_dns_servers": true,
                    "dns_servers": true,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "id": true,
                    "internal_domain_name_suffix": true,
                    "ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "primary": true,
                            "private_ip_address": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-uksouth-dev-1",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "nic-assoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-uksouth-dev-2",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "nic-assoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
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
                    "location": "uksouth",
                    "name": "pub-uksouth-dev",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
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
                    "location": "uksouth",
                    "managed_by": null,
                    "name": "rg-azuresweden-uksouth-dev",
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
            "address": "azurerm_service_plan.plan",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "uksouth",
                    "name": "plan-uksouth-dev",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "sku_name": "Y1",
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
            "name": "plan",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_storage_account.storageaccount",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_kind": "Storage",
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
                    "location": "uksouth",
                    "min_tls_version": "TLS1_2",
                    "name": "stfunazuresweden",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
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
            "name": "storageaccount",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "azurerm_storage_container.app_container",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "funcazureswedensssw-applease",
                    "storage_account_name": "stfunazuresweden",
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
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app_container",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "azurerm_storage_container.container",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "funcazureswedensssw-leases",
                    "storage_account_name": "stfunazuresweden",
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
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "container",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "azurerm_storage_container.webjobs_hosts",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "azure-webjobs-hosts",
                    "storage_account_name": "stfunazuresweden",
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
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webjobs_hosts",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "azurerm_storage_container.webjobs_secrets",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "private",
                    "encryption_scope_override_enabled": true,
                    "name": "azure-webjobs-secrets",
                    "storage_account_name": "stfunazuresweden",
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
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webjobs_secrets",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "azurerm_storage_queue.control-00",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "funcazureswedensssw-control-00",
                    "storage_account_name": "stfunazuresweden",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "control-00",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_queue"
        },
        {
            "address": "azurerm_storage_queue.control-01",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "funcazureswedensssw-control-01",
                    "storage_account_name": "stfunazuresweden",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "control-01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_queue"
        },
        {
            "address": "azurerm_storage_share.share",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "acl": [],
                    "enabled_protocol": "SMB",
                    "name": "func-azure-sweden-sssw",
                    "quota": 5120,
                    "storage_account_name": "stfunazuresweden",
                    "timeouts": null
                },
                "after_sensitive": {
                    "acl": [],
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "acl": [],
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "share",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share"
        },
        {
            "address": "azurerm_subnet.backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.21.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "backend-subnet-uksouth-dev",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azuresweden-uksouth-dev"
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
                        "10.21.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "subnet1-uksouth-dev",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azuresweden-uksouth-dev"
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
            "address": "azurerm_user_assigned_identity.base",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "uksouth",
                    "name": "mi-appgw-keyvault-uksouth-dev",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "principal_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "base",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_machine_extension.vm-extensions[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_upgrade_minor_version": null,
                    "automatic_upgrade_enabled": null,
                    "failure_suppression_enabled": false,
                    "name": "ext1",
                    "protected_settings": null,
                    "protected_settings_from_key_vault": [],
                    "provision_after_extensions": null,
                    "publisher": "Microsoft.Compute",
                    "settings": "    {\n        \"commandToExecute\": \"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \\\"C:\\\\inetpub\\\\wwwroot\\\\Default.htm\\\" -Value $($env:computername)\"\n    }\n",
                    "tags": null,
                    "timeouts": null,
                    "type": "CustomScriptExtension",
                    "type_handler_version": "1.10"
                },
                "after_sensitive": {
                    "protected_settings": true,
                    "protected_settings_from_key_vault": []
                },
                "after_unknown": {
                    "id": true,
                    "protected_settings_from_key_vault": [],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "vm-extensions",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine_extension"
        },
        {
            "address": "azurerm_virtual_machine_extension.vm-extensions[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_upgrade_minor_version": null,
                    "automatic_upgrade_enabled": null,
                    "failure_suppression_enabled": false,
                    "name": "ext2",
                    "protected_settings": null,
                    "protected_settings_from_key_vault": [],
                    "provision_after_extensions": null,
                    "publisher": "Microsoft.Compute",
                    "settings": "    {\n        \"commandToExecute\": \"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \\\"C:\\\\inetpub\\\\wwwroot\\\\Default.htm\\\" -Value $($env:computername)\"\n    }\n",
                    "tags": null,
                    "timeouts": null,
                    "type": "CustomScriptExtension",
                    "type_handler_version": "1.10"
                },
                "after_sensitive": {
                    "protected_settings": true,
                    "protected_settings_from_key_vault": []
                },
                "after_unknown": {
                    "id": true,
                    "protected_settings_from_key_vault": [],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "vm-extensions",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine_extension"
        },
        {
            "address": "azurerm_virtual_network.vnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.21.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "uksouth",
                    "name": "vnet-azuresweden-uksouth-dev",
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
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
        },
        {
            "address": "azurerm_windows_function_app.func",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auth_settings": [],
                    "auth_settings_v2": [
                        {
                            "active_directory_v2": [
                                {
                                    "allowed_applications": null,
                                    "allowed_audiences": [
                                        "api://12ce76e9-bf13-4bca-9e50-8a86d35b21b6"
                                    ],
                                    "allowed_groups": null,
                                    "allowed_identities": null,
                                    "client_id": "12ce76e9-bf13-4bca-9e50-8a86d35b21b6",
                                    "client_secret_certificate_thumbprint": null,
                                    "client_secret_setting_name": "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET",
                                    "jwt_allowed_client_applications": null,
                                    "jwt_allowed_groups": null,
                                    "login_parameters": null,
                                    "tenant_auth_endpoint": "https://sts.windows.net/edb75dc6-1736-4e41-97cc-d8a56f171897/v2.0",
                                    "www_authentication_disabled": null
                                }
                            ],
                            "apple_v2": [],
                            "auth_enabled": false,
                            "azure_static_web_app_v2": [],
                            "config_file_path": null,
                            "custom_oidc_v2": [],
                            "default_provider": "azureactivedirectory",
                            "excluded_paths": null,
                            "facebook_v2": [],
                            "forward_proxy_convention": "NoProxy",
                            "forward_proxy_custom_host_header_name": null,
                            "forward_proxy_custom_scheme_header_name": null,
                            "github_v2": [],
                            "google_v2": [],
                            "http_route_api_prefix": "/.auth",
                            "login": [
                                {
                                    "allowed_external_redirect_urls": null,
                                    "cookie_expiration_convention": "FixedTime",
                                    "cookie_expiration_time": "08:00:00",
                                    "logout_endpoint": null,
                                    "nonce_expiration_time": "00:05:00",
                                    "preserve_url_fragments_for_logins": false,
                                    "token_refresh_extension_time": 72,
                                    "token_store_enabled": true,
                                    "token_store_path": null,
                                    "token_store_sas_setting_name": null,
                                    "validate_nonce": true
                                }
                            ],
                            "microsoft_v2": [],
                            "require_authentication": true,
                            "require_https": true,
                            "runtime_version": "~1",
                            "twitter_v2": [],
                            "unauthenticated_action": "RedirectToLoginPage"
                        }
                    ],
                    "backup": [],
                    "builtin_logging_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "content_share_force_disabled": false,
                    "daily_memory_time_quota": 0,
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "functions_extension_version": "~4",
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "uksouth",
                    "name": "func-insights-uksouth-dev",
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "site_config": [
                        {
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "app_service_logs": [],
                            "application_insights_key": null,
                            "cors": [],
                            "ftps_state": "Disabled",
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
                            "use_32_bit_worker": true,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "MICROSOFT_PROVIDER_AUTHENTICATION_SECRET"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "storage_account_name": "stfunazuresweden",
                    "storage_key_vault_secret_id": null,
                    "storage_uses_managed_identity": false,
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": null,
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [
                        {
                            "active_directory_v2": [
                                {
                                    "allowed_audiences": [
                                        false
                                    ]
                                }
                            ],
                            "apple_v2": [],
                            "azure_static_web_app_v2": [],
                            "custom_oidc_v2": [],
                            "facebook_v2": [],
                            "github_v2": [],
                            "google_v2": [],
                            "login": [
                                {}
                            ],
                            "microsoft_v2": [],
                            "twitter_v2": []
                        }
                    ],
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
                            "application_stack": [],
                            "cors": [],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "storage_account_access_key": true
                },
                "after_unknown": {
                    "app_settings": true,
                    "auth_settings": [],
                    "auth_settings_v2": [
                        {
                            "active_directory_v2": [
                                {
                                    "allowed_audiences": [
                                        false
                                    ]
                                }
                            ],
                            "apple_v2": [],
                            "azure_static_web_app_v2": [],
                            "custom_oidc_v2": [],
                            "facebook_v2": [],
                            "github_v2": [],
                            "google_v2": [],
                            "login": [
                                {}
                            ],
                            "microsoft_v2": [],
                            "twitter_v2": []
                        }
                    ],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "https_only": true,
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
                            "application_stack": true,
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "elastic_instance_minimum": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "pre_warmed_instance_count": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "storage_account_access_key": true,
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "func",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_function_app"
        },
        {
            "address": "azurerm_windows_virtual_machine.vm[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_username": "azureadmin",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "uksouth",
                    "max_bid_price": -1,
                    "name": "azure-sweden-1",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B2s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [],
                    "network_interface_ids": [],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_addresses": [],
                    "public_ip_addresses": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
                    "network_interface_ids": true,
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true,
                            "name": true
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "public_ip_address": true,
                    "public_ip_addresses": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": true,
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "azurerm_windows_virtual_machine.vm[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_username": "azureadmin",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "uksouth",
                    "max_bid_price": -1,
                    "name": "azure-sweden-2",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "rg-azuresweden-uksouth-dev",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B2s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [],
                    "network_interface_ids": [],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_addresses": [],
                    "public_ip_addresses": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
                    "network_interface_ids": true,
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true,
                            "name": true
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "public_ip_address": true,
                    "public_ip_addresses": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": true,
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "random_password.password",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 16,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": true,
                    "upper": true
                },
                "after_sensitive": {
                    "bcrypt_hash": true,
                    "result": true
                },
                "after_unknown": {
                    "bcrypt_hash": true,
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "password",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_password"
        },
        {
            "address": "random_string.key_vault_name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 8,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": false,
                    "upper": true
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
            "name": "key_vault_name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:57:40Z",
    "variables": {
        "acmebot_contacts": {
            "value": "nicholasc001@hotmail.com"
        },
        "acmebot_vault_base_url": {
            "value": "https://kv-xsgfjmmt.vault.azure.net"
        },
        "cloudflare_api_token": {
            "value": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        },
        "environment": {
            "value": "dev"
        },
        "frontend_ip_configuration_name": {
            "value": "azure-sweden-frontend-ip-config"
        },
        "location": {
            "value": "uksouth"
        },
        "microsoft_authentication_secret": {
            "value": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        }
    }
}