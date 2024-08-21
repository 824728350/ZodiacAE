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
      "helm": {
        "expressions": {
          "kubernetes": [
            {
              "client_certificate": {
                "references": [
                  "azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate",
                  "azurerm_kubernetes_cluster.cluster.kube_config[0]",
                  "azurerm_kubernetes_cluster.cluster.kube_config",
                  "azurerm_kubernetes_cluster.cluster"
                ]
              },
              "client_key": {
                "references": [
                  "azurerm_kubernetes_cluster.cluster.kube_config[0].client_key",
                  "azurerm_kubernetes_cluster.cluster.kube_config[0]",
                  "azurerm_kubernetes_cluster.cluster.kube_config",
                  "azurerm_kubernetes_cluster.cluster"
                ]
              },
              "cluster_ca_certificate": {
                "references": [
                  "azurerm_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate",
                  "azurerm_kubernetes_cluster.cluster.kube_config[0]",
                  "azurerm_kubernetes_cluster.cluster.kube_config",
                  "azurerm_kubernetes_cluster.cluster"
                ]
              },
              "host": {
                "references": [
                  "azurerm_kubernetes_cluster.cluster.kube_config[0].host",
                  "azurerm_kubernetes_cluster.cluster.kube_config[0]",
                  "azurerm_kubernetes_cluster.cluster.kube_config",
                  "azurerm_kubernetes_cluster.cluster"
                ]
              }
            }
          ]
        },
        "full_name": "registry.terraform.io/hashicorp/helm",
        "name": "helm"
      },
      "module.bugservicedb:random": {
        "full_name": "registry.terraform.io/hashicorp/random",
        "module_address": "module.bugservicedb",
        "name": "random"
      },
      "module.userservicedb:random": {
        "full_name": "registry.terraform.io/hashicorp/random",
        "module_address": "module.userservicedb",
        "name": "random"
      }
    },
    "root_module": {
      "module_calls": {
        "bugservicedb": {
          "expressions": {
            "database_name": {
              "constant_value": "bugs"
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group": {
              "references": [
                "azurerm_resource_group.group"
              ]
            },
            "subnet_prefix": {
              "constant_value": "10.1.3.0/24"
            },
            "virtual_network": {
              "references": [
                "azurerm_virtual_network.network"
              ]
            }
          },
          "module": {
            "outputs": {
              "connection_string": {
                "description": "The connection string to use when connecting to the PostgreSQL server",
                "expression": {
                  "references": [
                    "azurerm_postgresql_flexible_server.server.fqdn",
                    "azurerm_postgresql_flexible_server.server",
                    "azurerm_postgresql_flexible_server_database.database.name",
                    "azurerm_postgresql_flexible_server_database.database",
                    "azurerm_postgresql_flexible_server.server.administrator_login",
                    "azurerm_postgresql_flexible_server.server",
                    "random_password.password.result",
                    "random_password.password"
                  ]
                },
                "sensitive": true
              }
            },
            "resources": [
              {
                "address": "azurerm_postgresql_flexible_server.server",
                "depends_on": [
                  "azurerm_private_dns_zone_virtual_network_link.network_link"
                ],
                "expressions": {
                  "administrator_login": {
                    "constant_value": "psqladmin"
                  },
                  "administrator_password": {
                    "references": [
                      "random_password.password.result",
                      "random_password.password"
                    ]
                  },
                  "delegated_subnet_id": {
                    "references": [
                      "azurerm_subnet.subnet.id",
                      "azurerm_subnet.subnet"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.resource_group.location",
                      "var.resource_group"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "private_dns_zone_id": {
                    "references": [
                      "azurerm_private_dns_zone.private_dns_zone.id",
                      "azurerm_private_dns_zone.private_dns_zone"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "sku_name": {
                    "constant_value": "GP_Standard_D2s_v3"
                  },
                  "storage_mb": {
                    "constant_value": 32768
                  },
                  "version": {
                    "constant_value": "12"
                  },
                  "zone": {
                    "constant_value": "3"
                  }
                },
                "mode": "managed",
                "name": "server",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_postgresql_flexible_server"
              },
              {
                "address": "azurerm_postgresql_flexible_server_database.database",
                "expressions": {
                  "name": {
                    "references": [
                      "var.database_name"
                    ]
                  },
                  "server_id": {
                    "references": [
                      "azurerm_postgresql_flexible_server.server.id",
                      "azurerm_postgresql_flexible_server.server"
                    ]
                  }
                },
                "mode": "managed",
                "name": "database",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_postgresql_flexible_server_database"
              },
              {
                "address": "azurerm_private_dns_zone.private_dns_zone",
                "expressions": {
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  }
                },
                "mode": "managed",
                "name": "private_dns_zone",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_private_dns_zone"
              },
              {
                "address": "azurerm_private_dns_zone_virtual_network_link.network_link",
                "depends_on": [
                  "azurerm_subnet.subnet"
                ],
                "expressions": {
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "private_dns_zone_name": {
                    "references": [
                      "azurerm_private_dns_zone.private_dns_zone.name",
                      "azurerm_private_dns_zone.private_dns_zone"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "virtual_network_id": {
                    "references": [
                      "var.virtual_network.id",
                      "var.virtual_network"
                    ]
                  }
                },
                "mode": "managed",
                "name": "network_link",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_private_dns_zone_virtual_network_link"
              },
              {
                "address": "azurerm_subnet.subnet",
                "expressions": {
                  "address_prefixes": {
                    "references": [
                      "var.subnet_prefix"
                    ]
                  },
                  "delegation": [
                    {
                      "name": {
                        "constant_value": "fs"
                      },
                      "service_delegation": [
                        {
                          "actions": {
                            "constant_value": [
                              "Microsoft.Network/virtualNetworks/subnets/join/action"
                            ]
                          },
                          "name": {
                            "constant_value": "Microsoft.DBforPostgreSQL/flexibleServers"
                          }
                        }
                      ]
                    }
                  ],
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "service_endpoints": {
                    "constant_value": [
                      "Microsoft.Storage"
                    ]
                  },
                  "virtual_network_name": {
                    "references": [
                      "var.virtual_network.name",
                      "var.virtual_network"
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
                "address": "random_password.password",
                "expressions": {
                  "length": {
                    "constant_value": 16
                  },
                  "min_lower": {
                    "constant_value": 1
                  },
                  "min_numeric": {
                    "constant_value": 1
                  },
                  "min_special": {
                    "constant_value": 1
                  },
                  "min_upper": {
                    "constant_value": 1
                  },
                  "override_special": {
                    "constant_value": "!_%@"
                  },
                  "special": {
                    "constant_value": true
                  }
                },
                "mode": "managed",
                "name": "password",
                "provider_config_key": "module.bugservicedb:random",
                "schema_version": 3,
                "type": "random_password"
              }
            ],
            "variables": {
              "database_name": {
                "default": "jwtlhold",
                "description": "The name of the database to create"
              },
              "name": {
                "default": "b2p2hold",
                "description": "The name of the PostgreSQL server"
              },
              "resource_group": {
                "default": null,
                "description": "The resource group properties"
              },
              "subnet_prefix": {
                "default": "zodiac",
                "description": "The address prefix to use for the PostgreSQL subnet"
              },
              "virtual_network": {
                "default": null,
                "description": "values for the virtual network"
              }
            }
          },
          "source": "./postgresql"
        },
        "userservicedb": {
          "expressions": {
            "database_name": {
              "constant_value": "users"
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group",
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "subnet_prefix": {
              "constant_value": "10.1.2.0/24"
            },
            "virtual_network": {
              "references": [
                "azurerm_virtual_network.network.name",
                "azurerm_virtual_network.network",
                "azurerm_virtual_network.network.id",
                "azurerm_virtual_network.network"
              ]
            }
          },
          "module": {
            "outputs": {
              "connection_string": {
                "description": "The connection string to use when connecting to the PostgreSQL server",
                "expression": {
                  "references": [
                    "azurerm_postgresql_flexible_server.server.fqdn",
                    "azurerm_postgresql_flexible_server.server",
                    "azurerm_postgresql_flexible_server_database.database.name",
                    "azurerm_postgresql_flexible_server_database.database",
                    "azurerm_postgresql_flexible_server.server.administrator_login",
                    "azurerm_postgresql_flexible_server.server",
                    "random_password.password.result",
                    "random_password.password"
                  ]
                },
                "sensitive": true
              }
            },
            "resources": [
              {
                "address": "azurerm_postgresql_flexible_server.server",
                "depends_on": [
                  "azurerm_private_dns_zone_virtual_network_link.network_link"
                ],
                "expressions": {
                  "administrator_login": {
                    "constant_value": "psqladmin"
                  },
                  "administrator_password": {
                    "references": [
                      "random_password.password.result",
                      "random_password.password"
                    ]
                  },
                  "delegated_subnet_id": {
                    "references": [
                      "azurerm_subnet.subnet.id",
                      "azurerm_subnet.subnet"
                    ]
                  },
                  "location": {
                    "references": [
                      "var.resource_group.location",
                      "var.resource_group"
                    ]
                  },
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "private_dns_zone_id": {
                    "references": [
                      "azurerm_private_dns_zone.private_dns_zone.id",
                      "azurerm_private_dns_zone.private_dns_zone"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "sku_name": {
                    "constant_value": "GP_Standard_D2s_v3"
                  },
                  "storage_mb": {
                    "constant_value": 32768
                  },
                  "version": {
                    "constant_value": "12"
                  },
                  "zone": {
                    "constant_value": "3"
                  }
                },
                "mode": "managed",
                "name": "server",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_postgresql_flexible_server"
              },
              {
                "address": "azurerm_postgresql_flexible_server_database.database",
                "expressions": {
                  "name": {
                    "references": [
                      "var.database_name"
                    ]
                  },
                  "server_id": {
                    "references": [
                      "azurerm_postgresql_flexible_server.server.id",
                      "azurerm_postgresql_flexible_server.server"
                    ]
                  }
                },
                "mode": "managed",
                "name": "database",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_postgresql_flexible_server_database"
              },
              {
                "address": "azurerm_private_dns_zone.private_dns_zone",
                "expressions": {
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  }
                },
                "mode": "managed",
                "name": "private_dns_zone",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_private_dns_zone"
              },
              {
                "address": "azurerm_private_dns_zone_virtual_network_link.network_link",
                "depends_on": [
                  "azurerm_subnet.subnet"
                ],
                "expressions": {
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "private_dns_zone_name": {
                    "references": [
                      "azurerm_private_dns_zone.private_dns_zone.name",
                      "azurerm_private_dns_zone.private_dns_zone"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "virtual_network_id": {
                    "references": [
                      "var.virtual_network.id",
                      "var.virtual_network"
                    ]
                  }
                },
                "mode": "managed",
                "name": "network_link",
                "provider_config_key": "azurerm",
                "schema_version": 0,
                "type": "azurerm_private_dns_zone_virtual_network_link"
              },
              {
                "address": "azurerm_subnet.subnet",
                "expressions": {
                  "address_prefixes": {
                    "references": [
                      "var.subnet_prefix"
                    ]
                  },
                  "delegation": [
                    {
                      "name": {
                        "constant_value": "fs"
                      },
                      "service_delegation": [
                        {
                          "actions": {
                            "constant_value": [
                              "Microsoft.Network/virtualNetworks/subnets/join/action"
                            ]
                          },
                          "name": {
                            "constant_value": "Microsoft.DBforPostgreSQL/flexibleServers"
                          }
                        }
                      ]
                    }
                  ],
                  "name": {
                    "references": [
                      "var.name"
                    ]
                  },
                  "resource_group_name": {
                    "references": [
                      "var.resource_group.name",
                      "var.resource_group"
                    ]
                  },
                  "service_endpoints": {
                    "constant_value": [
                      "Microsoft.Storage"
                    ]
                  },
                  "virtual_network_name": {
                    "references": [
                      "var.virtual_network.name",
                      "var.virtual_network"
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
                "address": "random_password.password",
                "expressions": {
                  "length": {
                    "constant_value": 16
                  },
                  "min_lower": {
                    "constant_value": 1
                  },
                  "min_numeric": {
                    "constant_value": 1
                  },
                  "min_special": {
                    "constant_value": 1
                  },
                  "min_upper": {
                    "constant_value": 1
                  },
                  "override_special": {
                    "constant_value": "!_%@"
                  },
                  "special": {
                    "constant_value": true
                  }
                },
                "mode": "managed",
                "name": "password",
                "provider_config_key": "module.userservicedb:random",
                "schema_version": 3,
                "type": "random_password"
              }
            ],
            "variables": {
              "database_name": {
                "default": "jwtlhold",
                "description": "The name of the database to create"
              },
              "name": {
                "default": "b2p2hold",
                "description": "The name of the PostgreSQL server"
              },
              "resource_group": {
                "default": null,
                "description": "The resource group properties"
              },
              "subnet_prefix": {
                "default": "zodiac",
                "description": "The address prefix to use for the PostgreSQL subnet"
              },
              "virtual_network": {
                "default": null,
                "description": "values for the virtual network"
              }
            }
          },
          "source": "./postgresql"
        }
      },
      "resources": [
        {
          "address": "azurerm_application_gateway.app_gateway",
          "expressions": {
            "backend_address_pool": [
              {
                "name": {
                  "references": [
                    "var.suffix"
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
                    "var.suffix"
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
                    "var.suffix"
                  ]
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.app_gateway.id",
                    "azurerm_public_ip.app_gateway"
                  ]
                }
              }
            ],
            "frontend_port": [
              {
                "name": {
                  "constant_value": "http"
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
                    "var.suffix"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.app_gateway.id",
                    "azurerm_subnet.app_gateway"
                  ]
                }
              }
            ],
            "http_listener": [
              {
                "frontend_ip_configuration_name": {
                  "references": [
                    "var.suffix"
                  ]
                },
                "frontend_port_name": {
                  "constant_value": "http"
                },
                "name": {
                  "references": [
                    "var.suffix"
                  ]
                },
                "protocol": {
                  "constant_value": "Http"
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "request_routing_rule": [
              {
                "backend_address_pool_name": {
                  "references": [
                    "var.suffix"
                  ]
                },
                "backend_http_settings_name": {
                  "references": [
                    "var.suffix"
                  ]
                },
                "http_listener_name": {
                  "references": [
                    "var.suffix"
                  ]
                },
                "name": {
                  "references": [
                    "var.suffix"
                  ]
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
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
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
          "name": "app_gateway",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_dashboard_grafana.grafana",
          "expressions": {
            "azure_monitor_workspace_integrations": [
              {
                "resource_id": {
                  "references": [
                    "azurerm_monitor_workspace.workspace.id",
                    "azurerm_monitor_workspace.workspace"
                  ]
                }
              }
            ],
            "identity": [
              {
                "type": {
                  "constant_value": "SystemAssigned"
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "grafana",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_dashboard_grafana"
        },
        {
          "address": "azurerm_key_vault.vault",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
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
          "name": "vault",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_key_vault"
        },
        {
          "address": "azurerm_key_vault_access_policy.cluster",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.vault.id",
                "azurerm_key_vault.vault"
              ]
            },
            "object_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity[0].object_id",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity[0]",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0]",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "secret_permissions": {
              "constant_value": [
                "Get"
              ]
            },
            "tenant_id": {
              "references": [
                "data.azurerm_client_config.current.tenant_id",
                "data.azurerm_client_config.current"
              ]
            }
          },
          "mode": "managed",
          "name": "cluster",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_access_policy"
        },
        {
          "address": "azurerm_key_vault_access_policy.policy",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.vault.id",
                "azurerm_key_vault.vault"
              ]
            },
            "object_id": {
              "references": [
                "data.azurerm_client_config.current.object_id",
                "data.azurerm_client_config.current"
              ]
            },
            "secret_permissions": {
              "constant_value": [
                "Get",
                "List",
                "Set"
              ]
            },
            "tenant_id": {
              "references": [
                "data.azurerm_client_config.current.tenant_id",
                "data.azurerm_client_config.current"
              ]
            }
          },
          "mode": "managed",
          "name": "policy",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_access_policy"
        },
        {
          "address": "azurerm_key_vault_secret.bugservicedb_connectionstring",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.vault.id",
                "azurerm_key_vault.vault"
              ]
            },
            "name": {
              "constant_value": "bugservicedb-connection-string"
            },
            "value": {
              "references": [
                "module.bugservicedb.connection_string",
                "module.bugservicedb"
              ]
            }
          },
          "mode": "managed",
          "name": "bugservicedb_connectionstring",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_secret"
        },
        {
          "address": "azurerm_key_vault_secret.userservicedb_connectionstring",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.vault.id",
                "azurerm_key_vault.vault"
              ]
            },
            "name": {
              "constant_value": "userservicedb-connection-string"
            },
            "value": {
              "references": [
                "module.userservicedb.connection_string",
                "module.userservicedb"
              ]
            }
          },
          "mode": "managed",
          "name": "userservicedb_connectionstring",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_secret"
        },
        {
          "address": "azurerm_kubernetes_cluster.cluster",
          "expressions": {
            "default_node_pool": [
              {
                "name": {
                  "constant_value": "default"
                },
                "node_count": {
                  "constant_value": 1
                },
                "vm_size": {
                  "constant_value": "Standard_D2_v2"
                },
                "vnet_subnet_id": {
                  "references": [
                    "azurerm_subnet.aks_subnet.id",
                    "azurerm_subnet.aks_subnet"
                  ]
                }
              }
            ],
            "dns_prefix": {
              "references": [
                "var.suffix"
              ]
            },
            "identity": [
              {
                "type": {
                  "constant_value": "SystemAssigned"
                }
              }
            ],
            "ingress_application_gateway": [
              {
                "gateway_id": {
                  "references": [
                    "azurerm_application_gateway.app_gateway.id",
                    "azurerm_application_gateway.app_gateway"
                  ]
                }
              }
            ],
            "key_vault_secrets_provider": [
              {
                "secret_rotation_enabled": {
                  "constant_value": true
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "monitor_metrics": [
              {
                "annotations_allowed": {
                  "constant_value": null
                },
                "labels_allowed": {
                  "constant_value": null
                }
              }
            ],
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "oms_agent": [
              {
                "log_analytics_workspace_id": {
                  "references": [
                    "azurerm_log_analytics_workspace.workspace.id",
                    "azurerm_log_analytics_workspace.workspace"
                  ]
                },
                "msi_auth_for_monitoring_enabled": {
                  "constant_value": true
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "cluster",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_log_analytics_workspace.workspace",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
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
          "name": "workspace",
          "provider_config_key": "azurerm",
          "schema_version": 3,
          "type": "azurerm_log_analytics_workspace"
        },
        {
          "address": "azurerm_monitor_alert_prometheus_rule_group.kubernetes_recording_rules_rule_group",
          "expressions": {
            "cluster_name": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.name",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "description": {
              "constant_value": "Kubernetes Recording Rules Rule Group"
            },
            "interval": {
              "constant_value": "PT1M"
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            },
            "rule": [
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum by (cluster, namespace, pod, container) (  irate(container_cpu_usage_seconds_total{job=\"cadvisor\", image!=\"\"}[5m])) * on (cluster, namespace, pod) group_left(node) topk by (cluster, namespace, pod) (  1, max by(cluster, namespace, pod, node) (kube_pod_info{node!=\"\"}))\n"
                },
                "record": {
                  "constant_value": "node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "container_memory_working_set_bytes{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n"
                },
                "record": {
                  "constant_value": "node_namespace_pod_container:container_memory_working_set_bytes"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "container_memory_rss{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n"
                },
                "record": {
                  "constant_value": "node_namespace_pod_container:container_memory_rss"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "container_memory_cache{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n"
                },
                "record": {
                  "constant_value": "node_namespace_pod_container:container_memory_cache"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "container_memory_swap{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n"
                },
                "record": {
                  "constant_value": "node_namespace_pod_container:container_memory_swap"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n"
                },
                "record": {
                  "constant_value": "cluster:namespace:pod_memory:active:kube_pod_container_resource_requests"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n"
                },
                "record": {
                  "constant_value": "namespace_memory:kube_pod_container_resource_requests:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n"
                },
                "record": {
                  "constant_value": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_requests"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n"
                },
                "record": {
                  "constant_value": "namespace_cpu:kube_pod_container_resource_requests:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n"
                },
                "record": {
                  "constant_value": "cluster:namespace:pod_memory:active:kube_pod_container_resource_limits"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n"
                },
                "record": {
                  "constant_value": "namespace_memory:kube_pod_container_resource_limits:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) ( (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1) )\n"
                },
                "record": {
                  "constant_value": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_limits"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n"
                },
                "record": {
                  "constant_value": "namespace_cpu:kube_pod_container_resource_limits:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "max by (cluster, namespace, workload, pod) (  label_replace(    label_replace(      kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"ReplicaSet\"},      \"replicaset\", \"$1\", \"owner_name\", \"(.*)\"    ) * on(replicaset, namespace) group_left(owner_name) topk by(replicaset, namespace) (      1, max by (replicaset, namespace, owner_name) (        kube_replicaset_owner{job=\"kube-state-metrics\"}      )    ),    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n"
                },
                "labels": {
                  "constant_value": {
                    "workload_type": "deployment"
                  }
                },
                "record": {
                  "constant_value": "namespace_workload_pod:kube_pod_owner:relabel"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"DaemonSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n"
                },
                "labels": {
                  "constant_value": {
                    "workload_type": "daemonset"
                  }
                },
                "record": {
                  "constant_value": "namespace_workload_pod:kube_pod_owner:relabel"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"StatefulSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n"
                },
                "labels": {
                  "constant_value": {
                    "workload_type": "statefulset"
                  }
                },
                "record": {
                  "constant_value": "namespace_workload_pod:kube_pod_owner:relabel"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"Job\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n"
                },
                "labels": {
                  "constant_value": {
                    "workload_type": "job"
                  }
                },
                "record": {
                  "constant_value": "namespace_workload_pod:kube_pod_owner:relabel"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum(  node_memory_MemAvailable_bytes{job=\"node\"} or  (    node_memory_Buffers_bytes{job=\"node\"} +    node_memory_Cached_bytes{job=\"node\"} +    node_memory_MemFree_bytes{job=\"node\"} +    node_memory_Slab_bytes{job=\"node\"}  )) by (cluster)\n"
                },
                "record": {
                  "constant_value": ":node_memory_MemAvailable_bytes:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum(rate(node_cpu_seconds_total{job=\"node\",mode!=\"idle\",mode!=\"iowait\",mode!=\"steal\"}[5m])) by (cluster) /count(sum(node_cpu_seconds_total{job=\"node\"}) by (cluster, instance, cpu)) by (cluster)\n"
                },
                "record": {
                  "constant_value": "cluster:node_cpu:ratio_rate5m"
                }
              }
            ],
            "rule_group_enabled": {
              "constant_value": true
            },
            "scopes": {
              "references": [
                "azurerm_monitor_workspace.workspace.id",
                "azurerm_monitor_workspace.workspace",
                "azurerm_kubernetes_cluster.cluster.id",
                "azurerm_kubernetes_cluster.cluster"
              ]
            }
          },
          "mode": "managed",
          "name": "kubernetes_recording_rules_rule_group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_alert_prometheus_rule_group"
        },
        {
          "address": "azurerm_monitor_alert_prometheus_rule_group.node_recording_rules_rule_group",
          "expressions": {
            "cluster_name": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.name",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "description": {
              "constant_value": "Node Recording Rules Rule Group"
            },
            "interval": {
              "constant_value": "PT1M"
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            },
            "rule": [
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "count without (cpu, mode) (  node_cpu_seconds_total{job=\"node\",mode=\"idle\"})\n"
                },
                "record": {
                  "constant_value": "instance:node_num_cpu:sum"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "1 - avg without (cpu) (  sum without (mode) (rate(node_cpu_seconds_total{job=\"node\", mode=~\"idle|iowait|steal\"}[5m])))\n"
                },
                "record": {
                  "constant_value": "instance:node_cpu_utilisation:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "(  node_load1{job=\"node\"}/  instance:node_num_cpu:sum{job=\"node\"})\n"
                },
                "record": {
                  "constant_value": "instance:node_load1_per_cpu:ratio"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "1 - (  (    node_memory_MemAvailable_bytes{job=\"node\"}    or    (      node_memory_Buffers_bytes{job=\"node\"}      +      node_memory_Cached_bytes{job=\"node\"}      +      node_memory_MemFree_bytes{job=\"node\"}      +      node_memory_Slab_bytes{job=\"node\"}    )  )/  node_memory_MemTotal_bytes{job=\"node\"})\n"
                },
                "record": {
                  "constant_value": "instance:node_memory_utilisation:ratio"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "rate(node_vmstat_pgmajfault{job=\"node\"}[5m])\n"
                },
                "record": {
                  "constant_value": "instance:node_vmstat_pgmajfault:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "rate(node_disk_io_time_seconds_total{job=\"node\", device!=\"\"}[5m])\n"
                },
                "record": {
                  "constant_value": "instance_device:node_disk_io_time_seconds:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "rate(node_disk_io_time_weighted_seconds_total{job=\"node\", device!=\"\"}[5m])\n"
                },
                "record": {
                  "constant_value": "instance_device:node_disk_io_time_weighted_seconds:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum without (device) (  rate(node_network_receive_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n"
                },
                "record": {
                  "constant_value": "instance:node_network_receive_bytes_excluding_lo:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum without (device) (  rate(node_network_transmit_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n"
                },
                "record": {
                  "constant_value": "instance:node_network_transmit_bytes_excluding_lo:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum without (device) (  rate(node_network_receive_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n"
                },
                "record": {
                  "constant_value": "instance:node_network_receive_drop_excluding_lo:rate5m"
                }
              },
              {
                "enabled": {
                  "constant_value": true
                },
                "expression": {
                  "constant_value": "sum without (device) (  rate(node_network_transmit_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n"
                },
                "record": {
                  "constant_value": "instance:node_network_transmit_drop_excluding_lo:rate5m"
                }
              }
            ],
            "rule_group_enabled": {
              "constant_value": true
            },
            "scopes": {
              "references": [
                "azurerm_monitor_workspace.workspace.id",
                "azurerm_monitor_workspace.workspace",
                "azurerm_kubernetes_cluster.cluster.id",
                "azurerm_kubernetes_cluster.cluster"
              ]
            }
          },
          "mode": "managed",
          "name": "node_recording_rules_rule_group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_alert_prometheus_rule_group"
        },
        {
          "address": "azurerm_monitor_data_collection_endpoint.collection_endpoint",
          "expressions": {
            "kind": {
              "constant_value": "Linux"
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "collection_endpoint",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_data_collection_endpoint"
        },
        {
          "address": "azurerm_monitor_data_collection_rule.ci_collection_rule",
          "expressions": {
            "data_flow": [
              {
                "destinations": {
                  "references": [
                    "local.destination_name"
                  ]
                },
                "streams": {
                  "references": [
                    "local.streams"
                  ]
                }
              },
              {
                "destinations": {
                  "references": [
                    "local.destination_name"
                  ]
                },
                "streams": {
                  "constant_value": [
                    "Microsoft-Syslog"
                  ]
                }
              }
            ],
            "data_sources": [
              {
                "extension": [
                  {
                    "extension_json": {},
                    "extension_name": {
                      "constant_value": "ContainerInsights"
                    },
                    "name": {
                      "constant_value": "ContainerInsightsExtension"
                    },
                    "streams": {
                      "references": [
                        "local.streams"
                      ]
                    }
                  }
                ],
                "syslog": [
                  {
                    "facility_names": {
                      "references": [
                        "local.syslog_facilities"
                      ]
                    },
                    "log_levels": {
                      "references": [
                        "local.syslog_levels"
                      ]
                    },
                    "name": {
                      "constant_value": "sysLogsDataSource"
                    },
                    "streams": {
                      "constant_value": [
                        "Microsoft-Syslog"
                      ]
                    }
                  }
                ]
              }
            ],
            "description": {
              "constant_value": "Data Collection Rule for Azure Monitor Container Insights"
            },
            "destinations": [
              {
                "log_analytics": [
                  {
                    "name": {
                      "references": [
                        "local.destination_name"
                      ]
                    },
                    "workspace_resource_id": {
                      "references": [
                        "azurerm_log_analytics_workspace.workspace.id",
                        "azurerm_log_analytics_workspace.workspace"
                      ]
                    }
                  }
                ]
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "ci_collection_rule",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_data_collection_rule"
        },
        {
          "address": "azurerm_monitor_data_collection_rule.collection_rule",
          "expressions": {
            "data_collection_endpoint_id": {
              "references": [
                "azurerm_monitor_data_collection_endpoint.collection_endpoint.id",
                "azurerm_monitor_data_collection_endpoint.collection_endpoint"
              ]
            },
            "data_flow": [
              {
                "destinations": {
                  "constant_value": [
                    "MonitoringAccount"
                  ]
                },
                "streams": {
                  "constant_value": [
                    "Microsoft-PrometheusMetrics"
                  ]
                }
              }
            ],
            "data_sources": [
              {
                "prometheus_forwarder": [
                  {
                    "name": {
                      "constant_value": "PrometheusDataSource"
                    },
                    "streams": {
                      "constant_value": [
                        "Microsoft-PrometheusMetrics"
                      ]
                    }
                  }
                ]
              }
            ],
            "description": {
              "constant_value": "Data Collection Rule for Azure Monitor Metrics Profile (Managed Prometheus)"
            },
            "destinations": [
              {
                "monitor_account": [
                  {
                    "monitor_account_id": {
                      "references": [
                        "azurerm_monitor_workspace.workspace.id",
                        "azurerm_monitor_workspace.workspace"
                      ]
                    },
                    "name": {
                      "constant_value": "MonitoringAccount"
                    }
                  }
                ]
              }
            ],
            "kind": {
              "constant_value": "Linux"
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "collection_rule",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_data_collection_rule"
        },
        {
          "address": "azurerm_monitor_data_collection_rule_association.ci_collection_rule_association",
          "expressions": {
            "data_collection_rule_id": {
              "references": [
                "azurerm_monitor_data_collection_rule.ci_collection_rule.id",
                "azurerm_monitor_data_collection_rule.ci_collection_rule"
              ]
            },
            "description": {
              "constant_value": "Association of container insights data collection rule. Deleting this association will break the data collection for this AKS Cluster."
            },
            "name": {
              "constant_value": "ContainerInsightsExtension"
            },
            "target_resource_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.id",
                "azurerm_kubernetes_cluster.cluster"
              ]
            }
          },
          "mode": "managed",
          "name": "ci_collection_rule_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_data_collection_rule_association"
        },
        {
          "address": "azurerm_monitor_data_collection_rule_association.collection_rule_association",
          "expressions": {
            "data_collection_rule_id": {
              "references": [
                "azurerm_monitor_data_collection_rule.collection_rule.id",
                "azurerm_monitor_data_collection_rule.collection_rule"
              ]
            },
            "description": {
              "constant_value": "Association of data collection rule. Deleting this association will break the data collection for this AKS Cluster."
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "target_resource_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.id",
                "azurerm_kubernetes_cluster.cluster"
              ]
            }
          },
          "mode": "managed",
          "name": "collection_rule_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_data_collection_rule_association"
        },
        {
          "address": "azurerm_monitor_workspace.workspace",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "workspace",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_workspace"
        },
        {
          "address": "azurerm_public_ip.app_gateway",
          "expressions": {
            "allocation_method": {
              "constant_value": "Static"
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            },
            "sku": {
              "constant_value": "Standard"
            }
          },
          "mode": "managed",
          "name": "app_gateway",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.group",
          "expressions": {
            "location": {
              "constant_value": "West Europe"
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            }
          },
          "mode": "managed",
          "name": "group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_role_assignment.datareaderrole",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_dashboard_grafana.grafana.identity[0].principal_id",
                "azurerm_dashboard_grafana.grafana.identity[0]",
                "azurerm_dashboard_grafana.grafana.identity",
                "azurerm_dashboard_grafana.grafana"
              ]
            },
            "role_definition_name": {
              "constant_value": "Monitoring Reader"
            },
            "scope": {
              "references": [
                "azurerm_monitor_workspace.workspace.id",
                "azurerm_monitor_workspace.workspace"
              ]
            }
          },
          "mode": "managed",
          "name": "datareaderrole",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.grafana_owner",
          "expressions": {
            "principal_id": {
              "references": [
                "data.azurerm_client_config.current.object_id",
                "data.azurerm_client_config.current"
              ]
            },
            "role_definition_name": {
              "constant_value": "Grafana Admin"
            },
            "scope": {
              "references": [
                "azurerm_dashboard_grafana.grafana.id",
                "azurerm_dashboard_grafana.grafana"
              ]
            }
          },
          "mode": "managed",
          "name": "grafana_owner",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.gv_vnet",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "role_definition_name": {
              "constant_value": "Network Contributor"
            },
            "scope": {
              "references": [
                "azurerm_virtual_network.network.id",
                "azurerm_virtual_network.network"
              ]
            }
          },
          "mode": "managed",
          "name": "gv_vnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.gw_contributor",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "role_definition_name": {
              "constant_value": "Contributor"
            },
            "scope": {
              "references": [
                "azurerm_application_gateway.app_gateway.id",
                "azurerm_application_gateway.app_gateway"
              ]
            }
          },
          "mode": "managed",
          "name": "gw_contributor",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.gw_reader",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "role_definition_name": {
              "constant_value": "Reader"
            },
            "scope": {
              "references": [
                "azurerm_application_gateway.app_gateway.id",
                "azurerm_application_gateway.app_gateway"
              ]
            }
          },
          "mode": "managed",
          "name": "gw_reader",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.gw_subnet",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0].ingress_application_gateway_identity",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway[0]",
                "azurerm_kubernetes_cluster.cluster.ingress_application_gateway",
                "azurerm_kubernetes_cluster.cluster"
              ]
            },
            "role_definition_name": {
              "constant_value": "Network Contributor"
            },
            "scope": {
              "references": [
                "azurerm_subnet.app_gateway.id",
                "azurerm_subnet.app_gateway"
              ]
            }
          },
          "mode": "managed",
          "name": "gw_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_subnet.aks_subnet",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.1.1.0/24"
              ]
            },
            "name": {
              "constant_value": "aks-subnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            },
            "service_endpoints": {
              "constant_value": [
                "Microsoft.Sql"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.network.name",
                "azurerm_virtual_network.network"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.app_gateway",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.1.4.0/24"
              ]
            },
            "name": {
              "constant_value": "app-gateway-subnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.network.name",
                "azurerm_virtual_network.network"
              ]
            }
          },
          "mode": "managed",
          "name": "app_gateway",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_virtual_network.network",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.1.0.0/16"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.group.location",
                "azurerm_resource_group.group"
              ]
            },
            "name": {
              "references": [
                "var.suffix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.group.name",
                "azurerm_resource_group.group"
              ]
            }
          },
          "mode": "managed",
          "name": "network",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        },
        {
          "address": "helm_release.aks_secret_provider",
          "expressions": {
            "chart": {
              "references": [
                "path.module"
              ]
            },
            "force_update": {
              "constant_value": true
            },
            "name": {
              "constant_value": "aks-secret-provider"
            },
            "values": {
              "references": [
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity[0].client_id",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity[0]",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0].secret_identity",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider[0]",
                "azurerm_kubernetes_cluster.cluster.key_vault_secrets_provider",
                "azurerm_kubernetes_cluster.cluster",
                "data.azurerm_client_config.current.tenant_id",
                "data.azurerm_client_config.current",
                "azurerm_key_vault.vault.name",
                "azurerm_key_vault.vault",
                "azurerm_key_vault_secret.userservicedb_connectionstring.name",
                "azurerm_key_vault_secret.userservicedb_connectionstring",
                "azurerm_key_vault_secret.bugservicedb_connectionstring.name",
                "azurerm_key_vault_secret.bugservicedb_connectionstring"
              ]
            },
            "version": {
              "constant_value": "1.0.0"
            }
          },
          "mode": "managed",
          "name": "aks_secret_provider",
          "provider_config_key": "helm",
          "schema_version": 1,
          "type": "helm_release"
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
        "suffix": {
          "default": "ms02"
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "planned_values": {
    "root_module": {
      "child_modules": [
        {
          "address": "module.bugservicedb",
          "resources": [
            {
              "address": "module.bugservicedb.azurerm_postgresql_flexible_server.server",
              "mode": "managed",
              "name": "server",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {
                "administrator_password": true,
                "authentication": [],
                "customer_managed_key": [],
                "high_availability": [],
                "identity": [],
                "maintenance_window": []
              },
              "type": "azurerm_postgresql_flexible_server",
              "values": {
                "administrator_login": "psqladmin",
                "auto_grow_enabled": false,
                "create_mode": null,
                "customer_managed_key": [],
                "geo_redundant_backup_enabled": false,
                "high_availability": [],
                "identity": [],
                "location": "westeurope",
                "maintenance_window": [],
                "name": "bugservicedb-ms02",
                "point_in_time_restore_time_in_utc": null,
                "public_network_access_enabled": true,
                "replication_role": null,
                "resource_group_name": "bugtracker-ms02",
                "sku_name": "GP_Standard_D2s_v3",
                "source_server_id": null,
                "storage_mb": 32768,
                "tags": null,
                "timeouts": null,
                "version": "12",
                "zone": "3"
              }
            },
            {
              "address": "module.bugservicedb.azurerm_postgresql_flexible_server_database.database",
              "mode": "managed",
              "name": "database",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {},
              "type": "azurerm_postgresql_flexible_server_database",
              "values": {
                "charset": "UTF8",
                "collation": "en_US.utf8",
                "name": "bugs",
                "timeouts": null
              }
            },
            {
              "address": "module.bugservicedb.azurerm_private_dns_zone.private_dns_zone",
              "mode": "managed",
              "name": "private_dns_zone",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {
                "soa_record": []
              },
              "type": "azurerm_private_dns_zone",
              "values": {
                "name": "bugservicedb-ms02-zone.postgres.database.azure.com",
                "resource_group_name": "bugtracker-ms02",
                "tags": null,
                "timeouts": null
              }
            },
            {
              "address": "module.bugservicedb.azurerm_private_dns_zone_virtual_network_link.network_link",
              "mode": "managed",
              "name": "network_link",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {},
              "type": "azurerm_private_dns_zone_virtual_network_link",
              "values": {
                "name": "bugservicedb-ms02VnetZone.com",
                "private_dns_zone_name": "bugservicedb-ms02-zone.postgres.database.azure.com",
                "registration_enabled": false,
                "resource_group_name": "bugtracker-ms02",
                "tags": null,
                "timeouts": null
              }
            },
            {
              "address": "module.bugservicedb.azurerm_subnet.subnet",
              "mode": "managed",
              "name": "subnet",
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
                  false
                ]
              },
              "type": "azurerm_subnet",
              "values": {
                "address_prefixes": [
                  "10.1.3.0/24"
                ],
                "default_outbound_access_enabled": true,
                "delegation": [
                  {
                    "name": "fs",
                    "service_delegation": [
                      {
                        "actions": [
                          "Microsoft.Network/virtualNetworks/subnets/join/action"
                        ],
                        "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                      }
                    ]
                  }
                ],
                "name": "bugservicedb-ms02-subnet",
                "resource_group_name": "bugtracker-ms02",
                "service_endpoint_policy_ids": null,
                "service_endpoints": [
                  "Microsoft.Storage"
                ],
                "timeouts": null,
                "virtual_network_name": "bugtracker-ms02"
              }
            },
            {
              "address": "module.bugservicedb.random_password.password",
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
                "min_lower": 1,
                "min_numeric": 1,
                "min_special": 1,
                "min_upper": 1,
                "number": true,
                "numeric": true,
                "override_special": "!_%@",
                "special": true,
                "upper": true
              }
            }
          ]
        },
        {
          "address": "module.userservicedb",
          "resources": [
            {
              "address": "module.userservicedb.azurerm_postgresql_flexible_server.server",
              "mode": "managed",
              "name": "server",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {
                "administrator_password": true,
                "authentication": [],
                "customer_managed_key": [],
                "high_availability": [],
                "identity": [],
                "maintenance_window": []
              },
              "type": "azurerm_postgresql_flexible_server",
              "values": {
                "administrator_login": "psqladmin",
                "auto_grow_enabled": false,
                "create_mode": null,
                "customer_managed_key": [],
                "geo_redundant_backup_enabled": false,
                "high_availability": [],
                "identity": [],
                "location": "westeurope",
                "maintenance_window": [],
                "name": "userservicedb-ms02",
                "point_in_time_restore_time_in_utc": null,
                "public_network_access_enabled": true,
                "replication_role": null,
                "resource_group_name": "bugtracker-ms02",
                "sku_name": "GP_Standard_D2s_v3",
                "source_server_id": null,
                "storage_mb": 32768,
                "tags": null,
                "timeouts": null,
                "version": "12",
                "zone": "3"
              }
            },
            {
              "address": "module.userservicedb.azurerm_postgresql_flexible_server_database.database",
              "mode": "managed",
              "name": "database",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {},
              "type": "azurerm_postgresql_flexible_server_database",
              "values": {
                "charset": "UTF8",
                "collation": "en_US.utf8",
                "name": "users",
                "timeouts": null
              }
            },
            {
              "address": "module.userservicedb.azurerm_private_dns_zone.private_dns_zone",
              "mode": "managed",
              "name": "private_dns_zone",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {
                "soa_record": []
              },
              "type": "azurerm_private_dns_zone",
              "values": {
                "name": "userservicedb-ms02-zone.postgres.database.azure.com",
                "resource_group_name": "bugtracker-ms02",
                "tags": null,
                "timeouts": null
              }
            },
            {
              "address": "module.userservicedb.azurerm_private_dns_zone_virtual_network_link.network_link",
              "mode": "managed",
              "name": "network_link",
              "provider_name": "registry.terraform.io/hashicorp/azurerm",
              "schema_version": 0,
              "sensitive_values": {},
              "type": "azurerm_private_dns_zone_virtual_network_link",
              "values": {
                "name": "userservicedb-ms02VnetZone.com",
                "private_dns_zone_name": "userservicedb-ms02-zone.postgres.database.azure.com",
                "registration_enabled": false,
                "resource_group_name": "bugtracker-ms02",
                "tags": null,
                "timeouts": null
              }
            },
            {
              "address": "module.userservicedb.azurerm_subnet.subnet",
              "mode": "managed",
              "name": "subnet",
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
                  false
                ]
              },
              "type": "azurerm_subnet",
              "values": {
                "address_prefixes": [
                  "10.1.2.0/24"
                ],
                "default_outbound_access_enabled": true,
                "delegation": [
                  {
                    "name": "fs",
                    "service_delegation": [
                      {
                        "actions": [
                          "Microsoft.Network/virtualNetworks/subnets/join/action"
                        ],
                        "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                      }
                    ]
                  }
                ],
                "name": "userservicedb-ms02-subnet",
                "resource_group_name": "bugtracker-ms02",
                "service_endpoint_policy_ids": null,
                "service_endpoints": [
                  "Microsoft.Storage"
                ],
                "timeouts": null,
                "virtual_network_name": "bugtracker-ms02"
              }
            },
            {
              "address": "module.userservicedb.random_password.password",
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
                "min_lower": 1,
                "min_numeric": 1,
                "min_special": 1,
                "min_upper": 1,
                "number": true,
                "numeric": true,
                "override_special": "!_%@",
                "special": true,
                "upper": true
              }
            }
          ]
        }
      ],
      "resources": [
        {
          "address": "azurerm_application_gateway.app_gateway",
          "mode": "managed",
          "name": "app_gateway",
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
                "name": "app-gateway-pool-ms02"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "app-gateway-settings-ms02",
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
                "name": "app-gateway-ip-ms02",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "http",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "app-gateway-ip-ms02"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "app-gateway-ip-ms02",
                "frontend_port_name": "http",
                "host_name": "",
                "host_names": [],
                "name": "app-gateway-http-listener-ms02",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "westeurope",
            "name": "app-gateway-ms02",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "app-gateway-pool-ms02",
                "backend_http_settings_name": "app-gateway-settings-ms02",
                "http_listener_name": "app-gateway-http-listener-ms02",
                "name": "app-gateway-rule-ms02",
                "priority": 100,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "bugtracker-ms02",
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
          "address": "azurerm_dashboard_grafana.grafana",
          "mode": "managed",
          "name": "grafana",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "azure_monitor_workspace_integrations": [
              {}
            ],
            "identity": [
              {}
            ],
            "outbound_ip": [],
            "smtp": []
          },
          "type": "azurerm_dashboard_grafana",
          "values": {
            "api_key_enabled": false,
            "auto_generated_domain_name_label_scope": "TenantReuse",
            "azure_monitor_workspace_integrations": [
              {}
            ],
            "deterministic_outbound_ip_enabled": false,
            "grafana_major_version": "9",
            "identity": [
              {
                "identity_ids": null,
                "type": "SystemAssigned"
              }
            ],
            "location": "westeurope",
            "name": "bugtracker-ms02-grafana",
            "public_network_access_enabled": true,
            "resource_group_name": "bugtracker-ms02",
            "sku": "Standard",
            "smtp": [],
            "tags": null,
            "timeouts": null,
            "zone_redundancy_enabled": false
          }
        },
        {
          "address": "azurerm_key_vault.vault",
          "mode": "managed",
          "name": "vault",
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
            "location": "westeurope",
            "name": "bugtracker-ms02",
            "public_network_access_enabled": true,
            "purge_protection_enabled": null,
            "resource_group_name": "bugtracker-ms02",
            "sku_name": "standard",
            "soft_delete_retention_days": 90,
            "tags": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_access_policy.cluster",
          "mode": "managed",
          "name": "cluster",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "secret_permissions": [
              false
            ]
          },
          "type": "azurerm_key_vault_access_policy",
          "values": {
            "application_id": null,
            "certificate_permissions": null,
            "key_permissions": null,
            "secret_permissions": [
              "Get"
            ],
            "storage_permissions": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_access_policy.policy",
          "mode": "managed",
          "name": "policy",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "secret_permissions": [
              false,
              false,
              false
            ]
          },
          "type": "azurerm_key_vault_access_policy",
          "values": {
            "application_id": null,
            "certificate_permissions": null,
            "key_permissions": null,
            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
            "secret_permissions": [
              "Get",
              "List",
              "Set"
            ],
            "storage_permissions": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_secret.bugservicedb_connectionstring",
          "mode": "managed",
          "name": "bugservicedb_connectionstring",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "value": true
          },
          "type": "azurerm_key_vault_secret",
          "values": {
            "content_type": null,
            "expiration_date": null,
            "name": "bugservicedb-connection-string",
            "not_before_date": null,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_secret.userservicedb_connectionstring",
          "mode": "managed",
          "name": "userservicedb_connectionstring",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "value": true
          },
          "type": "azurerm_key_vault_secret",
          "values": {
            "content_type": null,
            "expiration_date": null,
            "name": "userservicedb-connection-string",
            "not_before_date": null,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_kubernetes_cluster.cluster",
          "mode": "managed",
          "name": "cluster",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 2,
          "sensitive_values": {
            "aci_connector_linux": [],
            "api_server_access_profile": [],
            "api_server_authorized_ip_ranges": [],
            "auto_scaler_profile": [],
            "azure_active_directory_role_based_access_control": [],
            "confidential_computing": [],
            "default_node_pool": [
              {
                "kubelet_config": [],
                "linux_os_config": [],
                "node_labels": {},
                "node_network_profile": [],
                "upgrade_settings": []
              }
            ],
            "http_proxy_config": [],
            "identity": [
              {}
            ],
            "ingress_application_gateway": [
              {
                "ingress_application_gateway_identity": []
              }
            ],
            "key_management_service": [],
            "key_vault_secrets_provider": [
              {
                "secret_identity": []
              }
            ],
            "kube_admin_config": true,
            "kube_admin_config_raw": true,
            "kube_config": true,
            "kube_config_raw": true,
            "kubelet_identity": [],
            "linux_profile": [],
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [
              {}
            ],
            "network_profile": [],
            "oms_agent": [
              {
                "oms_agent_identity": []
              }
            ],
            "service_mesh_profile": [],
            "service_principal": [],
            "storage_profile": [],
            "web_app_routing": [],
            "windows_profile": [],
            "workload_autoscaler_profile": []
          },
          "type": "azurerm_kubernetes_cluster",
          "values": {
            "aci_connector_linux": [],
            "automatic_channel_upgrade": null,
            "azure_active_directory_role_based_access_control": [],
            "azure_policy_enabled": null,
            "confidential_computing": [],
            "cost_analysis_enabled": null,
            "custom_ca_trust_certificates_base64": null,
            "default_node_pool": [
              {
                "capacity_reservation_group_id": null,
                "custom_ca_trust_enabled": null,
                "enable_auto_scaling": null,
                "enable_host_encryption": null,
                "enable_node_public_ip": null,
                "fips_enabled": null,
                "gpu_instance": null,
                "host_group_id": null,
                "kubelet_config": [],
                "linux_os_config": [],
                "max_count": null,
                "message_of_the_day": null,
                "min_count": null,
                "name": "default",
                "node_count": 1,
                "node_network_profile": [],
                "node_public_ip_prefix_id": null,
                "node_taints": null,
                "only_critical_addons_enabled": null,
                "os_disk_type": "Managed",
                "pod_subnet_id": null,
                "proximity_placement_group_id": null,
                "scale_down_mode": "Delete",
                "snapshot_id": null,
                "tags": null,
                "temporary_name_for_rotation": null,
                "type": "VirtualMachineScaleSets",
                "ultra_ssd_enabled": false,
                "upgrade_settings": [],
                "vm_size": "Standard_D2_v2",
                "zones": null
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "bugtracker-ms02",
            "dns_prefix_private_cluster": null,
            "edge_zone": null,
            "enable_pod_security_policy": null,
            "http_application_routing_enabled": null,
            "http_proxy_config": [],
            "identity": [
              {
                "identity_ids": null,
                "type": "SystemAssigned"
              }
            ],
            "image_cleaner_enabled": false,
            "image_cleaner_interval_hours": 48,
            "ingress_application_gateway": [
              {
                "gateway_name": null,
                "subnet_cidr": null,
                "subnet_id": null
              }
            ],
            "key_management_service": [],
            "key_vault_secrets_provider": [
              {
                "secret_rotation_enabled": true,
                "secret_rotation_interval": "2m"
              }
            ],
            "linux_profile": [],
            "local_account_disabled": null,
            "location": "westeurope",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [
              {
                "annotations_allowed": null,
                "labels_allowed": null
              }
            ],
            "name": "bugtracker-ms02",
            "node_os_channel_upgrade": null,
            "oidc_issuer_enabled": null,
            "oms_agent": [
              {
                "msi_auth_for_monitoring_enabled": true
              }
            ],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "bugtracker-ms02",
            "role_based_access_control_enabled": true,
            "run_command_enabled": true,
            "service_mesh_profile": [],
            "service_principal": [],
            "sku_tier": "Free",
            "storage_profile": [],
            "support_plan": "KubernetesOfficial",
            "tags": null,
            "timeouts": null,
            "web_app_routing": [],
            "workload_autoscaler_profile": [],
            "workload_identity_enabled": false
          }
        },
        {
          "address": "azurerm_log_analytics_workspace.workspace",
          "mode": "managed",
          "name": "workspace",
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
            "name": "bugtracker-ms02-logs",
            "reservation_capacity_in_gb_per_day": null,
            "resource_group_name": "bugtracker-ms02",
            "retention_in_days": 30,
            "sku": "PerGB2018",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_alert_prometheus_rule_group.kubernetes_recording_rules_rule_group",
          "mode": "managed",
          "name": "kubernetes_recording_rules_rule_group",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "rule": [
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": [],
                "labels": {}
              },
              {
                "action": [],
                "alert_resolution": [],
                "labels": {}
              },
              {
                "action": [],
                "alert_resolution": [],
                "labels": {}
              },
              {
                "action": [],
                "alert_resolution": [],
                "labels": {}
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              }
            ],
            "scopes": []
          },
          "type": "azurerm_monitor_alert_prometheus_rule_group",
          "values": {
            "cluster_name": "bugtracker-ms02",
            "description": "Kubernetes Recording Rules Rule Group",
            "interval": "PT1M",
            "location": "westeurope",
            "name": "KubernetesRecordingRulesRuleGroup-ms02",
            "resource_group_name": "bugtracker-ms02",
            "rule": [
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum by (cluster, namespace, pod, container) (  irate(container_cpu_usage_seconds_total{job=\"cadvisor\", image!=\"\"}[5m])) * on (cluster, namespace, pod) group_left(node) topk by (cluster, namespace, pod) (  1, max by(cluster, namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
                "for": null,
                "labels": null,
                "record": "node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "container_memory_working_set_bytes{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
                "for": null,
                "labels": null,
                "record": "node_namespace_pod_container:container_memory_working_set_bytes",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "container_memory_rss{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
                "for": null,
                "labels": null,
                "record": "node_namespace_pod_container:container_memory_rss",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "container_memory_cache{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
                "for": null,
                "labels": null,
                "record": "node_namespace_pod_container:container_memory_cache",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "container_memory_swap{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
                "for": null,
                "labels": null,
                "record": "node_namespace_pod_container:container_memory_swap",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
                "for": null,
                "labels": null,
                "record": "cluster:namespace:pod_memory:active:kube_pod_container_resource_requests",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
                "for": null,
                "labels": null,
                "record": "namespace_memory:kube_pod_container_resource_requests:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
                "for": null,
                "labels": null,
                "record": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_requests",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
                "for": null,
                "labels": null,
                "record": "namespace_cpu:kube_pod_container_resource_requests:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
                "for": null,
                "labels": null,
                "record": "cluster:namespace:pod_memory:active:kube_pod_container_resource_limits",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
                "for": null,
                "labels": null,
                "record": "namespace_memory:kube_pod_container_resource_limits:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) ( (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1) )\n",
                "for": null,
                "labels": null,
                "record": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_limits",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
                "for": null,
                "labels": null,
                "record": "namespace_cpu:kube_pod_container_resource_limits:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    label_replace(      kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"ReplicaSet\"},      \"replicaset\", \"$1\", \"owner_name\", \"(.*)\"    ) * on(replicaset, namespace) group_left(owner_name) topk by(replicaset, namespace) (      1, max by (replicaset, namespace, owner_name) (        kube_replicaset_owner{job=\"kube-state-metrics\"}      )    ),    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
                "for": null,
                "labels": {
                  "workload_type": "deployment"
                },
                "record": "namespace_workload_pod:kube_pod_owner:relabel",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"DaemonSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
                "for": null,
                "labels": {
                  "workload_type": "daemonset"
                },
                "record": "namespace_workload_pod:kube_pod_owner:relabel",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"StatefulSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
                "for": null,
                "labels": {
                  "workload_type": "statefulset"
                },
                "record": "namespace_workload_pod:kube_pod_owner:relabel",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"Job\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
                "for": null,
                "labels": {
                  "workload_type": "job"
                },
                "record": "namespace_workload_pod:kube_pod_owner:relabel",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum(  node_memory_MemAvailable_bytes{job=\"node\"} or  (    node_memory_Buffers_bytes{job=\"node\"} +    node_memory_Cached_bytes{job=\"node\"} +    node_memory_MemFree_bytes{job=\"node\"} +    node_memory_Slab_bytes{job=\"node\"}  )) by (cluster)\n",
                "for": null,
                "labels": null,
                "record": ":node_memory_MemAvailable_bytes:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum(rate(node_cpu_seconds_total{job=\"node\",mode!=\"idle\",mode!=\"iowait\",mode!=\"steal\"}[5m])) by (cluster) /count(sum(node_cpu_seconds_total{job=\"node\"}) by (cluster, instance, cpu)) by (cluster)\n",
                "for": null,
                "labels": null,
                "record": "cluster:node_cpu:ratio_rate5m",
                "severity": null
              }
            ],
            "rule_group_enabled": true,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_alert_prometheus_rule_group.node_recording_rules_rule_group",
          "mode": "managed",
          "name": "node_recording_rules_rule_group",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "rule": [
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              },
              {
                "action": [],
                "alert_resolution": []
              }
            ],
            "scopes": []
          },
          "type": "azurerm_monitor_alert_prometheus_rule_group",
          "values": {
            "cluster_name": "bugtracker-ms02",
            "description": "Node Recording Rules Rule Group",
            "interval": "PT1M",
            "location": "westeurope",
            "name": "NodeRecordingRulesRuleGroup-ms02",
            "resource_group_name": "bugtracker-ms02",
            "rule": [
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "count without (cpu, mode) (  node_cpu_seconds_total{job=\"node\",mode=\"idle\"})\n",
                "for": null,
                "labels": null,
                "record": "instance:node_num_cpu:sum",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "1 - avg without (cpu) (  sum without (mode) (rate(node_cpu_seconds_total{job=\"node\", mode=~\"idle|iowait|steal\"}[5m])))\n",
                "for": null,
                "labels": null,
                "record": "instance:node_cpu_utilisation:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "(  node_load1{job=\"node\"}/  instance:node_num_cpu:sum{job=\"node\"})\n",
                "for": null,
                "labels": null,
                "record": "instance:node_load1_per_cpu:ratio",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "1 - (  (    node_memory_MemAvailable_bytes{job=\"node\"}    or    (      node_memory_Buffers_bytes{job=\"node\"}      +      node_memory_Cached_bytes{job=\"node\"}      +      node_memory_MemFree_bytes{job=\"node\"}      +      node_memory_Slab_bytes{job=\"node\"}    )  )/  node_memory_MemTotal_bytes{job=\"node\"})\n",
                "for": null,
                "labels": null,
                "record": "instance:node_memory_utilisation:ratio",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "rate(node_vmstat_pgmajfault{job=\"node\"}[5m])\n",
                "for": null,
                "labels": null,
                "record": "instance:node_vmstat_pgmajfault:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "rate(node_disk_io_time_seconds_total{job=\"node\", device!=\"\"}[5m])\n",
                "for": null,
                "labels": null,
                "record": "instance_device:node_disk_io_time_seconds:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "rate(node_disk_io_time_weighted_seconds_total{job=\"node\", device!=\"\"}[5m])\n",
                "for": null,
                "labels": null,
                "record": "instance_device:node_disk_io_time_weighted_seconds:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum without (device) (  rate(node_network_receive_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n",
                "for": null,
                "labels": null,
                "record": "instance:node_network_receive_bytes_excluding_lo:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum without (device) (  rate(node_network_transmit_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n",
                "for": null,
                "labels": null,
                "record": "instance:node_network_transmit_bytes_excluding_lo:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum without (device) (  rate(node_network_receive_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n",
                "for": null,
                "labels": null,
                "record": "instance:node_network_receive_drop_excluding_lo:rate5m",
                "severity": null
              },
              {
                "action": [],
                "alert": null,
                "alert_resolution": [],
                "annotations": null,
                "enabled": true,
                "expression": "sum without (device) (  rate(node_network_transmit_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n",
                "for": null,
                "labels": null,
                "record": "instance:node_network_transmit_drop_excluding_lo:rate5m",
                "severity": null
              }
            ],
            "rule_group_enabled": true,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_data_collection_endpoint.collection_endpoint",
          "mode": "managed",
          "name": "collection_endpoint",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_monitor_data_collection_endpoint",
          "values": {
            "description": null,
            "kind": "Linux",
            "location": "westeurope",
            "name": "bugtracker-ms02-prometheus",
            "public_network_access_enabled": true,
            "resource_group_name": "bugtracker-ms02",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_data_collection_rule.ci_collection_rule",
          "mode": "managed",
          "name": "ci_collection_rule",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "data_flow": [
              {
                "destinations": [
                  false
                ],
                "streams": [
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false
                ]
              },
              {
                "destinations": [
                  false
                ],
                "streams": [
                  false
                ]
              }
            ],
            "data_sources": [
              {
                "data_import": [],
                "extension": [
                  {
                    "streams": [
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false
                    ]
                  }
                ],
                "iis_log": [],
                "log_file": [],
                "performance_counter": [],
                "platform_telemetry": [],
                "prometheus_forwarder": [],
                "syslog": [
                  {
                    "facility_names": [
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false
                    ],
                    "log_levels": [
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false,
                      false
                    ],
                    "streams": [
                      false
                    ]
                  }
                ],
                "windows_event_log": [],
                "windows_firewall_log": []
              }
            ],
            "destinations": [
              {
                "azure_monitor_metrics": [],
                "event_hub": [],
                "event_hub_direct": [],
                "log_analytics": [
                  {}
                ],
                "monitor_account": [],
                "storage_blob": [],
                "storage_blob_direct": [],
                "storage_table_direct": []
              }
            ],
            "identity": [],
            "stream_declaration": []
          },
          "type": "azurerm_monitor_data_collection_rule",
          "values": {
            "data_collection_endpoint_id": null,
            "data_flow": [
              {
                "built_in_transform": null,
                "destinations": [
                  "ciworkspace"
                ],
                "output_stream": null,
                "streams": [
                  "Microsoft-ContainerLog",
                  "Microsoft-ContainerLogV2",
                  "Microsoft-KubeEvents",
                  "Microsoft-KubePodInventory",
                  "Microsoft-KubeNodeInventory",
                  "Microsoft-KubePVInventory",
                  "Microsoft-KubeServices",
                  "Microsoft-KubeMonAgentEvents",
                  "Microsoft-InsightsMetrics",
                  "Microsoft-ContainerInventory",
                  "Microsoft-ContainerNodeInventory",
                  "Microsoft-Perf"
                ],
                "transform_kql": null
              },
              {
                "built_in_transform": null,
                "destinations": [
                  "ciworkspace"
                ],
                "output_stream": null,
                "streams": [
                  "Microsoft-Syslog"
                ],
                "transform_kql": null
              }
            ],
            "data_sources": [
              {
                "data_import": [],
                "extension": [
                  {
                    "extension_json": "{\"dataCollectionSettings\":{\"enableContainerLogV2\":true,\"interval\":\"1m\",\"namespaceFilteringMode\":\"Off\",\"namespaces\":[\"kube-system\",\"gatekeeper-system\",\"azure-arc\"]}}",
                    "extension_name": "ContainerInsights",
                    "input_data_sources": null,
                    "name": "ContainerInsightsExtension",
                    "streams": [
                      "Microsoft-ContainerLog",
                      "Microsoft-ContainerLogV2",
                      "Microsoft-KubeEvents",
                      "Microsoft-KubePodInventory",
                      "Microsoft-KubeNodeInventory",
                      "Microsoft-KubePVInventory",
                      "Microsoft-KubeServices",
                      "Microsoft-KubeMonAgentEvents",
                      "Microsoft-InsightsMetrics",
                      "Microsoft-ContainerInventory",
                      "Microsoft-ContainerNodeInventory",
                      "Microsoft-Perf"
                    ]
                  }
                ],
                "iis_log": [],
                "log_file": [],
                "performance_counter": [],
                "platform_telemetry": [],
                "prometheus_forwarder": [],
                "syslog": [
                  {
                    "facility_names": [
                      "auth",
                      "authpriv",
                      "cron",
                      "daemon",
                      "mark",
                      "kern",
                      "local0",
                      "local1",
                      "local2",
                      "local3",
                      "local4",
                      "local5",
                      "local6",
                      "local7",
                      "lpr",
                      "mail",
                      "news",
                      "syslog",
                      "user",
                      "uucp"
                    ],
                    "log_levels": [
                      "Debug",
                      "Info",
                      "Notice",
                      "Warning",
                      "Error",
                      "Critical",
                      "Alert",
                      "Emergency"
                    ],
                    "name": "sysLogsDataSource",
                    "streams": [
                      "Microsoft-Syslog"
                    ]
                  }
                ],
                "windows_event_log": [],
                "windows_firewall_log": []
              }
            ],
            "description": "Data Collection Rule for Azure Monitor Container Insights",
            "destinations": [
              {
                "azure_monitor_metrics": [],
                "event_hub": [],
                "event_hub_direct": [],
                "log_analytics": [
                  {
                    "name": "ciworkspace"
                  }
                ],
                "monitor_account": [],
                "storage_blob": [],
                "storage_blob_direct": [],
                "storage_table_direct": []
              }
            ],
            "identity": [],
            "kind": null,
            "location": "westeurope",
            "name": "MS-ContainerInsights-ms02",
            "resource_group_name": "bugtracker-ms02",
            "stream_declaration": [],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_data_collection_rule.collection_rule",
          "mode": "managed",
          "name": "collection_rule",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "data_flow": [
              {
                "destinations": [
                  false
                ],
                "streams": [
                  false
                ]
              }
            ],
            "data_sources": [
              {
                "data_import": [],
                "extension": [],
                "iis_log": [],
                "log_file": [],
                "performance_counter": [],
                "platform_telemetry": [],
                "prometheus_forwarder": [
                  {
                    "label_include_filter": [],
                    "streams": [
                      false
                    ]
                  }
                ],
                "syslog": [],
                "windows_event_log": [],
                "windows_firewall_log": []
              }
            ],
            "destinations": [
              {
                "azure_monitor_metrics": [],
                "event_hub": [],
                "event_hub_direct": [],
                "log_analytics": [],
                "monitor_account": [
                  {}
                ],
                "storage_blob": [],
                "storage_blob_direct": [],
                "storage_table_direct": []
              }
            ],
            "identity": [],
            "stream_declaration": []
          },
          "type": "azurerm_monitor_data_collection_rule",
          "values": {
            "data_flow": [
              {
                "built_in_transform": null,
                "destinations": [
                  "MonitoringAccount"
                ],
                "output_stream": null,
                "streams": [
                  "Microsoft-PrometheusMetrics"
                ],
                "transform_kql": null
              }
            ],
            "data_sources": [
              {
                "data_import": [],
                "extension": [],
                "iis_log": [],
                "log_file": [],
                "performance_counter": [],
                "platform_telemetry": [],
                "prometheus_forwarder": [
                  {
                    "label_include_filter": [],
                    "name": "PrometheusDataSource",
                    "streams": [
                      "Microsoft-PrometheusMetrics"
                    ]
                  }
                ],
                "syslog": [],
                "windows_event_log": [],
                "windows_firewall_log": []
              }
            ],
            "description": "Data Collection Rule for Azure Monitor Metrics Profile (Managed Prometheus)",
            "destinations": [
              {
                "azure_monitor_metrics": [],
                "event_hub": [],
                "event_hub_direct": [],
                "log_analytics": [],
                "monitor_account": [
                  {
                    "name": "MonitoringAccount"
                  }
                ],
                "storage_blob": [],
                "storage_blob_direct": [],
                "storage_table_direct": []
              }
            ],
            "identity": [],
            "kind": "Linux",
            "location": "westeurope",
            "name": "bugtracker-ms02-prometheus-rule",
            "resource_group_name": "bugtracker-ms02",
            "stream_declaration": [],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_data_collection_rule_association.ci_collection_rule_association",
          "mode": "managed",
          "name": "ci_collection_rule_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_monitor_data_collection_rule_association",
          "values": {
            "data_collection_endpoint_id": null,
            "description": "Association of container insights data collection rule. Deleting this association will break the data collection for this AKS Cluster.",
            "name": "ContainerInsightsExtension",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_data_collection_rule_association.collection_rule_association",
          "mode": "managed",
          "name": "collection_rule_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_monitor_data_collection_rule_association",
          "values": {
            "data_collection_endpoint_id": null,
            "description": "Association of data collection rule. Deleting this association will break the data collection for this AKS Cluster.",
            "name": "bugtracker-ms02-prometheus-rule-association",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_workspace.workspace",
          "mode": "managed",
          "name": "workspace",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_monitor_workspace",
          "values": {
            "location": "westeurope",
            "name": "bugtracker-ms02-workspace",
            "public_network_access_enabled": true,
            "resource_group_name": "bugtracker-ms02",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_public_ip.app_gateway",
          "mode": "managed",
          "name": "app_gateway",
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
            "location": "westeurope",
            "name": "app-gateway-ip-ms02",
            "public_ip_prefix_id": null,
            "resource_group_name": "bugtracker-ms02",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_resource_group.group",
          "mode": "managed",
          "name": "group",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "westeurope",
            "managed_by": null,
            "name": "bugtracker-ms02",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.datareaderrole",
          "mode": "managed",
          "name": "datareaderrole",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Monitoring Reader",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.grafana_owner",
          "mode": "managed",
          "name": "grafana_owner",
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
            "role_definition_name": "Grafana Admin",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.gv_vnet",
          "mode": "managed",
          "name": "gv_vnet",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Network Contributor",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.gw_contributor",
          "mode": "managed",
          "name": "gw_contributor",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Contributor",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.gw_reader",
          "mode": "managed",
          "name": "gw_reader",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Reader",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.gw_subnet",
          "mode": "managed",
          "name": "gw_subnet",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Network Contributor",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.aks_subnet",
          "mode": "managed",
          "name": "aks_subnet",
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
              "10.1.1.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "aks-subnet",
            "resource_group_name": "bugtracker-ms02",
            "service_endpoint_policy_ids": null,
            "service_endpoints": [
              "Microsoft.Sql"
            ],
            "timeouts": null,
            "virtual_network_name": "bugtracker-ms02"
          }
        },
        {
          "address": "azurerm_subnet.app_gateway",
          "mode": "managed",
          "name": "app_gateway",
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
              "10.1.4.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "app-gateway-subnet",
            "resource_group_name": "bugtracker-ms02",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "bugtracker-ms02"
          }
        },
        {
          "address": "azurerm_virtual_network.network",
          "mode": "managed",
          "name": "network",
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
              "10.1.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "westeurope",
            "name": "bugtracker-ms02",
            "resource_group_name": "bugtracker-ms02",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "helm_release.aks_secret_provider",
          "mode": "managed",
          "name": "aks_secret_provider",
          "provider_name": "registry.terraform.io/hashicorp/helm",
          "schema_version": 1,
          "sensitive_values": {
            "metadata": [],
            "postrender": [],
            "repository_password": true,
            "set": [],
            "set_list": [],
            "set_sensitive": [],
            "values": []
          },
          "type": "helm_release",
          "values": {
            "atomic": false,
            "chart": "./../helm/aks-secret-provider",
            "cleanup_on_fail": false,
            "create_namespace": false,
            "dependency_update": false,
            "description": null,
            "devel": null,
            "disable_crd_hooks": false,
            "disable_openapi_validation": false,
            "disable_webhooks": false,
            "force_update": true,
            "keyring": null,
            "lint": false,
            "max_history": 0,
            "name": "aks-secret-provider",
            "namespace": "default",
            "pass_credentials": false,
            "postrender": [],
            "recreate_pods": false,
            "render_subchart_notes": true,
            "replace": false,
            "repository": null,
            "repository_ca_file": null,
            "repository_cert_file": null,
            "repository_key_file": null,
            "repository_password": null,
            "repository_username": null,
            "reset_values": false,
            "reuse_values": false,
            "set": [],
            "set_list": [],
            "set_sensitive": [],
            "skip_crds": false,
            "status": "deployed",
            "timeout": 300,
            "upgrade_install": null,
            "verify": false,
            "version": "1.0.0",
            "wait": true,
            "wait_for_jobs": false
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
        "object_id"
      ],
      "resource": "data.azurerm_client_config.current"
    },
    {
      "attribute": [
        "ingress_application_gateway",
        0,
        "ingress_application_gateway_identity",
        0,
        "object_id"
      ],
      "resource": "azurerm_kubernetes_cluster.cluster"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_kubernetes_cluster.cluster"
    },
    {
      "attribute": [
        "key_vault_secrets_provider",
        0,
        "secret_identity",
        0,
        "client_id"
      ],
      "resource": "azurerm_kubernetes_cluster.cluster"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "module.bugservicedb.azurerm_postgresql_flexible_server_database.database"
    },
    {
      "attribute": [
        "identity",
        0,
        "principal_id"
      ],
      "resource": "azurerm_dashboard_grafana.grafana"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "module.bugservicedb.azurerm_private_dns_zone.private_dns_zone"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.bugservicedb.azurerm_private_dns_zone.private_dns_zone"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_monitor_data_collection_endpoint.collection_endpoint"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.bugservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_key_vault.vault"
    },
    {
      "attribute": [
        "fqdn"
      ],
      "resource": "module.bugservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.group"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.app_gateway"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_application_gateway.app_gateway"
    },
    {
      "attribute": [
        "administrator_login"
      ],
      "resource": "module.bugservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.bugservicedb.azurerm_subnet.subnet"
    },
    {
      "attribute": [
        "result"
      ],
      "resource": "module.bugservicedb.random_password.password"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_monitor_data_collection_rule.ci_collection_rule"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "module.userservicedb.azurerm_postgresql_flexible_server_database.database"
    },
    {
      "attribute": [
        "administrator_login"
      ],
      "resource": "module.userservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [],
      "resource": "azurerm_resource_group.group"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_dashboard_grafana.grafana"
    },
    {
      "attribute": [
        "tenant_id"
      ],
      "resource": "data.azurerm_client_config.current"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "module.userservicedb.azurerm_private_dns_zone.private_dns_zone"
    },
    {
      "attribute": [
        "result"
      ],
      "resource": "module.userservicedb.random_password.password"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_virtual_network.network"
    },
    {
      "attribute": [],
      "resource": "azurerm_virtual_network.network"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.network"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_monitor_workspace.workspace"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.userservicedb.azurerm_subnet.subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.userservicedb.azurerm_private_dns_zone.private_dns_zone"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "module.userservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.aks_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_monitor_data_collection_rule.collection_rule"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_kubernetes_cluster.cluster"
    },
    {
      "attribute": [
        "fqdn"
      ],
      "resource": "module.userservicedb.azurerm_postgresql_flexible_server.server"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_key_vault.vault"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.group"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_log_analytics_workspace.workspace"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.app_gateway"
    },
    {
      "attribute": [
        "key_vault_secrets_provider",
        0,
        "secret_identity",
        0,
        "object_id"
      ],
      "resource": "azurerm_kubernetes_cluster.cluster"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_key_vault_secret.userservicedb_connectionstring"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_key_vault_secret.bugservicedb_connectionstring"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.app_gateway",
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
              "name": "app-gateway-pool-ms02"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "app-gateway-settings-ms02",
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
              "name": "app-gateway-ip-ms02",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "http",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "app-gateway-ip-ms02"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "app-gateway-ip-ms02",
              "frontend_port_name": "http",
              "host_name": "",
              "host_names": [],
              "name": "app-gateway-http-listener-ms02",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "westeurope",
          "name": "app-gateway-ms02",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "app-gateway-pool-ms02",
              "backend_http_settings_name": "app-gateway-settings-ms02",
              "http_listener_name": "app-gateway-http-listener-ms02",
              "name": "app-gateway-rule-ms02",
              "priority": 100,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "bugtracker-ms02",
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
      "name": "app_gateway",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_dashboard_grafana.grafana",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "api_key_enabled": false,
          "auto_generated_domain_name_label_scope": "TenantReuse",
          "azure_monitor_workspace_integrations": [
            {}
          ],
          "deterministic_outbound_ip_enabled": false,
          "grafana_major_version": "9",
          "identity": [
            {
              "identity_ids": null,
              "type": "SystemAssigned"
            }
          ],
          "location": "westeurope",
          "name": "bugtracker-ms02-grafana",
          "public_network_access_enabled": true,
          "resource_group_name": "bugtracker-ms02",
          "sku": "Standard",
          "smtp": [],
          "tags": null,
          "timeouts": null,
          "zone_redundancy_enabled": false
        },
        "after_sensitive": {
          "azure_monitor_workspace_integrations": [
            {}
          ],
          "identity": [
            {}
          ],
          "outbound_ip": [],
          "smtp": []
        },
        "after_unknown": {
          "azure_monitor_workspace_integrations": [
            {
              "resource_id": true
            }
          ],
          "endpoint": true,
          "grafana_version": true,
          "id": true,
          "identity": [
            {
              "principal_id": true,
              "tenant_id": true
            }
          ],
          "outbound_ip": true,
          "smtp": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "grafana",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_dashboard_grafana"
    },
    {
      "address": "azurerm_key_vault.vault",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "enable_rbac_authorization": null,
          "enabled_for_deployment": null,
          "enabled_for_disk_encryption": null,
          "enabled_for_template_deployment": null,
          "location": "westeurope",
          "name": "bugtracker-ms02",
          "public_network_access_enabled": true,
          "purge_protection_enabled": null,
          "resource_group_name": "bugtracker-ms02",
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
          "network_acls": true,
          "vault_uri": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "vault",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault"
    },
    {
      "address": "azurerm_key_vault_access_policy.cluster",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "application_id": null,
          "certificate_permissions": null,
          "key_permissions": null,
          "secret_permissions": [
            "Get"
          ],
          "storage_permissions": null,
          "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
          "timeouts": null
        },
        "after_sensitive": {
          "secret_permissions": [
            false
          ]
        },
        "after_unknown": {
          "id": true,
          "key_vault_id": true,
          "object_id": true,
          "secret_permissions": [
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "cluster",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_access_policy"
    },
    {
      "address": "azurerm_key_vault_access_policy.policy",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "application_id": null,
          "certificate_permissions": null,
          "key_permissions": null,
          "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
          "secret_permissions": [
            "Get",
            "List",
            "Set"
          ],
          "storage_permissions": null,
          "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
          "timeouts": null
        },
        "after_sensitive": {
          "secret_permissions": [
            false,
            false,
            false
          ]
        },
        "after_unknown": {
          "id": true,
          "key_vault_id": true,
          "secret_permissions": [
            false,
            false,
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "policy",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_access_policy"
    },
    {
      "address": "azurerm_key_vault_secret.bugservicedb_connectionstring",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "content_type": null,
          "expiration_date": null,
          "name": "bugservicedb-connection-string",
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
      "name": "bugservicedb_connectionstring",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_secret"
    },
    {
      "address": "azurerm_key_vault_secret.userservicedb_connectionstring",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "content_type": null,
          "expiration_date": null,
          "name": "userservicedb-connection-string",
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
      "name": "userservicedb_connectionstring",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_secret"
    },
    {
      "address": "azurerm_kubernetes_cluster.cluster",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "aci_connector_linux": [],
          "automatic_channel_upgrade": null,
          "azure_active_directory_role_based_access_control": [],
          "azure_policy_enabled": null,
          "confidential_computing": [],
          "cost_analysis_enabled": null,
          "custom_ca_trust_certificates_base64": null,
          "default_node_pool": [
            {
              "capacity_reservation_group_id": null,
              "custom_ca_trust_enabled": null,
              "enable_auto_scaling": null,
              "enable_host_encryption": null,
              "enable_node_public_ip": null,
              "fips_enabled": null,
              "gpu_instance": null,
              "host_group_id": null,
              "kubelet_config": [],
              "linux_os_config": [],
              "max_count": null,
              "message_of_the_day": null,
              "min_count": null,
              "name": "default",
              "node_count": 1,
              "node_network_profile": [],
              "node_public_ip_prefix_id": null,
              "node_taints": null,
              "only_critical_addons_enabled": null,
              "os_disk_type": "Managed",
              "pod_subnet_id": null,
              "proximity_placement_group_id": null,
              "scale_down_mode": "Delete",
              "snapshot_id": null,
              "tags": null,
              "temporary_name_for_rotation": null,
              "type": "VirtualMachineScaleSets",
              "ultra_ssd_enabled": false,
              "upgrade_settings": [],
              "vm_size": "Standard_D2_v2",
              "zones": null
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "bugtracker-ms02",
          "dns_prefix_private_cluster": null,
          "edge_zone": null,
          "enable_pod_security_policy": null,
          "http_application_routing_enabled": null,
          "http_proxy_config": [],
          "identity": [
            {
              "identity_ids": null,
              "type": "SystemAssigned"
            }
          ],
          "image_cleaner_enabled": false,
          "image_cleaner_interval_hours": 48,
          "ingress_application_gateway": [
            {
              "gateway_name": null,
              "subnet_cidr": null,
              "subnet_id": null
            }
          ],
          "key_management_service": [],
          "key_vault_secrets_provider": [
            {
              "secret_rotation_enabled": true,
              "secret_rotation_interval": "2m"
            }
          ],
          "linux_profile": [],
          "local_account_disabled": null,
          "location": "westeurope",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [
            {
              "annotations_allowed": null,
              "labels_allowed": null
            }
          ],
          "name": "bugtracker-ms02",
          "node_os_channel_upgrade": null,
          "oidc_issuer_enabled": null,
          "oms_agent": [
            {
              "msi_auth_for_monitoring_enabled": true
            }
          ],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "bugtracker-ms02",
          "role_based_access_control_enabled": true,
          "run_command_enabled": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "sku_tier": "Free",
          "storage_profile": [],
          "support_plan": "KubernetesOfficial",
          "tags": null,
          "timeouts": null,
          "web_app_routing": [],
          "workload_autoscaler_profile": [],
          "workload_identity_enabled": false
        },
        "after_sensitive": {
          "aci_connector_linux": [],
          "api_server_access_profile": [],
          "api_server_authorized_ip_ranges": [],
          "auto_scaler_profile": [],
          "azure_active_directory_role_based_access_control": [],
          "confidential_computing": [],
          "default_node_pool": [
            {
              "kubelet_config": [],
              "linux_os_config": [],
              "node_labels": {},
              "node_network_profile": [],
              "upgrade_settings": []
            }
          ],
          "http_proxy_config": [],
          "identity": [
            {}
          ],
          "ingress_application_gateway": [
            {
              "ingress_application_gateway_identity": []
            }
          ],
          "key_management_service": [],
          "key_vault_secrets_provider": [
            {
              "secret_identity": []
            }
          ],
          "kube_admin_config": true,
          "kube_admin_config_raw": true,
          "kube_config": true,
          "kube_config_raw": true,
          "kubelet_identity": [],
          "linux_profile": [],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [
            {}
          ],
          "network_profile": [],
          "oms_agent": [
            {
              "oms_agent_identity": []
            }
          ],
          "service_mesh_profile": [],
          "service_principal": [],
          "storage_profile": [],
          "web_app_routing": [],
          "windows_profile": [],
          "workload_autoscaler_profile": []
        },
        "after_unknown": {
          "aci_connector_linux": [],
          "api_server_access_profile": true,
          "api_server_authorized_ip_ranges": true,
          "auto_scaler_profile": true,
          "azure_active_directory_role_based_access_control": [],
          "confidential_computing": [],
          "current_kubernetes_version": true,
          "default_node_pool": [
            {
              "kubelet_config": [],
              "kubelet_disk_type": true,
              "linux_os_config": [],
              "max_pods": true,
              "node_labels": true,
              "node_network_profile": [],
              "orchestrator_version": true,
              "os_disk_size_gb": true,
              "os_sku": true,
              "upgrade_settings": [],
              "vnet_subnet_id": true,
              "workload_runtime": true
            }
          ],
          "fqdn": true,
          "http_application_routing_zone_name": true,
          "http_proxy_config": [],
          "id": true,
          "identity": [
            {
              "principal_id": true,
              "tenant_id": true
            }
          ],
          "ingress_application_gateway": [
            {
              "effective_gateway_id": true,
              "gateway_id": true,
              "ingress_application_gateway_identity": true
            }
          ],
          "key_management_service": [],
          "key_vault_secrets_provider": [
            {
              "secret_identity": true
            }
          ],
          "kube_admin_config": true,
          "kube_admin_config_raw": true,
          "kube_config": true,
          "kube_config_raw": true,
          "kubelet_identity": true,
          "kubernetes_version": true,
          "linux_profile": [],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [
            {}
          ],
          "network_profile": true,
          "node_resource_group": true,
          "node_resource_group_id": true,
          "oidc_issuer_url": true,
          "oms_agent": [
            {
              "log_analytics_workspace_id": true,
              "oms_agent_identity": true
            }
          ],
          "portal_fqdn": true,
          "private_dns_zone_id": true,
          "private_fqdn": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "storage_profile": [],
          "web_app_routing": [],
          "windows_profile": true,
          "workload_autoscaler_profile": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "cluster",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_log_analytics_workspace.workspace",
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
          "name": "bugtracker-ms02-logs",
          "reservation_capacity_in_gb_per_day": null,
          "resource_group_name": "bugtracker-ms02",
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
      "name": "workspace",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_log_analytics_workspace"
    },
    {
      "address": "azurerm_monitor_alert_prometheus_rule_group.kubernetes_recording_rules_rule_group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "cluster_name": "bugtracker-ms02",
          "description": "Kubernetes Recording Rules Rule Group",
          "interval": "PT1M",
          "location": "westeurope",
          "name": "KubernetesRecordingRulesRuleGroup-ms02",
          "resource_group_name": "bugtracker-ms02",
          "rule": [
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum by (cluster, namespace, pod, container) (  irate(container_cpu_usage_seconds_total{job=\"cadvisor\", image!=\"\"}[5m])) * on (cluster, namespace, pod) group_left(node) topk by (cluster, namespace, pod) (  1, max by(cluster, namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
              "for": null,
              "labels": null,
              "record": "node_namespace_pod_container:container_cpu_usage_seconds_total:sum_irate",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "container_memory_working_set_bytes{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
              "for": null,
              "labels": null,
              "record": "node_namespace_pod_container:container_memory_working_set_bytes",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "container_memory_rss{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
              "for": null,
              "labels": null,
              "record": "node_namespace_pod_container:container_memory_rss",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "container_memory_cache{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
              "for": null,
              "labels": null,
              "record": "node_namespace_pod_container:container_memory_cache",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "container_memory_swap{job=\"cadvisor\", image!=\"\"}* on (namespace, pod) group_left(node) topk by(namespace, pod) (1,  max by(namespace, pod, node) (kube_pod_info{node!=\"\"}))\n",
              "for": null,
              "labels": null,
              "record": "node_namespace_pod_container:container_memory_swap",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
              "for": null,
              "labels": null,
              "record": "cluster:namespace:pod_memory:active:kube_pod_container_resource_requests",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
              "for": null,
              "labels": null,
              "record": "namespace_memory:kube_pod_container_resource_requests:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
              "for": null,
              "labels": null,
              "record": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_requests",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_requests{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
              "for": null,
              "labels": null,
              "record": "namespace_cpu:kube_pod_container_resource_requests:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) (  (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1))\n",
              "for": null,
              "labels": null,
              "record": "cluster:namespace:pod_memory:active:kube_pod_container_resource_limits",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"memory\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
              "for": null,
              "labels": null,
              "record": "namespace_memory:kube_pod_container_resource_limits:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}  * on (namespace, pod, cluster)group_left() max by (namespace, pod, cluster) ( (kube_pod_status_phase{phase=~\"Pending|Running\"} == 1) )\n",
              "for": null,
              "labels": null,
              "record": "cluster:namespace:pod_cpu:active:kube_pod_container_resource_limits",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum by (namespace, cluster) (    sum by (namespace, pod, cluster) (        max by (namespace, pod, container, cluster) (          kube_pod_container_resource_limits{resource=\"cpu\",job=\"kube-state-metrics\"}        ) * on(namespace, pod, cluster) group_left() max by (namespace, pod, cluster) (          kube_pod_status_phase{phase=~\"Pending|Running\"} == 1        )    ))\n",
              "for": null,
              "labels": null,
              "record": "namespace_cpu:kube_pod_container_resource_limits:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    label_replace(      kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"ReplicaSet\"},      \"replicaset\", \"$1\", \"owner_name\", \"(.*)\"    ) * on(replicaset, namespace) group_left(owner_name) topk by(replicaset, namespace) (      1, max by (replicaset, namespace, owner_name) (        kube_replicaset_owner{job=\"kube-state-metrics\"}      )    ),    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
              "for": null,
              "labels": {
                "workload_type": "deployment"
              },
              "record": "namespace_workload_pod:kube_pod_owner:relabel",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"DaemonSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
              "for": null,
              "labels": {
                "workload_type": "daemonset"
              },
              "record": "namespace_workload_pod:kube_pod_owner:relabel",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"StatefulSet\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
              "for": null,
              "labels": {
                "workload_type": "statefulset"
              },
              "record": "namespace_workload_pod:kube_pod_owner:relabel",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "max by (cluster, namespace, workload, pod) (  label_replace(    kube_pod_owner{job=\"kube-state-metrics\", owner_kind=\"Job\"},    \"workload\", \"$1\", \"owner_name\", \"(.*)\"  ))\n",
              "for": null,
              "labels": {
                "workload_type": "job"
              },
              "record": "namespace_workload_pod:kube_pod_owner:relabel",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum(  node_memory_MemAvailable_bytes{job=\"node\"} or  (    node_memory_Buffers_bytes{job=\"node\"} +    node_memory_Cached_bytes{job=\"node\"} +    node_memory_MemFree_bytes{job=\"node\"} +    node_memory_Slab_bytes{job=\"node\"}  )) by (cluster)\n",
              "for": null,
              "labels": null,
              "record": ":node_memory_MemAvailable_bytes:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum(rate(node_cpu_seconds_total{job=\"node\",mode!=\"idle\",mode!=\"iowait\",mode!=\"steal\"}[5m])) by (cluster) /count(sum(node_cpu_seconds_total{job=\"node\"}) by (cluster, instance, cpu)) by (cluster)\n",
              "for": null,
              "labels": null,
              "record": "cluster:node_cpu:ratio_rate5m",
              "severity": null
            }
          ],
          "rule_group_enabled": true,
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "rule": [
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            }
          ],
          "scopes": []
        },
        "after_unknown": {
          "id": true,
          "rule": [
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": [],
              "labels": {}
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            }
          ],
          "scopes": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "kubernetes_recording_rules_rule_group",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_alert_prometheus_rule_group"
    },
    {
      "address": "azurerm_monitor_alert_prometheus_rule_group.node_recording_rules_rule_group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "cluster_name": "bugtracker-ms02",
          "description": "Node Recording Rules Rule Group",
          "interval": "PT1M",
          "location": "westeurope",
          "name": "NodeRecordingRulesRuleGroup-ms02",
          "resource_group_name": "bugtracker-ms02",
          "rule": [
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "count without (cpu, mode) (  node_cpu_seconds_total{job=\"node\",mode=\"idle\"})\n",
              "for": null,
              "labels": null,
              "record": "instance:node_num_cpu:sum",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "1 - avg without (cpu) (  sum without (mode) (rate(node_cpu_seconds_total{job=\"node\", mode=~\"idle|iowait|steal\"}[5m])))\n",
              "for": null,
              "labels": null,
              "record": "instance:node_cpu_utilisation:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "(  node_load1{job=\"node\"}/  instance:node_num_cpu:sum{job=\"node\"})\n",
              "for": null,
              "labels": null,
              "record": "instance:node_load1_per_cpu:ratio",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "1 - (  (    node_memory_MemAvailable_bytes{job=\"node\"}    or    (      node_memory_Buffers_bytes{job=\"node\"}      +      node_memory_Cached_bytes{job=\"node\"}      +      node_memory_MemFree_bytes{job=\"node\"}      +      node_memory_Slab_bytes{job=\"node\"}    )  )/  node_memory_MemTotal_bytes{job=\"node\"})\n",
              "for": null,
              "labels": null,
              "record": "instance:node_memory_utilisation:ratio",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "rate(node_vmstat_pgmajfault{job=\"node\"}[5m])\n",
              "for": null,
              "labels": null,
              "record": "instance:node_vmstat_pgmajfault:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "rate(node_disk_io_time_seconds_total{job=\"node\", device!=\"\"}[5m])\n",
              "for": null,
              "labels": null,
              "record": "instance_device:node_disk_io_time_seconds:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "rate(node_disk_io_time_weighted_seconds_total{job=\"node\", device!=\"\"}[5m])\n",
              "for": null,
              "labels": null,
              "record": "instance_device:node_disk_io_time_weighted_seconds:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum without (device) (  rate(node_network_receive_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n",
              "for": null,
              "labels": null,
              "record": "instance:node_network_receive_bytes_excluding_lo:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum without (device) (  rate(node_network_transmit_bytes_total{job=\"node\", device!=\"lo\"}[5m]))\n",
              "for": null,
              "labels": null,
              "record": "instance:node_network_transmit_bytes_excluding_lo:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum without (device) (  rate(node_network_receive_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n",
              "for": null,
              "labels": null,
              "record": "instance:node_network_receive_drop_excluding_lo:rate5m",
              "severity": null
            },
            {
              "action": [],
              "alert": null,
              "alert_resolution": [],
              "annotations": null,
              "enabled": true,
              "expression": "sum without (device) (  rate(node_network_transmit_drop_total{job=\"node\", device!=\"lo\"}[5m]))\n",
              "for": null,
              "labels": null,
              "record": "instance:node_network_transmit_drop_excluding_lo:rate5m",
              "severity": null
            }
          ],
          "rule_group_enabled": true,
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "rule": [
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            }
          ],
          "scopes": []
        },
        "after_unknown": {
          "id": true,
          "rule": [
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            },
            {
              "action": [],
              "alert_resolution": []
            }
          ],
          "scopes": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "node_recording_rules_rule_group",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_alert_prometheus_rule_group"
    },
    {
      "address": "azurerm_monitor_data_collection_endpoint.collection_endpoint",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "description": null,
          "kind": "Linux",
          "location": "westeurope",
          "name": "bugtracker-ms02-prometheus",
          "public_network_access_enabled": true,
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "configuration_access_endpoint": true,
          "id": true,
          "immutable_id": true,
          "logs_ingestion_endpoint": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "collection_endpoint",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_data_collection_endpoint"
    },
    {
      "address": "azurerm_monitor_data_collection_rule.ci_collection_rule",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "data_collection_endpoint_id": null,
          "data_flow": [
            {
              "built_in_transform": null,
              "destinations": [
                "ciworkspace"
              ],
              "output_stream": null,
              "streams": [
                "Microsoft-ContainerLog",
                "Microsoft-ContainerLogV2",
                "Microsoft-KubeEvents",
                "Microsoft-KubePodInventory",
                "Microsoft-KubeNodeInventory",
                "Microsoft-KubePVInventory",
                "Microsoft-KubeServices",
                "Microsoft-KubeMonAgentEvents",
                "Microsoft-InsightsMetrics",
                "Microsoft-ContainerInventory",
                "Microsoft-ContainerNodeInventory",
                "Microsoft-Perf"
              ],
              "transform_kql": null
            },
            {
              "built_in_transform": null,
              "destinations": [
                "ciworkspace"
              ],
              "output_stream": null,
              "streams": [
                "Microsoft-Syslog"
              ],
              "transform_kql": null
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [
                {
                  "extension_json": "{\"dataCollectionSettings\":{\"enableContainerLogV2\":true,\"interval\":\"1m\",\"namespaceFilteringMode\":\"Off\",\"namespaces\":[\"kube-system\",\"gatekeeper-system\",\"azure-arc\"]}}",
                  "extension_name": "ContainerInsights",
                  "input_data_sources": null,
                  "name": "ContainerInsightsExtension",
                  "streams": [
                    "Microsoft-ContainerLog",
                    "Microsoft-ContainerLogV2",
                    "Microsoft-KubeEvents",
                    "Microsoft-KubePodInventory",
                    "Microsoft-KubeNodeInventory",
                    "Microsoft-KubePVInventory",
                    "Microsoft-KubeServices",
                    "Microsoft-KubeMonAgentEvents",
                    "Microsoft-InsightsMetrics",
                    "Microsoft-ContainerInventory",
                    "Microsoft-ContainerNodeInventory",
                    "Microsoft-Perf"
                  ]
                }
              ],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [],
              "syslog": [
                {
                  "facility_names": [
                    "auth",
                    "authpriv",
                    "cron",
                    "daemon",
                    "mark",
                    "kern",
                    "local0",
                    "local1",
                    "local2",
                    "local3",
                    "local4",
                    "local5",
                    "local6",
                    "local7",
                    "lpr",
                    "mail",
                    "news",
                    "syslog",
                    "user",
                    "uucp"
                  ],
                  "log_levels": [
                    "Debug",
                    "Info",
                    "Notice",
                    "Warning",
                    "Error",
                    "Critical",
                    "Alert",
                    "Emergency"
                  ],
                  "name": "sysLogsDataSource",
                  "streams": [
                    "Microsoft-Syslog"
                  ]
                }
              ],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "description": "Data Collection Rule for Azure Monitor Container Insights",
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [
                {
                  "name": "ciworkspace"
                }
              ],
              "monitor_account": [],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "identity": [],
          "kind": null,
          "location": "westeurope",
          "name": "MS-ContainerInsights-ms02",
          "resource_group_name": "bugtracker-ms02",
          "stream_declaration": [],
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "data_flow": [
            {
              "destinations": [
                false
              ],
              "streams": [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false
              ]
            },
            {
              "destinations": [
                false
              ],
              "streams": [
                false
              ]
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [
                {
                  "streams": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ]
                }
              ],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [],
              "syslog": [
                {
                  "facility_names": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ],
                  "log_levels": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ],
                  "streams": [
                    false
                  ]
                }
              ],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [
                {}
              ],
              "monitor_account": [],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "identity": [],
          "stream_declaration": []
        },
        "after_unknown": {
          "data_flow": [
            {
              "destinations": [
                false
              ],
              "streams": [
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false,
                false
              ]
            },
            {
              "destinations": [
                false
              ],
              "streams": [
                false
              ]
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [
                {
                  "streams": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ]
                }
              ],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [],
              "syslog": [
                {
                  "facility_names": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ],
                  "log_levels": [
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false,
                    false
                  ],
                  "streams": [
                    false
                  ]
                }
              ],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [
                {
                  "workspace_resource_id": true
                }
              ],
              "monitor_account": [],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "id": true,
          "identity": [],
          "immutable_id": true,
          "stream_declaration": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "ci_collection_rule",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_data_collection_rule"
    },
    {
      "address": "azurerm_monitor_data_collection_rule.collection_rule",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "data_flow": [
            {
              "built_in_transform": null,
              "destinations": [
                "MonitoringAccount"
              ],
              "output_stream": null,
              "streams": [
                "Microsoft-PrometheusMetrics"
              ],
              "transform_kql": null
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [
                {
                  "label_include_filter": [],
                  "name": "PrometheusDataSource",
                  "streams": [
                    "Microsoft-PrometheusMetrics"
                  ]
                }
              ],
              "syslog": [],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "description": "Data Collection Rule for Azure Monitor Metrics Profile (Managed Prometheus)",
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [],
              "monitor_account": [
                {
                  "name": "MonitoringAccount"
                }
              ],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "identity": [],
          "kind": "Linux",
          "location": "westeurope",
          "name": "bugtracker-ms02-prometheus-rule",
          "resource_group_name": "bugtracker-ms02",
          "stream_declaration": [],
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "data_flow": [
            {
              "destinations": [
                false
              ],
              "streams": [
                false
              ]
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [
                {
                  "label_include_filter": [],
                  "streams": [
                    false
                  ]
                }
              ],
              "syslog": [],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [],
              "monitor_account": [
                {}
              ],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "identity": [],
          "stream_declaration": []
        },
        "after_unknown": {
          "data_collection_endpoint_id": true,
          "data_flow": [
            {
              "destinations": [
                false
              ],
              "streams": [
                false
              ]
            }
          ],
          "data_sources": [
            {
              "data_import": [],
              "extension": [],
              "iis_log": [],
              "log_file": [],
              "performance_counter": [],
              "platform_telemetry": [],
              "prometheus_forwarder": [
                {
                  "label_include_filter": [],
                  "streams": [
                    false
                  ]
                }
              ],
              "syslog": [],
              "windows_event_log": [],
              "windows_firewall_log": []
            }
          ],
          "destinations": [
            {
              "azure_monitor_metrics": [],
              "event_hub": [],
              "event_hub_direct": [],
              "log_analytics": [],
              "monitor_account": [
                {
                  "monitor_account_id": true
                }
              ],
              "storage_blob": [],
              "storage_blob_direct": [],
              "storage_table_direct": []
            }
          ],
          "id": true,
          "identity": [],
          "immutable_id": true,
          "stream_declaration": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "collection_rule",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_data_collection_rule"
    },
    {
      "address": "azurerm_monitor_data_collection_rule_association.ci_collection_rule_association",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "data_collection_endpoint_id": null,
          "description": "Association of container insights data collection rule. Deleting this association will break the data collection for this AKS Cluster.",
          "name": "ContainerInsightsExtension",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "data_collection_rule_id": true,
          "id": true,
          "target_resource_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "ci_collection_rule_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_data_collection_rule_association"
    },
    {
      "address": "azurerm_monitor_data_collection_rule_association.collection_rule_association",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "data_collection_endpoint_id": null,
          "description": "Association of data collection rule. Deleting this association will break the data collection for this AKS Cluster.",
          "name": "bugtracker-ms02-prometheus-rule-association",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "data_collection_rule_id": true,
          "id": true,
          "target_resource_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "collection_rule_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_data_collection_rule_association"
    },
    {
      "address": "azurerm_monitor_workspace.workspace",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westeurope",
          "name": "bugtracker-ms02-workspace",
          "public_network_access_enabled": true,
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "default_data_collection_endpoint_id": true,
          "default_data_collection_rule_id": true,
          "id": true,
          "query_endpoint": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "workspace",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_workspace"
    },
    {
      "address": "azurerm_public_ip.app_gateway",
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
          "name": "app-gateway-ip-ms02",
          "public_ip_prefix_id": null,
          "resource_group_name": "bugtracker-ms02",
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
      "name": "app_gateway",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_resource_group.group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westeurope",
          "managed_by": null,
          "name": "bugtracker-ms02",
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
      "name": "group",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_role_assignment.datareaderrole",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Monitoring Reader",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "datareaderrole",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.grafana_owner",
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
          "role_definition_name": "Grafana Admin",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "grafana_owner",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.gv_vnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Network Contributor",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "gv_vnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.gw_contributor",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Contributor",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "gw_contributor",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.gw_reader",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Reader",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "gw_reader",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.gw_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Network Contributor",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true,
          "principal_id": true,
          "principal_type": true,
          "role_definition_id": true,
          "scope": true,
          "skip_service_principal_aad_check": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "gw_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_subnet.aks_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.1.1.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "aks-subnet",
          "resource_group_name": "bugtracker-ms02",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.Sql"
          ],
          "timeouts": null,
          "virtual_network_name": "bugtracker-ms02"
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
      "name": "aks_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.app_gateway",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.1.4.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "app-gateway-subnet",
          "resource_group_name": "bugtracker-ms02",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "bugtracker-ms02"
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
      "name": "app_gateway",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_virtual_network.network",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_space": [
            "10.1.0.0/16"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "westeurope",
          "name": "bugtracker-ms02",
          "resource_group_name": "bugtracker-ms02",
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
      "name": "network",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    },
    {
      "address": "helm_release.aks_secret_provider",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "atomic": false,
          "chart": "./../helm/aks-secret-provider",
          "cleanup_on_fail": false,
          "create_namespace": false,
          "dependency_update": false,
          "description": null,
          "devel": null,
          "disable_crd_hooks": false,
          "disable_openapi_validation": false,
          "disable_webhooks": false,
          "force_update": true,
          "keyring": null,
          "lint": false,
          "max_history": 0,
          "name": "aks-secret-provider",
          "namespace": "default",
          "pass_credentials": false,
          "postrender": [],
          "recreate_pods": false,
          "render_subchart_notes": true,
          "replace": false,
          "repository": null,
          "repository_ca_file": null,
          "repository_cert_file": null,
          "repository_key_file": null,
          "repository_password": null,
          "repository_username": null,
          "reset_values": false,
          "reuse_values": false,
          "set": [],
          "set_list": [],
          "set_sensitive": [],
          "skip_crds": false,
          "status": "deployed",
          "timeout": 300,
          "upgrade_install": null,
          "verify": false,
          "version": "1.0.0",
          "wait": true,
          "wait_for_jobs": false
        },
        "after_sensitive": {
          "metadata": [],
          "postrender": [],
          "repository_password": true,
          "set": [],
          "set_list": [],
          "set_sensitive": [],
          "values": []
        },
        "after_unknown": {
          "id": true,
          "manifest": true,
          "metadata": true,
          "postrender": [],
          "set": [],
          "set_list": [],
          "set_sensitive": [],
          "values": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "aks_secret_provider",
      "provider_name": "registry.terraform.io/hashicorp/helm",
      "type": "helm_release"
    },
    {
      "address": "module.bugservicedb.azurerm_postgresql_flexible_server.server",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "administrator_login": "psqladmin",
          "auto_grow_enabled": false,
          "create_mode": null,
          "customer_managed_key": [],
          "geo_redundant_backup_enabled": false,
          "high_availability": [],
          "identity": [],
          "location": "westeurope",
          "maintenance_window": [],
          "name": "bugservicedb-ms02",
          "point_in_time_restore_time_in_utc": null,
          "public_network_access_enabled": true,
          "replication_role": null,
          "resource_group_name": "bugtracker-ms02",
          "sku_name": "GP_Standard_D2s_v3",
          "source_server_id": null,
          "storage_mb": 32768,
          "tags": null,
          "timeouts": null,
          "version": "12",
          "zone": "3"
        },
        "after_sensitive": {
          "administrator_password": true,
          "authentication": [],
          "customer_managed_key": [],
          "high_availability": [],
          "identity": [],
          "maintenance_window": []
        },
        "after_unknown": {
          "administrator_password": true,
          "authentication": true,
          "backup_retention_days": true,
          "customer_managed_key": [],
          "delegated_subnet_id": true,
          "fqdn": true,
          "high_availability": [],
          "id": true,
          "identity": [],
          "maintenance_window": [],
          "private_dns_zone_id": true,
          "storage_tier": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.bugservicedb",
      "name": "server",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_postgresql_flexible_server"
    },
    {
      "address": "module.bugservicedb.azurerm_postgresql_flexible_server_database.database",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "charset": "UTF8",
          "collation": "en_US.utf8",
          "name": "bugs",
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
      "module_address": "module.bugservicedb",
      "name": "database",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_postgresql_flexible_server_database"
    },
    {
      "address": "module.bugservicedb.azurerm_private_dns_zone.private_dns_zone",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "name": "bugservicedb-ms02-zone.postgres.database.azure.com",
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "soa_record": []
        },
        "after_unknown": {
          "id": true,
          "max_number_of_record_sets": true,
          "max_number_of_virtual_network_links": true,
          "max_number_of_virtual_network_links_with_registration": true,
          "number_of_record_sets": true,
          "soa_record": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.bugservicedb",
      "name": "private_dns_zone",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_private_dns_zone"
    },
    {
      "address": "module.bugservicedb.azurerm_private_dns_zone_virtual_network_link.network_link",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "name": "bugservicedb-ms02VnetZone.com",
          "private_dns_zone_name": "bugservicedb-ms02-zone.postgres.database.azure.com",
          "registration_enabled": false,
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "virtual_network_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.bugservicedb",
      "name": "network_link",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_private_dns_zone_virtual_network_link"
    },
    {
      "address": "module.bugservicedb.azurerm_subnet.subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.1.3.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [
            {
              "name": "fs",
              "service_delegation": [
                {
                  "actions": [
                    "Microsoft.Network/virtualNetworks/subnets/join/action"
                  ],
                  "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                }
              ]
            }
          ],
          "name": "bugservicedb-ms02-subnet",
          "resource_group_name": "bugtracker-ms02",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.Storage"
          ],
          "timeouts": null,
          "virtual_network_name": "bugtracker-ms02"
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
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.bugservicedb",
      "name": "subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "module.bugservicedb.random_password.password",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "keepers": null,
          "length": 16,
          "lower": true,
          "min_lower": 1,
          "min_numeric": 1,
          "min_special": 1,
          "min_upper": 1,
          "number": true,
          "numeric": true,
          "override_special": "!_%@",
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
      "module_address": "module.bugservicedb",
      "name": "password",
      "provider_name": "registry.terraform.io/hashicorp/random",
      "type": "random_password"
    },
    {
      "address": "module.userservicedb.azurerm_postgresql_flexible_server.server",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "administrator_login": "psqladmin",
          "auto_grow_enabled": false,
          "create_mode": null,
          "customer_managed_key": [],
          "geo_redundant_backup_enabled": false,
          "high_availability": [],
          "identity": [],
          "location": "westeurope",
          "maintenance_window": [],
          "name": "userservicedb-ms02",
          "point_in_time_restore_time_in_utc": null,
          "public_network_access_enabled": true,
          "replication_role": null,
          "resource_group_name": "bugtracker-ms02",
          "sku_name": "GP_Standard_D2s_v3",
          "source_server_id": null,
          "storage_mb": 32768,
          "tags": null,
          "timeouts": null,
          "version": "12",
          "zone": "3"
        },
        "after_sensitive": {
          "administrator_password": true,
          "authentication": [],
          "customer_managed_key": [],
          "high_availability": [],
          "identity": [],
          "maintenance_window": []
        },
        "after_unknown": {
          "administrator_password": true,
          "authentication": true,
          "backup_retention_days": true,
          "customer_managed_key": [],
          "delegated_subnet_id": true,
          "fqdn": true,
          "high_availability": [],
          "id": true,
          "identity": [],
          "maintenance_window": [],
          "private_dns_zone_id": true,
          "storage_tier": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.userservicedb",
      "name": "server",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_postgresql_flexible_server"
    },
    {
      "address": "module.userservicedb.azurerm_postgresql_flexible_server_database.database",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "charset": "UTF8",
          "collation": "en_US.utf8",
          "name": "users",
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
      "module_address": "module.userservicedb",
      "name": "database",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_postgresql_flexible_server_database"
    },
    {
      "address": "module.userservicedb.azurerm_private_dns_zone.private_dns_zone",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "name": "userservicedb-ms02-zone.postgres.database.azure.com",
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "soa_record": []
        },
        "after_unknown": {
          "id": true,
          "max_number_of_record_sets": true,
          "max_number_of_virtual_network_links": true,
          "max_number_of_virtual_network_links_with_registration": true,
          "number_of_record_sets": true,
          "soa_record": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.userservicedb",
      "name": "private_dns_zone",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_private_dns_zone"
    },
    {
      "address": "module.userservicedb.azurerm_private_dns_zone_virtual_network_link.network_link",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "name": "userservicedb-ms02VnetZone.com",
          "private_dns_zone_name": "userservicedb-ms02-zone.postgres.database.azure.com",
          "registration_enabled": false,
          "resource_group_name": "bugtracker-ms02",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "virtual_network_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.userservicedb",
      "name": "network_link",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_private_dns_zone_virtual_network_link"
    },
    {
      "address": "module.userservicedb.azurerm_subnet.subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.1.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [
            {
              "name": "fs",
              "service_delegation": [
                {
                  "actions": [
                    "Microsoft.Network/virtualNetworks/subnets/join/action"
                  ],
                  "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                }
              ]
            }
          ],
          "name": "userservicedb-ms02-subnet",
          "resource_group_name": "bugtracker-ms02",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.Storage"
          ],
          "timeouts": null,
          "virtual_network_name": "bugtracker-ms02"
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
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "module_address": "module.userservicedb",
      "name": "subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "module.userservicedb.random_password.password",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "keepers": null,
          "length": 16,
          "lower": true,
          "min_lower": 1,
          "min_numeric": 1,
          "min_special": 1,
          "min_upper": 1,
          "number": true,
          "numeric": true,
          "override_special": "!_%@",
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
      "module_address": "module.userservicedb",
      "name": "password",
      "provider_name": "registry.terraform.io/hashicorp/random",
      "type": "random_password"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:14:40Z",
  "variables": {
    "suffix": {
      "value": "ms02"
    }
  }
}

