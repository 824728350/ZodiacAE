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
        "keyvault_name": {
          "expression": {
            "references": [
              "azurerm_key_vault.main.name",
              "azurerm_key_vault.main"
            ]
          }
        },
        "kube_config_raw": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.main.kube_config_raw",
              "azurerm_kubernetes_cluster.main"
            ]
          },
          "sensitive": true
        },
        "oidc_issuer_url": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.main.oidc_issuer_url",
              "azurerm_kubernetes_cluster.main"
            ]
          }
        },
        "registry_endpoint": {
          "expression": {
            "references": [
              "azurerm_container_registry.main.login_server",
              "azurerm_container_registry.main"
            ]
          }
        },
        "service_account_client_id": {
          "expression": {
            "references": [
              "azurerm_user_assigned_identity.cluster_kubelet.client_id",
              "azurerm_user_assigned_identity.cluster_kubelet"
            ]
          }
        },
        "tenant_id": {
          "expression": {
            "references": [
              "data.azurerm_client_config.current.tenant_id",
              "data.azurerm_client_config.current"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azurerm_container_registry.main",
          "expressions": {
            "admin_enabled": {
              "constant_value": true
            },
            "location": {
              "references": [
                "azurerm_resource_group.main.location",
                "azurerm_resource_group.main"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "sku": {
              "constant_value": "Premium"
            },
            "zone_redundancy_enabled": {
              "constant_value": true
            }
          },
          "mode": "managed",
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_container_registry"
        },
        {
          "address": "azurerm_federated_identity_credential.main",
          "expressions": {
            "audience": {
              "constant_value": [
                "foo"
              ]
            },
            "issuer": {
              "references": [
                "azurerm_kubernetes_cluster.main.oidc_issuer_url",
                "azurerm_kubernetes_cluster.main"
              ]
            },
            "name": {
              "references": [
                "azurerm_user_assigned_identity.cluster_kubelet.name",
                "azurerm_user_assigned_identity.cluster_kubelet"
              ]
            },
            "parent_id": {
              "references": [
                "azurerm_user_assigned_identity.cluster_kubelet.id",
                "azurerm_user_assigned_identity.cluster_kubelet"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "subject": {
              "references": [
                "var.k8s_namespace",
                "var.k8s_service_account_name"
              ]
            }
          },
          "mode": "managed",
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_federated_identity_credential"
        },
        {
          "address": "azurerm_key_vault.main",
          "expressions": {
            "enable_rbac_authorization": {
              "constant_value": true
            },
            "enabled_for_disk_encryption": {
              "constant_value": false
            },
            "location": {
              "references": [
                "azurerm_resource_group.main.location",
                "azurerm_resource_group.main"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "purge_protection_enabled": {
              "constant_value": false
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
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
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_key_vault"
        },
        {
          "address": "azurerm_key_vault_secret.database_admin_password",
          "expressions": {
            "key_vault_id": {
              "references": [
                "azurerm_key_vault.main.id",
                "azurerm_key_vault.main"
              ]
            },
            "name": {
              "constant_value": "db-admin-password"
            },
            "value": {
              "references": [
                "random_password.database_admin.result",
                "random_password.database_admin"
              ]
            }
          },
          "mode": "managed",
          "name": "database_admin_password",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_key_vault_secret"
        },
        {
          "address": "azurerm_kubernetes_cluster.main",
          "depends_on": [
            "azurerm_role_assignment.cluster_identity_operator"
          ],
          "expressions": {
            "default_node_pool": [
              {
                "enable_auto_scaling": {
                  "constant_value": true
                },
                "max_count": {
                  "references": [
                    "var.aks_system_pool.max_node_count",
                    "var.aks_system_pool"
                  ]
                },
                "min_count": {
                  "references": [
                    "var.aks_system_pool.min_node_count",
                    "var.aks_system_pool"
                  ]
                },
                "name": {
                  "constant_value": "systempool"
                },
                "orchestrator_version": {
                  "references": [
                    "var.aks_orchestration_version"
                  ]
                },
                "os_disk_size_gb": {
                  "constant_value": 30
                },
                "os_disk_type": {
                  "constant_value": "Ephemeral"
                },
                "temporary_name_for_rotation": {
                  "constant_value": "workloadpool"
                },
                "upgrade_settings": [
                  {
                    "max_surge": {
                      "constant_value": "33%"
                    }
                  }
                ],
                "vm_size": {
                  "references": [
                    "var.aks_system_pool.vm_size",
                    "var.aks_system_pool"
                  ]
                },
                "vnet_subnet_id": {
                  "references": [
                    "azurerm_subnet.kubernetes.id",
                    "azurerm_subnet.kubernetes"
                  ]
                },
                "zones": {
                  "constant_value": [
                    1,
                    2,
                    3
                  ]
                }
              }
            ],
            "dns_prefix": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "identity": [
              {
                "identity_ids": {
                  "references": [
                    "azurerm_user_assigned_identity.cluster.id",
                    "azurerm_user_assigned_identity.cluster"
                  ]
                },
                "type": {
                  "constant_value": "UserAssigned"
                }
              }
            ],
            "key_vault_secrets_provider": [
              {
                "secret_rotation_enabled": {
                  "constant_value": true
                },
                "secret_rotation_interval": {
                  "constant_value": "5m"
                }
              }
            ],
            "kubelet_identity": [
              {
                "client_id": {
                  "references": [
                    "azurerm_user_assigned_identity.cluster_kubelet.client_id",
                    "azurerm_user_assigned_identity.cluster_kubelet"
                  ]
                },
                "object_id": {
                  "references": [
                    "azurerm_user_assigned_identity.cluster_kubelet.principal_id",
                    "azurerm_user_assigned_identity.cluster_kubelet"
                  ]
                },
                "user_assigned_identity_id": {
                  "references": [
                    "azurerm_user_assigned_identity.cluster_kubelet.id",
                    "azurerm_user_assigned_identity.cluster_kubelet"
                  ]
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
                "var.application_name",
                "var.environment_name"
              ]
            },
            "node_resource_group": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "oidc_issuer_enabled": {
              "constant_value": true
            },
            "oms_agent": [
              {
                "log_analytics_workspace_id": {
                  "references": [
                    "azurerm_log_analytics_workspace.main.id",
                    "azurerm_log_analytics_workspace.main"
                  ]
                },
                "msi_auth_for_monitoring_enabled": {
                  "constant_value": true
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "sku_tier": {
              "constant_value": "Standard"
            },
            "workload_identity_enabled": {
              "constant_value": true
            }
          },
          "mode": "managed",
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_kubernetes_cluster_node_pool.workload",
          "expressions": {
            "enable_auto_scaling": {
              "constant_value": true
            },
            "kubernetes_cluster_id": {
              "references": [
                "azurerm_kubernetes_cluster.main.id",
                "azurerm_kubernetes_cluster.main"
              ]
            },
            "max_count": {
              "references": [
                "var.aks_workload_pool.max_node_count",
                "var.aks_workload_pool"
              ]
            },
            "min_count": {
              "references": [
                "var.aks_workload_pool.min_node_count",
                "var.aks_workload_pool"
              ]
            },
            "mode": {
              "constant_value": "User"
            },
            "name": {
              "constant_value": "workloadpool"
            },
            "node_labels": {
              "constant_value": {
                "role": "workload"
              }
            },
            "node_taints": {
              "constant_value": [
                "workload=true:NoSchedule"
              ]
            },
            "orchestrator_version": {
              "references": [
                "var.aks_orchestration_version"
              ]
            },
            "os_disk_type": {
              "constant_value": "Ephemeral"
            },
            "upgrade_settings": [
              {
                "max_surge": {
                  "constant_value": "33%"
                }
              }
            ],
            "vm_size": {
              "references": [
                "var.aks_workload_pool.vm_size",
                "var.aks_workload_pool"
              ]
            },
            "vnet_subnet_id": {
              "references": [
                "azurerm_subnet.kubernetes.id",
                "azurerm_subnet.kubernetes"
              ]
            },
            "zones": {
              "constant_value": [
                1,
                2,
                3
              ]
            }
          },
          "mode": "managed",
          "name": "workload",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_kubernetes_cluster_node_pool"
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
                "var.application_name",
                "var.environment_name"
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
          "address": "azurerm_monitor_diagnostic_setting.aks_clusters",
          "expressions": {
            "log_analytics_destination_type": {
              "constant_value": "Dedicated"
            },
            "log_analytics_workspace_id": {
              "references": [
                "azurerm_log_analytics_workspace.main.id",
                "azurerm_log_analytics_workspace.main"
              ]
            },
            "metric": [
              {
                "category": {
                  "constant_value": "AllMetrics"
                }
              }
            ],
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "target_resource_id": {
              "references": [
                "azurerm_kubernetes_cluster.main.id",
                "azurerm_kubernetes_cluster.main"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_clusters",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_monitor_diagnostic_setting"
        },
        {
          "address": "azurerm_postgresql_database.main",
          "expressions": {
            "charset": {
              "constant_value": "UTF8"
            },
            "collation": {
              "constant_value": "English_United States.1252"
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "server_name": {
              "references": [
                "azurerm_postgresql_server.main.name",
                "azurerm_postgresql_server.main"
              ]
            }
          },
          "mode": "managed",
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_postgresql_database"
        },
        {
          "address": "azurerm_postgresql_server.main",
          "expressions": {
            "administrator_login": {
              "references": [
                "var.database_admin_username"
              ]
            },
            "administrator_login_password": {
              "references": [
                "random_password.database_admin.result",
                "random_password.database_admin"
              ]
            },
            "auto_grow_enabled": {
              "constant_value": true
            },
            "backup_retention_days": {
              "constant_value": 7
            },
            "geo_redundant_backup_enabled": {
              "constant_value": false
            },
            "location": {
              "references": [
                "azurerm_resource_group.main.location",
                "azurerm_resource_group.main"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "sku_name": {
              "constant_value": "B_Gen5_2"
            },
            "ssl_enforcement_enabled": {
              "constant_value": true
            },
            "storage_mb": {
              "constant_value": 5120
            },
            "version": {
              "constant_value": "9.5"
            }
          },
          "mode": "managed",
          "name": "main",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_postgresql_server"
        },
        {
          "address": "azurerm_resource_group.main",
          "expressions": {
            "location": {
              "references": [
                "var.primary_region"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
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
          "address": "azurerm_role_assignment.acr_push",
          "count_expression": {
            "references": [
              "var.container_registry_pushers"
            ]
          },
          "expressions": {
            "principal_id": {
              "references": [
                "var.container_registry_pushers",
                "count.index"
              ]
            },
            "role_definition_name": {
              "constant_value": "AcrPush"
            },
            "scope": {
              "references": [
                "azurerm_container_registry.main.id",
                "azurerm_container_registry.main"
              ]
            }
          },
          "mode": "managed",
          "name": "acr_push",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.cluster_identity_operator",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_user_assigned_identity.cluster.principal_id",
                "azurerm_user_assigned_identity.cluster"
              ]
            },
            "role_definition_name": {
              "constant_value": "Managed Identity Operator"
            },
            "scope": {
              "references": [
                "azurerm_resource_group.main.id",
                "azurerm_resource_group.main"
              ]
            }
          },
          "mode": "managed",
          "name": "cluster_identity_operator",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.cluster_kubelet_acr",
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_user_assigned_identity.cluster_kubelet.principal_id",
                "azurerm_user_assigned_identity.cluster_kubelet"
              ]
            },
            "role_definition_name": {
              "constant_value": "AcrPull"
            },
            "scope": {
              "references": [
                "azurerm_container_registry.main.id",
                "azurerm_container_registry.main"
              ]
            }
          },
          "mode": "managed",
          "name": "cluster_kubelet_acr",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.keyvault_admins",
          "count_expression": {
            "references": [
              "var.keyvault_admins"
            ]
          },
          "expressions": {
            "principal_id": {
              "references": [
                "var.keyvault_admins",
                "count.index"
              ]
            },
            "role_definition_name": {
              "constant_value": "Key Vault Administrator"
            },
            "scope": {
              "references": [
                "azurerm_key_vault.main.id",
                "azurerm_key_vault.main"
              ]
            }
          },
          "mode": "managed",
          "name": "keyvault_admins",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.keyvault_readers",
          "count_expression": {
            "references": [
              "var.keyvault_readers"
            ]
          },
          "expressions": {
            "principal_id": {
              "references": [
                "var.keyvault_readers",
                "count.index"
              ]
            },
            "role_definition_name": {
              "constant_value": "Key Vault Reader"
            },
            "scope": {
              "references": [
                "azurerm_key_vault.main.id",
                "azurerm_key_vault.main"
              ]
            }
          },
          "mode": "managed",
          "name": "keyvault_readers",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.keyvault_terraform_user",
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
                "azurerm_key_vault.main.id",
                "azurerm_key_vault.main"
              ]
            }
          },
          "mode": "managed",
          "name": "keyvault_terraform_user",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_subnet.ingress",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.vnet_cidr_block"
              ]
            },
            "name": {
              "constant_value": "snet-ingress"
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
          "name": "ingress",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.kubernetes",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.vnet_cidr_block"
              ]
            },
            "name": {
              "constant_value": "snet-kubernetes"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.main.name",
                "azurerm_resource_group.main"
              ]
            },
            "service_endpoints": {
              "constant_value": [
                "Microsoft.Storage",
                "Microsoft.KeyVault",
                "Microsoft.ContainerRegistry"
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
          "name": "kubernetes",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_user_assigned_identity.cluster",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.main.location",
                "azurerm_resource_group.main"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
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
          "name": "cluster",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_user_assigned_identity"
        },
        {
          "address": "azurerm_user_assigned_identity.cluster_kubelet",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.main.location",
                "azurerm_resource_group.main"
              ]
            },
            "name": {
              "references": [
                "var.application_name",
                "var.environment_name"
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
          "name": "cluster_kubelet",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_user_assigned_identity"
        },
        {
          "address": "azurerm_virtual_network.main",
          "expressions": {
            "address_space": {
              "references": [
                "var.vnet_cidr_block"
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
                "var.application_name",
                "var.environment_name"
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
        },
        {
          "address": "random_password.database_admin",
          "expressions": {
            "length": {
              "constant_value": 16
            },
            "override_special": {
              "constant_value": "!#$%&*()-_=+[]{}<>:?"
            },
            "special": {
              "constant_value": true
            }
          },
          "mode": "managed",
          "name": "database_admin",
          "provider_config_key": "random",
          "schema_version": 3,
          "type": "random_password"
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
        "aks_orchestration_version": {},
        "aks_system_pool": {},
        "aks_workload_pool": {},
        "application_name": {},
        "az_count": {},
        "container_registry_pushers": {},
        "database_admin_username": {},
        "domain_name": {},
        "environment_name": {},
        "k8s_namespace": {},
        "k8s_service_account_name": {},
        "keyvault_admins": {},
        "keyvault_readers": {},
        "primary_region": {},
        "vnet_cidr_block": {}
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "keyvault_name": {
      "actions": [
        "create"
      ],
      "after": "kv-fleet-app-dev",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    },
    "kube_config_raw": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "oidc_issuer_url": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "registry_endpoint": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "service_account_client_id": {
      "actions": [
        "create"
      ],
      "after_sensitive": false,
      "after_unknown": true,
      "before": null,
      "before_sensitive": false
    },
    "tenant_id": {
      "actions": [
        "create"
      ],
      "after": "e66e77b4-5724-44d7-8721-06df160450ce",
      "after_sensitive": false,
      "after_unknown": false,
      "before": null,
      "before_sensitive": false
    }
  },
  "planned_values": {
    "outputs": {
      "keyvault_name": {
        "sensitive": false,
        "type": "string",
        "value": "kv-fleet-app-dev"
      },
      "kube_config_raw": {
        "sensitive": true
      },
      "oidc_issuer_url": {
        "sensitive": false
      },
      "registry_endpoint": {
        "sensitive": false
      },
      "service_account_client_id": {
        "sensitive": false
      },
      "tenant_id": {
        "sensitive": false,
        "type": "string",
        "value": "e66e77b4-5724-44d7-8721-06df160450ce"
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_container_registry.main",
          "mode": "managed",
          "name": "main",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 2,
          "sensitive_values": {
            "admin_password": true,
            "encryption": [],
            "georeplications": [],
            "identity": [],
            "network_rule_set": [],
            "retention_policy": [],
            "trust_policy": []
          },
          "type": "azurerm_container_registry",
          "values": {
            "admin_enabled": true,
            "anonymous_pull_enabled": null,
            "data_endpoint_enabled": null,
            "export_policy_enabled": true,
            "georeplications": [],
            "identity": [],
            "location": "westus3",
            "name": "acrfleetappdev",
            "network_rule_bypass_option": "AzureServices",
            "public_network_access_enabled": true,
            "quarantine_policy_enabled": null,
            "resource_group_name": "rg-fleet-app-dev",
            "sku": "Premium",
            "tags": null,
            "timeouts": null,
            "zone_redundancy_enabled": true
          }
        },
        {
          "address": "azurerm_federated_identity_credential.main",
          "mode": "managed",
          "name": "main",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "audience": [
              false
            ]
          },
          "type": "azurerm_federated_identity_credential",
          "values": {
            "audience": [
              "foo"
            ],
            "name": "mi-fleet-app-dev-cluster-kubelet",
            "resource_group_name": "rg-fleet-app-dev",
            "subject": "system:serviceaccount:app:workload",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault.main",
          "mode": "managed",
          "name": "main",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 2,
          "sensitive_values": {
            "access_policy": [],
            "contact": [],
            "network_acls": []
          },
          "type": "azurerm_key_vault",
          "values": {
            "enable_rbac_authorization": true,
            "enabled_for_deployment": null,
            "enabled_for_disk_encryption": false,
            "enabled_for_template_deployment": null,
            "location": "westus3",
            "name": "kv-fleet-app-dev",
            "public_network_access_enabled": true,
            "purge_protection_enabled": false,
            "resource_group_name": "rg-fleet-app-dev",
            "sku_name": "standard",
            "soft_delete_retention_days": 7,
            "tags": null,
            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_key_vault_secret.database_admin_password",
          "mode": "managed",
          "name": "database_admin_password",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "value": true
          },
          "type": "azurerm_key_vault_secret",
          "values": {
            "content_type": null,
            "expiration_date": null,
            "name": "db-admin-password",
            "not_before_date": null,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_kubernetes_cluster.main",
          "mode": "managed",
          "name": "main",
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
                "upgrade_settings": [
                  {}
                ],
                "zones": [
                  false,
                  false,
                  false
                ]
              }
            ],
            "http_proxy_config": [],
            "identity": [
              {
                "identity_ids": []
              }
            ],
            "ingress_application_gateway": [],
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
            "kubelet_identity": [
              {}
            ],
            "linux_profile": [],
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
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
                "enable_auto_scaling": true,
                "enable_host_encryption": null,
                "enable_node_public_ip": null,
                "fips_enabled": null,
                "gpu_instance": null,
                "host_group_id": null,
                "kubelet_config": [],
                "linux_os_config": [],
                "max_count": 3,
                "message_of_the_day": null,
                "min_count": 2,
                "name": "systempool",
                "node_network_profile": [],
                "node_public_ip_prefix_id": null,
                "node_taints": null,
                "only_critical_addons_enabled": null,
                "orchestrator_version": "1.26.6",
                "os_disk_size_gb": 30,
                "os_disk_type": "Ephemeral",
                "pod_subnet_id": null,
                "proximity_placement_group_id": null,
                "scale_down_mode": "Delete",
                "snapshot_id": null,
                "tags": null,
                "temporary_name_for_rotation": "workloadpool",
                "type": "VirtualMachineScaleSets",
                "ultra_ssd_enabled": false,
                "upgrade_settings": [
                  {
                    "drain_timeout_in_minutes": null,
                    "max_surge": "33%",
                    "node_soak_duration_in_minutes": null
                  }
                ],
                "vm_size": "Standard_D2s_v3",
                "zones": [
                  "1",
                  "2",
                  "3"
                ]
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "fleet-app-dev",
            "dns_prefix_private_cluster": null,
            "edge_zone": null,
            "enable_pod_security_policy": null,
            "http_application_routing_enabled": null,
            "http_proxy_config": [],
            "identity": [
              {
                "type": "UserAssigned"
              }
            ],
            "image_cleaner_enabled": false,
            "image_cleaner_interval_hours": 48,
            "ingress_application_gateway": [],
            "key_management_service": [],
            "key_vault_secrets_provider": [
              {
                "secret_rotation_enabled": true,
                "secret_rotation_interval": "5m"
              }
            ],
            "kubelet_identity": [
              {}
            ],
            "linux_profile": [],
            "local_account_disabled": null,
            "location": "westus3",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "name": "aks-fleet-app-dev",
            "node_os_channel_upgrade": null,
            "node_resource_group": "rg-fleet-app-dev-cluster",
            "oidc_issuer_enabled": true,
            "oms_agent": [
              {
                "msi_auth_for_monitoring_enabled": true
              }
            ],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "rg-fleet-app-dev",
            "role_based_access_control_enabled": true,
            "run_command_enabled": true,
            "service_mesh_profile": [],
            "service_principal": [],
            "sku_tier": "Standard",
            "storage_profile": [],
            "support_plan": "KubernetesOfficial",
            "tags": null,
            "timeouts": null,
            "web_app_routing": [],
            "workload_autoscaler_profile": [],
            "workload_identity_enabled": true
          }
        },
        {
          "address": "azurerm_kubernetes_cluster_node_pool.workload",
          "mode": "managed",
          "name": "workload",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "kubelet_config": [],
            "linux_os_config": [],
            "node_labels": {},
            "node_network_profile": [],
            "node_taints": [
              false
            ],
            "upgrade_settings": [
              {}
            ],
            "windows_profile": [],
            "zones": [
              false,
              false,
              false
            ]
          },
          "type": "azurerm_kubernetes_cluster_node_pool",
          "values": {
            "capacity_reservation_group_id": null,
            "custom_ca_trust_enabled": null,
            "enable_auto_scaling": true,
            "enable_host_encryption": null,
            "enable_node_public_ip": null,
            "eviction_policy": null,
            "fips_enabled": null,
            "gpu_instance": null,
            "host_group_id": null,
            "kubelet_config": [],
            "linux_os_config": [],
            "max_count": 3,
            "message_of_the_day": null,
            "min_count": 2,
            "mode": "User",
            "name": "workloadpool",
            "node_labels": {
              "role": "workload"
            },
            "node_network_profile": [],
            "node_public_ip_prefix_id": null,
            "node_taints": [
              "workload=true:NoSchedule"
            ],
            "orchestrator_version": "1.26.6",
            "os_disk_type": "Ephemeral",
            "os_type": "Linux",
            "pod_subnet_id": null,
            "priority": "Regular",
            "proximity_placement_group_id": null,
            "scale_down_mode": "Delete",
            "snapshot_id": null,
            "spot_max_price": -1,
            "tags": null,
            "timeouts": null,
            "ultra_ssd_enabled": false,
            "upgrade_settings": [
              {
                "drain_timeout_in_minutes": null,
                "max_surge": "33%",
                "node_soak_duration_in_minutes": null
              }
            ],
            "vm_size": "Standard_F8s_v2",
            "windows_profile": [],
            "workload_runtime": null,
            "zones": [
              "1",
              "2",
              "3"
            ]
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
            "location": "westus3",
            "name": "log-fleet-app-dev",
            "reservation_capacity_in_gb_per_day": null,
            "resource_group_name": "rg-fleet-app-dev",
            "retention_in_days": 30,
            "sku": "PerGB2018",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_monitor_diagnostic_setting.aks_clusters",
          "mode": "managed",
          "name": "aks_clusters",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "enabled_log": [
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              },
              {
                "retention_policy": []
              }
            ],
            "log": [],
            "metric": [
              {
                "retention_policy": []
              }
            ]
          },
          "type": "azurerm_monitor_diagnostic_setting",
          "values": {
            "enabled_log": [
              {
                "category": "cloud-controller-manager",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "cluster-autoscaler",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "csi-azuredisk-controller",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "csi-azurefile-controller",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "csi-snapshot-controller",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "guard",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "kube-apiserver",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "kube-audit",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "kube-audit-admin",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "kube-controller-manager",
                "category_group": "",
                "retention_policy": []
              },
              {
                "category": "kube-scheduler",
                "category_group": "",
                "retention_policy": []
              }
            ],
            "eventhub_authorization_rule_id": null,
            "eventhub_name": null,
            "log_analytics_destination_type": "Dedicated",
            "metric": [
              {
                "category": "AllMetrics",
                "enabled": true,
                "retention_policy": []
              }
            ],
            "name": "aks-fleet-app-dev",
            "partner_solution_id": null,
            "storage_account_id": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_postgresql_database.main",
          "mode": "managed",
          "name": "main",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {},
          "type": "azurerm_postgresql_database",
          "values": {
            "charset": "UTF8",
            "collation": "English_United States.1252",
            "name": "psqldb-fleet-app-dev",
            "resource_group_name": "rg-fleet-app-dev",
            "server_name": "psql-fleet-app-dev",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_postgresql_server.main",
          "mode": "managed",
          "name": "main",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "administrator_login_password": true,
            "identity": [],
            "threat_detection_policy": []
          },
          "type": "azurerm_postgresql_server",
          "values": {
            "administrator_login": "psqladmin",
            "auto_grow_enabled": true,
            "backup_retention_days": 7,
            "create_mode": "Default",
            "creation_source_server_id": null,
            "geo_redundant_backup_enabled": false,
            "identity": [],
            "infrastructure_encryption_enabled": null,
            "location": "westus3",
            "name": "psql-fleet-app-dev",
            "public_network_access_enabled": true,
            "resource_group_name": "rg-fleet-app-dev",
            "restore_point_in_time": null,
            "sku_name": "B_Gen5_2",
            "ssl_enforcement_enabled": true,
            "ssl_minimal_tls_version_enforced": "TLS1_2",
            "storage_mb": 5120,
            "tags": null,
            "threat_detection_policy": [],
            "timeouts": null,
            "version": "9.5"
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
            "location": "westus3",
            "managed_by": null,
            "name": "rg-fleet-app-dev",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.acr_push[0]",
          "index": 0,
          "mode": "managed",
          "name": "acr_push",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "principal_id": "466a3a08-bd10-4a07-be0f-327a2de48073",
            "role_definition_name": "AcrPush",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.cluster_identity_operator",
          "mode": "managed",
          "name": "cluster_identity_operator",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "Managed Identity Operator",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.cluster_kubelet_acr",
          "mode": "managed",
          "name": "cluster_kubelet_acr",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "role_definition_name": "AcrPull",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.keyvault_admins[0]",
          "index": 0,
          "mode": "managed",
          "name": "keyvault_admins",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "principal_id": "43072cf2-ef02-43cb-99b5-c480a67550f0",
            "role_definition_name": "Key Vault Administrator",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.keyvault_readers[0]",
          "index": 0,
          "mode": "managed",
          "name": "keyvault_readers",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_role_assignment",
          "values": {
            "condition": null,
            "condition_version": null,
            "delegated_managed_identity_resource_id": null,
            "description": null,
            "principal_id": "43072cf2-ef02-43cb-99b5-c480a67550f0",
            "role_definition_name": "Key Vault Reader",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.keyvault_terraform_user",
          "mode": "managed",
          "name": "keyvault_terraform_user",
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
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.ingress",
          "mode": "managed",
          "name": "ingress",
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
              "10.137.2.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "snet-ingress",
            "resource_group_name": "rg-fleet-app-dev",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "vnet-fleet-app-dev"
          }
        },
        {
          "address": "azurerm_subnet.kubernetes",
          "mode": "managed",
          "name": "kubernetes",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "address_prefixes": [
              false
            ],
            "delegation": [],
            "service_endpoints": [
              false,
              false,
              false
            ]
          },
          "type": "azurerm_subnet",
          "values": {
            "address_prefixes": [
              "10.137.3.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "snet-kubernetes",
            "resource_group_name": "rg-fleet-app-dev",
            "service_endpoint_policy_ids": null,
            "service_endpoints": [
              "Microsoft.ContainerRegistry",
              "Microsoft.KeyVault",
              "Microsoft.Storage"
            ],
            "timeouts": null,
            "virtual_network_name": "vnet-fleet-app-dev"
          }
        },
        {
          "address": "azurerm_user_assigned_identity.cluster",
          "mode": "managed",
          "name": "cluster",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {},
          "type": "azurerm_user_assigned_identity",
          "values": {
            "location": "westus3",
            "name": "mi-fleet-app-dev-cluster",
            "resource_group_name": "rg-fleet-app-dev",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_user_assigned_identity.cluster_kubelet",
          "mode": "managed",
          "name": "cluster_kubelet",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {},
          "type": "azurerm_user_assigned_identity",
          "values": {
            "location": "westus3",
            "name": "mi-fleet-app-dev-cluster-kubelet",
            "resource_group_name": "rg-fleet-app-dev",
            "tags": null,
            "timeouts": null
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
              "10.137.0.0/22"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "westus3",
            "name": "vnet-fleet-app-dev",
            "resource_group_name": "rg-fleet-app-dev",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "random_password.database_admin",
          "mode": "managed",
          "name": "database_admin",
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
            "override_special": "!#$%&*()-_=+[]{}<>:?",
            "special": true,
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
      "outputs": {
        "keyvault_name": {
          "sensitive": false,
          "type": "string",
          "value": "kv-fleet-app-dev"
        },
        "tenant_id": {
          "sensitive": false,
          "type": "string",
          "value": "e66e77b4-5724-44d7-8721-06df160450ce"
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
        "id"
      ],
      "resource": "azurerm_user_assigned_identity.cluster_kubelet"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_key_vault.main"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.main"
    },
    {
      "attribute": [
        "object_id"
      ],
      "resource": "data.azurerm_client_config.current"
    },
    {
      "attribute": [
        "client_id"
      ],
      "resource": "azurerm_user_assigned_identity.cluster_kubelet"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_user_assigned_identity.cluster_kubelet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_kubernetes_cluster.main"
    },
    {
      "attribute": [
        "login_server"
      ],
      "resource": "azurerm_container_registry.main"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.main"
    },
    {
      "attribute": [
        "principal_id"
      ],
      "resource": "azurerm_user_assigned_identity.cluster_kubelet"
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
      "resource": "azurerm_key_vault.main"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.kubernetes"
    },
    {
      "attribute": [
        "oidc_issuer_url"
      ],
      "resource": "azurerm_kubernetes_cluster.main"
    },
    {
      "attribute": [
        "kube_config_raw"
      ],
      "resource": "azurerm_kubernetes_cluster.main"
    },
    {
      "attribute": [
        "id"
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
        "tenant_id"
      ],
      "resource": "data.azurerm_client_config.current"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_container_registry.main"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_user_assigned_identity.cluster"
    },
    {
      "attribute": [
        "principal_id"
      ],
      "resource": "azurerm_user_assigned_identity.cluster"
    },
    {
      "attribute": [
        "result"
      ],
      "resource": "random_password.database_admin"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_postgresql_server.main"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_container_registry.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "admin_enabled": true,
          "anonymous_pull_enabled": null,
          "data_endpoint_enabled": null,
          "export_policy_enabled": true,
          "georeplications": [],
          "identity": [],
          "location": "westus3",
          "name": "acrfleetappdev",
          "network_rule_bypass_option": "AzureServices",
          "public_network_access_enabled": true,
          "quarantine_policy_enabled": null,
          "resource_group_name": "rg-fleet-app-dev",
          "sku": "Premium",
          "tags": null,
          "timeouts": null,
          "zone_redundancy_enabled": true
        },
        "after_sensitive": {
          "admin_password": true,
          "encryption": [],
          "georeplications": [],
          "identity": [],
          "network_rule_set": [],
          "retention_policy": [],
          "trust_policy": []
        },
        "after_unknown": {
          "admin_password": true,
          "admin_username": true,
          "encryption": true,
          "georeplications": [],
          "id": true,
          "identity": [],
          "login_server": true,
          "network_rule_set": true,
          "retention_policy": true,
          "trust_policy": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_container_registry"
    },
    {
      "address": "azurerm_federated_identity_credential.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "audience": [
            "foo"
          ],
          "name": "mi-fleet-app-dev-cluster-kubelet",
          "resource_group_name": "rg-fleet-app-dev",
          "subject": "system:serviceaccount:app:workload",
          "timeouts": null
        },
        "after_sensitive": {
          "audience": [
            false
          ]
        },
        "after_unknown": {
          "audience": [
            false
          ],
          "id": true,
          "issuer": true,
          "parent_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_federated_identity_credential"
    },
    {
      "address": "azurerm_key_vault.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "enable_rbac_authorization": true,
          "enabled_for_deployment": null,
          "enabled_for_disk_encryption": false,
          "enabled_for_template_deployment": null,
          "location": "westus3",
          "name": "kv-fleet-app-dev",
          "public_network_access_enabled": true,
          "purge_protection_enabled": false,
          "resource_group_name": "rg-fleet-app-dev",
          "sku_name": "standard",
          "soft_delete_retention_days": 7,
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
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault"
    },
    {
      "address": "azurerm_key_vault_secret.database_admin_password",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "content_type": null,
          "expiration_date": null,
          "name": "db-admin-password",
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
      "name": "database_admin_password",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_key_vault_secret"
    },
    {
      "address": "azurerm_kubernetes_cluster.main",
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
              "enable_auto_scaling": true,
              "enable_host_encryption": null,
              "enable_node_public_ip": null,
              "fips_enabled": null,
              "gpu_instance": null,
              "host_group_id": null,
              "kubelet_config": [],
              "linux_os_config": [],
              "max_count": 3,
              "message_of_the_day": null,
              "min_count": 2,
              "name": "systempool",
              "node_network_profile": [],
              "node_public_ip_prefix_id": null,
              "node_taints": null,
              "only_critical_addons_enabled": null,
              "orchestrator_version": "1.26.6",
              "os_disk_size_gb": 30,
              "os_disk_type": "Ephemeral",
              "pod_subnet_id": null,
              "proximity_placement_group_id": null,
              "scale_down_mode": "Delete",
              "snapshot_id": null,
              "tags": null,
              "temporary_name_for_rotation": "workloadpool",
              "type": "VirtualMachineScaleSets",
              "ultra_ssd_enabled": false,
              "upgrade_settings": [
                {
                  "drain_timeout_in_minutes": null,
                  "max_surge": "33%",
                  "node_soak_duration_in_minutes": null
                }
              ],
              "vm_size": "Standard_D2s_v3",
              "zones": [
                "1",
                "2",
                "3"
              ]
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "fleet-app-dev",
          "dns_prefix_private_cluster": null,
          "edge_zone": null,
          "enable_pod_security_policy": null,
          "http_application_routing_enabled": null,
          "http_proxy_config": [],
          "identity": [
            {
              "type": "UserAssigned"
            }
          ],
          "image_cleaner_enabled": false,
          "image_cleaner_interval_hours": 48,
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [
            {
              "secret_rotation_enabled": true,
              "secret_rotation_interval": "5m"
            }
          ],
          "kubelet_identity": [
            {}
          ],
          "linux_profile": [],
          "local_account_disabled": null,
          "location": "westus3",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "name": "aks-fleet-app-dev",
          "node_os_channel_upgrade": null,
          "node_resource_group": "rg-fleet-app-dev-cluster",
          "oidc_issuer_enabled": true,
          "oms_agent": [
            {
              "msi_auth_for_monitoring_enabled": true
            }
          ],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "rg-fleet-app-dev",
          "role_based_access_control_enabled": true,
          "run_command_enabled": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "sku_tier": "Standard",
          "storage_profile": [],
          "support_plan": "KubernetesOfficial",
          "tags": null,
          "timeouts": null,
          "web_app_routing": [],
          "workload_autoscaler_profile": [],
          "workload_identity_enabled": true
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
              "upgrade_settings": [
                {}
              ],
              "zones": [
                false,
                false,
                false
              ]
            }
          ],
          "http_proxy_config": [],
          "identity": [
            {
              "identity_ids": []
            }
          ],
          "ingress_application_gateway": [],
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
          "kubelet_identity": [
            {}
          ],
          "linux_profile": [],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
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
              "node_count": true,
              "node_labels": true,
              "node_network_profile": [],
              "os_sku": true,
              "upgrade_settings": [
                {}
              ],
              "vnet_subnet_id": true,
              "workload_runtime": true,
              "zones": [
                false,
                false,
                false
              ]
            }
          ],
          "fqdn": true,
          "http_application_routing_zone_name": true,
          "http_proxy_config": [],
          "id": true,
          "identity": [
            {
              "identity_ids": true,
              "principal_id": true,
              "tenant_id": true
            }
          ],
          "ingress_application_gateway": [],
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
          "kubelet_identity": [
            {
              "client_id": true,
              "object_id": true,
              "user_assigned_identity_id": true
            }
          ],
          "kubernetes_version": true,
          "linux_profile": [],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "network_profile": true,
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
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_kubernetes_cluster_node_pool.workload",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "capacity_reservation_group_id": null,
          "custom_ca_trust_enabled": null,
          "enable_auto_scaling": true,
          "enable_host_encryption": null,
          "enable_node_public_ip": null,
          "eviction_policy": null,
          "fips_enabled": null,
          "gpu_instance": null,
          "host_group_id": null,
          "kubelet_config": [],
          "linux_os_config": [],
          "max_count": 3,
          "message_of_the_day": null,
          "min_count": 2,
          "mode": "User",
          "name": "workloadpool",
          "node_labels": {
            "role": "workload"
          },
          "node_network_profile": [],
          "node_public_ip_prefix_id": null,
          "node_taints": [
            "workload=true:NoSchedule"
          ],
          "orchestrator_version": "1.26.6",
          "os_disk_type": "Ephemeral",
          "os_type": "Linux",
          "pod_subnet_id": null,
          "priority": "Regular",
          "proximity_placement_group_id": null,
          "scale_down_mode": "Delete",
          "snapshot_id": null,
          "spot_max_price": -1,
          "tags": null,
          "timeouts": null,
          "ultra_ssd_enabled": false,
          "upgrade_settings": [
            {
              "drain_timeout_in_minutes": null,
              "max_surge": "33%",
              "node_soak_duration_in_minutes": null
            }
          ],
          "vm_size": "Standard_F8s_v2",
          "windows_profile": [],
          "workload_runtime": null,
          "zones": [
            "1",
            "2",
            "3"
          ]
        },
        "after_sensitive": {
          "kubelet_config": [],
          "linux_os_config": [],
          "node_labels": {},
          "node_network_profile": [],
          "node_taints": [
            false
          ],
          "upgrade_settings": [
            {}
          ],
          "windows_profile": [],
          "zones": [
            false,
            false,
            false
          ]
        },
        "after_unknown": {
          "id": true,
          "kubelet_config": [],
          "kubelet_disk_type": true,
          "kubernetes_cluster_id": true,
          "linux_os_config": [],
          "max_pods": true,
          "node_count": true,
          "node_labels": {},
          "node_network_profile": [],
          "node_taints": [
            false
          ],
          "os_disk_size_gb": true,
          "os_sku": true,
          "upgrade_settings": [
            {}
          ],
          "vnet_subnet_id": true,
          "windows_profile": [],
          "zones": [
            false,
            false,
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "workload",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster_node_pool"
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
          "location": "westus3",
          "name": "log-fleet-app-dev",
          "reservation_capacity_in_gb_per_day": null,
          "resource_group_name": "rg-fleet-app-dev",
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
      "address": "azurerm_monitor_diagnostic_setting.aks_clusters",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "enabled_log": [
            {
              "category": "cloud-controller-manager",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "cluster-autoscaler",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "csi-azuredisk-controller",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "csi-azurefile-controller",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "csi-snapshot-controller",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "guard",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "kube-apiserver",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "kube-audit",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "kube-audit-admin",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "kube-controller-manager",
              "category_group": "",
              "retention_policy": []
            },
            {
              "category": "kube-scheduler",
              "category_group": "",
              "retention_policy": []
            }
          ],
          "eventhub_authorization_rule_id": null,
          "eventhub_name": null,
          "log_analytics_destination_type": "Dedicated",
          "metric": [
            {
              "category": "AllMetrics",
              "enabled": true,
              "retention_policy": []
            }
          ],
          "name": "aks-fleet-app-dev",
          "partner_solution_id": null,
          "storage_account_id": null,
          "timeouts": null
        },
        "after_sensitive": {
          "enabled_log": [
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            }
          ],
          "log": [],
          "metric": [
            {
              "retention_policy": []
            }
          ]
        },
        "after_unknown": {
          "enabled_log": [
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            },
            {
              "retention_policy": []
            }
          ],
          "id": true,
          "log": true,
          "log_analytics_workspace_id": true,
          "metric": [
            {
              "retention_policy": []
            }
          ],
          "target_resource_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "aks_clusters",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_monitor_diagnostic_setting"
    },
    {
      "address": "azurerm_postgresql_database.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "charset": "UTF8",
          "collation": "English_United States.1252",
          "name": "psqldb-fleet-app-dev",
          "resource_group_name": "rg-fleet-app-dev",
          "server_name": "psql-fleet-app-dev",
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
      "type": "azurerm_postgresql_database"
    },
    {
      "address": "azurerm_postgresql_server.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "administrator_login": "psqladmin",
          "auto_grow_enabled": true,
          "backup_retention_days": 7,
          "create_mode": "Default",
          "creation_source_server_id": null,
          "geo_redundant_backup_enabled": false,
          "identity": [],
          "infrastructure_encryption_enabled": null,
          "location": "westus3",
          "name": "psql-fleet-app-dev",
          "public_network_access_enabled": true,
          "resource_group_name": "rg-fleet-app-dev",
          "restore_point_in_time": null,
          "sku_name": "B_Gen5_2",
          "ssl_enforcement_enabled": true,
          "ssl_minimal_tls_version_enforced": "TLS1_2",
          "storage_mb": 5120,
          "tags": null,
          "threat_detection_policy": [],
          "timeouts": null,
          "version": "9.5"
        },
        "after_sensitive": {
          "administrator_login_password": true,
          "identity": [],
          "threat_detection_policy": []
        },
        "after_unknown": {
          "administrator_login_password": true,
          "fqdn": true,
          "id": true,
          "identity": [],
          "threat_detection_policy": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "main",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_postgresql_server"
    },
    {
      "address": "azurerm_resource_group.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus3",
          "managed_by": null,
          "name": "rg-fleet-app-dev",
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
      "address": "azurerm_role_assignment.acr_push[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "principal_id": "466a3a08-bd10-4a07-be0f-327a2de48073",
          "role_definition_name": "AcrPush",
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
      "index": 0,
      "mode": "managed",
      "name": "acr_push",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.cluster_identity_operator",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "Managed Identity Operator",
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
      "name": "cluster_identity_operator",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.cluster_kubelet_acr",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "role_definition_name": "AcrPull",
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
      "name": "cluster_kubelet_acr",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.keyvault_admins[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "principal_id": "43072cf2-ef02-43cb-99b5-c480a67550f0",
          "role_definition_name": "Key Vault Administrator",
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
      "index": 0,
      "mode": "managed",
      "name": "keyvault_admins",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.keyvault_readers[0]",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "condition": null,
          "condition_version": null,
          "delegated_managed_identity_resource_id": null,
          "description": null,
          "principal_id": "43072cf2-ef02-43cb-99b5-c480a67550f0",
          "role_definition_name": "Key Vault Reader",
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
      "index": 0,
      "mode": "managed",
      "name": "keyvault_readers",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.keyvault_terraform_user",
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
      "name": "keyvault_terraform_user",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_subnet.ingress",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.137.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "snet-ingress",
          "resource_group_name": "rg-fleet-app-dev",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "vnet-fleet-app-dev"
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
      "name": "ingress",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.kubernetes",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.137.3.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "snet-kubernetes",
          "resource_group_name": "rg-fleet-app-dev",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.ContainerRegistry",
            "Microsoft.KeyVault",
            "Microsoft.Storage"
          ],
          "timeouts": null,
          "virtual_network_name": "vnet-fleet-app-dev"
        },
        "after_sensitive": {
          "address_prefixes": [
            false
          ],
          "delegation": [],
          "service_endpoints": [
            false,
            false,
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
            false,
            false,
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "kubernetes",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_user_assigned_identity.cluster",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus3",
          "name": "mi-fleet-app-dev-cluster",
          "resource_group_name": "rg-fleet-app-dev",
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
      "name": "cluster",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_user_assigned_identity"
    },
    {
      "address": "azurerm_user_assigned_identity.cluster_kubelet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westus3",
          "name": "mi-fleet-app-dev-cluster-kubelet",
          "resource_group_name": "rg-fleet-app-dev",
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
      "name": "cluster_kubelet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_user_assigned_identity"
    },
    {
      "address": "azurerm_virtual_network.main",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_space": [
            "10.137.0.0/22"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "westus3",
          "name": "vnet-fleet-app-dev",
          "resource_group_name": "rg-fleet-app-dev",
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
    },
    {
      "address": "random_password.database_admin",
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
          "override_special": "!#$%&*()-_=+[]{}<>:?",
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
      "name": "database_admin",
      "provider_name": "registry.terraform.io/hashicorp/random",
      "type": "random_password"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:24:31Z",
  "variables": {
    "aks_orchestration_version": {
      "value": "1.26.6"
    },
    "aks_system_pool": {
      "value": {
        "max_node_count": 3,
        "min_node_count": 2,
        "vm_size": "Standard_D2s_v3"
      }
    },
    "aks_workload_pool": {
      "value": {
        "max_node_count": 3,
        "min_node_count": 2,
        "vm_size": "Standard_F8s_v2"
      }
    },
    "application_name": {
      "value": "fleet-app"
    },
    "az_count": {
      "value": 2
    },
    "container_registry_pushers": {
      "value": [
        "466a3a08-bd10-4a07-be0f-327a2de48073"
      ]
    },
    "database_admin_username": {
      "value": "psqladmin"
    },
    "domain_name": {
      "value": "cloud-stack.io"
    },
    "environment_name": {
      "value": "dev"
    },
    "k8s_namespace": {
      "value": "app"
    },
    "k8s_service_account_name": {
      "value": "workload"
    },
    "keyvault_admins": {
      "value": [
        "43072cf2-ef02-43cb-99b5-c480a67550f0"
      ]
    },
    "keyvault_readers": {
      "value": [
        "43072cf2-ef02-43cb-99b5-c480a67550f0"
      ]
    },
    "primary_region": {
      "value": "westus3"
    },
    "vnet_cidr_block": {
      "value": "10.137.0.0/22"
    }
  }
}

