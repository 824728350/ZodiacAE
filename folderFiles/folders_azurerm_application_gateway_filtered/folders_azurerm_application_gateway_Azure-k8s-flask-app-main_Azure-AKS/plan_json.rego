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
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].client_certificate",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "client_key": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].client_key",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "cluster_ca_certificate": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].cluster_ca_certificate",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "cluster_password": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].password",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "cluster_username": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].username",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "host": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0].host",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config[0]",
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        },
        "kube_config": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.terraform-k8s.kube_config_raw",
              "azurerm_kubernetes_cluster.terraform-k8s"
            ]
          },
          "sensitive": true
        }
      },
      "resources": [
        {
          "address": "azurerm_kubernetes_cluster.terraform-k8s",
          "expressions": {
            "default_node_pool": [
              {
                "name": {
                  "constant_value": "agentpool"
                },
                "node_count": {
                  "references": [
                    "var.node_count"
                  ]
                },
                "vm_size": {
                  "constant_value": "standard_b2ms"
                }
              }
            ],
            "dns_prefix": {
              "references": [
                "var.dns_prefix"
              ]
            },
            "linux_profile": [
              {
                "admin_username": {
                  "constant_value": "ubuntu"
                },
                "ssh_key": [
                  {
                    "key_data": {
                      "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                    }
                  }
                ]
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
                "var.cluster_name",
                "var.environment"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.resource_group.name",
                "azurerm_resource_group.resource_group"
              ]
            },
            "service_principal": [
              {
                "client_id": {
                  "references": [
                    "var.client_id"
                  ]
                },
                "client_secret": {
                  "references": [
                    "var.client_secret"
                  ]
                }
              }
            ],
            "tags": {
              "references": [
                "var.environment"
              ]
            }
          },
          "mode": "managed",
          "name": "terraform-k8s",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_resource_group.resource_group",
          "expressions": {
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.resource_group",
                "var.environment"
              ]
            }
          },
          "mode": "managed",
          "name": "resource_group",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        }
      ],
      "variables": {
        "aks_dns_service_ip": {
          "default": "10.0.0.10",
          "description": "DNS server IP address"
        },
        "aks_docker_bridge_cidr": {
          "default": "172.17.0.1/16",
          "description": "CIDR notation IP for Docker bridge."
        },
        "aks_service_cidr": {
          "default": "10.0.0.0/16",
          "description": "CIDR notation IP range from which to assign service cluster IPs"
        },
        "aks_subnet_address_prefix": {
          "default": "192.168.0.0/24",
          "description": "Subnet address prefix."
        },
        "aks_subnet_name": {
          "default": "kubesubnet",
          "description": "Subnet Name."
        },
        "app_gateway_name": {
          "default": "ApplicationGatewayDev",
          "description": "Name of the Application Gateway"
        },
        "app_gateway_sku": {
          "default": "Standard_Small",
          "description": "Name of the Application Gateway SKU"
        },
        "app_gateway_subnet_address_prefix": {
          "default": "192.168.1.0/24",
          "description": "Subnet server IP address."
        },
        "client_id": {
          "default": "null"
        },
        "client_secret": {
          "default": "null"
        },
        "cluster_name": {
          "default": "k8stest"
        },
        "dns_prefix": {
          "default": "k8stest"
        },
        "environment": {
          "default": "dev"
        },
        "location": {
          "default": "northeurope"
        },
        "node_count": {
          "default": 2
        },
        "resource_group": {
          "default": "kubernetes"
        },
        "ssh_public_key": {
          "default": "null"
        },
        "virtual_network_address_prefix": {
          "default": "192.168.0.0/16",
          "description": "VNET address prefix"
        },
        "virtual_network_name": {
          "default": "aksVirtualNetwork",
          "description": "Virtual network name"
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
    "client_key": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "cluster_ca_certificate": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "cluster_password": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "cluster_username": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "host": {
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
      "client_key": {
        "sensitive": true
      },
      "cluster_ca_certificate": {
        "sensitive": true
      },
      "cluster_password": {
        "sensitive": true
      },
      "cluster_username": {
        "sensitive": true
      },
      "host": {
        "sensitive": true
      },
      "kube_config": {
        "sensitive": true
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_kubernetes_cluster.terraform-k8s",
          "mode": "managed",
          "name": "terraform-k8s",
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
            "identity": [],
            "ingress_application_gateway": [],
            "key_management_service": [],
            "key_vault_secrets_provider": [],
            "kube_admin_config": true,
            "kube_admin_config_raw": true,
            "kube_config": true,
            "kube_config_raw": true,
            "kubelet_identity": [],
            "linux_profile": [
              {
                "ssh_key": [
                  {}
                ]
              }
            ],
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "network_profile": [],
            "oms_agent": [],
            "service_mesh_profile": [],
            "service_principal": [
              {
                "client_secret": true
              }
            ],
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
                "name": "agentpool",
                "node_count": 2,
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
                "vm_size": "standard_b2ms",
                "vnet_subnet_id": null,
                "zones": null
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "k8stest",
            "dns_prefix_private_cluster": null,
            "edge_zone": null,
            "enable_pod_security_policy": null,
            "http_application_routing_enabled": null,
            "http_proxy_config": [],
            "identity": [],
            "image_cleaner_enabled": false,
            "image_cleaner_interval_hours": 48,
            "ingress_application_gateway": [],
            "key_management_service": [],
            "key_vault_secrets_provider": [],
            "linux_profile": [
              {
                "admin_username": "ubuntu",
                "ssh_key": [
                  {
                    "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                  }
                ]
              }
            ],
            "local_account_disabled": null,
            "location": "northeurope",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "name": "k8stest_dev",
            "node_os_channel_upgrade": null,
            "oidc_issuer_enabled": null,
            "oms_agent": [],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "kubernetes_dev",
            "role_based_access_control_enabled": true,
            "run_command_enabled": true,
            "service_mesh_profile": [],
            "service_principal": [
              {
                "client_id": "null",
                "client_secret": "null"
              }
            ],
            "sku_tier": "Free",
            "storage_profile": [],
            "support_plan": "KubernetesOfficial",
            "tags": {
              "Environment": "dev"
            },
            "timeouts": null,
            "web_app_routing": [],
            "workload_autoscaler_profile": [],
            "workload_identity_enabled": false
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
            "location": "northeurope",
            "managed_by": null,
            "name": "kubernetes_dev",
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
        "password"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "client_key"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.resource_group"
    },
    {
      "attribute": [
        "kube_config_raw"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "host"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "cluster_ca_certificate"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.resource_group"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "client_certificate"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "username"
      ],
      "resource": "azurerm_kubernetes_cluster.terraform-k8s"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_kubernetes_cluster.terraform-k8s",
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
              "name": "agentpool",
              "node_count": 2,
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
              "vm_size": "standard_b2ms",
              "vnet_subnet_id": null,
              "zones": null
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "k8stest",
          "dns_prefix_private_cluster": null,
          "edge_zone": null,
          "enable_pod_security_policy": null,
          "http_application_routing_enabled": null,
          "http_proxy_config": [],
          "identity": [],
          "image_cleaner_enabled": false,
          "image_cleaner_interval_hours": 48,
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
          "linux_profile": [
            {
              "admin_username": "ubuntu",
              "ssh_key": [
                {
                  "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                }
              ]
            }
          ],
          "local_account_disabled": null,
          "location": "northeurope",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "name": "k8stest_dev",
          "node_os_channel_upgrade": null,
          "oidc_issuer_enabled": null,
          "oms_agent": [],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "kubernetes_dev",
          "role_based_access_control_enabled": true,
          "run_command_enabled": true,
          "service_mesh_profile": [],
          "service_principal": [
            {
              "client_id": "null",
              "client_secret": "null"
            }
          ],
          "sku_tier": "Free",
          "storage_profile": [],
          "support_plan": "KubernetesOfficial",
          "tags": {
            "Environment": "dev"
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
          "identity": [],
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
          "kube_admin_config": true,
          "kube_admin_config_raw": true,
          "kube_config": true,
          "kube_config_raw": true,
          "kubelet_identity": [],
          "linux_profile": [
            {
              "ssh_key": [
                {}
              ]
            }
          ],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "network_profile": [],
          "oms_agent": [],
          "service_mesh_profile": [],
          "service_principal": [
            {
              "client_secret": true
            }
          ],
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
          "identity": [],
          "ingress_application_gateway": [],
          "key_management_service": [],
          "key_vault_secrets_provider": [],
          "kube_admin_config": true,
          "kube_admin_config_raw": true,
          "kube_config": true,
          "kube_config_raw": true,
          "kubelet_identity": true,
          "kubernetes_version": true,
          "linux_profile": [
            {
              "ssh_key": [
                {}
              ]
            }
          ],
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "network_profile": true,
          "node_resource_group": true,
          "node_resource_group_id": true,
          "oidc_issuer_url": true,
          "oms_agent": [],
          "portal_fqdn": true,
          "private_dns_zone_id": true,
          "private_fqdn": true,
          "service_mesh_profile": [],
          "service_principal": [
            {}
          ],
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
      "name": "terraform-k8s",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_resource_group.resource_group",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "northeurope",
          "managed_by": null,
          "name": "kubernetes_dev",
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
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:06:36Z",
  "variables": {
    "aks_dns_service_ip": {
      "value": "10.0.0.10"
    },
    "aks_docker_bridge_cidr": {
      "value": "172.17.0.1/16"
    },
    "aks_service_cidr": {
      "value": "10.0.0.0/16"
    },
    "aks_subnet_address_prefix": {
      "value": "192.168.0.0/24"
    },
    "aks_subnet_name": {
      "value": "kubesubnet"
    },
    "app_gateway_name": {
      "value": "ApplicationGatewayDev"
    },
    "app_gateway_sku": {
      "value": "Standard_Small"
    },
    "app_gateway_subnet_address_prefix": {
      "value": "192.168.1.0/24"
    },
    "client_id": {
      "value": "null"
    },
    "client_secret": {
      "value": "null"
    },
    "cluster_name": {
      "value": "k8stest"
    },
    "dns_prefix": {
      "value": "k8stest"
    },
    "environment": {
      "value": "dev"
    },
    "location": {
      "value": "northeurope"
    },
    "node_count": {
      "value": 2
    },
    "resource_group": {
      "value": "kubernetes"
    },
    "ssh_public_key": {
      "value": "null"
    },
    "virtual_network_address_prefix": {
      "value": "192.168.0.0/16"
    },
    "virtual_network_name": {
      "value": "aksVirtualNetwork"
    }
  }
}

