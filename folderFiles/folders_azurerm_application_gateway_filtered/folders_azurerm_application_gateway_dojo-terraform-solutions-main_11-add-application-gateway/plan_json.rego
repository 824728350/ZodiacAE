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
        "name": "location",
        "to_display": "var.location"
      },
      "instances": [
        {
          "address": {
            "to_display": "var.location"
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
        "name": "azurerm"
      }
    },
    "root_module": {
      "outputs": {
        "location": {
          "expression": {
            "references": [
              "var.location"
            ]
          }
        },
        "nsg_name": {
          "expression": {
            "references": [
              "azurerm_network_security_group.nsg.name",
              "azurerm_network_security_group.nsg"
            ]
          }
        },
        "nsg_rules": {
          "expression": {
            "references": [
              "azurerm_network_security_rule.nsg_rules"
            ]
          }
        },
        "resource_group_name": {
          "expression": {
            "references": [
              "local.resource_group_name"
            ]
          }
        },
        "subnets": {
          "expression": {
            "references": [
              "azurerm_virtual_network.vnet.subnet",
              "azurerm_virtual_network.vnet"
            ]
          }
        },
        "vnet_id": {
          "expression": {
            "references": [
              "azurerm_virtual_network.vnet.id",
              "azurerm_virtual_network.vnet"
            ]
          }
        },
        "vnet_name": {
          "expression": {
            "references": [
              "azurerm_virtual_network.vnet.name",
              "azurerm_virtual_network.vnet"
            ]
          }
        },
        "vnet_rg_name": {
          "expression": {
            "references": [
              "azurerm_virtual_network.vnet.resource_group_name",
              "azurerm_virtual_network.vnet"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azurerm_application_gateway.appgateway",
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
                    "azurerm_public_ip.agw_pip.id",
                    "azurerm_public_ip.agw_pip"
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
                    "azurerm_subnet.subnets[\"ApplicationGatewaySubnet\"].id",
                    "azurerm_subnet.subnets[\"ApplicationGatewaySubnet\"]",
                    "azurerm_subnet.subnets"
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
              "references": [
                "var.prefix",
                "var.appgateway_name"
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
                  "constant_value": 9
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
          "name": "appgateway",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_key_vault.keyvault",
          "depends_on": [
            "azurerm_role_assignment.kv_admin"
          ],
          "expressions": {
            "enable_rbac_authorization": {
              "constant_value": true
            },
            "enabled_for_disk_encryption": {
              "constant_value": true
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "references": [
                "local.key_vault_name"
              ]
            },
            "network_acls": [
              {
                "bypass": {
                  "constant_value": "AzureServices"
                },
                "default_action": {
                  "constant_value": "Allow"
                },
                "virtual_network_subnet_ids": {
                  "constant_value": []
                }
              }
            ],
            "purge_protection_enabled": {
              "constant_value": false
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
          "name": "keyvault",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_key_vault"
        },
        {
          "address": "azurerm_key_vault_secret.bad_secret",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.keyvault.id",
                "azurerm_key_vault.keyvault"
              ]
            },
            "name": {
              "constant_value": "secret-sauce"
            },
            "value": {
              "constant_value": "szechuan"
            }
          },
          "mode": "managed",
          "name": "bad_secret",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_secret"
        },
        {
          "address": "azurerm_network_interface.vm1_nic",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "internal"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.vm1_pip.id",
                    "azurerm_public_ip.vm1_pip"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.subnets[\"ServerSubnet\"].id",
                    "azurerm_subnet.subnets[\"ServerSubnet\"]",
                    "azurerm_subnet.subnets"
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
                "local.vm_name"
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
          "name": "vm1_nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_security_group.nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "references": [
                "var.prefix",
                "var.nsg_name"
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
          "name": "nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_network_security_group.nsg_rule_blocks",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "references": [
                "var.prefix",
                "var.nsg_name"
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
          "name": "nsg_rule_blocks",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_network_security_rule.nsg_rules",
          "expressions": {
            "access": {
              "references": [
                "each.value.access",
                "each.value"
              ]
            },
            "destination_address_prefix": {
              "references": [
                "each.value.destination_address_prefix",
                "each.value"
              ]
            },
            "destination_address_prefixes": {
              "constant_value": null
            },
            "destination_application_security_group_ids": {
              "constant_value": null
            },
            "destination_port_range": {
              "references": [
                "each.value.destination_port_range",
                "each.value"
              ]
            },
            "destination_port_ranges": {
              "constant_value": null
            },
            "direction": {
              "references": [
                "each.value.direction",
                "each.value"
              ]
            },
            "name": {
              "references": [
                "each.value.name",
                "each.value"
              ]
            },
            "network_security_group_name": {
              "references": [
                "azurerm_network_security_group.nsg_rule_blocks.name",
                "azurerm_network_security_group.nsg_rule_blocks"
              ]
            },
            "priority": {
              "references": [
                "each.value.priority",
                "each.value"
              ]
            },
            "protocol": {
              "references": [
                "each.value.protocol",
                "each.value"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "source_address_prefix": {
              "references": [
                "each.value.source_address_prefix",
                "each.value"
              ]
            },
            "source_address_prefixes": {
              "constant_value": null
            },
            "source_application_security_group_ids": {
              "constant_value": null
            },
            "source_port_range": {
              "references": [
                "each.value.source_port_range",
                "each.value"
              ]
            },
            "source_port_ranges": {
              "constant_value": null
            }
          },
          "for_each_expression": {
            "references": [
              "var.nsg_security_rules"
            ]
          },
          "mode": "managed",
          "name": "nsg_rules",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_rule"
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
              "references": [
                "var.prefix",
                "var.appgateway_name"
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
          "name": "agw_pip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_public_ip.vm1_pip",
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
              "references": [
                "local.vm_name"
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
          "name": "vm1_pip",
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
                "local.resource_group_name"
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
          "address": "azurerm_role_assignment.kv_admin",
          "expressions": {
            "principal_id": {
              "references": [
                "data.azurerm_client_config.current.object_id",
                "data.azurerm_client_config.current"
              ]
            },
            "role_definition_name": {
              "constant_value": "Key Vault Administrator"
            },
            "scope": {
              "references": [
                "data.azurerm_client_config.current.subscription_id",
                "data.azurerm_client_config.current"
              ]
            }
          },
          "mode": "managed",
          "name": "kv_admin",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_subnet.subnets",
          "depends_on": [
            "azurerm_resource_group.rg",
            "azurerm_virtual_network.vnet"
          ],
          "expressions": {
            "address_prefixes": {
              "references": [
                "each.value.address_prefixes",
                "each.value"
              ]
            },
            "name": {
              "references": [
                "each.value.name",
                "each.value"
              ]
            },
            "resource_group_name": {
              "references": [
                "each.value.resource_group_name",
                "each.value"
              ]
            },
            "virtual_network_name": {
              "references": [
                "each.value.virtual_network_name",
                "each.value"
              ]
            }
          },
          "for_each_expression": {
            "references": [
              "var.subnets"
            ]
          },
          "mode": "managed",
          "name": "subnets",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.nsg_association",
          "depends_on": [
            "azurerm_virtual_network.vnet",
            "azurerm_subnet.subnets"
          ],
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.nsg.id",
                "azurerm_network_security_group.nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_virtual_network.vnet.id",
                "azurerm_virtual_network.vnet",
                "each.value.name",
                "each.value"
              ]
            }
          },
          "for_each_expression": {
            "references": [
              "var.subnets"
            ]
          },
          "mode": "managed",
          "name": "nsg_association",
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
              "references": [
                "var.prefix",
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
        },
        {
          "address": "azurerm_windows_virtual_machine.vm1",
          "expressions": {
            "admin_password": {
              "constant_value": "P@$$w0rd1234!"
            },
            "admin_username": {
              "constant_value": "localadmin"
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "references": [
                "local.vm_name"
              ]
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.vm1_nic.id",
                "azurerm_network_interface.vm1_nic"
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
                  "constant_value": "2022-Datacenter"
                },
                "version": {
                  "constant_value": "latest"
                }
              }
            ]
          },
          "mode": "managed",
          "name": "vm1",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_windows_virtual_machine"
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
        "appgateway_name": {
          "default": "dojoappgw",
          "description": "Name of your Application gateway. Will be prefixed and affixed."
        },
        "key_vault_name": {
          "default": "",
          "description": "Name of your Key Vault. This will be prefixed and affixed."
        },
        "location": {
          "default": "norwayeast",
          "description": "Location for your resource group. Allowed locations: norwayeast, norwaywest, westeurope, northeurope"
        },
        "nsg_name": {
          "default": "dojonsg",
          "description": "Name of your network security group. This will be prefixed and affixed."
        },
        "nsg_security_rules": {
          "default": {
            "allow-https-inbound": {
              "access": "Allow",
              "destination_address_prefix": "VirtualNetwork",
              "destination_port_range": "443",
              "direction": "Inbound",
              "name": "AllowInboundHttps",
              "priority": 110,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_port_range": "*"
            },
            "allow-rdp-inbound": {
              "access": "Allow",
              "destination_address_prefix": "VirtualNetwork",
              "destination_port_range": "3389",
              "direction": "Inbound",
              "name": "AllowInboundRdp",
              "priority": 120,
              "protocol": "*",
              "source_address_prefix": "*",
              "source_port_range": "*"
            },
            "allow-ssh-inbound": {
              "access": "Allow",
              "destination_address_prefix": "VirtualNetwork",
              "destination_port_range": "22",
              "direction": "Inbound",
              "name": "AllowInboundSsh",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_port_range": "*"
            }
          }
        },
        "prefix": {
          "default": "dojolab",
          "description": "Prefix for your resource group name."
        },
        "resource_group_name": {
          "default": "defaultname",
          "description": "Resource group name. This will be prefixed and affixed."
        },
        "sql_database_name": {
          "default": "dojosqldb",
          "description": "Name of your SQL database. This will be prefixed and affixed."
        },
        "sql_login_object_id": {
          "default": "861b634d-94e1-4018-8190-6f863d781425",
          "description": "Object ID of your AzureAD administrator. It is the object id found in Azure AD on the user object."
        },
        "sql_login_username": {
          "default": "dojosqladmin@2SGo2Cloud.onmicrosoft.com",
          "description": "Username of your SQL AzureAD administrator. Must be a full UPN."
        },
        "sql_server_name": {
          "default": "dojosqlsrv",
          "description": "Name of your SQL server. This will be prefixed and affixed."
        },
        "subnets": {
          "default": {
            "ApplicationGatewaySubnet": {
              "address_prefixes": [
                "10.0.1.0/24"
              ],
              "name": "ApplicationGatewaySubnet",
              "resource_group_name": "dojolab-defaultname",
              "virtual_network_name": "dojolab-defaultname-vnet"
            },
            "KeyVaultSubnet": {
              "address_prefixes": [
                "10.0.2.0/24"
              ],
              "name": "KeyVaultSubnet",
              "resource_group_name": "dojolab-defaultname",
              "virtual_network_name": "dojolab-defaultname-vnet"
            },
            "ServerSubnet": {
              "address_prefixes": [
                "10.0.3.0/24"
              ],
              "name": "ServerSubnet",
              "resource_group_name": "dojolab-defaultname",
              "virtual_network_name": "dojolab-defaultname-vnet"
            },
            "default": {
              "address_prefixes": [
                "10.0.0.0/24"
              ],
              "name": "default",
              "resource_group_name": "dojolab-defaultname",
              "virtual_network_name": "dojolab-defaultname-vnet"
            }
          }
        },
        "vm_name": {
          "default": "dojovm",
          "description": "Name of your virtual machine. This will be prefixed and shortened if needed (15 chars max including prefix and affix)."
        },
        "vnet_address_space": {
          "default": [
            "10.0.0.0/16"
          ],
          "description": "Address space for your virtual network. Defaults to 10.0.0.0/16."
        },
        "vnet_name": {
          "default": "defaultname",
          "description": "Name for your virtual network. This will be prefixed and affixed."
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "location": {
      "actions": [
        "create"
      ],
      "after": "norwayeast",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    },
    "nsg_name": {
      "actions": [
        "create"
      ],
      "after": "dojolab-dojonsg-nsg",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    },
    "nsg_rules": {
      "actions": [
        "create"
      ],
      "after": [
        {
          "allow-https-inbound": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "443",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundHttps",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 110,
            "protocol": "Tcp",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
            "timeouts": null
          },
          "allow-rdp-inbound": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "3389",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundRdp",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 120,
            "protocol": "*",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
            "timeouts": null
          },
          "allow-ssh-inbound": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "22",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundSsh",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 100,
            "protocol": "Tcp",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
            "timeouts": null
          }
        }
      ],
      "after_sensitive": false,
      "after_unknown": [
        {
          "allow-https-inbound": {
            "id": true
          },
          "allow-rdp-inbound": {
            "id": true
          },
          "allow-ssh-inbound": {
            "id": true
          }
        }
      ],
      "before": null,
      "before_sensitive": false
    },
    "resource_group_name": {
      "actions": [
        "create"
      ],
      "after": "dojolab-defaultname",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    },
    "subnets": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "vnet_id": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "vnet_name": {
      "actions": [
        "create"
      ],
      "after": "dojolab-defaultname-vnet",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    },
    "vnet_rg_name": {
      "actions": [
        "create"
      ],
      "after": "dojolab-defaultname",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    }
  },
  "planned_values": {
    "outputs": {
      "location": {
        "sensitive": false,
        "type": "string",
        "value": "norwayeast"
      },
      "nsg_name": {
        "sensitive": false,
        "type": "string",
        "value": "dojolab-dojonsg-nsg"
      },
      "nsg_rules": {
        "sensitive": false
      },
      "resource_group_name": {
        "sensitive": false,
        "type": "string",
        "value": "dojolab-defaultname"
      },
      "subnets": {
        "sensitive": false
      },
      "vnet_id": {
        "sensitive": false
      },
      "vnet_name": {
        "sensitive": false,
        "type": "string",
        "value": "dojolab-defaultname-vnet"
      },
      "vnet_rg_name": {
        "sensitive": false,
        "type": "string",
        "value": "dojolab-defaultname"
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_application_gateway.appgateway",
          "mode": "managed",
          "name": "appgateway",
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
                "name": "dojolab-website1-beap"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "dojolab-website1-be-htst",
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
                "name": "dojolab-website1-feip",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "dojolab-website1-feport",
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
                "frontend_ip_configuration_name": "dojolab-website1-feip",
                "frontend_port_name": "dojolab-website1-feport",
                "host_name": "",
                "host_names": [],
                "name": "dojolab-website1-httplstn",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "norwayeast",
            "name": "dojolab-dojoappgw-agw",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "dojolab-website1-beap",
                "backend_http_settings_name": "dojolab-website1-be-htst",
                "http_listener_name": "dojolab-website1-httplstn",
                "name": "dojolab-website1-rqrt",
                "priority": 9,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "dojolab-defaultname",
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
          "address": "azurerm_key_vault.keyvault",
          "mode": "managed",
          "name": "keyvault",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 2,
          "sensitive_values": {
            "access_policy": [],
            "contact": [],
            "network_acls": [
              {}
            ]
          },
          "type": "azurerm_key_vault",
          "values": {
            "enable_rbac_authorization": true,
            "enabled_for_deployment": null,
            "enabled_for_disk_encryption": true,
            "enabled_for_template_deployment": null,
            "location": "norwayeast",
            "name": "dojolab-a680465ca0-kv",
            "network_acls": [
              {
                "bypass": "AzureServices",
                "default_action": "Allow",
                "ip_rules": null,
                "virtual_network_subnet_ids": null
              }
            ],
            "public_network_access_enabled": true,
            "purge_protection_enabled": false,
            "resource_group_name": "dojolab-defaultname",
            "sku_name": "standard",
            "soft_delete_retention_days": 7,
            "tags": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_secret.bad_secret",
          "mode": "managed",
          "name": "bad_secret",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "value": true
          },
          "type": "azurerm_key_vault_secret",
          "values": {
            "content_type": null,
            "expiration_date": null,
            "name": "secret-sauce",
            "not_before_date": null,
            "tags": null,
            "timeouts": null,
            "value": "szechuan"
          }
        },
        {
          "address": "azurerm_network_interface.vm1_nic",
          "mode": "managed",
          "name": "vm1_nic",
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
                "private_ip_address_version": "IPv4"
              }
            ],
            "location": "norwayeast",
            "name": "dojolab-dojo-vm-nic1",
            "resource_group_name": "dojolab-defaultname",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.nsg",
          "mode": "managed",
          "name": "nsg",
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
            "location": "norwayeast",
            "name": "dojolab-dojonsg-nsg",
            "resource_group_name": "dojolab-defaultname",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "VirtualNetwork",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "22",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowInboundSsh",
                "priority": 100,
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
                "destination_address_prefix": "VirtualNetwork",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "3389",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowInboundRdp",
                "priority": 120,
                "protocol": "*",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              },
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "VirtualNetwork",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "443",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowInboundHttps",
                "priority": 110,
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
          "address": "azurerm_network_security_group.nsg_rule_blocks",
          "mode": "managed",
          "name": "nsg_rule_blocks",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "security_rule": []
          },
          "type": "azurerm_network_security_group",
          "values": {
            "location": "norwayeast",
            "name": "dojolab-dojonsg-rule-blocks-nsg",
            "resource_group_name": "dojolab-defaultname",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_rule.nsg_rules[\"allow-https-inbound\"]",
          "index": "allow-https-inbound",
          "mode": "managed",
          "name": "nsg_rules",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_security_rule",
          "values": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "443",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundHttps",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 110,
            "protocol": "Tcp",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_rule.nsg_rules[\"allow-rdp-inbound\"]",
          "index": "allow-rdp-inbound",
          "mode": "managed",
          "name": "nsg_rules",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_security_rule",
          "values": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "3389",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundRdp",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 120,
            "protocol": "*",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_rule.nsg_rules[\"allow-ssh-inbound\"]",
          "index": "allow-ssh-inbound",
          "mode": "managed",
          "name": "nsg_rules",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_security_rule",
          "values": {
            "access": "Allow",
            "description": null,
            "destination_address_prefix": "VirtualNetwork",
            "destination_address_prefixes": null,
            "destination_application_security_group_ids": null,
            "destination_port_range": "22",
            "destination_port_ranges": null,
            "direction": "Inbound",
            "name": "AllowInboundSsh",
            "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
            "priority": 100,
            "protocol": "Tcp",
            "resource_group_name": "dojolab-defaultname",
            "source_address_prefix": "*",
            "source_address_prefixes": null,
            "source_application_security_group_ids": null,
            "source_port_range": "*",
            "source_port_ranges": null,
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
            "location": "norwayeast",
            "name": "dojolab-dojoappgw-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "dojolab-defaultname",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_public_ip.vm1_pip",
          "mode": "managed",
          "name": "vm1_pip",
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
            "location": "norwayeast",
            "name": "dojolab-dojo-vm-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "dojolab-defaultname",
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
            "location": "norwayeast",
            "managed_by": null,
            "name": "dojolab-defaultname",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.kv_admin",
          "mode": "managed",
          "name": "kv_admin",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
            "role_definition_name": "Key Vault Administrator",
            "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.subnets[\"ApplicationGatewaySubnet\"]",
          "index": "ApplicationGatewaySubnet",
          "mode": "managed",
          "name": "subnets",
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
            "name": "ApplicationGatewaySubnet",
            "resource_group_name": "dojolab-defaultname",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "dojolab-defaultname-vnet"
          }
        },
        {
          "address": "azurerm_subnet.subnets[\"KeyVaultSubnet\"]",
          "index": "KeyVaultSubnet",
          "mode": "managed",
          "name": "subnets",
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
            "name": "KeyVaultSubnet",
            "resource_group_name": "dojolab-defaultname",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "dojolab-defaultname-vnet"
          }
        },
        {
          "address": "azurerm_subnet.subnets[\"ServerSubnet\"]",
          "index": "ServerSubnet",
          "mode": "managed",
          "name": "subnets",
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
            "name": "ServerSubnet",
            "resource_group_name": "dojolab-defaultname",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "dojolab-defaultname-vnet"
          }
        },
        {
          "address": "azurerm_subnet.subnets[\"default\"]",
          "index": "default",
          "mode": "managed",
          "name": "subnets",
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
            "resource_group_name": "dojolab-defaultname",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "dojolab-defaultname-vnet"
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.nsg_association[\"ApplicationGatewaySubnet\"]",
          "index": "ApplicationGatewaySubnet",
          "mode": "managed",
          "name": "nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.nsg_association[\"KeyVaultSubnet\"]",
          "index": "KeyVaultSubnet",
          "mode": "managed",
          "name": "nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.nsg_association[\"ServerSubnet\"]",
          "index": "ServerSubnet",
          "mode": "managed",
          "name": "nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.nsg_association[\"default\"]",
          "index": "default",
          "mode": "managed",
          "name": "nsg_association",
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
            "location": "norwayeast",
            "name": "dojolab-defaultname-vnet",
            "resource_group_name": "dojolab-defaultname",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_windows_virtual_machine.vm1",
          "mode": "managed",
          "name": "vm1",
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
            "admin_password": "P@$$w0rd1234!",
            "admin_username": "localadmin",
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
            "location": "norwayeast",
            "max_bid_price": -1,
            "name": "dojolab-dojo-vm",
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
            "resource_group_name": "dojolab-defaultname",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_B2s",
            "source_image_id": null,
            "source_image_reference": [
              {
                "offer": "WindowsServer",
                "publisher": "MicrosoftWindowsServer",
                "sku": "2022-Datacenter",
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
        }
      ]
    }
  },
  "prior_state": {
    "format_version": "1.0",
    "terraform_version": "1.9.4",
    "values": {
      "outputs": {
        "location": {
          "sensitive": false,
          "type": "string",
          "value": "norwayeast"
        },
        "nsg_name": {
          "sensitive": false,
          "type": "string",
          "value": "dojolab-dojonsg-nsg"
        },
        "resource_group_name": {
          "sensitive": false,
          "type": "string",
          "value": "dojolab-defaultname"
        },
        "vnet_name": {
          "sensitive": false,
          "type": "string",
          "value": "dojolab-defaultname-vnet"
        },
        "vnet_rg_name": {
          "sensitive": false,
          "type": "string",
          "value": "dojolab-defaultname"
        }
      },
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
        "subscription_id"
      ],
      "resource": "data.azurerm_client_config.current"
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
      "resource": "azurerm_network_security_group.nsg"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.rg"
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
      "resource": "azurerm_public_ip.vm1_pip"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.vnet"
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
      "resource": "azurerm_network_security_group.nsg_rule_blocks"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_virtual_network.vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.subnets[\"ServerSubnet\"]"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.agw_pip"
    },
    {
      "attribute": [
        "resource_group_name"
      ],
      "resource": "azurerm_virtual_network.vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.nsg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_key_vault.keyvault"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.vm1_nic"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.subnets[\"ApplicationGatewaySubnet\"]"
    },
    {
      "attribute": [
        "subnet"
      ],
      "resource": "azurerm_virtual_network.vnet"
    },
    {
      "attribute": [],
      "resource": "azurerm_network_security_rule.nsg_rules"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.appgateway",
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
              "name": "dojolab-website1-beap"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "dojolab-website1-be-htst",
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
              "name": "dojolab-website1-feip",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "dojolab-website1-feport",
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
              "frontend_ip_configuration_name": "dojolab-website1-feip",
              "frontend_port_name": "dojolab-website1-feport",
              "host_name": "",
              "host_names": [],
              "name": "dojolab-website1-httplstn",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "norwayeast",
          "name": "dojolab-dojoappgw-agw",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "dojolab-website1-beap",
              "backend_http_settings_name": "dojolab-website1-be-htst",
              "http_listener_name": "dojolab-website1-httplstn",
              "name": "dojolab-website1-rqrt",
              "priority": 9,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "dojolab-defaultname",
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
      "name": "appgateway",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_key_vault.keyvault",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "enable_rbac_authorization": true,
          "enabled_for_deployment": null,
          "enabled_for_disk_encryption": true,
          "enabled_for_template_deployment": null,
          "location": "norwayeast",
          "name": "dojolab-a680465ca0-kv",
          "network_acls": [
            {
              "bypass": "AzureServices",
              "default_action": "Allow",
              "ip_rules": null,
              "virtual_network_subnet_ids": null
            }
          ],
          "public_network_access_enabled": true,
          "purge_protection_enabled": false,
          "resource_group_name": "dojolab-defaultname",
          "sku_name": "standard",
          "soft_delete_retention_days": 7,
          "tags": null,
          "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
          "timeouts": null
        },
        "after_sensitive": {
          "access_policy": [],
          "contact": [],
          "network_acls": [
            {}
          ]
        },
        "after_unknown": {
          "access_policy": true,
          "contact": true,
          "id": true,
          "network_acls": [
            {}
          ],
          "vault_uri": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "keyvault",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault"
    },
    {
      "address": "azurerm_key_vault_secret.bad_secret",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "content_type": null,
          "expiration_date": null,
          "name": "secret-sauce",
          "not_before_date": null,
          "tags": null,
          "timeouts": null,
          "value": "szechuan"
        },
        "after_sensitive": {
          "value": true
        },
        "after_unknown": {
          "id": true,
          "key_vault_id": true,
          "resource_id": true,
          "resource_versionless_id": true,
          "version": true,
          "versionless_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "bad_secret",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_secret"
    },
    {
      "address": "azurerm_network_interface.vm1_nic",
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
              "private_ip_address_version": "IPv4"
            }
          ],
          "location": "norwayeast",
          "name": "dojolab-dojo-vm-nic1",
          "resource_group_name": "dojolab-defaultname",
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
              "public_ip_address_id": true,
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
      "name": "vm1_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_security_group.nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "norwayeast",
          "name": "dojolab-dojonsg-nsg",
          "resource_group_name": "dojolab-defaultname",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "VirtualNetwork",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "22",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowInboundSsh",
              "priority": 100,
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
              "destination_address_prefix": "VirtualNetwork",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "3389",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowInboundRdp",
              "priority": 120,
              "protocol": "*",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            },
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "VirtualNetwork",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "443",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowInboundHttps",
              "priority": 110,
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
      "name": "nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_network_security_group.nsg_rule_blocks",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "norwayeast",
          "name": "dojolab-dojonsg-rule-blocks-nsg",
          "resource_group_name": "dojolab-defaultname",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "security_rule": []
        },
        "after_unknown": {
          "id": true,
          "security_rule": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "nsg_rule_blocks",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_network_security_rule.nsg_rules[\"allow-https-inbound\"]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "access": "Allow",
          "description": null,
          "destination_address_prefix": "VirtualNetwork",
          "destination_address_prefixes": null,
          "destination_application_security_group_ids": null,
          "destination_port_range": "443",
          "destination_port_ranges": null,
          "direction": "Inbound",
          "name": "AllowInboundHttps",
          "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
          "priority": 110,
          "protocol": "Tcp",
          "resource_group_name": "dojolab-defaultname",
          "source_address_prefix": "*",
          "source_address_prefixes": null,
          "source_application_security_group_ids": null,
          "source_port_range": "*",
          "source_port_ranges": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "index": "allow-https-inbound",
      "mode": "managed",
      "name": "nsg_rules",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_rule"
    },
    {
      "address": "azurerm_network_security_rule.nsg_rules[\"allow-rdp-inbound\"]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "access": "Allow",
          "description": null,
          "destination_address_prefix": "VirtualNetwork",
          "destination_address_prefixes": null,
          "destination_application_security_group_ids": null,
          "destination_port_range": "3389",
          "destination_port_ranges": null,
          "direction": "Inbound",
          "name": "AllowInboundRdp",
          "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
          "priority": 120,
          "protocol": "*",
          "resource_group_name": "dojolab-defaultname",
          "source_address_prefix": "*",
          "source_address_prefixes": null,
          "source_application_security_group_ids": null,
          "source_port_range": "*",
          "source_port_ranges": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "index": "allow-rdp-inbound",
      "mode": "managed",
      "name": "nsg_rules",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_rule"
    },
    {
      "address": "azurerm_network_security_rule.nsg_rules[\"allow-ssh-inbound\"]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "access": "Allow",
          "description": null,
          "destination_address_prefix": "VirtualNetwork",
          "destination_address_prefixes": null,
          "destination_application_security_group_ids": null,
          "destination_port_range": "22",
          "destination_port_ranges": null,
          "direction": "Inbound",
          "name": "AllowInboundSsh",
          "network_security_group_name": "dojolab-dojonsg-rule-blocks-nsg",
          "priority": 100,
          "protocol": "Tcp",
          "resource_group_name": "dojolab-defaultname",
          "source_address_prefix": "*",
          "source_address_prefixes": null,
          "source_application_security_group_ids": null,
          "source_port_range": "*",
          "source_port_ranges": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "index": "allow-ssh-inbound",
      "mode": "managed",
      "name": "nsg_rules",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_rule"
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
          "location": "norwayeast",
          "name": "dojolab-dojoappgw-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "dojolab-defaultname",
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
      "address": "azurerm_public_ip.vm1_pip",
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
          "location": "norwayeast",
          "name": "dojolab-dojo-vm-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "dojolab-defaultname",
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
      "name": "vm1_pip",
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
          "location": "norwayeast",
          "managed_by": null,
          "name": "dojolab-defaultname",
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
      "address": "azurerm_role_assignment.kv_admin",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
          "role_definition_name": "Key Vault Administrator",
          "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_type": true,
          "role_definition_id": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "kv_admin",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_subnet.subnets[\"ApplicationGatewaySubnet\"]",
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
          "name": "ApplicationGatewaySubnet",
          "resource_group_name": "dojolab-defaultname",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "dojolab-defaultname-vnet"
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
      "index": "ApplicationGatewaySubnet",
      "mode": "managed",
      "name": "subnets",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.subnets[\"KeyVaultSubnet\"]",
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
          "name": "KeyVaultSubnet",
          "resource_group_name": "dojolab-defaultname",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "dojolab-defaultname-vnet"
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
      "index": "KeyVaultSubnet",
      "mode": "managed",
      "name": "subnets",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.subnets[\"ServerSubnet\"]",
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
          "name": "ServerSubnet",
          "resource_group_name": "dojolab-defaultname",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "dojolab-defaultname-vnet"
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
      "index": "ServerSubnet",
      "mode": "managed",
      "name": "subnets",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.subnets[\"default\"]",
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
          "resource_group_name": "dojolab-defaultname",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "dojolab-defaultname-vnet"
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
      "index": "default",
      "mode": "managed",
      "name": "subnets",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.nsg_association[\"ApplicationGatewaySubnet\"]",
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
      "index": "ApplicationGatewaySubnet",
      "mode": "managed",
      "name": "nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.nsg_association[\"KeyVaultSubnet\"]",
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
      "index": "KeyVaultSubnet",
      "mode": "managed",
      "name": "nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.nsg_association[\"ServerSubnet\"]",
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
      "index": "ServerSubnet",
      "mode": "managed",
      "name": "nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.nsg_association[\"default\"]",
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
      "index": "default",
      "mode": "managed",
      "name": "nsg_association",
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
          "location": "norwayeast",
          "name": "dojolab-defaultname-vnet",
          "resource_group_name": "dojolab-defaultname",
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
      "address": "azurerm_windows_virtual_machine.vm1",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "additional_unattend_content": [],
          "admin_password": "P@$$w0rd1234!",
          "admin_username": "localadmin",
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
          "location": "norwayeast",
          "max_bid_price": -1,
          "name": "dojolab-dojo-vm",
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
          "resource_group_name": "dojolab-defaultname",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_B2s",
          "source_image_id": null,
          "source_image_reference": [
            {
              "offer": "WindowsServer",
              "publisher": "MicrosoftWindowsServer",
              "sku": "2022-Datacenter",
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
      "mode": "managed",
      "name": "vm1",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_windows_virtual_machine"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:07:25Z",
  "variables": {
    "appgateway_name": {
      "value": "dojoappgw"
    },
    "key_vault_name": {
      "value": ""
    },
    "location": {
      "value": "norwayeast"
    },
    "nsg_name": {
      "value": "dojonsg"
    },
    "nsg_security_rules": {
      "value": {
        "allow-https-inbound": {
          "access": "Allow",
          "destination_address_prefix": "VirtualNetwork",
          "destination_port_range": "443",
          "direction": "Inbound",
          "name": "AllowInboundHttps",
          "priority": 110,
          "protocol": "Tcp",
          "source_address_prefix": "*",
          "source_port_range": "*"
        },
        "allow-rdp-inbound": {
          "access": "Allow",
          "destination_address_prefix": "VirtualNetwork",
          "destination_port_range": "3389",
          "direction": "Inbound",
          "name": "AllowInboundRdp",
          "priority": 120,
          "protocol": "*",
          "source_address_prefix": "*",
          "source_port_range": "*"
        },
        "allow-ssh-inbound": {
          "access": "Allow",
          "destination_address_prefix": "VirtualNetwork",
          "destination_port_range": "22",
          "direction": "Inbound",
          "name": "AllowInboundSsh",
          "priority": 100,
          "protocol": "Tcp",
          "source_address_prefix": "*",
          "source_port_range": "*"
        }
      }
    },
    "prefix": {
      "value": "dojolab"
    },
    "resource_group_name": {
      "value": "defaultname"
    },
    "sql_database_name": {
      "value": "dojosqldb"
    },
    "sql_login_object_id": {
      "value": "861b634d-94e1-4018-8190-6f863d781425"
    },
    "sql_login_username": {
      "value": "dojosqladmin@2SGo2Cloud.onmicrosoft.com"
    },
    "sql_server_name": {
      "value": "dojosqlsrv"
    },
    "subnets": {
      "value": {
        "ApplicationGatewaySubnet": {
          "address_prefixes": [
            "10.0.1.0/24"
          ],
          "name": "ApplicationGatewaySubnet",
          "resource_group_name": "dojolab-defaultname",
          "virtual_network_name": "dojolab-defaultname-vnet"
        },
        "KeyVaultSubnet": {
          "address_prefixes": [
            "10.0.2.0/24"
          ],
          "name": "KeyVaultSubnet",
          "resource_group_name": "dojolab-defaultname",
          "virtual_network_name": "dojolab-defaultname-vnet"
        },
        "ServerSubnet": {
          "address_prefixes": [
            "10.0.3.0/24"
          ],
          "name": "ServerSubnet",
          "resource_group_name": "dojolab-defaultname",
          "virtual_network_name": "dojolab-defaultname-vnet"
        },
        "default": {
          "address_prefixes": [
            "10.0.0.0/24"
          ],
          "name": "default",
          "resource_group_name": "dojolab-defaultname",
          "virtual_network_name": "dojolab-defaultname-vnet"
        }
      }
    },
    "vm_name": {
      "value": "dojovm"
    },
    "vnet_address_space": {
      "value": [
        "10.0.0.0/16"
      ]
    },
    "vnet_name": {
      "value": "defaultname"
    }
  }
}

