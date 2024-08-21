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
          "address": "azurerm_kubernetes_cluster.akscluster",
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
                }
              }
            ],
            "dns_prefix": {
              "constant_value": "exampleaks1"
            },
            "identity": [
              {
                "type": {
                  "constant_value": "SystemAssigned"
                }
              }
            ],
            "location": {
              "constant_value": "East us"
            },
            "name": {
              "constant_value": "demo_aks"
            },
            "resource_group_name": {
              "constant_value": "Terraformrg"
            }
          },
          "mode": "managed",
          "name": "akscluster",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_resource_group.rg",
          "expressions": {
            "location": {
              "constant_value": "east us"
            },
            "name": {
              "constant_value": "Terraformrg"
            }
          },
          "mode": "managed",
          "name": "rg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        }
      ]
    }
  },
  "errored": false,
  "format_version": "1.2",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "azurerm_kubernetes_cluster.akscluster",
          "mode": "managed",
          "name": "akscluster",
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
            "network_profile": [],
            "oms_agent": [],
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
                "vnet_subnet_id": null,
                "zones": null
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "exampleaks1",
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
            "linux_profile": [],
            "local_account_disabled": null,
            "location": "eastus",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "name": "demo_aks",
            "node_os_channel_upgrade": null,
            "oidc_issuer_enabled": null,
            "oms_agent": [],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "Terraformrg",
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
          "address": "azurerm_resource_group.rg",
          "mode": "managed",
          "name": "rg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "eastus",
            "managed_by": null,
            "name": "Terraformrg",
            "tags": null,
            "timeouts": null
          }
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "azurerm_kubernetes_cluster.akscluster",
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
              "vnet_subnet_id": null,
              "zones": null
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "exampleaks1",
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
          "linux_profile": [],
          "local_account_disabled": null,
          "location": "eastus",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "name": "demo_aks",
          "node_os_channel_upgrade": null,
          "oidc_issuer_enabled": null,
          "oms_agent": [],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "Terraformrg",
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
          "network_profile": [],
          "oms_agent": [],
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
          "kubernetes_version": true,
          "linux_profile": [],
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
      "name": "akscluster",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_resource_group.rg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "managed_by": null,
          "name": "Terraformrg",
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
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-16T23:53:02Z"
}

