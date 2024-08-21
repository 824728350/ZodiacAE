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
      "azuread": {
        "full_name": "registry.terraform.io/hashicorp/azuread",
        "name": "azuread"
      },
      "azurerm": {
        "expressions": {
          "features": [
            {}
          ]
        },
        "full_name": "registry.terraform.io/hashicorp/azurerm",
        "name": "azurerm"
      },
      "http": {
        "full_name": "registry.terraform.io/hashicorp/http",
        "name": "http"
      }
    },
    "root_module": {
      "outputs": {
        "id": {
          "expression": {
            "references": [
              "azurerm_container_group.container_group.id",
              "azurerm_container_group.container_group"
            ]
          }
        },
        "ip": {
          "expression": {
            "references": [
              "azurerm_public_ip.public_ip.ip_address",
              "azurerm_public_ip.public_ip"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azuread_application.app",
          "expressions": {
            "display_name": {
              "references": [
                "var.app_name"
              ]
            },
            "owners": {
              "references": [
                "data.azuread_client_config.current.object_id",
                "data.azuread_client_config.current"
              ]
            }
          },
          "mode": "managed",
          "name": "app",
          "provider_config_key": "azuread",
          "schema_version": 2,
          "type": "azuread_application"
        },
        {
          "address": "azuread_service_principal.app",
          "expressions": {
            "app_role_assignment_required": {
              "constant_value": false
            },
            "application_id": {
              "references": [
                "azuread_application.app.application_id",
                "azuread_application.app"
              ]
            },
            "owners": {
              "references": [
                "data.azuread_client_config.current.object_id",
                "data.azuread_client_config.current"
              ]
            }
          },
          "mode": "managed",
          "name": "app",
          "provider_config_key": "azuread",
          "schema_version": 0,
          "type": "azuread_service_principal"
        },
        {
          "address": "azuread_service_principal_password.app",
          "expressions": {
            "service_principal_id": {
              "references": [
                "azuread_service_principal.app.id",
                "azuread_service_principal.app"
              ]
            }
          },
          "mode": "managed",
          "name": "app",
          "provider_config_key": "azuread",
          "schema_version": 1,
          "type": "azuread_service_principal_password"
        },
        {
          "address": "azurerm_application_gateway.network",
          "expressions": {
            "backend_address_pool": [
              {
                "ip_addresses": {
                  "references": [
                    "azurerm_container_group.container_group.ip_address",
                    "azurerm_container_group.container_group"
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
                "port": {
                  "constant_value": 6789
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
                  "references": [
                    "var.app_name",
                    "var.app_environment"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.sn-public.id",
                    "azurerm_subnet.sn-public"
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
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
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
                  "constant_value": 10
                },
                "rule_type": {
                  "constant_value": "Basic"
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
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
          "name": "network",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_container_group.container_group",
          "expressions": {
            "container": [
              {
                "cpu": {
                  "references": [
                    "var.container_cpu"
                  ]
                },
                "environment_variables": {
                  "references": [
                    "azuread_service_principal.app.application_id",
                    "azuread_service_principal.app",
                    "azuread_service_principal_password.app.value",
                    "azuread_service_principal_password.app",
                    "var.storage_account_name",
                    "azurerm_storage_account.aci_storage.primary_access_key",
                    "azurerm_storage_account.aci_storage",
                    "data.azurerm_subscription.current.subscription_id",
                    "data.azurerm_subscription.current",
                    "azurerm_resource_group.resource_group.name",
                    "azurerm_resource_group.resource_group",
                    "var.app_name",
                    "var.app_environment",
                    "azuread_service_principal.app.application_tenant_id",
                    "azuread_service_principal.app"
                  ]
                },
                "image": {
                  "references": [
                    "var.docker_image"
                  ]
                },
                "memory": {
                  "references": [
                    "var.container_memory"
                  ]
                },
                "name": {
                  "references": [
                    "var.app_name",
                    "var.app_environment"
                  ]
                },
                "ports": [
                  {
                    "port": {
                      "constant_value": 6789
                    },
                    "protocol": {
                      "constant_value": "TCP"
                    }
                  }
                ],
                "volume": [
                  {
                    "mount_path": {
                      "constant_value": "/home/src"
                    },
                    "name": {
                      "references": [
                        "var.app_name"
                      ]
                    },
                    "share_name": {
                      "references": [
                        "azurerm_storage_share.container_share.name",
                        "azurerm_storage_share.container_share"
                      ]
                    },
                    "storage_account_key": {
                      "references": [
                        "azurerm_storage_account.aci_storage.primary_access_key",
                        "azurerm_storage_account.aci_storage"
                      ]
                    },
                    "storage_account_name": {
                      "references": [
                        "azurerm_storage_account.aci_storage.name",
                        "azurerm_storage_account.aci_storage"
                      ]
                    }
                  }
                ]
              }
            ],
            "ip_address_type": {
              "constant_value": "Private"
            },
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "os_type": {
              "constant_value": "Linux"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "subnet_ids": {
              "references": [
                "azurerm_subnet.sn-aci.id",
                "azurerm_subnet.sn-aci"
              ]
            },
            "tags": {
              "references": [
                "var.app_environment"
              ]
            }
          },
          "mode": "managed",
          "name": "container_group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_container_group"
        },
        {
          "address": "azurerm_key_vault.kv",
          "expressions": {
            "access_policy": {
              "references": [
                "azuread_service_principal.app.id",
                "azuread_service_principal.app",
                "data.azurerm_client_config.current.tenant_id",
                "data.azurerm_client_config.current"
              ]
            },
            "enabled_for_disk_encryption": {
              "constant_value": true
            },
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.key_vault_name"
              ]
            },
            "purge_protection_enabled": {
              "constant_value": false
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
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
          "address": "azurerm_network_profile.containergroup_profile",
          "expressions": {
            "container_network_interface": [
              {
                "ip_configuration": [
                  {
                    "name": {
                      "constant_value": "aciipconfig"
                    },
                    "subnet_id": {
                      "references": [
                        "azurerm_subnet.sn-aci.id",
                        "azurerm_subnet.sn-aci"
                      ]
                    }
                  }
                ],
                "name": {
                  "references": [
                    "var.app_name",
                    "var.app_environment"
                  ]
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            }
          },
          "mode": "managed",
          "name": "containergroup_profile",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_profile"
        },
        {
          "address": "azurerm_network_security_group.nsg-aci",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "security_rule": {
              "references": [
                "azurerm_subnet.sn-public.address_prefixes",
                "azurerm_subnet.sn-public",
                "azurerm_subnet.sn-aci.address_prefixes",
                "azurerm_subnet.sn-aci"
              ]
            }
          },
          "mode": "managed",
          "name": "nsg-aci",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_network_security_group.nsg-public",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "security_rule": {
              "references": [
                "data.http.myip.response_body",
                "data.http.myip"
              ]
            }
          },
          "mode": "managed",
          "name": "nsg-public",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_public_ip.public_ip",
          "expressions": {
            "allocation_method": {
              "constant_value": "Static"
            },
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "sku": {
              "constant_value": "Standard"
            }
          },
          "mode": "managed",
          "name": "public_ip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.resource_group",
          "expressions": {
            "location": {
              "constant_value": "West US 2"
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            }
          },
          "mode": "managed",
          "name": "resource_group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_role_assignment.custom_role",
          "expressions": {
            "principal_id": {
              "references": [
                "azuread_service_principal.app.id",
                "azuread_service_principal.app"
              ]
            },
            "role_definition_id": {
              "references": [
                "azurerm_role_definition.custom_role.role_definition_resource_id",
                "azurerm_role_definition.custom_role"
              ]
            },
            "scope": {
              "references": [
                "data.azurerm_subscription.current.id",
                "data.azurerm_subscription.current"
              ]
            }
          },
          "mode": "managed",
          "name": "custom_role",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.storage",
          "expressions": {
            "principal_id": {
              "references": [
                "azuread_service_principal.app.id",
                "azuread_service_principal.app"
              ]
            },
            "role_definition_name": {
              "constant_value": "Storage Blob Data Reader"
            },
            "scope": {
              "references": [
                "data.azurerm_subscription.current.id",
                "data.azurerm_subscription.current"
              ]
            }
          },
          "mode": "managed",
          "name": "storage",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_definition.custom_role",
          "expressions": {
            "assignable_scopes": {
              "references": [
                "data.azurerm_subscription.current.id",
                "data.azurerm_subscription.current"
              ]
            },
            "name": {
              "references": [
                "var.app_name"
              ]
            },
            "permissions": [
              {
                "actions": {
                  "constant_value": [
                    "Microsoft.ContainerInstance/containerGroups/read",
                    "Microsoft.ContainerInstance/containerGroups/write",
                    "Microsoft.ContainerInstance/containerGroups/delete"
                  ]
                },
                "not_actions": {
                  "constant_value": []
                }
              }
            ],
            "scope": {
              "references": [
                "data.azurerm_subscription.current.id",
                "data.azurerm_subscription.current"
              ]
            }
          },
          "mode": "managed",
          "name": "custom_role",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_role_definition"
        },
        {
          "address": "azurerm_storage_account.aci_storage",
          "expressions": {
            "account_replication_type": {
              "constant_value": "LRS"
            },
            "account_tier": {
              "constant_value": "Standard"
            },
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "min_tls_version": {
              "constant_value": "TLS1_2"
            },
            "name": {
              "references": [
                "var.storage_account_name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            }
          },
          "mode": "managed",
          "name": "aci_storage",
          "provider_config_key": "azurerm",
          "schema_version": 4,
          "type": "azurerm_storage_account"
        },
        {
          "address": "azurerm_storage_share.container_share",
          "expressions": {
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "quota": {
              "constant_value": 100
            },
            "storage_account_name": {
              "references": [
                "azurerm_storage_account.aci_storage.name",
                "azurerm_storage_account.aci_storage"
              ]
            }
          },
          "mode": "managed",
          "name": "container_share",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_storage_share"
        },
        {
          "address": "azurerm_subnet.sn-aci",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.10.0/24"
              ]
            },
            "delegation": [
              {
                "name": {
                  "constant_value": "acidelegationservice"
                },
                "service_delegation": [
                  {
                    "actions": {
                      "constant_value": [
                        "Microsoft.Network/virtualNetworks/subnets/action"
                      ]
                    },
                    "name": {
                      "constant_value": "Microsoft.ContainerInstance/containerGroups"
                    }
                  }
                ]
              }
            ],
            "name": {
              "constant_value": "aci"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "service_endpoints": {
              "constant_value": [
                "Microsoft.Storage",
                "Microsoft.KeyVault"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.virtual_network.name",
                "azurerm_virtual_network.virtual_network"
              ]
            }
          },
          "mode": "managed",
          "name": "sn-aci",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.sn-public",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.20.0/24"
              ]
            },
            "name": {
              "constant_value": "public"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.virtual_network.name",
                "azurerm_virtual_network.virtual_network"
              ]
            }
          },
          "mode": "managed",
          "name": "sn-public",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.nsg-aci.id",
                "azurerm_network_security_group.nsg-aci"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.sn-aci.id",
                "azurerm_subnet.sn-aci"
              ]
            }
          },
          "mode": "managed",
          "name": "sn-nsg-aci",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.nsg-public.id",
                "azurerm_network_security_group.nsg-public"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.sn-public.id",
                "azurerm_subnet.sn-public"
              ]
            }
          },
          "mode": "managed",
          "name": "sn-nsg-public",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
        },
        {
          "address": "azurerm_virtual_network.virtual_network",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.0.0.0/16"
              ]
            },
            "dns_servers": {
              "constant_value": [
                "10.0.0.4",
                "10.0.0.5"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.resource_group.location",
                "azurerm_resource_group.resource_group"
              ]
            },
            "name": {
              "references": [
                "var.app_name",
                "var.app_environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "tags": {
              "references": [
                "var.app_environment"
              ]
            }
          },
          "mode": "managed",
          "name": "virtual_network",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        },
        {
          "address": "data.azuread_client_config.current",
          "mode": "data",
          "name": "current",
          "provider_config_key": "azuread",
          "schema_version": 0,
          "type": "azuread_client_config"
        },
        {
          "address": "data.azurerm_client_config.current",
          "mode": "data",
          "name": "current",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_client_config"
        },
        {
          "address": "data.azurerm_subscription.current",
          "mode": "data",
          "name": "current",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subscription"
        },
        {
          "address": "data.http.myip",
          "expressions": {
            "url": {
              "constant_value": "http://ipv4.icanhazip.com"
            }
          },
          "mode": "data",
          "name": "myip",
          "provider_config_key": "http",
          "schema_version": 0,
          "type": "http"
        }
      ],
      "variables": {
        "app_environment": {
          "default": "production",
          "description": "Application Environment"
        },
        "app_name": {
          "default": "mage-data-prep",
          "description": "Application Name"
        },
        "container_cpu": {
          "default": "2",
          "description": "Container cpu"
        },
        "container_memory": {
          "default": "2",
          "description": "Container memory"
        },
        "docker_image": {
          "default": "mageai/mageai:latest",
          "description": "Docker image url."
        },
        "key_vault_name": {
          "default": "magedataprepkeyvault",
          "description": "Key vault name. It must be globally unique across Azure."
        },
        "storage_account_name": {
          "default": "magedataprepstorage",
          "description": "Storage account name. It must be globally unique across Azure."
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "id": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "ip": {
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
      "id": {
        "sensitive": false
      },
      "ip": {
        "sensitive": false
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azuread_application.app",
          "mode": "managed",
          "name": "app",
          "provider_name": "registry.terraform.io/hashicorp/azuread",
          "schema_version": 2,
          "sensitive_values": {
            "api": [],
            "app_role": [],
            "app_role_ids": {},
            "feature_tags": [],
            "oauth2_permission_scope_ids": {},
            "optional_claims": [],
            "owners": [
              false
            ],
            "password": [],
            "public_client": [],
            "required_resource_access": [],
            "single_page_application": [],
            "tags": [],
            "web": []
          },
          "type": "azuread_application",
          "values": {
            "api": [],
            "app_role": [],
            "description": null,
            "device_only_auth_enabled": null,
            "display_name": "mage-data-prep-app",
            "fallback_public_client_enabled": null,
            "group_membership_claims": null,
            "identifier_uris": null,
            "logo_image": null,
            "marketing_url": null,
            "notes": null,
            "oauth2_post_response_required": null,
            "optional_claims": [],
            "owners": [
              "62e5370a-2bf4-4734-8511-cc798825f062"
            ],
            "prevent_duplicate_names": false,
            "privacy_statement_url": null,
            "public_client": [],
            "required_resource_access": [],
            "service_management_reference": null,
            "sign_in_audience": "AzureADMyOrg",
            "single_page_application": [],
            "support_url": null,
            "terms_of_service_url": null,
            "timeouts": null,
            "web": []
          }
        },
        {
          "address": "azuread_service_principal.app",
          "mode": "managed",
          "name": "app",
          "provider_name": "registry.terraform.io/hashicorp/azuread",
          "schema_version": 0,
          "sensitive_values": {
            "app_role_ids": {},
            "app_roles": [],
            "feature_tags": [],
            "features": [],
            "oauth2_permission_scope_ids": {},
            "oauth2_permission_scopes": [],
            "owners": [
              false
            ],
            "redirect_uris": [],
            "saml_single_sign_on": [],
            "service_principal_names": [],
            "tags": []
          },
          "type": "azuread_service_principal",
          "values": {
            "account_enabled": true,
            "alternative_names": null,
            "app_role_assignment_required": false,
            "description": null,
            "login_url": null,
            "notes": null,
            "notification_email_addresses": null,
            "owners": [
              "62e5370a-2bf4-4734-8511-cc798825f062"
            ],
            "preferred_single_sign_on_mode": null,
            "saml_single_sign_on": [],
            "timeouts": null,
            "use_existing": null
          }
        },
        {
          "address": "azuread_service_principal_password.app",
          "mode": "managed",
          "name": "app",
          "provider_name": "registry.terraform.io/hashicorp/azuread",
          "schema_version": 1,
          "sensitive_values": {
            "value": true
          },
          "type": "azuread_service_principal_password",
          "values": {
            "end_date_relative": null,
            "rotate_when_changed": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_application_gateway.network",
          "mode": "managed",
          "name": "network",
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
                "name": "mage-data-prep-production-backend-pool"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "mage-data-prep-production-http-setting",
                "path": "",
                "pick_host_name_from_backend_address": false,
                "port": 6789,
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
                "name": "mage-data-prep-production-frontend-ip-config",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "mage-data-prep-production-frontend-port",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "mage-data-prep-production-ip-configuration"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "mage-data-prep-production-frontend-ip-config",
                "frontend_port_name": "mage-data-prep-production-frontend-port",
                "host_name": "",
                "host_names": [],
                "name": "mage-data-prep-production-listener",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "westus2",
            "name": "mage-data-prep-production-app-gateway",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "mage-data-prep-production-backend-pool",
                "backend_http_settings_name": "mage-data-prep-production-http-setting",
                "http_listener_name": "mage-data-prep-production-listener",
                "name": "mage-data-prep-production-routing-rule",
                "priority": 10,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "mage-data-prep-production",
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
          "address": "azurerm_container_group.container_group",
          "mode": "managed",
          "name": "container_group",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "container": [
              {
                "commands": [],
                "environment_variables": {},
                "gpu": [],
                "gpu_limit": [],
                "liveness_probe": [],
                "ports": [
                  {}
                ],
                "readiness_probe": [],
                "secure_environment_variables": true,
                "security": [],
                "volume": [
                  {
                    "git_repo": [],
                    "secret": true,
                    "storage_account_key": true
                  }
                ]
              }
            ],
            "diagnostics": [],
            "dns_config": [],
            "exposed_port": [],
            "identity": [],
            "image_registry_credential": [],
            "init_container": [],
            "subnet_ids": [],
            "tags": {}
          },
          "type": "azurerm_container_group",
          "values": {
            "container": [
              {
                "cpu": 2,
                "cpu_limit": null,
                "gpu": [],
                "gpu_limit": [],
                "image": "mageai/mageai:latest",
                "liveness_probe": [],
                "memory": 2,
                "memory_limit": null,
                "name": "mage-data-prep-production-container",
                "ports": [
                  {
                    "port": 6789,
                    "protocol": "TCP"
                  }
                ],
                "readiness_probe": [],
                "secure_environment_variables": null,
                "security": [],
                "volume": [
                  {
                    "empty_dir": false,
                    "git_repo": [],
                    "mount_path": "/home/src",
                    "name": "mage-data-prep-fs",
                    "read_only": false,
                    "secret": null,
                    "share_name": "mage-data-prep-production-data",
                    "storage_account_name": "magedataprepstorage"
                  }
                ]
              }
            ],
            "diagnostics": [],
            "dns_config": [],
            "dns_name_label": null,
            "dns_name_label_reuse_policy": "Unsecure",
            "identity": [],
            "image_registry_credential": [],
            "init_container": [],
            "ip_address_type": "Private",
            "key_vault_key_id": null,
            "key_vault_user_assigned_identity_id": null,
            "location": "westus2",
            "name": "mage-data-prep-production",
            "os_type": "Linux",
            "priority": null,
            "resource_group_name": "mage-data-prep-production",
            "restart_policy": "Always",
            "sku": "Standard",
            "tags": {
              "Environment": "production"
            },
            "timeouts": null,
            "zones": null
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
                "certificate_permissions": [
                  false,
                  false
                ],
                "key_permissions": [
                  false,
                  false
                ],
                "secret_permissions": [
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
                "certificate_permissions": [
                  "Get",
                  "List"
                ],
                "key_permissions": [
                  "Get",
                  "List"
                ],
                "secret_permissions": [
                  "Get",
                  "List"
                ],
                "storage_permissions": null,
                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
              }
            ],
            "enable_rbac_authorization": null,
            "enabled_for_deployment": null,
            "enabled_for_disk_encryption": true,
            "enabled_for_template_deployment": null,
            "location": "westus2",
            "name": "magedataprepkeyvault",
            "public_network_access_enabled": true,
            "purge_protection_enabled": false,
            "resource_group_name": "mage-data-prep-production",
            "sku_name": "standard",
            "soft_delete_retention_days": 7,
            "tags": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_profile.containergroup_profile",
          "mode": "managed",
          "name": "containergroup_profile",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "container_network_interface": [
              {
                "ip_configuration": [
                  {}
                ]
              }
            ],
            "container_network_interface_ids": []
          },
          "type": "azurerm_network_profile",
          "values": {
            "container_network_interface": [
              {
                "ip_configuration": [
                  {
                    "name": "aciipconfig"
                  }
                ],
                "name": "mage-data-prep-production-nic"
              }
            ],
            "location": "westus2",
            "name": "mage-data-prep-production-profile",
            "resource_group_name": "mage-data-prep-production",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.nsg-aci",
          "mode": "managed",
          "name": "nsg-aci",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "security_rule": [
              {
                "destination_address_prefixes": [
                  false
                ],
                "destination_application_security_group_ids": [],
                "destination_port_ranges": [
                  false,
                  false,
                  false,
                  false,
                  false
                ],
                "source_address_prefixes": [
                  false
                ],
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
            "location": "westus2",
            "name": "mage-data-prep-production-nsg-aci",
            "resource_group_name": "mage-data-prep-production",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "",
                "destination_address_prefixes": [
                  "10.0.10.0/24"
                ],
                "destination_application_security_group_ids": [],
                "destination_port_range": "",
                "destination_port_ranges": [
                  "22",
                  "443",
                  "445",
                  "6789",
                  "8000"
                ],
                "direction": "Inbound",
                "name": "from-gateway-subnet",
                "priority": 100,
                "protocol": "Tcp",
                "source_address_prefix": "",
                "source_address_prefixes": [
                  "10.0.20.0/24"
                ],
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
                "destination_port_range": "*",
                "destination_port_ranges": [],
                "direction": "Outbound",
                "name": "to-internet",
                "priority": 100,
                "protocol": "Tcp",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              },
              {
                "access": "Deny",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "*",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "DenyAllInBound-Override",
                "priority": 900,
                "protocol": "*",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              },
              {
                "access": "Deny",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "*",
                "destination_port_ranges": [],
                "direction": "Outbound",
                "name": "DenyAllOutBound-Override",
                "priority": 900,
                "protocol": "*",
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
          "address": "azurerm_network_security_group.nsg-public",
          "mode": "managed",
          "name": "nsg-public",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "security_rule": [
              {
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_ranges": [
                  false
                ],
                "source_address_prefixes": [
                  false
                ],
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
            "location": "westus2",
            "name": "mage-data-prep-production-nsg-public",
            "resource_group_name": "mage-data-prep-production",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "",
                "destination_port_ranges": [
                  "80"
                ],
                "direction": "Inbound",
                "name": "whitelist-inbound-ip",
                "priority": 100,
                "protocol": "Tcp",
                "source_address_prefix": "",
                "source_address_prefixes": [
                  "128.42.61.9/32"
                ],
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
                "destination_port_range": "65200-65535",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowInfraComms",
                "priority": 200,
                "protocol": "Tcp",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              },
              {
                "access": "Deny",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "*",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "DenyAllInBound-Override",
                "priority": 900,
                "protocol": "*",
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
          "address": "azurerm_public_ip.public_ip",
          "mode": "managed",
          "name": "public_ip",
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
            "location": "westus2",
            "name": "mage-data-prep-production-public-ip",
            "public_ip_prefix_id": null,
            "resource_group_name": "mage-data-prep-production",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_resource_group.resource_group",
          "mode": "managed",
          "name": "resource_group",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "westus2",
            "managed_by": null,
            "name": "mage-data-prep-production",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.custom_role",
          "mode": "managed",
          "name": "custom_role",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.storage",
          "mode": "managed",
          "name": "storage",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Storage Blob Data Reader",
            "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_definition.custom_role",
          "mode": "managed",
          "name": "custom_role",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "assignable_scopes": [
              false
            ],
            "permissions": [
              {
                "actions": [
                  false,
                  false,
                  false
                ],
                "not_actions": []
              }
            ]
          },
          "type": "azurerm_role_definition",
          "values": {
            "assignable_scopes": [
              "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a"
            ],
            "description": null,
            "name": "mage-data-prep-custom-role",
            "permissions": [
              {
                "actions": [
                  "Microsoft.ContainerInstance/containerGroups/read",
                  "Microsoft.ContainerInstance/containerGroups/write",
                  "Microsoft.ContainerInstance/containerGroups/delete"
                ],
                "data_actions": null,
                "not_actions": [],
                "not_data_actions": null
              }
            ],
            "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_storage_account.aci_storage",
          "mode": "managed",
          "name": "aci_storage",
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
            "allow_nested_items_to_be_public": true,
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
            "location": "westus2",
            "min_tls_version": "TLS1_2",
            "name": "magedataprepstorage",
            "nfsv3_enabled": false,
            "public_network_access_enabled": true,
            "queue_encryption_key_type": "Service",
            "resource_group_name": "mage-data-prep-production",
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
          "address": "azurerm_storage_share.container_share",
          "mode": "managed",
          "name": "container_share",
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
            "name": "mage-data-prep-production-data",
            "quota": 100,
            "storage_account_name": "magedataprepstorage",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.sn-aci",
          "mode": "managed",
          "name": "sn-aci",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "address_prefixes": [
              false
            ],
            "delegation": [
              {
                "service_delegation": [
                  {
                    "actions": [
                      false
                    ]
                  }
                ]
              }
            ],
            "service_endpoints": [
              false,
              false
            ]
          },
          "type": "azurerm_subnet",
          "values": {
            "address_prefixes": [
              "10.0.10.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [
              {
                "name": "acidelegationservice",
                "service_delegation": [
                  {
                    "actions": [
                      "Microsoft.Network/virtualNetworks/subnets/action"
                    ],
                    "name": "Microsoft.ContainerInstance/containerGroups"
                  }
                ]
              }
            ],
            "name": "aci",
            "resource_group_name": "mage-data-prep-production",
            "service_endpoint_policy_ids": null,
            "service_endpoints": [
              "Microsoft.KeyVault",
              "Microsoft.Storage"
            ],
            "timeouts": null,
            "virtual_network_name": "mage-data-prep-production"
          }
        },
        {
          "address": "azurerm_subnet.sn-public",
          "mode": "managed",
          "name": "sn-public",
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
              "10.0.20.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "public",
            "resource_group_name": "mage-data-prep-production",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "mage-data-prep-production"
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
          "mode": "managed",
          "name": "sn-nsg-aci",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
          "mode": "managed",
          "name": "sn-nsg-public",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_virtual_network.virtual_network",
          "mode": "managed",
          "name": "virtual_network",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "address_space": [
              false
            ],
            "ddos_protection_plan": [],
            "dns_servers": [
              false,
              false
            ],
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
            "dns_servers": [
              "10.0.0.4",
              "10.0.0.5"
            ],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "westus2",
            "name": "mage-data-prep-production",
            "resource_group_name": "mage-data-prep-production",
            "tags": {
              "Environment": "production"
            },
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
        "resources": [
          {
            "address": "data.azuread_client_config.current",
            "mode": "data",
            "name": "current",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "schema_version": 0,
            "sensitive_values": {},
            "type": "azuread_client_config",
            "values": {
              "client_id": "04b07795-8ddb-461a-bbee-02f9e1bf7b46",
              "id": "e66e77b4-5724-44d7-8721-06df160450ce-04b07795-8ddb-461a-bbee-02f9e1bf7b46-62e5370a-2bf4-4734-8511-cc798825f062",
              "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
              "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
              "timeouts": null
            }
          },
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
          },
          {
            "address": "data.azurerm_subscription.current",
            "mode": "data",
            "name": "current",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "schema_version": 0,
            "sensitive_values": {
              "tags": {}
            },
            "type": "azurerm_subscription",
            "values": {
              "display_name": "UM-Campus-secure-systems-01",
              "id": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
              "location_placement_id": "Public_2014-09-01",
              "quota_id": "EnterpriseAgreement_2014-09-01",
              "spending_limit": "Off",
              "state": "Enabled",
              "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
              "tags": {},
              "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
              "timeouts": null
            }
          },
          {
            "address": "data.http.myip",
            "mode": "data",
            "name": "myip",
            "provider_name": "registry.terraform.io/hashicorp/http",
            "schema_version": 0,
            "sensitive_values": {
              "response_headers": {}
            },
            "type": "http",
            "values": {
              "body": "128.42.61.9\n",
              "ca_cert_pem": null,
              "id": "http://ipv4.icanhazip.com",
              "insecure": null,
              "method": null,
              "request_body": null,
              "request_headers": null,
              "request_timeout_ms": null,
              "response_body": "128.42.61.9\n",
              "response_body_base64": "MTI4LjQyLjYxLjkK",
              "response_headers": {
                "Access-Control-Allow-Methods": "GET",
                "Access-Control-Allow-Origin": "*",
                "Alt-Svc": "h3=\":443\"; ma=86400",
                "Cf-Ray": "8b458248e99fe5bd-DFW",
                "Connection": "keep-alive",
                "Content-Length": "12",
                "Content-Type": "text/plain",
                "Date": "Sat, 17 Aug 2024 00:22:17 GMT",
                "Server": "cloudflare",
                "Set-Cookie": "__cf_bm=abhxoWwjWq8xd39tFTl21x7d.ZR6PgaegobpD4OUtYc-1723854137-1.0.1.1-TYoXMCXCuYledNdMNgwOe.Y8ilRlzM2Rs82SSLo2_wa3HhUoXQM0oxalLIf1hlX9vUruNuf4Rj7tHyR6JyKCyQ; path=/; expires=Sat, 17-Aug-24 00:52:17 GMT; domain=.icanhazip.com; HttpOnly",
                "Vary": "Accept-Encoding"
              },
              "retry": null,
              "status_code": 200,
              "url": "http://ipv4.icanhazip.com"
            }
          }
        ]
      }
    }
  },
  "relevant_attributes": [
    {
      "attribute": [
        "application_id"
      ],
      "resource": "azuread_application.app"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.nsg-public"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "data.azurerm_subscription.current"
    },
    {
      "attribute": [
        "role_definition_resource_id"
      ],
      "resource": "azurerm_role_definition.custom_role"
    },
    {
      "attribute": [
        "application_id"
      ],
      "resource": "azuread_service_principal.app"
    },
    {
      "attribute": [
        "subscription_id"
      ],
      "resource": "data.azurerm_subscription.current"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.public_ip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azuread_service_principal.app"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.sn-aci"
    },
    {
      "attribute": [
        "value"
      ],
      "resource": "azuread_service_principal_password.app"
    },
    {
      "attribute": [
        "response_body"
      ],
      "resource": "data.http.myip"
    },
    {
      "attribute": [
        "address_prefixes"
      ],
      "resource": "azurerm_subnet.sn-public"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.resource_group"
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
      "resource": "azurerm_subnet.sn-public"
    },
    {
      "attribute": [
        "address_prefixes"
      ],
      "resource": "azurerm_subnet.sn-aci"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.nsg-aci"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_storage_share.container_share"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_container_group.container_group"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_storage_account.aci_storage"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.public_ip"
    },
    {
      "attribute": [
        "object_id"
      ],
      "resource": "data.azuread_client_config.current"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.resource_group"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.virtual_network"
    },
    {
      "attribute": [
        "primary_access_key"
      ],
      "resource": "azurerm_storage_account.aci_storage"
    },
    {
      "attribute": [
        "application_tenant_id"
      ],
      "resource": "azuread_service_principal.app"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_container_group.container_group"
    }
  ],
  "resource_changes": [
    {
      "address": "azuread_application.app",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "api": [],
          "app_role": [],
          "description": null,
          "device_only_auth_enabled": null,
          "display_name": "mage-data-prep-app",
          "fallback_public_client_enabled": null,
          "group_membership_claims": null,
          "identifier_uris": null,
          "logo_image": null,
          "marketing_url": null,
          "notes": null,
          "oauth2_post_response_required": null,
          "optional_claims": [],
          "owners": [
            "62e5370a-2bf4-4734-8511-cc798825f062"
          ],
          "prevent_duplicate_names": false,
          "privacy_statement_url": null,
          "public_client": [],
          "required_resource_access": [],
          "service_management_reference": null,
          "sign_in_audience": "AzureADMyOrg",
          "single_page_application": [],
          "support_url": null,
          "terms_of_service_url": null,
          "timeouts": null,
          "web": []
        },
        "after_sensitive": {
          "api": [],
          "app_role": [],
          "app_role_ids": {},
          "feature_tags": [],
          "oauth2_permission_scope_ids": {},
          "optional_claims": [],
          "owners": [
            false
          ],
          "password": [],
          "public_client": [],
          "required_resource_access": [],
          "single_page_application": [],
          "tags": [],
          "web": []
        },
        "after_unknown": {
          "api": [],
          "app_role": [],
          "app_role_ids": true,
          "application_id": true,
          "client_id": true,
          "disabled_by_microsoft": true,
          "feature_tags": true,
          "id": true,
          "logo_url": true,
          "oauth2_permission_scope_ids": true,
          "object_id": true,
          "optional_claims": [],
          "owners": [
            false
          ],
          "password": true,
          "public_client": [],
          "publisher_domain": true,
          "required_resource_access": [],
          "single_page_application": [],
          "tags": true,
          "template_id": true,
          "web": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "app",
      "provider_name": "registry.terraform.io/hashicorp/azuread",
      "type": "azuread_application"
    },
    {
      "address": "azuread_service_principal.app",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "account_enabled": true,
          "alternative_names": null,
          "app_role_assignment_required": false,
          "description": null,
          "login_url": null,
          "notes": null,
          "notification_email_addresses": null,
          "owners": [
            "62e5370a-2bf4-4734-8511-cc798825f062"
          ],
          "preferred_single_sign_on_mode": null,
          "saml_single_sign_on": [],
          "timeouts": null,
          "use_existing": null
        },
        "after_sensitive": {
          "app_role_ids": {},
          "app_roles": [],
          "feature_tags": [],
          "features": [],
          "oauth2_permission_scope_ids": {},
          "oauth2_permission_scopes": [],
          "owners": [
            false
          ],
          "redirect_uris": [],
          "saml_single_sign_on": [],
          "service_principal_names": [],
          "tags": []
        },
        "after_unknown": {
          "app_role_ids": true,
          "app_roles": true,
          "application_id": true,
          "application_tenant_id": true,
          "client_id": true,
          "display_name": true,
          "feature_tags": true,
          "features": true,
          "homepage_url": true,
          "id": true,
          "logout_url": true,
          "oauth2_permission_scope_ids": true,
          "oauth2_permission_scopes": true,
          "object_id": true,
          "owners": [
            false
          ],
          "redirect_uris": true,
          "saml_metadata_url": true,
          "saml_single_sign_on": [],
          "service_principal_names": true,
          "sign_in_audience": true,
          "tags": true,
          "type": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "app",
      "provider_name": "registry.terraform.io/hashicorp/azuread",
      "type": "azuread_service_principal"
    },
    {
      "address": "azuread_service_principal_password.app",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "end_date_relative": null,
          "rotate_when_changed": null,
          "timeouts": null
        },
        "after_sensitive": {
          "value": true
        },
        "after_unknown": {
          "display_name": true,
          "end_date": true,
          "id": true,
          "key_id": true,
          "service_principal_id": true,
          "start_date": true,
          "value": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "app",
      "provider_name": "registry.terraform.io/hashicorp/azuread",
      "type": "azuread_service_principal_password"
    },
    {
      "address": "azurerm_application_gateway.network",
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
              "name": "mage-data-prep-production-backend-pool"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "mage-data-prep-production-http-setting",
              "path": "",
              "pick_host_name_from_backend_address": false,
              "port": 6789,
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
              "name": "mage-data-prep-production-frontend-ip-config",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "mage-data-prep-production-frontend-port",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "mage-data-prep-production-ip-configuration"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "mage-data-prep-production-frontend-ip-config",
              "frontend_port_name": "mage-data-prep-production-frontend-port",
              "host_name": "",
              "host_names": [],
              "name": "mage-data-prep-production-listener",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "westus2",
          "name": "mage-data-prep-production-app-gateway",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "mage-data-prep-production-backend-pool",
              "backend_http_settings_name": "mage-data-prep-production-http-setting",
              "http_listener_name": "mage-data-prep-production-listener",
              "name": "mage-data-prep-production-routing-rule",
              "priority": 10,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "mage-data-prep-production",
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
              "fqdns": [],
              "id": true,
              "ip_addresses": true
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
      "name": "network",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_container_group.container_group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "container": [
            {
              "cpu": 2,
              "cpu_limit": null,
              "gpu": [],
              "gpu_limit": [],
              "image": "mageai/mageai:latest",
              "liveness_probe": [],
              "memory": 2,
              "memory_limit": null,
              "name": "mage-data-prep-production-container",
              "ports": [
                {
                  "port": 6789,
                  "protocol": "TCP"
                }
              ],
              "readiness_probe": [],
              "secure_environment_variables": null,
              "security": [],
              "volume": [
                {
                  "empty_dir": false,
                  "git_repo": [],
                  "mount_path": "/home/src",
                  "name": "mage-data-prep-fs",
                  "read_only": false,
                  "secret": null,
                  "share_name": "mage-data-prep-production-data",
                  "storage_account_name": "magedataprepstorage"
                }
              ]
            }
          ],
          "diagnostics": [],
          "dns_config": [],
          "dns_name_label": null,
          "dns_name_label_reuse_policy": "Unsecure",
          "identity": [],
          "image_registry_credential": [],
          "init_container": [],
          "ip_address_type": "Private",
          "key_vault_key_id": null,
          "key_vault_user_assigned_identity_id": null,
          "location": "westus2",
          "name": "mage-data-prep-production",
          "os_type": "Linux",
          "priority": null,
          "resource_group_name": "mage-data-prep-production",
          "restart_policy": "Always",
          "sku": "Standard",
          "tags": {
            "Environment": "production"
          },
          "timeouts": null,
          "zones": null
        },
        "after_sensitive": {
          "container": [
            {
              "commands": [],
              "environment_variables": {},
              "gpu": [],
              "gpu_limit": [],
              "liveness_probe": [],
              "ports": [
                {}
              ],
              "readiness_probe": [],
              "secure_environment_variables": true,
              "security": [],
              "volume": [
                {
                  "git_repo": [],
                  "secret": true,
                  "storage_account_key": true
                }
              ]
            }
          ],
          "diagnostics": [],
          "dns_config": [],
          "exposed_port": [],
          "identity": [],
          "image_registry_credential": [],
          "init_container": [],
          "subnet_ids": [],
          "tags": {}
        },
        "after_unknown": {
          "container": [
            {
              "commands": true,
              "environment_variables": true,
              "gpu": [],
              "gpu_limit": [],
              "liveness_probe": [],
              "ports": [
                {}
              ],
              "readiness_probe": [],
              "security": [],
              "volume": [
                {
                  "git_repo": [],
                  "storage_account_key": true
                }
              ]
            }
          ],
          "diagnostics": [],
          "dns_config": [],
          "exposed_port": true,
          "fqdn": true,
          "id": true,
          "identity": [],
          "image_registry_credential": [],
          "init_container": [],
          "ip_address": true,
          "network_profile_id": true,
          "subnet_ids": true,
          "tags": {}
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "container_group",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_container_group"
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
              "certificate_permissions": [
                "Get",
                "List"
              ],
              "key_permissions": [
                "Get",
                "List"
              ],
              "secret_permissions": [
                "Get",
                "List"
              ],
              "storage_permissions": null,
              "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
            }
          ],
          "enable_rbac_authorization": null,
          "enabled_for_deployment": null,
          "enabled_for_disk_encryption": true,
          "enabled_for_template_deployment": null,
          "location": "westus2",
          "name": "magedataprepkeyvault",
          "public_network_access_enabled": true,
          "purge_protection_enabled": false,
          "resource_group_name": "mage-data-prep-production",
          "sku_name": "standard",
          "soft_delete_retention_days": 7,
          "tags": null,
          "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
          "timeouts": null
        },
        "after_sensitive": {
          "access_policy": [
            {
              "certificate_permissions": [
                false,
                false
              ],
              "key_permissions": [
                false,
                false
              ],
              "secret_permissions": [
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
              "certificate_permissions": [
                false,
                false
              ],
              "key_permissions": [
                false,
                false
              ],
              "object_id": true,
              "secret_permissions": [
                false,
                false
              ]
            }
          ],
          "contact": true,
          "id": true,
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
      "address": "azurerm_network_profile.containergroup_profile",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "container_network_interface": [
            {
              "ip_configuration": [
                {
                  "name": "aciipconfig"
                }
              ],
              "name": "mage-data-prep-production-nic"
            }
          ],
          "location": "westus2",
          "name": "mage-data-prep-production-profile",
          "resource_group_name": "mage-data-prep-production",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "container_network_interface": [
            {
              "ip_configuration": [
                {}
              ]
            }
          ],
          "container_network_interface_ids": []
        },
        "after_unknown": {
          "container_network_interface": [
            {
              "ip_configuration": [
                {
                  "subnet_id": true
                }
              ]
            }
          ],
          "container_network_interface_ids": true,
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "containergroup_profile",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_profile"
    },
    {
      "address": "azurerm_network_security_group.nsg-aci",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus2",
          "name": "mage-data-prep-production-nsg-aci",
          "resource_group_name": "mage-data-prep-production",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "",
              "destination_address_prefixes": [
                "10.0.10.0/24"
              ],
              "destination_application_security_group_ids": [],
              "destination_port_range": "",
              "destination_port_ranges": [
                "22",
                "443",
                "445",
                "6789",
                "8000"
              ],
              "direction": "Inbound",
              "name": "from-gateway-subnet",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "",
              "source_address_prefixes": [
                "10.0.20.0/24"
              ],
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
              "destination_port_range": "*",
              "destination_port_ranges": [],
              "direction": "Outbound",
              "name": "to-internet",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            },
            {
              "access": "Deny",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "*",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "DenyAllInBound-Override",
              "priority": 900,
              "protocol": "*",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            },
            {
              "access": "Deny",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "*",
              "destination_port_ranges": [],
              "direction": "Outbound",
              "name": "DenyAllOutBound-Override",
              "priority": 900,
              "protocol": "*",
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
              "destination_address_prefixes": [
                false
              ],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [
                false,
                false,
                false,
                false,
                false
              ],
              "source_address_prefixes": [
                false
              ],
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
              "destination_address_prefixes": [
                false
              ],
              "destination_application_security_group_ids": [],
              "destination_port_ranges": [
                false,
                false,
                false,
                false,
                false
              ],
              "source_address_prefixes": [
                false
              ],
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
      "name": "nsg-aci",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_network_security_group.nsg-public",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus2",
          "name": "mage-data-prep-production-nsg-public",
          "resource_group_name": "mage-data-prep-production",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "",
              "destination_port_ranges": [
                "80"
              ],
              "direction": "Inbound",
              "name": "whitelist-inbound-ip",
              "priority": 100,
              "protocol": "Tcp",
              "source_address_prefix": "",
              "source_address_prefixes": [
                "128.42.61.9/32"
              ],
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
              "destination_port_range": "65200-65535",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowInfraComms",
              "priority": 200,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            },
            {
              "access": "Deny",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "*",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "DenyAllInBound-Override",
              "priority": 900,
              "protocol": "*",
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
              "destination_port_ranges": [
                false
              ],
              "source_address_prefixes": [
                false
              ],
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
              "destination_port_ranges": [
                false
              ],
              "source_address_prefixes": [
                false
              ],
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
      "name": "nsg-public",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
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
          "location": "westus2",
          "name": "mage-data-prep-production-public-ip",
          "public_ip_prefix_id": null,
          "resource_group_name": "mage-data-prep-production",
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
      "name": "public_ip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_resource_group.resource_group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus2",
          "managed_by": null,
          "name": "mage-data-prep-production",
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
      "name": "resource_group",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_role_assignment.custom_role",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "role_definition_name": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "custom_role",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.storage",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Storage Blob Data Reader",
          "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "storage",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_definition.custom_role",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "assignable_scopes": [
            "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a"
          ],
          "description": null,
          "name": "mage-data-prep-custom-role",
          "permissions": [
            {
              "actions": [
                "Microsoft.ContainerInstance/containerGroups/read",
                "Microsoft.ContainerInstance/containerGroups/write",
                "Microsoft.ContainerInstance/containerGroups/delete"
              ],
              "data_actions": null,
              "not_actions": [],
              "not_data_actions": null
            }
          ],
          "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
          "timeouts": null
        },
        "after_sensitive": {
          "assignable_scopes": [
            false
          ],
          "permissions": [
            {
              "actions": [
                false,
                false,
                false
              ],
              "not_actions": []
            }
          ]
        },
        "after_unknown": {
          "assignable_scopes": [
            false
          ],
          "id": true,
          "permissions": [
            {
              "actions": [
                false,
                false,
                false
              ],
              "not_actions": []
            }
          ],
          "role_definition_id": true,
          "role_definition_resource_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "custom_role",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_definition"
    },
    {
      "address": "azurerm_storage_account.aci_storage",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "account_kind": "StorageV2",
          "account_replication_type": "LRS",
          "account_tier": "Standard",
          "allow_nested_items_to_be_public": true,
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
          "location": "westus2",
          "min_tls_version": "TLS1_2",
          "name": "magedataprepstorage",
          "nfsv3_enabled": false,
          "public_network_access_enabled": true,
          "queue_encryption_key_type": "Service",
          "resource_group_name": "mage-data-prep-production",
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
      "name": "aci_storage",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_storage_account"
    },
    {
      "address": "azurerm_storage_share.container_share",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "acl": [],
          "enabled_protocol": "SMB",
          "name": "mage-data-prep-production-data",
          "quota": 100,
          "storage_account_name": "magedataprepstorage",
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
      "name": "container_share",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_storage_share"
    },
    {
      "address": "azurerm_subnet.sn-aci",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.10.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [
            {
              "name": "acidelegationservice",
              "service_delegation": [
                {
                  "actions": [
                    "Microsoft.Network/virtualNetworks/subnets/action"
                  ],
                  "name": "Microsoft.ContainerInstance/containerGroups"
                }
              ]
            }
          ],
          "name": "aci",
          "resource_group_name": "mage-data-prep-production",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.KeyVault",
            "Microsoft.Storage"
          ],
          "timeouts": null,
          "virtual_network_name": "mage-data-prep-production"
        },
        "after_sensitive": {
          "address_prefixes": [
            false
          ],
          "delegation": [
            {
              "service_delegation": [
                {
                  "actions": [
                    false
                  ]
                }
              ]
            }
          ],
          "service_endpoints": [
            false,
            false
          ]
        },
        "after_unknown": {
          "address_prefixes": [
            false
          ],
          "delegation": [
            {
              "service_delegation": [
                {
                  "actions": [
                    false
                  ]
                }
              ]
            }
          ],
          "enforce_private_link_endpoint_network_policies": true,
          "enforce_private_link_service_network_policies": true,
          "id": true,
          "private_endpoint_network_policies": true,
          "private_endpoint_network_policies_enabled": true,
          "private_link_service_network_policies_enabled": true,
          "service_endpoints": [
            false,
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "sn-aci",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.sn-public",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.20.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "public",
          "resource_group_name": "mage-data-prep-production",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "mage-data-prep-production"
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
      "name": "sn-public",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.sn-nsg-aci",
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
      "name": "sn-nsg-aci",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.sn-nsg-public",
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
      "name": "sn-nsg-public",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_virtual_network.virtual_network",
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
          "dns_servers": [
            "10.0.0.4",
            "10.0.0.5"
          ],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "westus2",
          "name": "mage-data-prep-production",
          "resource_group_name": "mage-data-prep-production",
          "tags": {
            "Environment": "production"
          },
          "timeouts": null
        },
        "after_sensitive": {
          "address_space": [
            false
          ],
          "ddos_protection_plan": [],
          "dns_servers": [
            false,
            false
          ],
          "encryption": [],
          "subnet": [],
          "tags": {}
        },
        "after_unknown": {
          "address_space": [
            false
          ],
          "ddos_protection_plan": [],
          "dns_servers": [
            false,
            false
          ],
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
      "name": "virtual_network",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:10:09Z",
  "variables": {
    "app_environment": {
      "value": "production"
    },
    "app_name": {
      "value": "mage-data-prep"
    },
    "container_cpu": {
      "value": "2"
    },
    "container_memory": {
      "value": "2"
    },
    "docker_image": {
      "value": "mageai/mageai:latest"
    },
    "key_vault_name": {
      "value": "magedataprepkeyvault"
    },
    "storage_account_name": {
      "value": "magedataprepstorage"
    }
  }
}

