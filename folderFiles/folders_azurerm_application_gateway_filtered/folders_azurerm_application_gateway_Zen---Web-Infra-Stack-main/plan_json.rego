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
        "application_gateway_ip": {
          "expression": {
            "references": [
              "azurerm_public_ip.agw_pip.ip_address",
              "azurerm_public_ip.agw_pip"
            ]
          }
        },
        "azure_bastion_ip": {
          "expression": {
            "references": [
              "azurerm_public_ip.bastion_pip.ip_address",
              "azurerm_public_ip.bastion_pip"
            ]
          }
        },
        "key_vault_uri": {
          "expression": {
            "references": [
              "azurerm_key_vault.kv.vault_uri",
              "azurerm_key_vault.kv"
            ]
          }
        },
        "load_balancer_ip": {
          "expression": {
            "references": [
              "azurerm_public_ip.lb_pip.ip_address",
              "azurerm_public_ip.lb_pip"
            ]
          }
        },
        "sql_server_fqdn": {
          "expression": {
            "references": [
              "azurerm_mssql_server.sql_server.fully_qualified_domain_name",
              "azurerm_mssql_server.sql_server"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azurerm_application_gateway.agw",
          "expressions": {
            "autoscale_configuration": [
              {
                "max_capacity": {
                  "constant_value": 2
                },
                "min_capacity": {
                  "constant_value": 1
                }
              }
            ],
            "backend_address_pool": [
              {
                "name": {
                  "constant_value": "backend-pool"
                }
              }
            ],
            "backend_http_settings": [
              {
                "cookie_based_affinity": {
                  "constant_value": "Disabled"
                },
                "name": {
                  "constant_value": "http-settings"
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
                  "constant_value": "frontend-ip-config"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.agw_pip.id",
                    "azurerm_public_ip.agw_pip"
                  ]
                }
              }
            ],
            "frontend_port": [
              {
                "name": {
                  "constant_value": "frontend-port"
                },
                "port": {
                  "constant_value": 80
                }
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": {
                  "constant_value": "gateway-ip-config"
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.appgw_subnet.id",
                    "azurerm_subnet.appgw_subnet"
                  ]
                }
              }
            ],
            "http_listener": [
              {
                "frontend_ip_configuration_name": {
                  "constant_value": "frontend-ip-config"
                },
                "frontend_port_name": {
                  "constant_value": "frontend-port"
                },
                "name": {
                  "constant_value": "http-listener"
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
              "constant_value": "app-gateway"
            },
            "request_routing_rule": [
              {
                "backend_address_pool_name": {
                  "constant_value": "backend-pool"
                },
                "backend_http_settings_name": {
                  "constant_value": "http-settings"
                },
                "http_listener_name": {
                  "constant_value": "http-listener"
                },
                "name": {
                  "constant_value": "routing-rule"
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
          "name": "agw",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_availability_set.web_avset",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "web-avset"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            }
          },
          "mode": "managed",
          "name": "web_avset",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_availability_set"
        },
        {
          "address": "azurerm_backup_policy_vm.vm_backup_policy",
          "expressions": {
            "backup": [
              {
                "frequency": {
                  "constant_value": "Daily"
                },
                "time": {
                  "constant_value": "23:00"
                }
              }
            ],
            "name": {
              "constant_value": "vm-backup-policy"
            },
            "recovery_vault_name": {
              "references": [
                "azurerm_recovery_services_vault.vault.name",
                "azurerm_recovery_services_vault.vault"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "retention_daily": [
              {
                "count": {
                  "constant_value": 7
                }
              }
            ],
            "timezone": {
              "constant_value": "UTC"
            }
          },
          "mode": "managed",
          "name": "vm_backup_policy",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_backup_policy_vm"
        },
        {
          "address": "azurerm_backup_protected_vm.db_vm_backup",
          "expressions": {
            "backup_policy_id": {
              "references": [
                "azurerm_backup_policy_vm.vm_backup_policy.id",
                "azurerm_backup_policy_vm.vm_backup_policy"
              ]
            },
            "recovery_vault_name": {
              "references": [
                "azurerm_recovery_services_vault.vault.name",
                "azurerm_recovery_services_vault.vault"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "source_vm_id": {
              "references": [
                "azurerm_windows_virtual_machine.db_vm.id",
                "azurerm_windows_virtual_machine.db_vm"
              ]
            }
          },
          "mode": "managed",
          "name": "db_vm_backup",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_backup_protected_vm"
        },
        {
          "address": "azurerm_backup_protected_vm.web_vm_backup",
          "count_expression": {
            "references": [
              "var.web_vm_count"
            ]
          },
          "expressions": {
            "backup_policy_id": {
              "references": [
                "azurerm_backup_policy_vm.vm_backup_policy.id",
                "azurerm_backup_policy_vm.vm_backup_policy"
              ]
            },
            "recovery_vault_name": {
              "references": [
                "azurerm_recovery_services_vault.vault.name",
                "azurerm_recovery_services_vault.vault"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "source_vm_id": {
              "references": [
                "azurerm_windows_virtual_machine.web_vm",
                "count.index"
              ]
            }
          },
          "mode": "managed",
          "name": "web_vm_backup",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_backup_protected_vm"
        },
        {
          "address": "azurerm_bastion_host.Bastion",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "configuration"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.bastion_pip.id",
                    "azurerm_public_ip.bastion_pip"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.bastion_subnet.id",
                    "azurerm_subnet.bastion_subnet"
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
              "constant_value": "bastion"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            }
          },
          "mode": "managed",
          "name": "Bastion",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_bastion_host"
        },
        {
          "address": "azurerm_key_vault.kv",
          "expressions": {
            "access_policy": {
              "references": [
                "data.azurerm_client_config.current.object_id",
                "data.azurerm_client_config.current",
                "data.azurerm_client_config.current.tenant_id",
                "data.azurerm_client_config.current"
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
                "var.project_name",
                "random_string.random.result",
                "random_string.random"
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
            "soft_delete_retention_days": {
              "constant_value": 7
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
          "address": "azurerm_key_vault_secret.db_connection_string",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.kv.id",
                "azurerm_key_vault.kv"
              ]
            },
            "name": {
              "constant_value": "db-connection-string"
            },
            "value": {
              "references": [
                "azurerm_mssql_server.sql_server.fully_qualified_domain_name",
                "azurerm_mssql_server.sql_server",
                "azurerm_sql_database.sql_db.name",
                "azurerm_sql_database.sql_db",
                "var.sql_admin_username",
                "var.sql_admin_password"
              ]
            }
          },
          "mode": "managed",
          "name": "db_connection_string",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_secret"
        },
        {
          "address": "azurerm_lb.lb",
          "expressions": {
            "frontend_ip_configuration": [
              {
                "name": {
                  "constant_value": "PublicIPAddress"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.lb_pip.id",
                    "azurerm_public_ip.lb_pip"
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
              "constant_value": "app-lb"
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
          "name": "lb",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_lb"
        },
        {
          "address": "azurerm_lb_backend_address_pool.lb_backend_pool",
          "expressions": {
            "loadbalancer_id": {
              "references": [
                "azurerm_lb.lb.id",
                "azurerm_lb.lb"
              ]
            },
            "name": {
              "constant_value": "BackEndAddressPool"
            }
          },
          "mode": "managed",
          "name": "lb_backend_pool",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_lb_backend_address_pool"
        },
        {
          "address": "azurerm_lb_probe.lb_probe",
          "expressions": {
            "loadbalancer_id": {
              "references": [
                "azurerm_lb.lb.id",
                "azurerm_lb.lb"
              ]
            },
            "name": {
              "constant_value": "http-probe"
            },
            "port": {
              "constant_value": 80
            }
          },
          "mode": "managed",
          "name": "lb_probe",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_lb_probe"
        },
        {
          "address": "azurerm_lb_rule.lb_rule",
          "expressions": {
            "backend_address_pool_ids": {
              "references": [
                "azurerm_lb_backend_address_pool.lb_backend_pool.id",
                "azurerm_lb_backend_address_pool.lb_backend_pool"
              ]
            },
            "backend_port": {
              "constant_value": 80
            },
            "frontend_ip_configuration_name": {
              "constant_value": "PublicIPAddress"
            },
            "frontend_port": {
              "constant_value": 80
            },
            "loadbalancer_id": {
              "references": [
                "azurerm_lb.lb.id",
                "azurerm_lb.lb"
              ]
            },
            "name": {
              "constant_value": "LBRule"
            },
            "probe_id": {
              "references": [
                "azurerm_lb_probe.lb_probe.id",
                "azurerm_lb_probe.lb_probe"
              ]
            },
            "protocol": {
              "constant_value": "Tcp"
            }
          },
          "mode": "managed",
          "name": "lb_rule",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_lb_rule"
        },
        {
          "address": "azurerm_mssql_server.sql_server",
          "expressions": {
            "administrator_login": {
              "references": [
                "var.sql_admin_username"
              ]
            },
            "administrator_login_password": {
              "references": [
                "var.sql_admin_password"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "zen-sql-server"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "version": {
              "constant_value": "12.0"
            }
          },
          "mode": "managed",
          "name": "sql_server",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_mssql_server"
        },
        {
          "address": "azurerm_network_interface.db_nic",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "internal"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.db_subnet.id",
                    "azurerm_subnet.db_subnet"
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
              "constant_value": "db-nic"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            }
          },
          "mode": "managed",
          "name": "db_nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface.web_nic",
          "count_expression": {
            "constant_value": 2
          },
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "internal"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.web_subnet.id",
                    "azurerm_subnet.web_subnet"
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
          "name": "web_nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.agw_nic_association",
          "count_expression": {
            "constant_value": 2
          },
          "expressions": {
            "backend_address_pool_id": {
              "references": [
                "azurerm_application_gateway.agw.backend_address_pool",
                "azurerm_application_gateway.agw"
              ]
            },
            "ip_configuration_name": {
              "constant_value": "internal"
            },
            "network_interface_id": {
              "references": [
                "azurerm_network_interface.web_nic",
                "count.index"
              ]
            }
          },
          "mode": "managed",
          "name": "agw_nic_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
          "address": "azurerm_network_interface_backend_address_pool_association.lb_nic_association",
          "count_expression": {
            "references": [
              "var.web_vm_count"
            ]
          },
          "expressions": {
            "backend_address_pool_id": {
              "references": [
                "azurerm_lb_backend_address_pool.lb_backend_pool.id",
                "azurerm_lb_backend_address_pool.lb_backend_pool"
              ]
            },
            "ip_configuration_name": {
              "constant_value": "internal"
            },
            "network_interface_id": {
              "references": [
                "azurerm_network_interface.web_nic",
                "count.index"
              ]
            }
          },
          "mode": "managed",
          "name": "lb_nic_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface_backend_address_pool_association"
        },
        {
          "address": "azurerm_network_security_group.db_nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "db-nsg"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "security_rule": {
              "references": [
                "var.web_subnet_prefix"
              ]
            }
          },
          "mode": "managed",
          "name": "db_nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_network_security_group.web_nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "web-nsg"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "security_rule": {
              "constant_value": [
                {
                  "access": "Allow",
                  "description": null,
                  "destination_address_prefix": "*",
                  "destination_address_prefixes": null,
                  "destination_application_security_group_ids": null,
                  "destination_port_range": "80",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "allow-http",
                  "priority": 100,
                  "protocol": "Tcp",
                  "source_address_prefix": "*",
                  "source_address_prefixes": null,
                  "source_application_security_group_ids": null,
                  "source_port_range": "*",
                  "source_port_ranges": null
                },
                {
                  "access": "Allow",
                  "description": null,
                  "destination_address_prefix": "*",
                  "destination_address_prefixes": null,
                  "destination_application_security_group_ids": null,
                  "destination_port_range": "443",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "allow-https",
                  "priority": 110,
                  "protocol": "Tcp",
                  "source_address_prefix": "*",
                  "source_address_prefixes": null,
                  "source_application_security_group_ids": null,
                  "source_port_range": "*",
                  "source_port_ranges": null
                }
              ]
            }
          },
          "mode": "managed",
          "name": "web_nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_public_ip.agw_pip",
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
              "constant_value": "agw-pip"
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
          "name": "agw_pip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_public_ip.bastion_pip",
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
              "constant_value": "bastion_pip"
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
          "name": "bastion_pip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_public_ip.lb_pip",
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
              "constant_value": "lb-pip"
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
          "name": "lb_pip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_recovery_services_vault.vault",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "references": [
                "var.project_name"
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
          "name": "vault",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_recovery_services_vault"
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
                "var.resource_group_name"
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
          "address": "azurerm_security_center_contact.security_center_contact",
          "expressions": {
            "alert_notifications": {
              "constant_value": true
            },
            "alerts_to_admins": {
              "constant_value": true
            },
            "email": {
              "references": [
                "var.security_center_email"
              ]
            }
          },
          "mode": "managed",
          "name": "security_center_contact",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_security_center_contact"
        },
        {
          "address": "azurerm_security_center_subscription_pricing.security_center",
          "expressions": {
            "resource_type": {
              "constant_value": "VirtualMachines"
            },
            "tier": {
              "constant_value": "Standard"
            }
          },
          "mode": "managed",
          "name": "security_center",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_security_center_subscription_pricing"
        },
        {
          "address": "azurerm_sql_database.sql_db",
          "expressions": {
            "edition": {
              "constant_value": "Standard"
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "zen-sql-db"
            },
            "requested_service_objective_name": {
              "constant_value": "S0"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "server_name": {
              "references": [
                "azurerm_mssql_server.sql_server.name",
                "azurerm_mssql_server.sql_server"
              ]
            }
          },
          "mode": "managed",
          "name": "sql_db",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_sql_database"
        },
        {
          "address": "azurerm_sql_firewall_rule.allow_azure_services",
          "expressions": {
            "end_ip_address": {
              "constant_value": "0.0.0.0"
            },
            "name": {
              "constant_value": "AllowAzureServices"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "server_name": {
              "references": [
                "azurerm_mssql_server.sql_server.name",
                "azurerm_mssql_server.sql_server"
              ]
            },
            "start_ip_address": {
              "constant_value": "0.0.0.0"
            }
          },
          "mode": "managed",
          "name": "allow_azure_services",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_sql_firewall_rule"
        },
        {
          "address": "azurerm_subnet.appgw_subnet",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.appgw_subnet_prefix"
              ]
            },
            "name": {
              "constant_value": "appgw-subnet"
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
          "name": "appgw_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.bastion_subnet",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.bastion_subnet_prefix"
              ]
            },
            "name": {
              "constant_value": "AzureBastionSubnet"
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
          "name": "bastion_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.db_subnet",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.db_subnet_prefix"
              ]
            },
            "name": {
              "constant_value": "db-subnet"
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
          "name": "db_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.web_subnet",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.web_subnet_prefix"
              ]
            },
            "name": {
              "constant_value": "web-subnet"
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
          "name": "web_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.db_nsg_association",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.db_nsg.id",
                "azurerm_network_security_group.db_nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.db_subnet.id",
                "azurerm_subnet.db_subnet"
              ]
            }
          },
          "mode": "managed",
          "name": "db_nsg_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.web_nsg_association",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.web_nsg.id",
                "azurerm_network_security_group.web_nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.web_subnet.id",
                "azurerm_subnet.web_subnet"
              ]
            }
          },
          "mode": "managed",
          "name": "web_nsg_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
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
              "constant_value": "my-vnet"
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
          "address": "azurerm_windows_virtual_machine.db_vm",
          "expressions": {
            "admin_password": {
              "references": [
                "var.vm_admin_password"
              ]
            },
            "admin_username": {
              "references": [
                "var.vm_admin_username"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "db-vm"
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.db_nic.id",
                "azurerm_network_interface.db_nic"
              ]
            },
            "os_disk": [
              {
                "caching": {
                  "constant_value": "ReadWrite"
                },
                "disk_size_gb": {
                  "constant_value": 256
                },
                "storage_account_type": {
                  "constant_value": "Premium_LRS"
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
              "constant_value": "Standard_D4s_v3"
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
          "name": "db_vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_windows_virtual_machine"
        },
        {
          "address": "azurerm_windows_virtual_machine.web_vm",
          "count_expression": {
            "references": [
              "var.web_vm_count"
            ]
          },
          "expressions": {
            "admin_password": {
              "references": [
                "var.vm_admin_password"
              ]
            },
            "admin_username": {
              "references": [
                "var.vm_admin_username"
              ]
            },
            "availability_set_id": {
              "references": [
                "azurerm_availability_set.web_avset.id",
                "azurerm_availability_set.web_avset"
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
                "count.index"
              ]
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.web_nic",
                "count.index"
              ]
            },
            "os_disk": [
              {
                "caching": {
                  "constant_value": "ReadWrite"
                },
                "disk_size_gb": {
                  "constant_value": 128
                },
                "storage_account_type": {
                  "constant_value": "Premium_LRS"
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
              "constant_value": "Standard_D2s_v3"
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
          "name": "web_vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_windows_virtual_machine"
        },
        {
          "address": "random_string.random",
          "expressions": {
            "length": {
              "constant_value": 8
            },
            "special": {
              "constant_value": false
            },
            "upper": {
              "constant_value": false
            }
          },
          "mode": "managed",
          "name": "random",
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
        "appgw_subnet_prefix": {
          "default": "10.0.4.0/24"
        },
        "bastion_subnet_prefix": {
          "default": "10.0.5.0/24"
        },
        "db_subnet_prefix": {
          "default": "10.0.2.0/24"
        },
        "location": {
          "default": "eastus 2"
        },
        "project_name": {
          "description": "A name for the project, used in resource naming"
        },
        "resource_group_name": {
          "default": "Zen_Core"
        },
        "security_center_email": {
          "description": "salawuhabeeb09@gmail.com"
        },
        "sql_admin_password": {
          "description": "Password for the SQL admin user",
          "sensitive": true
        },
        "sql_admin_username": {
          "default": "zenadmin"
        },
        "vm_admin_password": {
          "description": "Password for the VM admin user",
          "sensitive": true
        },
        "vm_admin_username": {
          "default": "zenadmin"
        },
        "vnet_address_space": {
          "default": [
            "10.0.0.0/16"
          ]
        },
        "web_subnet_prefix": {
          "default": "10.0.1.0/24"
        },
        "web_vm_count": {
          "default": 2,
          "description": "Number of web tier VMs"
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "application_gateway_ip": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "azure_bastion_ip": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "key_vault_uri": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "load_balancer_ip": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "sql_server_fqdn": {
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
      "application_gateway_ip": {
        "sensitive": false
      },
      "azure_bastion_ip": {
        "sensitive": false
      },
      "key_vault_uri": {
        "sensitive": false
      },
      "load_balancer_ip": {
        "sensitive": false
      },
      "sql_server_fqdn": {
        "sensitive": false
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_application_gateway.agw",
          "mode": "managed",
          "name": "agw",
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
                "min_capacity": 1
              }
            ],
            "backend_address_pool": [
              {
                "fqdns": [],
                "ip_addresses": [],
                "name": "backend-pool"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "http-settings",
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
                "name": "frontend-ip-config",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "frontend-port",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "gateway-ip-config"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "frontend-ip-config",
                "frontend_port_name": "frontend-port",
                "host_name": "",
                "host_names": [],
                "name": "http-listener",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "eastus2",
            "name": "app-gateway",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "backend-pool",
                "backend_http_settings_name": "http-settings",
                "http_listener_name": "http-listener",
                "name": "routing-rule",
                "priority": 1,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "Zen_Core",
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
          "address": "azurerm_availability_set.web_avset",
          "mode": "managed",
          "name": "web_avset",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_availability_set",
          "values": {
            "location": "eastus2",
            "managed": true,
            "name": "web-avset",
            "platform_fault_domain_count": 3,
            "platform_update_domain_count": 5,
            "proximity_placement_group_id": null,
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_backup_policy_vm.vm_backup_policy",
          "mode": "managed",
          "name": "vm_backup_policy",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "backup": [
              {}
            ],
            "instant_restore_resource_group": [],
            "retention_daily": [
              {}
            ],
            "retention_monthly": [],
            "retention_weekly": [],
            "retention_yearly": [],
            "tiering_policy": []
          },
          "type": "azurerm_backup_policy_vm",
          "values": {
            "backup": [
              {
                "frequency": "Daily",
                "hour_duration": null,
                "hour_interval": null,
                "time": "23:00",
                "weekdays": null
              }
            ],
            "instant_restore_resource_group": [],
            "name": "vm-backup-policy",
            "policy_type": "V1",
            "recovery_vault_name": "rsv-zenrecovery",
            "resource_group_name": "Zen_Core",
            "retention_daily": [
              {
                "count": 7
              }
            ],
            "retention_monthly": [],
            "retention_weekly": [],
            "retention_yearly": [],
            "tiering_policy": [],
            "timeouts": null,
            "timezone": "UTC"
          }
        },
        {
          "address": "azurerm_backup_protected_vm.db_vm_backup",
          "mode": "managed",
          "name": "db_vm_backup",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_backup_protected_vm",
          "values": {
            "exclude_disk_luns": null,
            "include_disk_luns": null,
            "recovery_vault_name": "rsv-zenrecovery",
            "resource_group_name": "Zen_Core",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_backup_protected_vm.web_vm_backup[0]",
          "index": 0,
          "mode": "managed",
          "name": "web_vm_backup",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_backup_protected_vm",
          "values": {
            "exclude_disk_luns": null,
            "include_disk_luns": null,
            "recovery_vault_name": "rsv-zenrecovery",
            "resource_group_name": "Zen_Core",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_backup_protected_vm.web_vm_backup[1]",
          "index": 1,
          "mode": "managed",
          "name": "web_vm_backup",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_backup_protected_vm",
          "values": {
            "exclude_disk_luns": null,
            "include_disk_luns": null,
            "recovery_vault_name": "rsv-zenrecovery",
            "resource_group_name": "Zen_Core",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_bastion_host.Bastion",
          "mode": "managed",
          "name": "Bastion",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "ip_configuration": [
              {}
            ]
          },
          "type": "azurerm_bastion_host",
          "values": {
            "copy_paste_enabled": true,
            "file_copy_enabled": false,
            "ip_configuration": [
              {
                "name": "configuration"
              }
            ],
            "ip_connect_enabled": false,
            "kerberos_enabled": false,
            "location": "eastus2",
            "name": "bastion",
            "resource_group_name": "Zen_Core",
            "scale_units": 2,
            "shareable_link_enabled": false,
            "sku": "Basic",
            "tags": null,
            "timeouts": null,
            "tunneling_enabled": false,
            "virtual_network_id": null
          }
        },
        {
          "address": "azurerm_key_vault.kv",
          "mode": "managed",
          "name": "kv",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 2,
          "sensitive_values": {
            "access_policy": [
              {
                "key_permissions": [
                  false,
                  false,
                  false,
                  false,
                  false
                ],
                "secret_permissions": [
                  false,
                  false,
                  false,
                  false
                ]
              }
            ],
            "contact": [],
            "network_acls": []
          },
          "type": "azurerm_key_vault",
          "values": {
            "access_policy": [
              {
                "application_id": null,
                "certificate_permissions": null,
                "key_permissions": [
                  "Get",
                  "List",
                  "Create",
                  "Delete",
                  "Update"
                ],
                "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                "secret_permissions": [
                  "Get",
                  "List",
                  "Set",
                  "Delete"
                ],
                "storage_permissions": null,
                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
              }
            ],
            "enable_rbac_authorization": null,
            "enabled_for_deployment": null,
            "enabled_for_disk_encryption": null,
            "enabled_for_template_deployment": null,
            "location": "eastus2",
            "public_network_access_enabled": true,
            "purge_protection_enabled": null,
            "resource_group_name": "Zen_Core",
            "sku_name": "standard",
            "soft_delete_retention_days": 7,
            "tags": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_secret.db_connection_string",
          "mode": "managed",
          "name": "db_connection_string",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "value": true
          },
          "type": "azurerm_key_vault_secret",
          "values": {
            "content_type": null,
            "expiration_date": null,
            "name": "db-connection-string",
            "not_before_date": null,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_lb.lb",
          "mode": "managed",
          "name": "lb",
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
                "name": "PublicIPAddress",
                "zones": null
              }
            ],
            "location": "eastus2",
            "name": "app-lb",
            "resource_group_name": "Zen_Core",
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_lb_backend_address_pool.lb_backend_pool",
          "mode": "managed",
          "name": "lb_backend_pool",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "backend_ip_configurations": [],
            "inbound_nat_rules": [],
            "load_balancing_rules": [],
            "outbound_rules": [],
            "tunnel_interface": []
          },
          "type": "azurerm_lb_backend_address_pool",
          "values": {
            "name": "BackEndAddressPool",
            "synchronous_mode": null,
            "timeouts": null,
            "tunnel_interface": [],
            "virtual_network_id": null
          }
        },
        {
          "address": "azurerm_lb_probe.lb_probe",
          "mode": "managed",
          "name": "lb_probe",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "load_balancer_rules": []
          },
          "type": "azurerm_lb_probe",
          "values": {
            "interval_in_seconds": 15,
            "name": "http-probe",
            "number_of_probes": 2,
            "port": 80,
            "probe_threshold": 1,
            "protocol": "Tcp",
            "request_path": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_lb_rule.lb_rule",
          "mode": "managed",
          "name": "lb_rule",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "backend_address_pool_ids": []
          },
          "type": "azurerm_lb_rule",
          "values": {
            "backend_port": 80,
            "disable_outbound_snat": false,
            "enable_floating_ip": false,
            "enable_tcp_reset": null,
            "frontend_ip_configuration_name": "PublicIPAddress",
            "frontend_port": 80,
            "name": "LBRule",
            "protocol": "Tcp",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_mssql_server.sql_server",
          "mode": "managed",
          "name": "sql_server",
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
            "administrator_login": "zenadmin",
            "administrator_login_password": "Reganam@321#",
            "azuread_administrator": [],
            "connection_policy": "Default",
            "identity": [],
            "location": "eastus2",
            "minimum_tls_version": "1.2",
            "name": "zen-sql-server",
            "outbound_network_restriction_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null,
            "transparent_data_encryption_key_vault_key_id": null,
            "version": "12.0"
          }
        },
        {
          "address": "azurerm_network_interface.db_nic",
          "mode": "managed",
          "name": "db_nic",
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
                "name": "internal",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4",
                "public_ip_address_id": null
              }
            ],
            "location": "eastus2",
            "name": "db-nic",
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface.web_nic[0]",
          "index": 0,
          "mode": "managed",
          "name": "web_nic",
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
                "name": "internal",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4",
                "public_ip_address_id": null
              }
            ],
            "location": "eastus2",
            "name": "web-nic-1",
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface.web_nic[1]",
          "index": 1,
          "mode": "managed",
          "name": "web_nic",
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
                "name": "internal",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4",
                "public_ip_address_id": null
              }
            ],
            "location": "eastus2",
            "name": "web-nic-2",
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.agw_nic_association[0]",
          "index": 0,
          "mode": "managed",
          "name": "agw_nic_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "internal",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.agw_nic_association[1]",
          "index": 1,
          "mode": "managed",
          "name": "agw_nic_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "internal",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_backend_address_pool_association.lb_nic_association[0]",
          "index": 0,
          "mode": "managed",
          "name": "lb_nic_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "internal",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_backend_address_pool_association.lb_nic_association[1]",
          "index": 1,
          "mode": "managed",
          "name": "lb_nic_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "internal",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.db_nsg",
          "mode": "managed",
          "name": "db_nsg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "security_rule": [
              {
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_ranges": [],
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_ranges": []
              }
            ]
          },
          "type": "azurerm_network_security_group",
          "values": {
            "location": "eastus2",
            "name": "db-nsg",
            "resource_group_name": "Zen_Core",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "1433",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "allow-sql",
                "priority": 100,
                "protocol": "Tcp",
                "source_address_prefix": "10.0.1.0/24",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              }
            ],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.web_nsg",
          "mode": "managed",
          "name": "web_nsg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "security_rule": [
              {
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_ranges": [],
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_ranges": []
              },
              {
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_ranges": [],
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_ranges": []
              }
            ]
          },
          "type": "azurerm_network_security_group",
          "values": {
            "location": "eastus2",
            "name": "web-nsg",
            "resource_group_name": "Zen_Core",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "443",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "allow-https",
                "priority": 110,
                "protocol": "Tcp",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              },
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "80",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "allow-http",
                "priority": 100,
                "protocol": "Tcp",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              }
            ],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_public_ip.agw_pip",
          "mode": "managed",
          "name": "agw_pip",
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
            "location": "eastus2",
            "name": "agw-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "Zen_Core",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_public_ip.bastion_pip",
          "mode": "managed",
          "name": "bastion_pip",
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
            "location": "eastus2",
            "name": "bastion_pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "Zen_Core",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_public_ip.lb_pip",
          "mode": "managed",
          "name": "lb_pip",
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
            "location": "eastus2",
            "name": "lb-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "Zen_Core",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_recovery_services_vault.vault",
          "mode": "managed",
          "name": "vault",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "encryption": [],
            "identity": [],
            "monitoring": []
          },
          "type": "azurerm_recovery_services_vault",
          "values": {
            "classic_vmware_replication_enabled": null,
            "cross_region_restore_enabled": false,
            "encryption": [],
            "identity": [],
            "location": "eastus2",
            "monitoring": [],
            "name": "rsv-zenrecovery",
            "public_network_access_enabled": true,
            "resource_group_name": "Zen_Core",
            "sku": "Standard",
            "soft_delete_enabled": true,
            "storage_mode_type": "GeoRedundant",
            "tags": null,
            "timeouts": null
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
            "location": "eastus2",
            "managed_by": null,
            "name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_security_center_contact.security_center_contact",
          "mode": "managed",
          "name": "security_center_contact",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_security_center_contact",
          "values": {
            "alert_notifications": true,
            "alerts_to_admins": true,
            "email": "salawuhabeeb09@gmail.com",
            "name": "default1",
            "phone": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_security_center_subscription_pricing.security_center",
          "mode": "managed",
          "name": "security_center",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "extension": []
          },
          "type": "azurerm_security_center_subscription_pricing",
          "values": {
            "extension": [],
            "resource_type": "VirtualMachines",
            "subplan": null,
            "tier": "Standard",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_sql_database.sql_db",
          "mode": "managed",
          "name": "sql_db",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "import": [],
            "threat_detection_policy": []
          },
          "type": "azurerm_sql_database",
          "values": {
            "create_mode": "Default",
            "edition": "Standard",
            "import": [],
            "location": "eastus2",
            "name": "zen-sql-db",
            "read_scale": false,
            "requested_service_objective_name": "S0",
            "resource_group_name": "Zen_Core",
            "server_name": "zen-sql-server",
            "tags": null,
            "timeouts": null,
            "zone_redundant": null
          }
        },
        {
          "address": "azurerm_sql_firewall_rule.allow_azure_services",
          "mode": "managed",
          "name": "allow_azure_services",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_sql_firewall_rule",
          "values": {
            "end_ip_address": "0.0.0.0",
            "name": "AllowAzureServices",
            "resource_group_name": "Zen_Core",
            "server_name": "zen-sql-server",
            "start_ip_address": "0.0.0.0",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.appgw_subnet",
          "mode": "managed",
          "name": "appgw_subnet",
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
              "10.0.3.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "appgw-subnet",
            "resource_group_name": "Zen_Core",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "my-vnet"
          }
        },
        {
          "address": "azurerm_subnet.bastion_subnet",
          "mode": "managed",
          "name": "bastion_subnet",
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
              "10.0.5.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "AzureBastionSubnet",
            "resource_group_name": "Zen_Core",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "my-vnet"
          }
        },
        {
          "address": "azurerm_subnet.db_subnet",
          "mode": "managed",
          "name": "db_subnet",
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
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "db-subnet",
            "resource_group_name": "Zen_Core",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "my-vnet"
          }
        },
        {
          "address": "azurerm_subnet.web_subnet",
          "mode": "managed",
          "name": "web_subnet",
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
            "name": "web-subnet",
            "resource_group_name": "Zen_Core",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "my-vnet"
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.db_nsg_association",
          "mode": "managed",
          "name": "db_nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.web_nsg_association",
          "mode": "managed",
          "name": "web_nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
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
              "10.0.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "eastus2",
            "name": "my-vnet",
            "resource_group_name": "Zen_Core",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_windows_virtual_machine.db_vm",
          "mode": "managed",
          "name": "db_vm",
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
            "admin_password": "Reganam@321#",
            "admin_username": "zenadmin",
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
            "location": "eastus2",
            "max_bid_price": -1,
            "name": "db-vm",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "disk_size_gb": 256,
                "secure_vm_disk_encryption_set_id": null,
                "security_encryption_type": null,
                "storage_account_type": "Premium_LRS",
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
            "resource_group_name": "Zen_Core",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_D4s_v3",
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
          "address": "azurerm_windows_virtual_machine.web_vm[0]",
          "index": 0,
          "mode": "managed",
          "name": "web_vm",
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
            "admin_password": "Reganam@321#",
            "admin_username": "zenadmin",
            "allow_extension_operations": true,
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
            "location": "eastus2",
            "max_bid_price": -1,
            "name": "web-vm-1",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "disk_size_gb": 128,
                "secure_vm_disk_encryption_set_id": null,
                "security_encryption_type": null,
                "storage_account_type": "Premium_LRS",
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
            "resource_group_name": "Zen_Core",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_D2s_v3",
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
          "address": "azurerm_windows_virtual_machine.web_vm[1]",
          "index": 1,
          "mode": "managed",
          "name": "web_vm",
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
            "admin_password": "Reganam@321#",
            "admin_username": "zenadmin",
            "allow_extension_operations": true,
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
            "location": "eastus2",
            "max_bid_price": -1,
            "name": "web-vm-2",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "disk_size_gb": 128,
                "secure_vm_disk_encryption_set_id": null,
                "security_encryption_type": null,
                "storage_account_type": "Premium_LRS",
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
            "resource_group_name": "Zen_Core",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_D2s_v3",
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
          "address": "random_string.random",
          "mode": "managed",
          "name": "random",
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
            "upper": false
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
        "fully_qualified_domain_name"
      ],
      "resource": "azurerm_mssql_server.sql_server"
    },
    {
      "attribute": [],
      "resource": "azurerm_windows_virtual_machine.web_vm"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.rg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.web_subnet"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.bastion_pip"
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
      "resource": "azurerm_subnet.bastion_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_lb_backend_address_pool.lb_backend_pool"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.db_nic"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_windows_virtual_machine.db_vm"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.lb_pip"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.vnet"
    },
    {
      "attribute": [
        "result"
      ],
      "resource": "random_string.random"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_availability_set.web_avset"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_key_vault.kv"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.agw_pip"
    },
    {
      "attribute": [
        "vault_uri"
      ],
      "resource": "azurerm_key_vault.kv"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.lb_pip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_lb_probe.lb_probe"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.bastion_pip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.appgw_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.agw_pip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_backup_policy_vm.vm_backup_policy"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.rg"
    },
    {
      "attribute": [
        "object_id"
      ],
      "resource": "data.azurerm_client_config.current"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_recovery_services_vault.vault"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.db_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.web_nsg"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_mssql_server.sql_server"
    },
    {
      "attribute": [],
      "resource": "azurerm_network_interface.web_nic"
    },
    {
      "attribute": [
        "backend_address_pool"
      ],
      "resource": "azurerm_application_gateway.agw"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_sql_database.sql_db"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.db_nsg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_lb.lb"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.agw",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "authentication_certificate": [],
          "autoscale_configuration": [
            {
              "max_capacity": 2,
              "min_capacity": 1
            }
          ],
          "backend_address_pool": [
            {
              "fqdns": [],
              "ip_addresses": [],
              "name": "backend-pool"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "http-settings",
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
              "name": "frontend-ip-config",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "frontend-port",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "gateway-ip-config"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "frontend-ip-config",
              "frontend_port_name": "frontend-port",
              "host_name": "",
              "host_names": [],
              "name": "http-listener",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "eastus2",
          "name": "app-gateway",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "backend-pool",
              "backend_http_settings_name": "http-settings",
              "http_listener_name": "http-listener",
              "name": "routing-rule",
              "priority": 1,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "Zen_Core",
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
      "name": "agw",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_availability_set.web_avset",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus2",
          "managed": true,
          "name": "web-avset",
          "platform_fault_domain_count": 3,
          "platform_update_domain_count": 5,
          "proximity_placement_group_id": null,
          "resource_group_name": "Zen_Core",
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
      "name": "web_avset",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_availability_set"
    },
    {
      "address": "azurerm_backup_policy_vm.vm_backup_policy",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "backup": [
            {
              "frequency": "Daily",
              "hour_duration": null,
              "hour_interval": null,
              "time": "23:00",
              "weekdays": null
            }
          ],
          "instant_restore_resource_group": [],
          "name": "vm-backup-policy",
          "policy_type": "V1",
          "recovery_vault_name": "rsv-zenrecovery",
          "resource_group_name": "Zen_Core",
          "retention_daily": [
            {
              "count": 7
            }
          ],
          "retention_monthly": [],
          "retention_weekly": [],
          "retention_yearly": [],
          "tiering_policy": [],
          "timeouts": null,
          "timezone": "UTC"
        },
        "after_sensitive": {
          "backup": [
            {}
          ],
          "instant_restore_resource_group": [],
          "retention_daily": [
            {}
          ],
          "retention_monthly": [],
          "retention_weekly": [],
          "retention_yearly": [],
          "tiering_policy": []
        },
        "after_unknown": {
          "backup": [
            {}
          ],
          "id": true,
          "instant_restore_resource_group": [],
          "instant_restore_retention_days": true,
          "retention_daily": [
            {}
          ],
          "retention_monthly": [],
          "retention_weekly": [],
          "retention_yearly": [],
          "tiering_policy": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "vm_backup_policy",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_backup_policy_vm"
    },
    {
      "address": "azurerm_backup_protected_vm.db_vm_backup",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "exclude_disk_luns": null,
          "include_disk_luns": null,
          "recovery_vault_name": "rsv-zenrecovery",
          "resource_group_name": "Zen_Core",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "backup_policy_id": true,
          "id": true,
          "protection_state": true,
          "source_vm_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "db_vm_backup",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_backup_protected_vm"
    },
    {
      "address": "azurerm_backup_protected_vm.web_vm_backup[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "exclude_disk_luns": null,
          "include_disk_luns": null,
          "recovery_vault_name": "rsv-zenrecovery",
          "resource_group_name": "Zen_Core",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "backup_policy_id": true,
          "id": true,
          "protection_state": true,
          "source_vm_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "index": 0,
      "mode": "managed",
      "name": "web_vm_backup",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_backup_protected_vm"
    },
    {
      "address": "azurerm_backup_protected_vm.web_vm_backup[1]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "exclude_disk_luns": null,
          "include_disk_luns": null,
          "recovery_vault_name": "rsv-zenrecovery",
          "resource_group_name": "Zen_Core",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "backup_policy_id": true,
          "id": true,
          "protection_state": true,
          "source_vm_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "index": 1,
      "mode": "managed",
      "name": "web_vm_backup",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_backup_protected_vm"
    },
    {
      "address": "azurerm_bastion_host.Bastion",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "copy_paste_enabled": true,
          "file_copy_enabled": false,
          "ip_configuration": [
            {
              "name": "configuration"
            }
          ],
          "ip_connect_enabled": false,
          "kerberos_enabled": false,
          "location": "eastus2",
          "name": "bastion",
          "resource_group_name": "Zen_Core",
          "scale_units": 2,
          "shareable_link_enabled": false,
          "sku": "Basic",
          "tags": null,
          "timeouts": null,
          "tunneling_enabled": false,
          "virtual_network_id": null
        },
        "after_sensitive": {
          "ip_configuration": [
            {}
          ]
        },
        "after_unknown": {
          "dns_name": true,
          "id": true,
          "ip_configuration": [
            {
              "public_ip_address_id": true,
              "subnet_id": true
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "Bastion",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_bastion_host"
    },
    {
      "address": "azurerm_key_vault.kv",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "access_policy": [
            {
              "application_id": null,
              "certificate_permissions": null,
              "key_permissions": [
                "Get",
                "List",
                "Create",
                "Delete",
                "Update"
              ],
              "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
              "secret_permissions": [
                "Get",
                "List",
                "Set",
                "Delete"
              ],
              "storage_permissions": null,
              "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
            }
          ],
          "enable_rbac_authorization": null,
          "enabled_for_deployment": null,
          "enabled_for_disk_encryption": null,
          "enabled_for_template_deployment": null,
          "location": "eastus2",
          "public_network_access_enabled": true,
          "purge_protection_enabled": null,
          "resource_group_name": "Zen_Core",
          "sku_name": "standard",
          "soft_delete_retention_days": 7,
          "tags": null,
          "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
          "timeouts": null
        },
        "after_sensitive": {
          "access_policy": [
            {
              "key_permissions": [
                false,
                false,
                false,
                false,
                false
              ],
              "secret_permissions": [
                false,
                false,
                false,
                false
              ]
            }
          ],
          "contact": [],
          "network_acls": []
        },
        "after_unknown": {
          "access_policy": [
            {
              "key_permissions": [
                false,
                false,
                false,
                false,
                false
              ],
              "secret_permissions": [
                false,
                false,
                false,
                false
              ]
            }
          ],
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
      "address": "azurerm_key_vault_secret.db_connection_string",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "content_type": null,
          "expiration_date": null,
          "name": "db-connection-string",
          "not_before_date": null,
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "value": true
        },
        "after_unknown": {
          "id": true,
          "key_vault_id": true,
          "resource_id": true,
          "resource_versionless_id": true,
          "value": true,
          "version": true,
          "versionless_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "db_connection_string",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_secret"
    },
    {
      "address": "azurerm_lb.lb",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "edge_zone": null,
          "frontend_ip_configuration": [
            {
              "name": "PublicIPAddress",
              "zones": null
            }
          ],
          "location": "eastus2",
          "name": "app-lb",
          "resource_group_name": "Zen_Core",
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
      "name": "lb",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_lb"
    },
    {
      "address": "azurerm_lb_backend_address_pool.lb_backend_pool",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "name": "BackEndAddressPool",
          "synchronous_mode": null,
          "timeouts": null,
          "tunnel_interface": [],
          "virtual_network_id": null
        },
        "after_sensitive": {
          "backend_ip_configurations": [],
          "inbound_nat_rules": [],
          "load_balancing_rules": [],
          "outbound_rules": [],
          "tunnel_interface": []
        },
        "after_unknown": {
          "backend_ip_configurations": true,
          "id": true,
          "inbound_nat_rules": true,
          "load_balancing_rules": true,
          "loadbalancer_id": true,
          "outbound_rules": true,
          "tunnel_interface": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "lb_backend_pool",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_lb_backend_address_pool"
    },
    {
      "address": "azurerm_lb_probe.lb_probe",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "interval_in_seconds": 15,
          "name": "http-probe",
          "number_of_probes": 2,
          "port": 80,
          "probe_threshold": 1,
          "protocol": "Tcp",
          "request_path": null,
          "timeouts": null
        },
        "after_sensitive": {
          "load_balancer_rules": []
        },
        "after_unknown": {
          "id": true,
          "load_balancer_rules": true,
          "loadbalancer_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "lb_probe",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_lb_probe"
    },
    {
      "address": "azurerm_lb_rule.lb_rule",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "backend_port": 80,
          "disable_outbound_snat": false,
          "enable_floating_ip": false,
          "enable_tcp_reset": null,
          "frontend_ip_configuration_name": "PublicIPAddress",
          "frontend_port": 80,
          "name": "LBRule",
          "protocol": "Tcp",
          "timeouts": null
        },
        "after_sensitive": {
          "backend_address_pool_ids": []
        },
        "after_unknown": {
          "backend_address_pool_ids": true,
          "frontend_ip_configuration_id": true,
          "id": true,
          "idle_timeout_in_minutes": true,
          "load_distribution": true,
          "loadbalancer_id": true,
          "probe_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "lb_rule",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_lb_rule"
    },
    {
      "address": "azurerm_mssql_server.sql_server",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "administrator_login": "zenadmin",
          "administrator_login_password": "Reganam@321#",
          "azuread_administrator": [],
          "connection_policy": "Default",
          "identity": [],
          "location": "eastus2",
          "minimum_tls_version": "1.2",
          "name": "zen-sql-server",
          "outbound_network_restriction_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "Zen_Core",
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
      "name": "sql_server",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_mssql_server"
    },
    {
      "address": "azurerm_network_interface.db_nic",
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
              "name": "internal",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4",
              "public_ip_address_id": null
            }
          ],
          "location": "eastus2",
          "name": "db-nic",
          "resource_group_name": "Zen_Core",
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
      "mode": "managed",
      "name": "db_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface.web_nic[0]",
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
              "name": "internal",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4",
              "public_ip_address_id": null
            }
          ],
          "location": "eastus2",
          "name": "web-nic-1",
          "resource_group_name": "Zen_Core",
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
      "name": "web_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface.web_nic[1]",
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
              "name": "internal",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4",
              "public_ip_address_id": null
            }
          ],
          "location": "eastus2",
          "name": "web-nic-2",
          "resource_group_name": "Zen_Core",
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
      "name": "web_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.agw_nic_association[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "internal",
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
      "name": "agw_nic_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
    },
    {
      "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.agw_nic_association[1]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "internal",
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
      "name": "agw_nic_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
    },
    {
      "address": "azurerm_network_interface_backend_address_pool_association.lb_nic_association[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "internal",
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
      "name": "lb_nic_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_backend_address_pool_association"
    },
    {
      "address": "azurerm_network_interface_backend_address_pool_association.lb_nic_association[1]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "internal",
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
      "name": "lb_nic_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_backend_address_pool_association"
    },
    {
      "address": "azurerm_network_security_group.db_nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus2",
          "name": "db-nsg",
          "resource_group_name": "Zen_Core",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "1433",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "allow-sql",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "10.0.1.0/24",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            }
          ],
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "security_rule": [
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            }
          ]
        },
        "after_unknown": {
          "id": true,
          "security_rule": [
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "db_nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_network_security_group.web_nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus2",
          "name": "web-nsg",
          "resource_group_name": "Zen_Core",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "443",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "allow-https",
              "priority": 110,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            },
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "80",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "allow-http",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            }
          ],
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "security_rule": [
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            },
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            }
          ]
        },
        "after_unknown": {
          "id": true,
          "security_rule": [
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            },
            {
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [],
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_ranges": []
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "web_nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_public_ip.agw_pip",
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
          "location": "eastus2",
          "name": "agw-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "Zen_Core",
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
      "name": "agw_pip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_public_ip.bastion_pip",
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
          "location": "eastus2",
          "name": "bastion_pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "Zen_Core",
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
      "name": "bastion_pip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_public_ip.lb_pip",
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
          "location": "eastus2",
          "name": "lb-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "Zen_Core",
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
      "name": "lb_pip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_recovery_services_vault.vault",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "classic_vmware_replication_enabled": null,
          "cross_region_restore_enabled": false,
          "encryption": [],
          "identity": [],
          "location": "eastus2",
          "monitoring": [],
          "name": "rsv-zenrecovery",
          "public_network_access_enabled": true,
          "resource_group_name": "Zen_Core",
          "sku": "Standard",
          "soft_delete_enabled": true,
          "storage_mode_type": "GeoRedundant",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "encryption": [],
          "identity": [],
          "monitoring": []
        },
        "after_unknown": {
          "encryption": [],
          "id": true,
          "identity": [],
          "immutability": true,
          "monitoring": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "vault",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_recovery_services_vault"
    },
    {
      "address": "azurerm_resource_group.rg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus2",
          "managed_by": null,
          "name": "Zen_Core",
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
      "address": "azurerm_security_center_contact.security_center_contact",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "alert_notifications": true,
          "alerts_to_admins": true,
          "email": "salawuhabeeb09@gmail.com",
          "name": "default1",
          "phone": null,
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
      "name": "security_center_contact",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_security_center_contact"
    },
    {
      "address": "azurerm_security_center_subscription_pricing.security_center",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "extension": [],
          "resource_type": "VirtualMachines",
          "subplan": null,
          "tier": "Standard",
          "timeouts": null
        },
        "after_sensitive": {
          "extension": []
        },
        "after_unknown": {
          "extension": [],
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "security_center",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_security_center_subscription_pricing"
    },
    {
      "address": "azurerm_sql_database.sql_db",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "create_mode": "Default",
          "edition": "Standard",
          "import": [],
          "location": "eastus2",
          "name": "zen-sql-db",
          "read_scale": false,
          "requested_service_objective_name": "S0",
          "resource_group_name": "Zen_Core",
          "server_name": "zen-sql-server",
          "tags": null,
          "timeouts": null,
          "zone_redundant": null
        },
        "after_sensitive": {
          "import": [],
          "threat_detection_policy": []
        },
        "after_unknown": {
          "collation": true,
          "creation_date": true,
          "default_secondary_location": true,
          "elastic_pool_name": true,
          "encryption": true,
          "id": true,
          "import": [],
          "max_size_bytes": true,
          "max_size_gb": true,
          "requested_service_objective_id": true,
          "restore_point_in_time": true,
          "source_database_deletion_date": true,
          "source_database_id": true,
          "threat_detection_policy": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "sql_db",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_sql_database"
    },
    {
      "address": "azurerm_sql_firewall_rule.allow_azure_services",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "end_ip_address": "0.0.0.0",
          "name": "AllowAzureServices",
          "resource_group_name": "Zen_Core",
          "server_name": "zen-sql-server",
          "start_ip_address": "0.0.0.0",
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
      "name": "allow_azure_services",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_sql_firewall_rule"
    },
    {
      "address": "azurerm_subnet.appgw_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.3.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "appgw-subnet",
          "resource_group_name": "Zen_Core",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "my-vnet"
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
      "name": "appgw_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.bastion_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.5.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "AzureBastionSubnet",
          "resource_group_name": "Zen_Core",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "my-vnet"
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
      "name": "bastion_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.db_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "db-subnet",
          "resource_group_name": "Zen_Core",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "my-vnet"
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
      "name": "db_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.web_subnet",
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
          "name": "web-subnet",
          "resource_group_name": "Zen_Core",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "my-vnet"
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
      "name": "web_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.db_nsg_association",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "network_security_group_id": true,
          "subnet_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "db_nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.web_nsg_association",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "network_security_group_id": true,
          "subnet_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "web_nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
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
          "location": "eastus2",
          "name": "my-vnet",
          "resource_group_name": "Zen_Core",
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
      "address": "azurerm_windows_virtual_machine.db_vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "additional_unattend_content": [],
          "admin_password": "Reganam@321#",
          "admin_username": "zenadmin",
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
          "location": "eastus2",
          "max_bid_price": -1,
          "name": "db-vm",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "disk_size_gb": 256,
              "secure_vm_disk_encryption_set_id": null,
              "security_encryption_type": null,
              "storage_account_type": "Premium_LRS",
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
          "resource_group_name": "Zen_Core",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_D4s_v3",
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
      "mode": "managed",
      "name": "db_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_windows_virtual_machine"
    },
    {
      "address": "azurerm_windows_virtual_machine.web_vm[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "additional_unattend_content": [],
          "admin_password": "Reganam@321#",
          "admin_username": "zenadmin",
          "allow_extension_operations": true,
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
          "location": "eastus2",
          "max_bid_price": -1,
          "name": "web-vm-1",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "disk_size_gb": 128,
              "secure_vm_disk_encryption_set_id": null,
              "security_encryption_type": null,
              "storage_account_type": "Premium_LRS",
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
          "resource_group_name": "Zen_Core",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_D2s_v3",
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
          "availability_set_id": true,
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
      "name": "web_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_windows_virtual_machine"
    },
    {
      "address": "azurerm_windows_virtual_machine.web_vm[1]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "additional_unattend_content": [],
          "admin_password": "Reganam@321#",
          "admin_username": "zenadmin",
          "allow_extension_operations": true,
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
          "location": "eastus2",
          "max_bid_price": -1,
          "name": "web-vm-2",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "disk_size_gb": 128,
              "secure_vm_disk_encryption_set_id": null,
              "security_encryption_type": null,
              "storage_account_type": "Premium_LRS",
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
          "resource_group_name": "Zen_Core",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_D2s_v3",
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
          "availability_set_id": true,
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
      "name": "web_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_windows_virtual_machine"
    },
    {
      "address": "random_string.random",
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
      "name": "random",
      "provider_name": "registry.terraform.io/hashicorp/random",
      "type": "random_string"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-16T23:55:17Z",
  "variables": {
    "appgw_subnet_prefix": {
      "value": "10.0.3.0/24"
    },
    "bastion_subnet_prefix": {
      "value": "10.0.5.0/24"
    },
    "db_subnet_prefix": {
      "value": "10.0.2.0/24"
    },
    "location": {
      "value": "eastus 2"
    },
    "project_name": {
      "value": "zenrecovery"
    },
    "resource_group_name": {
      "value": "Zen_Core"
    },
    "security_center_email": {
      "value": "salawuhabeeb09@gmail.com"
    },
    "sql_admin_password": {
      "value": "Reganam@321#"
    },
    "sql_admin_username": {
      "value": "zenadmin"
    },
    "vm_admin_password": {
      "value": "Reganam@321#"
    },
    "vm_admin_username": {
      "value": "zenadmin"
    },
    "vnet_address_space": {
      "value": [
        "10.0.0.0/16"
      ]
    },
    "web_subnet_prefix": {
      "value": "10.0.1.0/24"
    },
    "web_vm_count": {
      "value": 2
    }
  }
}

