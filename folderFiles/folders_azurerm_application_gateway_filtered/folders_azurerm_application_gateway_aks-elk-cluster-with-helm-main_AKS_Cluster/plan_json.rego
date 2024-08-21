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
        "kube_ca_cert": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].cluster_ca_certificate",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        },
        "kube_cert": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].client_certificate",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        },
        "kube_host": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].host",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        },
        "kube_key": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].client_key",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        },
        "kube_password": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].password",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        },
        "kube_username": {
          "expression": {
            "references": [
              "azurerm_kubernetes_cluster.this.kube_config[0].username",
              "azurerm_kubernetes_cluster.this.kube_config[0]",
              "azurerm_kubernetes_cluster.this.kube_config",
              "azurerm_kubernetes_cluster.this"
            ]
          },
          "sensitive": true
        }
      },
      "resources": [
        {
          "address": "azurerm_application_gateway.app_gw",
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
                    "azurerm_public_ip.this.id",
                    "azurerm_public_ip.this"
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
                "azurerm_resource_group.this.location",
                "azurerm_resource_group.this"
              ]
            },
            "name": {
              "references": [
                "var.name_prefix"
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
                  "constant_value": 1
                },
                "rule_type": {
                  "constant_value": "Basic"
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
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
          "name": "app_gw",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_kubernetes_cluster.this",
          "expressions": {
            "default_node_pool": [
              {
                "name": {
                  "constant_value": "default"
                },
                "node_count": {
                  "constant_value": 2
                },
                "pod_subnet_id": {
                  "references": [
                    "azurerm_subnet.aks_node.id",
                    "azurerm_subnet.aks_node"
                  ]
                },
                "vm_size": {
                  "references": [
                    "var.vm_size"
                  ]
                },
                "vnet_subnet_id": {
                  "references": [
                    "azurerm_subnet.aks_pod.id",
                    "azurerm_subnet.aks_pod"
                  ]
                }
              }
            ],
            "dns_prefix": {
              "references": [
                "var.name_prefix"
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
                    "azurerm_application_gateway.app_gw.id",
                    "azurerm_application_gateway.app_gw"
                  ]
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.this.location",
                "azurerm_resource_group.this"
              ]
            },
            "name": {
              "references": [
                "var.name_prefix"
              ]
            },
            "network_profile": [
              {
                "network_plugin": {
                  "constant_value": "azure"
                },
                "network_policy": {
                  "constant_value": "azure"
                }
              }
            ],
            "oidc_issuer_enabled": {
              "constant_value": true
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "tags": {
              "references": [
                "var.name_prefix"
              ]
            }
          },
          "mode": "managed",
          "name": "this",
          "provider_config_key": "azurerm",
          "schema_version": 2,
          "type": "azurerm_kubernetes_cluster"
        },
        {
          "address": "azurerm_public_ip.this",
          "expressions": {
            "allocation_method": {
              "constant_value": "Static"
            },
            "location": {
              "references": [
                "azurerm_resource_group.this.location",
                "azurerm_resource_group.this"
              ]
            },
            "name": {
              "references": [
                "var.name_prefix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "sku": {
              "constant_value": "Standard"
            }
          },
          "mode": "managed",
          "name": "this",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.this",
          "expressions": {
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name_prefix"
              ]
            }
          },
          "mode": "managed",
          "name": "this",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_role_assignment.aks_appgw_identity_assignment",
          "depends_on": [
            "azurerm_kubernetes_cluster.this",
            "azurerm_application_gateway.app_gw"
          ],
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.this.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                "azurerm_kubernetes_cluster.this.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                "azurerm_kubernetes_cluster.this.ingress_application_gateway[0].ingress_application_gateway_identity",
                "azurerm_kubernetes_cluster.this.ingress_application_gateway[0]",
                "azurerm_kubernetes_cluster.this.ingress_application_gateway",
                "azurerm_kubernetes_cluster.this"
              ]
            },
            "role_definition_name": {
              "constant_value": "Contributor"
            },
            "scope": {
              "references": [
                "azurerm_resource_group.this.id",
                "azurerm_resource_group.this"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_appgw_identity_assignment",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_role_assignment.aks_identity_assignment",
          "depends_on": [
            "azurerm_kubernetes_cluster.this",
            "azurerm_application_gateway.app_gw"
          ],
          "expressions": {
            "principal_id": {
              "references": [
                "azurerm_kubernetes_cluster.this.identity[0].principal_id",
                "azurerm_kubernetes_cluster.this.identity[0]",
                "azurerm_kubernetes_cluster.this.identity",
                "azurerm_kubernetes_cluster.this"
              ]
            },
            "role_definition_name": {
              "constant_value": "Contributor"
            },
            "scope": {
              "references": [
                "azurerm_resource_group.this.id",
                "azurerm_resource_group.this"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_identity_assignment",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_role_assignment"
        },
        {
          "address": "azurerm_subnet.aks_node",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.254.4.0/24"
              ]
            },
            "delegation": [
              {
                "name": {
                  "constant_value": "delegation"
                },
                "service_delegation": [
                  {
                    "actions": {
                      "constant_value": [
                        "Microsoft.Network/virtualNetworks/subnets/join/action"
                      ]
                    },
                    "name": {
                      "constant_value": "Microsoft.ContainerService/managedClusters"
                    }
                  }
                ]
              }
            ],
            "name": {
              "constant_value": "aks-node"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.this.name",
                "azurerm_virtual_network.this"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_node",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.aks_pod",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.254.6.0/24"
              ]
            },
            "name": {
              "constant_value": "aks-pods"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.this.name",
                "azurerm_virtual_network.this"
              ]
            }
          },
          "mode": "managed",
          "name": "aks_pod",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.backend",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.254.2.0/24"
              ]
            },
            "name": {
              "constant_value": "backend"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.this.name",
                "azurerm_virtual_network.this"
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
                "10.254.0.0/24"
              ]
            },
            "name": {
              "constant_value": "frontend"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.this.name",
                "azurerm_virtual_network.this"
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
          "address": "azurerm_virtual_network.this",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.254.0.0/16"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.this.location",
                "azurerm_resource_group.this"
              ]
            },
            "name": {
              "references": [
                "var.name_prefix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.this.name",
                "azurerm_resource_group.this"
              ]
            }
          },
          "mode": "managed",
          "name": "this",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        }
      ],
      "variables": {
        "location": {
          "default": "West Europe"
        },
        "name_prefix": {
          "default": ""
        },
        "vm_size": {
          "default": "Standard_B4ms"
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "kube_ca_cert": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_cert": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_host": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_key": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_password": {
      "actions": [
        "create"
      ],
      "after_sensitive": true,
      "after_unknown": true,
      "before": null,
      "before_sensitive": true
    },
    "kube_username": {
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
      "kube_ca_cert": {
        "sensitive": true
      },
      "kube_cert": {
        "sensitive": true
      },
      "kube_host": {
        "sensitive": true
      },
      "kube_key": {
        "sensitive": true
      },
      "kube_password": {
        "sensitive": true
      },
      "kube_username": {
        "sensitive": true
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "azurerm_application_gateway.app_gw",
          "mode": "managed",
          "name": "app_gw",
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
                "name": "-appgw-network-beap"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "-appgw-network-be-htst",
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
                "name": "-appgw-network-feip",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "-appgw-network-feport",
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
                "frontend_ip_configuration_name": "-appgw-network-feip",
                "frontend_port_name": "-appgw-network-feport",
                "host_name": "",
                "host_names": [],
                "name": "-appgw-network-httplstn",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "westeurope",
            "name": "-appgateway",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "-appgw-network-beap",
                "backend_http_settings_name": "-appgw-network-be-htst",
                "http_listener_name": "-appgw-network-httplstn",
                "name": "-appgw-network-rqrt",
                "priority": 1,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "-aks-elk-rg",
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
          "address": "azurerm_kubernetes_cluster.this",
          "mode": "managed",
          "name": "this",
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
                "node_count": 2,
                "node_network_profile": [],
                "node_public_ip_prefix_id": null,
                "node_taints": null,
                "only_critical_addons_enabled": null,
                "os_disk_type": "Managed",
                "proximity_placement_group_id": null,
                "scale_down_mode": "Delete",
                "snapshot_id": null,
                "tags": null,
                "temporary_name_for_rotation": null,
                "type": "VirtualMachineScaleSets",
                "ultra_ssd_enabled": false,
                "upgrade_settings": [],
                "vm_size": "Standard_B4ms",
                "zones": null
              }
            ],
            "disk_encryption_set_id": null,
            "dns_prefix": "elkaks1",
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
            "key_vault_secrets_provider": [],
            "linux_profile": [],
            "local_account_disabled": null,
            "location": "westeurope",
            "maintenance_window": [],
            "maintenance_window_auto_upgrade": [],
            "maintenance_window_node_os": [],
            "microsoft_defender": [],
            "monitor_metrics": [],
            "name": "-elk-aks1",
            "network_profile": [
              {
                "load_balancer_sku": "standard",
                "network_plugin": "azure",
                "network_plugin_mode": null,
                "network_policy": "azure",
                "outbound_type": "loadBalancer"
              }
            ],
            "node_os_channel_upgrade": null,
            "oidc_issuer_enabled": true,
            "oms_agent": [],
            "open_service_mesh_enabled": null,
            "private_cluster_enabled": false,
            "private_cluster_public_fqdn_enabled": false,
            "public_network_access_enabled": true,
            "resource_group_name": "-aks-elk-rg",
            "role_based_access_control_enabled": true,
            "run_command_enabled": true,
            "service_mesh_profile": [],
            "service_principal": [],
            "sku_tier": "Free",
            "storage_profile": [],
            "support_plan": "KubernetesOfficial",
            "tags": {
              "Environment": "aks--elk-Setup"
            },
            "timeouts": null,
            "web_app_routing": [],
            "workload_autoscaler_profile": [],
            "workload_identity_enabled": false
          }
        },
        {
          "address": "azurerm_public_ip.this",
          "mode": "managed",
          "name": "this",
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
            "name": "-appgw-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "-aks-elk-rg",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_resource_group.this",
          "mode": "managed",
          "name": "this",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "westeurope",
            "managed_by": null,
            "name": "-aks-elk-rg",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_role_assignment.aks_appgw_identity_assignment",
          "mode": "managed",
          "name": "aks_appgw_identity_assignment",
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
          "address": "azurerm_role_assignment.aks_identity_assignment",
          "mode": "managed",
          "name": "aks_identity_assignment",
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
          "address": "azurerm_subnet.aks_node",
          "mode": "managed",
          "name": "aks_node",
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
            ]
          },
          "type": "azurerm_subnet",
          "values": {
            "address_prefixes": [
              "10.254.4.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [
              {
                "name": "delegation",
                "service_delegation": [
                  {
                    "actions": [
                      "Microsoft.Network/virtualNetworks/subnets/join/action"
                    ],
                    "name": "Microsoft.ContainerService/managedClusters"
                  }
                ]
              }
            ],
            "name": "aks-node",
            "resource_group_name": "-aks-elk-rg",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "-appgw-network"
          }
        },
        {
          "address": "azurerm_subnet.aks_pod",
          "mode": "managed",
          "name": "aks_pod",
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
              "10.254.6.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "aks-pods",
            "resource_group_name": "-aks-elk-rg",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "-appgw-network"
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
              "10.254.2.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "backend",
            "resource_group_name": "-aks-elk-rg",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "-appgw-network"
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
              "10.254.0.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "frontend",
            "resource_group_name": "-aks-elk-rg",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "-appgw-network"
          }
        },
        {
          "address": "azurerm_virtual_network.this",
          "mode": "managed",
          "name": "this",
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
              "10.254.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "westeurope",
            "name": "-appgw-network",
            "resource_group_name": "-aks-elk-rg",
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
        "location"
      ],
      "resource": "azurerm_resource_group.this"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.this"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.aks_pod"
    },
    {
      "attribute": [
        "ingress_application_gateway",
        0,
        "ingress_application_gateway_identity",
        0,
        "object_id"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_resource_group.this"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "password"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.frontend"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.this"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.aks_node"
    },
    {
      "attribute": [
        "identity",
        0,
        "principal_id"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "client_certificate"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "cluster_ca_certificate"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "host"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.this"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_application_gateway.app_gw"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "username"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    },
    {
      "attribute": [
        "kube_config",
        0,
        "client_key"
      ],
      "resource": "azurerm_kubernetes_cluster.this"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.app_gw",
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
              "name": "-appgw-network-beap"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "-appgw-network-be-htst",
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
              "name": "-appgw-network-feip",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "-appgw-network-feport",
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
              "frontend_ip_configuration_name": "-appgw-network-feip",
              "frontend_port_name": "-appgw-network-feport",
              "host_name": "",
              "host_names": [],
              "name": "-appgw-network-httplstn",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "westeurope",
          "name": "-appgateway",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "-appgw-network-beap",
              "backend_http_settings_name": "-appgw-network-be-htst",
              "http_listener_name": "-appgw-network-httplstn",
              "name": "-appgw-network-rqrt",
              "priority": 1,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "-aks-elk-rg",
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
      "name": "app_gw",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_kubernetes_cluster.this",
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
              "node_count": 2,
              "node_network_profile": [],
              "node_public_ip_prefix_id": null,
              "node_taints": null,
              "only_critical_addons_enabled": null,
              "os_disk_type": "Managed",
              "proximity_placement_group_id": null,
              "scale_down_mode": "Delete",
              "snapshot_id": null,
              "tags": null,
              "temporary_name_for_rotation": null,
              "type": "VirtualMachineScaleSets",
              "ultra_ssd_enabled": false,
              "upgrade_settings": [],
              "vm_size": "Standard_B4ms",
              "zones": null
            }
          ],
          "disk_encryption_set_id": null,
          "dns_prefix": "elkaks1",
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
          "key_vault_secrets_provider": [],
          "linux_profile": [],
          "local_account_disabled": null,
          "location": "westeurope",
          "maintenance_window": [],
          "maintenance_window_auto_upgrade": [],
          "maintenance_window_node_os": [],
          "microsoft_defender": [],
          "monitor_metrics": [],
          "name": "-elk-aks1",
          "network_profile": [
            {
              "load_balancer_sku": "standard",
              "network_plugin": "azure",
              "network_plugin_mode": null,
              "network_policy": "azure",
              "outbound_type": "loadBalancer"
            }
          ],
          "node_os_channel_upgrade": null,
          "oidc_issuer_enabled": true,
          "oms_agent": [],
          "open_service_mesh_enabled": null,
          "private_cluster_enabled": false,
          "private_cluster_public_fqdn_enabled": false,
          "public_network_access_enabled": true,
          "resource_group_name": "-aks-elk-rg",
          "role_based_access_control_enabled": true,
          "run_command_enabled": true,
          "service_mesh_profile": [],
          "service_principal": [],
          "sku_tier": "Free",
          "storage_profile": [],
          "support_plan": "KubernetesOfficial",
          "tags": {
            "Environment": "aks--elk-Setup"
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
          "ingress_application_gateway": [
            {
              "ingress_application_gateway_identity": []
            }
          ],
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
              "node_labels": true,
              "node_network_profile": [],
              "orchestrator_version": true,
              "os_disk_size_gb": true,
              "os_sku": true,
              "pod_subnet_id": true,
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
      "name": "this",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_kubernetes_cluster"
    },
    {
      "address": "azurerm_public_ip.this",
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
          "name": "-appgw-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "-aks-elk-rg",
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
      "name": "this",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_resource_group.this",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "westeurope",
          "managed_by": null,
          "name": "-aks-elk-rg",
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
      "name": "this",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_role_assignment.aks_appgw_identity_assignment",
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
      "name": "aks_appgw_identity_assignment",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_role_assignment.aks_identity_assignment",
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
      "name": "aks_identity_assignment",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_role_assignment"
    },
    {
      "address": "azurerm_subnet.aks_node",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.254.4.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [
            {
              "name": "delegation",
              "service_delegation": [
                {
                  "actions": [
                    "Microsoft.Network/virtualNetworks/subnets/join/action"
                  ],
                  "name": "Microsoft.ContainerService/managedClusters"
                }
              ]
            }
          ],
          "name": "aks-node",
          "resource_group_name": "-aks-elk-rg",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "-appgw-network"
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
          "private_link_service_network_policies_enabled": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "aks_node",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.aks_pod",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.254.6.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "aks-pods",
          "resource_group_name": "-aks-elk-rg",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "-appgw-network"
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
      "name": "aks_pod",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.backend",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.254.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "backend",
          "resource_group_name": "-aks-elk-rg",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "-appgw-network"
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
            "10.254.0.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "frontend",
          "resource_group_name": "-aks-elk-rg",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "-appgw-network"
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
      "address": "azurerm_virtual_network.this",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_space": [
            "10.254.0.0/16"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "westeurope",
          "name": "-appgw-network",
          "resource_group_name": "-aks-elk-rg",
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
      "name": "this",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:19:59Z",
  "variables": {
    "location": {
      "value": "West Europe"
    },
    "name_prefix": {
      "value": ""
    },
    "vm_size": {
      "value": "Standard_B4ms"
    }
  }
}

