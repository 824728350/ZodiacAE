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
      "outputs": {
        "client_certificate": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.aks_cluster.kube_config[0].client_certificate",
              "azurerm_kubernetes_cluster.aks_cluster.kube_config[0]",
              "azurerm_kubernetes_cluster.aks_cluster.kube_config",
              "azurerm_kubernetes_cluster.aks_cluster"
            ]
          },
          "sensitive": true
        },
        "kube_config": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
              "azurerm_kubernetes_cluster.aks_cluster"
            ]
          },
          "sensitive": true
        }
      },
      "resources": [
        {
          "address": "azurerm_kubernetes_cluster.aks_cluster",
          "expressions": {
            "default_node_pool": [
              {
                "enable_auto_scaling": {
                  "constant_value": true
                },
                "max_count": {
                  "constant_value": 3
                },
                "min_count": {
                  "constant_value": 1
                },
                "name": {
                  "constant_value": "system"
                },
                "type": {
                  "constant_value": "VirtualMachineScaleSets"
                },
                "vm_size": {
                  "constant_value": "Standard_DS2_v2"
                }
              }
            ],
            "dns_prefix": {
              "references": [
                "var.aks_cluster_name"
              ]
            },
            "identity": [
              {
                "type": {
                  "constant_value": "SystemAssigned"
                }
              }
            ],
            "kubernetes_version": {
              "references": [
                "var.kubernetes_version"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.aks_cluster_name"
              ]
            },
            "network_profile": [
              {
                "load_balancer_sku": {
                  "constant_value": "standard"
                },
                "network_plugin": {
                  "constant_value": "kubenet"
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "var.resource_group_name"
              ]
            },
            "tags": {
              "constant_value": {
                "environment": "dev"
              }
            }
          },
          "mode": "managed",
          "name": "aks_cluster",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_resource_group.aks_rg",
          "expressions": {
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.aks_cluster_name"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_rg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        }
      ],
      "variables": {
        "aks_cluster_name": {
          "description": "The name of the AKS cluster."
        },
        "enable_auto_scaling": {
          "default": true,
          "description": "Enable auto scaling for the node pool."
        },
        "kubernetes_version": {
          "description": "The version of Kubernetes."
        },
        "location": {
          "description": "The Azure region for the resources."
        },
        "max_node_count": {
          "description": "The maximum number of nodes in the node pool."
        },
        "min_node_count": {
          "default": 1,
          "description": "The minimum number of nodes in the node pool."
        },
        "node_vm_size": {
          "description": "The size of the VMs in the node pool."
        },
        "resource_group_name": {
          "description": "The name of the resource group."
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "client_certificate": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_config": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    }
  },
  "planned_values": {
    "outputs": {
      "client_certificate": {
        "sensitive": true
      },
      "kube_config": {
        "sensitive": true
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_kubernetes_cluster.aks_cluster",
          "mode": "managed",
          "name": "aks_cluster",
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
            "ingress_application_gateway": [],
            "key_management_service": [],
            "key_vault_secrets_provider": [],
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
            "monitor_metrics": [],
            "network_profile": [
              {
                "ip_versions": [],
                "load_balancer_profile": [],
                "nat_gateway_profile": [],
                "outbound_ip_address_ids": [],
                "outbound_ip_prefix_ids": [],
                "pod_cidrs": [],
                "service_cidrs": []
              }
            ],
            "oms_agent": [],
            "service_mesh_profile": [],
            "service_principal": [],
            "storage_profile": [],
            "tags": {},
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
                "min_count": 1,
                "name": "system",
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
                "vm_size": "Standard_DS2_v2",
                "vnet_subnet_id": null,
                "zones": null
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "my-aks-cluster",
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
            "ingress_application_gateway": [],
            "key_management_service": [],
            "key_vault_secrets_provider": [],
            "kubernetes_version": "1.24.9",
            "linux_profile": [],
            "local_account_disabled": null,
            "location": "southeastasia",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "name": "my-aks-cluster",
            "network_profile": [
              {
                "load_balancer_sku": "standard",
                "network_plugin": "kubenet",
                "network_plugin_mode": null,
                "outbound_type": "loadBalancer"
              }
            ],
            "node_os_channel_upgrade": null,
            "oidc_issuer_enabled": null,
            "oms_agent": [],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "ccn-development-mrfzy",
            "role_based_access_control_enabled": true,
            "run_command_enabled": true,
            "service_mesh_profile": [],
            "service_principal": [],
            "sku_tier": "Free",
            "storage_profile": [],
            "support_plan": "KubernetesOfficial",
            "tags": {
              "environment": "dev"
            },
            "timeouts": null,
            "web_app_routing": [],
            "workload_autoscaler_profile": [],
            "workload_identity_enabled": false
          }
        },
        {
          "address": "azurerm_resource_group.aks_rg",
          "mode": "managed",
          "name": "aks_rg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "southeastasia",
            "managed_by": null,
            "name": "my-aks-cluster",
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
        "kube_config",
        0,
        "client_certificate"
      ],
      "resource": "azurerm_kubernetes_cluster.aks_cluster"
    },
    {
      "attribute": [
        "kube_config_raw"
      ],
      "resource": "azurerm_kubernetes_cluster.aks_cluster"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_kubernetes_cluster.aks_cluster",
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
              "min_count": 1,
              "name": "system",
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
              "vm_size": "Standard_DS2_v2",
              "vnet_subnet_id": null,
              "zones": null
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "my-aks-cluster",
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
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
          "kubernetes_version": "1.24.9",
          "linux_profile": [],
          "local_account_disabled": null,
          "location": "southeastasia",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "name": "my-aks-cluster",
          "network_profile": [
            {
              "load_balancer_sku": "standard",
              "network_plugin": "kubenet",
              "network_plugin_mode": null,
              "outbound_type": "loadBalancer"
            }
          ],
          "node_os_channel_upgrade": null,
          "oidc_issuer_enabled": null,
          "oms_agent": [],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "ccn-development-mrfzy",
          "role_based_access_control_enabled": true,
          "run_command_enabled": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "sku_tier": "Free",
          "storage_profile": [],
          "support_plan": "KubernetesOfficial",
          "tags": {
            "environment": "dev"
          },
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
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
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
          "monitor_metrics": [],
          "network_profile": [
            {
              "ip_versions": [],
              "load_balancer_profile": [],
              "nat_gateway_profile": [],
              "outbound_ip_address_ids": [],
              "outbound_ip_prefix_ids": [],
              "pod_cidrs": [],
              "service_cidrs": []
            }
          ],
          "oms_agent": [],
          "service_mesh_profile": [],
          "service_principal": [],
          "storage_profile": [],
          "tags": {},
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
              "orchestrator_version": true,
              "os_disk_size_gb": true,
              "os_sku": true,
              "upgrade_settings": [],
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
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
          "kube_admin_config": true,
          "kube_admin_config_raw": true,
          "kube_config": true,
          "kube_config_raw": true,
          "kubelet_identity": true,
          "linux_profile": [],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "network_profile": [
            {
              "dns_service_ip": true,
              "docker_bridge_cidr": true,
              "ebpf_data_plane": true,
              "ip_versions": true,
              "load_balancer_profile": true,
              "nat_gateway_profile": true,
              "network_data_plane": true,
              "network_mode": true,
              "network_policy": true,
              "outbound_ip_address_ids": true,
              "outbound_ip_prefix_ids": true,
              "pod_cidr": true,
              "pod_cidrs": true,
              "service_cidr": true,
              "service_cidrs": true
            }
          ],
          "node_resource_group": true,
          "node_resource_group_id": true,
          "oidc_issuer_url": true,
          "oms_agent": [],
          "portal_fqdn": true,
          "private_dns_zone_id": true,
          "private_fqdn": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "storage_profile": [],
          "tags": {},
          "web_app_routing": [],
          "windows_profile": true,
          "workload_autoscaler_profile": []
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "aks_cluster",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_resource_group.aks_rg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "southeastasia",
          "managed_by": null,
          "name": "my-aks-cluster",
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
      "name": "aks_rg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:17:30Z",
  "variables": {
    "aks_cluster_name": {
      "value": "my-aks-cluster"
    },
    "enable_auto_scaling": {
      "value": true
    },
    "kubernetes_version": {
      "value": "1.24.9"
    },
    "location": {
      "value": "Southeast Asia"
    },
    "max_node_count": {
      "value": 3
    },
    "min_node_count": {
      "value": 1
    },
    "node_vm_size": {
      "value": "Standard_D2s_v3"
    },
    "resource_group_name": {
      "value": "ccn-development-mrfzy"
    }
  }
}

