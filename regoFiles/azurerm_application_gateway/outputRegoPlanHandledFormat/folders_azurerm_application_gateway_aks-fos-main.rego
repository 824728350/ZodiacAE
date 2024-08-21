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
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "main",
                "to_display": "module.aks.azurerm_kubernetes_cluster.main",
                "type": "azurerm_kubernetes_cluster"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.azurerm_kubernetes_cluster.main"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "node_pool_create_after_destroy",
                "to_display": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                "type": "azurerm_kubernetes_cluster_node_pool"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "node_pool_create_before_destroy",
                "to_display": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                "type": "azurerm_kubernetes_cluster_node_pool"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "main",
                "to_display": "module.aks.azurerm_log_analytics_workspace.main",
                "type": "azurerm_log_analytics_workspace"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "application_gateway_byo_vnet_network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                "type": "azurerm_role_assignment"
            },
            "instances": [
                {
                    "address": {
                        "instance_key": 0,
                        "module": "module.aks",
                        "to_display": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "application_gateway_existing_vnet_network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "existing_application_gateway_contributor",
                "to_display": "module.aks.azurerm_role_assignment.existing_application_gateway_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.network_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "network_contributor_on_subnet",
                "to_display": "module.aks.azurerm_role_assignment.network_contributor_on_subnet",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "auto_scaler_profile_expander",
                "to_display": "module.aks.var.auto_scaler_profile_expander"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.auto_scaler_profile_expander"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "automatic_channel_upgrade",
                "to_display": "module.aks.var.automatic_channel_upgrade"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.automatic_channel_upgrade"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "green_field_application_gateway_for_ingress",
                "to_display": "module.aks.var.green_field_application_gateway_for_ingress"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.green_field_application_gateway_for_ingress"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "http_proxy_config",
                "to_display": "module.aks.var.http_proxy_config"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.http_proxy_config"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "identity_type",
                "to_display": "module.aks.var.identity_type"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.identity_type"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "kms_key_vault_network_access",
                "to_display": "module.aks.var.kms_key_vault_network_access"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.kms_key_vault_network_access"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "load_balancer_sku",
                "to_display": "module.aks.var.load_balancer_sku"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.load_balancer_sku"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "log_analytics_solution",
                "to_display": "module.aks.var.log_analytics_solution"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.log_analytics_solution"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "sku_tier",
                "to_display": "module.aks.var.sku_tier"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.sku_tier"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "support_plan",
                "to_display": "module.aks.var.support_plan"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.support_plan"
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
            },
            "kubernetes": {
                "expressions": {
                    "client_certificate": {
                        "references": [
                            "module.aks.admin_client_certificate",
                            "module.aks"
                        ]
                    },
                    "client_key": {
                        "references": [
                            "module.aks.admin_client_key",
                            "module.aks"
                        ]
                    },
                    "cluster_ca_certificate": {
                        "references": [
                            "module.aks.admin_cluster_ca_certificate",
                            "module.aks"
                        ]
                    },
                    "host": {
                        "references": [
                            "module.aks.admin_host",
                            "module.aks"
                        ]
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/kubernetes",
                "name": "kubernetes"
            },
            "module.aks:azapi": {
                "full_name": "registry.terraform.io/azure/azapi",
                "module_address": "module.aks",
                "name": "azapi",
                "version_constraint": ">= 1.4.0, < 2.0.0"
            },
            "module.aks:null": {
                "full_name": "registry.terraform.io/hashicorp/null",
                "module_address": "module.aks",
                "name": "null",
                "version_constraint": ">= 3.0.0"
            },
            "module.aks:tls": {
                "full_name": "registry.terraform.io/hashicorp/tls",
                "module_address": "module.aks",
                "name": "tls",
                "version_constraint": ">= 3.1.0"
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            },
            "time": {
                "full_name": "registry.terraform.io/hashicorp/time",
                "name": "time"
            }
        },
        "root_module": {
            "module_calls": {
                "aks": {
                    "depends_on": [
                        "azurerm_subnet.test"
                    ],
                    "expressions": {
                        "agents_availability_zones": {
                            "constant_value": [
                                "1",
                                "2"
                            ]
                        },
                        "agents_count": {
                            "constant_value": null
                        },
                        "agents_max_count": {
                            "constant_value": 2
                        },
                        "agents_max_pods": {
                            "constant_value": 100
                        },
                        "agents_min_count": {
                            "constant_value": 1
                        },
                        "agents_pool_linux_os_configs": {
                            "constant_value": [
                                {
                                    "sysctl_configs": [
                                        {
                                            "fs_aio_max_nr": 65536,
                                            "fs_file_max": 100000,
                                            "fs_inotify_max_user_watches": 1000000
                                        }
                                    ],
                                    "transparent_huge_page_enabled": "always"
                                }
                            ]
                        },
                        "agents_pool_name": {
                            "constant_value": "testnodepool"
                        },
                        "agents_type": {
                            "constant_value": "VirtualMachineScaleSets"
                        },
                        "automatic_channel_upgrade": {
                            "constant_value": "patch"
                        },
                        "azure_policy_enabled": {
                            "constant_value": true
                        },
                        "brown_field_application_gateway_for_ingress": {
                            "references": [
                                "var.use_brown_field_application_gateway",
                                "azurerm_application_gateway.appgw[0].id",
                                "azurerm_application_gateway.appgw[0]",
                                "azurerm_application_gateway.appgw",
                                "azurerm_subnet.appgw[0].id",
                                "azurerm_subnet.appgw[0]",
                                "azurerm_subnet.appgw"
                            ]
                        },
                        "create_role_assignments_for_application_gateway": {
                            "references": [
                                "var.create_role_assignments_for_application_gateway"
                            ]
                        },
                        "enable_auto_scaling": {
                            "constant_value": true
                        },
                        "enable_host_encryption": {
                            "constant_value": true
                        },
                        "green_field_application_gateway_for_ingress": {
                            "references": [
                                "var.use_brown_field_application_gateway",
                                "local.appgw_cidr"
                            ]
                        },
                        "kubernetes_version": {
                            "constant_value": "1.29"
                        },
                        "local_account_disabled": {
                            "constant_value": false
                        },
                        "log_analytics_workspace_enabled": {
                            "constant_value": false
                        },
                        "net_profile_dns_service_ip": {
                            "constant_value": "10.0.0.10"
                        },
                        "net_profile_service_cidr": {
                            "constant_value": "10.0.0.0/16"
                        },
                        "network_plugin": {
                            "constant_value": "azure"
                        },
                        "network_policy": {
                            "constant_value": "azure"
                        },
                        "os_disk_size_gb": {
                            "constant_value": 60
                        },
                        "prefix": {
                            "references": [
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "private_cluster_enabled": {
                            "constant_value": false
                        },
                        "rbac_aad": {
                            "constant_value": true
                        },
                        "rbac_aad_managed": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "role_based_access_control_enabled": {
                            "constant_value": true
                        },
                        "sku_tier": {
                            "constant_value": "Standard"
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "var.bring_your_own_vnet",
                                "azurerm_subnet.test[0].id",
                                "azurerm_subnet.test[0]",
                                "azurerm_subnet.test"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "aci_connector_linux": {
                                "description": "The `aci_connector_linux` block of `azurerm_kubernetes_cluster` resource.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux[0]",
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "aci_connector_linux_enabled": {
                                "description": "Has `aci_connector_linux` been enabled on the `azurerm_kubernetes_cluster` resource?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux[0]",
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "admin_client_certificate": {
                                "description": "The `client_certificate` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block.  Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_client_key": {
                                "description": "The `client_key` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].client_key",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_cluster_ca_certificate": {
                                "description": "The `cluster_ca_certificate` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].cluster_ca_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_host": {
                                "description": "The `host` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. The Kubernetes cluster server host.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].host",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_password": {
                                "description": "The `password` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. A password or token used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].password",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_username": {
                                "description": "The `username` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. A username used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].username",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "aks_id": {
                                "description": "The `azurerm_kubernetes_cluster`'s id.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.id",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "aks_name": {
                                "description": "The `azurerm_kubernetes_cluster`'s name.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.name",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "azure_policy_enabled": {
                                "description": "The `azurerm_kubernetes_cluster`'s `azure_policy_enabled` argument. Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.azure_policy_enabled",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_id": {
                                "description": "The id of the created Log Analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].id",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_name": {
                                "description": "The name of the created Log Analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].name",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_primary_shared_key": {
                                "description": "Specifies the workspace key of the log analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].primary_shared_key",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "client_certificate": {
                                "description": "The `client_certificate` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "client_key": {
                                "description": "The `client_key` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].client_key",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "cluster_ca_certificate": {
                                "description": "The `cluster_ca_certificate` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].cluster_ca_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "cluster_fqdn": {
                                "description": "The FQDN of the Azure Kubernetes Managed Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `identity` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.identity[0]",
                                        "azurerm_kubernetes_cluster.main.identity",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_portal_fqdn": {
                                "description": "The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.portal_fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_private_fqdn": {
                                "description": "The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.private_fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "generated_cluster_private_ssh_key": {
                                "description": "The cluster will use this generated private key as ssh key when `var.public_ssh_key` is empty or null. Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.linux_profile[0]",
                                        "azurerm_kubernetes_cluster.main.linux_profile",
                                        "azurerm_kubernetes_cluster.main",
                                        "var.public_ssh_key",
                                        "var.public_ssh_key",
                                        "tls_private_key.ssh[0].private_key_pem",
                                        "tls_private_key.ssh[0]",
                                        "tls_private_key.ssh"
                                    ]
                                },
                                "sensitive": true
                            },
                            "generated_cluster_public_ssh_key": {
                                "description": "The cluster will use this generated public key as ssh key when `var.public_ssh_key` is empty or null. The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the [ECDSA P224 limitations](https://registry.terraform.io/providers/hashicorp/tls/latest/docs#limitations).",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.linux_profile[0]",
                                        "azurerm_kubernetes_cluster.main.linux_profile",
                                        "azurerm_kubernetes_cluster.main",
                                        "var.public_ssh_key",
                                        "var.public_ssh_key",
                                        "tls_private_key.ssh[0].public_key_openssh",
                                        "tls_private_key.ssh[0]",
                                        "tls_private_key.ssh"
                                    ]
                                }
                            },
                            "host": {
                                "description": "The `host` in the `azurerm_kubernetes_cluster`'s `kube_config` block. The Kubernetes cluster server host.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].host",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "http_application_routing_zone_name": {
                                "description": "The `azurerm_kubernetes_cluster`'s `http_application_routing_zone_name` argument. The Zone Name of the HTTP Application Routing.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.http_application_routing_zone_name",
                                        "azurerm_kubernetes_cluster.main",
                                        "azurerm_kubernetes_cluster.main.http_application_routing_zone_name",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "ingress_application_gateway": {
                                "description": "The `azurerm_kubernetes_cluster`'s `ingress_application_gateway` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "ingress_application_gateway_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `ingress_application_gateway` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "key_vault_secrets_provider": {
                                "description": "The `azurerm_kubernetes_cluster`'s `key_vault_secrets_provider` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "key_vault_secrets_provider_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `key_vault_secrets_provider` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "kube_admin_config_raw": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kube_admin_config_raw` argument. Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config_raw",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kube_config_raw": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kube_config_raw` argument. Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config_raw",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kubelet_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kubelet_identity` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kubelet_identity",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "location": {
                                "description": "The `azurerm_kubernetes_cluster`'s `location` argument. (Required) The location where the Managed Kubernetes Cluster should be created.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.location",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "network_profile": {
                                "description": "The `azurerm_kubernetes_cluster`'s `network_profile` block",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.network_profile",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "node_resource_group": {
                                "description": "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.node_resource_group",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oidc_issuer_url": {
                                "description": "The OIDC issuer URL that is associated with the cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oidc_issuer_url",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oms_agent": {
                                "description": "The `azurerm_kubernetes_cluster`'s `oms_agent` argument.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oms_agent[0]",
                                        "azurerm_kubernetes_cluster.main.oms_agent",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oms_agent_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `oms_agent` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oms_agent[0]",
                                        "azurerm_kubernetes_cluster.main.oms_agent",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "open_service_mesh_enabled": {
                                "description": "(Optional) Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about).",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.open_service_mesh_enabled",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "password": {
                                "description": "The `password` in the `azurerm_kubernetes_cluster`'s `kube_config` block. A password or token used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].password",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "username": {
                                "description": "The `username` in the `azurerm_kubernetes_cluster`'s `kube_config` block. A username used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].username",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "web_app_routing_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `web_app_routing_identity` block, it's type is a list of object.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.web_app_routing[0].web_app_routing_identity",
                                        "azurerm_kubernetes_cluster.main.web_app_routing[0]",
                                        "azurerm_kubernetes_cluster.main.web_app_routing",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azapi_update_resource.aks_cluster_http_proxy_config_no_proxy",
                                "count_expression": {
                                    "references": [
                                        "var.http_proxy_config.no_proxy[0]",
                                        "var.http_proxy_config.no_proxy",
                                        "var.http_proxy_config"
                                    ]
                                },
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "body": {
                                        "references": [
                                            "var.http_proxy_config.no_proxy",
                                            "var.http_proxy_config"
                                        ]
                                    },
                                    "resource_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "type": {
                                        "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster_http_proxy_config_no_proxy",
                                "provider_config_key": "module.aks:azapi",
                                "schema_version": 1,
                                "type": "azapi_update_resource"
                            },
                            {
                                "address": "azapi_update_resource.aks_cluster_post_create",
                                "expressions": {
                                    "body": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    },
                                    "resource_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "type": {
                                        "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster_post_create",
                                "provider_config_key": "module.aks:azapi",
                                "schema_version": 1,
                                "type": "azapi_update_resource"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster.main",
                                "expressions": {
                                    "automatic_channel_upgrade": {
                                        "references": [
                                            "var.automatic_channel_upgrade"
                                        ]
                                    },
                                    "azure_policy_enabled": {
                                        "references": [
                                            "var.azure_policy_enabled"
                                        ]
                                    },
                                    "disk_encryption_set_id": {
                                        "references": [
                                            "var.disk_encryption_set_id"
                                        ]
                                    },
                                    "dns_prefix": {
                                        "references": [
                                            "var.prefix"
                                        ]
                                    },
                                    "image_cleaner_enabled": {
                                        "references": [
                                            "var.image_cleaner_enabled"
                                        ]
                                    },
                                    "image_cleaner_interval_hours": {
                                        "references": [
                                            "var.image_cleaner_interval_hours"
                                        ]
                                    },
                                    "kubernetes_version": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    },
                                    "local_account_disabled": {
                                        "references": [
                                            "var.local_account_disabled"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location",
                                            "data.azurerm_resource_group.main.location",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "local.cluster_name",
                                            "var.cluster_name_random_suffix"
                                        ]
                                    },
                                    "network_profile": [
                                        {
                                            "dns_service_ip": {
                                                "references": [
                                                    "var.net_profile_dns_service_ip"
                                                ]
                                            },
                                            "ebpf_data_plane": {
                                                "references": [
                                                    "var.ebpf_data_plane"
                                                ]
                                            },
                                            "load_balancer_sku": {
                                                "references": [
                                                    "var.load_balancer_sku"
                                                ]
                                            },
                                            "network_plugin": {
                                                "references": [
                                                    "var.network_plugin"
                                                ]
                                            },
                                            "network_plugin_mode": {
                                                "references": [
                                                    "var.network_plugin_mode"
                                                ]
                                            },
                                            "network_policy": {
                                                "references": [
                                                    "var.network_policy"
                                                ]
                                            },
                                            "outbound_type": {
                                                "references": [
                                                    "var.net_profile_outbound_type"
                                                ]
                                            },
                                            "pod_cidr": {
                                                "references": [
                                                    "var.net_profile_pod_cidr"
                                                ]
                                            },
                                            "service_cidr": {
                                                "references": [
                                                    "var.net_profile_service_cidr"
                                                ]
                                            }
                                        }
                                    ],
                                    "node_os_channel_upgrade": {
                                        "references": [
                                            "var.node_os_channel_upgrade"
                                        ]
                                    },
                                    "node_resource_group": {
                                        "references": [
                                            "var.node_resource_group"
                                        ]
                                    },
                                    "oidc_issuer_enabled": {
                                        "references": [
                                            "var.oidc_issuer_enabled"
                                        ]
                                    },
                                    "open_service_mesh_enabled": {
                                        "references": [
                                            "var.open_service_mesh_enabled"
                                        ]
                                    },
                                    "private_cluster_enabled": {
                                        "references": [
                                            "var.private_cluster_enabled"
                                        ]
                                    },
                                    "private_cluster_public_fqdn_enabled": {
                                        "references": [
                                            "var.private_cluster_public_fqdn_enabled"
                                        ]
                                    },
                                    "private_dns_zone_id": {
                                        "references": [
                                            "var.private_dns_zone_id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "data.azurerm_resource_group.main.name",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "role_based_access_control_enabled": {
                                        "references": [
                                            "var.role_based_access_control_enabled"
                                        ]
                                    },
                                    "run_command_enabled": {
                                        "references": [
                                            "var.run_command_enabled"
                                        ]
                                    },
                                    "sku_tier": {
                                        "references": [
                                            "var.sku_tier"
                                        ]
                                    },
                                    "support_plan": {
                                        "references": [
                                            "var.support_plan"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "workload_identity_enabled": {
                                        "references": [
                                            "var.workload_identity_enabled"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "capacity_reservation_group_id": {
                                        "references": [
                                            "each.value.capacity_reservation_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "custom_ca_trust_enabled": {
                                        "references": [
                                            "each.value.custom_ca_trust_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "enable_auto_scaling": {
                                        "references": [
                                            "each.value.enable_auto_scaling",
                                            "each.value"
                                        ]
                                    },
                                    "enable_host_encryption": {
                                        "references": [
                                            "each.value.enable_host_encryption",
                                            "each.value"
                                        ]
                                    },
                                    "enable_node_public_ip": {
                                        "references": [
                                            "each.value.enable_node_public_ip",
                                            "each.value"
                                        ]
                                    },
                                    "eviction_policy": {
                                        "references": [
                                            "each.value.eviction_policy",
                                            "each.value"
                                        ]
                                    },
                                    "fips_enabled": {
                                        "references": [
                                            "each.value.fips_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "host_group_id": {
                                        "references": [
                                            "each.value.host_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "kubelet_disk_type": {
                                        "references": [
                                            "each.value.kubelet_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "kubernetes_cluster_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "max_count": {
                                        "references": [
                                            "each.value.max_count",
                                            "each.value"
                                        ]
                                    },
                                    "max_pods": {
                                        "references": [
                                            "each.value.max_pods",
                                            "each.value"
                                        ]
                                    },
                                    "message_of_the_day": {
                                        "references": [
                                            "each.value.message_of_the_day",
                                            "each.value"
                                        ]
                                    },
                                    "min_count": {
                                        "references": [
                                            "each.value.min_count",
                                            "each.value"
                                        ]
                                    },
                                    "mode": {
                                        "references": [
                                            "each.value.mode",
                                            "each.value"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "node_count": {
                                        "references": [
                                            "each.value.node_count",
                                            "each.value"
                                        ]
                                    },
                                    "node_labels": {
                                        "references": [
                                            "each.value.node_labels",
                                            "each.value"
                                        ]
                                    },
                                    "node_public_ip_prefix_id": {
                                        "references": [
                                            "each.value.node_public_ip_prefix_id",
                                            "each.value"
                                        ]
                                    },
                                    "node_taints": {
                                        "references": [
                                            "each.value.node_taints",
                                            "each.value"
                                        ]
                                    },
                                    "orchestrator_version": {
                                        "references": [
                                            "each.value.orchestrator_version",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_size_gb": {
                                        "references": [
                                            "each.value.os_disk_size_gb",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_type": {
                                        "references": [
                                            "each.value.os_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "os_sku": {
                                        "references": [
                                            "each.value.os_sku",
                                            "each.value"
                                        ]
                                    },
                                    "os_type": {
                                        "references": [
                                            "each.value.os_type",
                                            "each.value"
                                        ]
                                    },
                                    "pod_subnet_id": {
                                        "references": [
                                            "each.value.pod_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "priority": {
                                        "references": [
                                            "each.value.priority",
                                            "each.value"
                                        ]
                                    },
                                    "proximity_placement_group_id": {
                                        "references": [
                                            "each.value.proximity_placement_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "scale_down_mode": {
                                        "references": [
                                            "each.value.scale_down_mode",
                                            "each.value"
                                        ]
                                    },
                                    "snapshot_id": {
                                        "references": [
                                            "each.value.snapshot_id",
                                            "each.value"
                                        ]
                                    },
                                    "spot_max_price": {
                                        "references": [
                                            "each.value.spot_max_price",
                                            "each.value"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "ultra_ssd_enabled": {
                                        "references": [
                                            "each.value.ultra_ssd_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "each.value.vm_size",
                                            "each.value"
                                        ]
                                    },
                                    "vnet_subnet_id": {
                                        "references": [
                                            "each.value.vnet_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "workload_runtime": {
                                        "references": [
                                            "each.value.workload_runtime",
                                            "each.value"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "each.value.zones",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "local.node_pools_create_after_destroy"
                                    ]
                                },
                                "mode": "managed",
                                "name": "node_pool_create_after_destroy",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_kubernetes_cluster_node_pool"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "capacity_reservation_group_id": {
                                        "references": [
                                            "each.value.capacity_reservation_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "custom_ca_trust_enabled": {
                                        "references": [
                                            "each.value.custom_ca_trust_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "enable_auto_scaling": {
                                        "references": [
                                            "each.value.enable_auto_scaling",
                                            "each.value"
                                        ]
                                    },
                                    "enable_host_encryption": {
                                        "references": [
                                            "each.value.enable_host_encryption",
                                            "each.value"
                                        ]
                                    },
                                    "enable_node_public_ip": {
                                        "references": [
                                            "each.value.enable_node_public_ip",
                                            "each.value"
                                        ]
                                    },
                                    "eviction_policy": {
                                        "references": [
                                            "each.value.eviction_policy",
                                            "each.value"
                                        ]
                                    },
                                    "fips_enabled": {
                                        "references": [
                                            "each.value.fips_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "gpu_instance": {
                                        "references": [
                                            "each.value.gpu_instance",
                                            "each.value"
                                        ]
                                    },
                                    "host_group_id": {
                                        "references": [
                                            "each.value.host_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "kubelet_disk_type": {
                                        "references": [
                                            "each.value.kubelet_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "kubernetes_cluster_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "max_count": {
                                        "references": [
                                            "each.value.max_count",
                                            "each.value"
                                        ]
                                    },
                                    "max_pods": {
                                        "references": [
                                            "each.value.max_pods",
                                            "each.value"
                                        ]
                                    },
                                    "message_of_the_day": {
                                        "references": [
                                            "each.value.message_of_the_day",
                                            "each.value"
                                        ]
                                    },
                                    "min_count": {
                                        "references": [
                                            "each.value.min_count",
                                            "each.value"
                                        ]
                                    },
                                    "mode": {
                                        "references": [
                                            "each.value.mode",
                                            "each.value"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "node_count": {
                                        "references": [
                                            "each.value.node_count",
                                            "each.value"
                                        ]
                                    },
                                    "node_labels": {
                                        "references": [
                                            "each.value.node_labels",
                                            "each.value"
                                        ]
                                    },
                                    "node_public_ip_prefix_id": {
                                        "references": [
                                            "each.value.node_public_ip_prefix_id",
                                            "each.value"
                                        ]
                                    },
                                    "node_taints": {
                                        "references": [
                                            "each.value.node_taints",
                                            "each.value"
                                        ]
                                    },
                                    "orchestrator_version": {
                                        "references": [
                                            "each.value.orchestrator_version",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_size_gb": {
                                        "references": [
                                            "each.value.os_disk_size_gb",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_type": {
                                        "references": [
                                            "each.value.os_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "os_sku": {
                                        "references": [
                                            "each.value.os_sku",
                                            "each.value"
                                        ]
                                    },
                                    "os_type": {
                                        "references": [
                                            "each.value.os_type",
                                            "each.value"
                                        ]
                                    },
                                    "pod_subnet_id": {
                                        "references": [
                                            "each.value.pod_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "priority": {
                                        "references": [
                                            "each.value.priority",
                                            "each.value"
                                        ]
                                    },
                                    "proximity_placement_group_id": {
                                        "references": [
                                            "each.value.proximity_placement_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "scale_down_mode": {
                                        "references": [
                                            "each.value.scale_down_mode",
                                            "each.value"
                                        ]
                                    },
                                    "snapshot_id": {
                                        "references": [
                                            "each.value.snapshot_id",
                                            "each.value"
                                        ]
                                    },
                                    "spot_max_price": {
                                        "references": [
                                            "each.value.spot_max_price",
                                            "each.value"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "ultra_ssd_enabled": {
                                        "references": [
                                            "each.value.ultra_ssd_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "each.value.vm_size",
                                            "each.value"
                                        ]
                                    },
                                    "vnet_subnet_id": {
                                        "references": [
                                            "each.value.vnet_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "workload_runtime": {
                                        "references": [
                                            "each.value.workload_runtime",
                                            "each.value"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "each.value.zones",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "local.node_pools_create_before_destroy"
                                    ]
                                },
                                "mode": "managed",
                                "name": "node_pool_create_before_destroy",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_kubernetes_cluster_node_pool"
                            },
                            {
                                "address": "azurerm_log_analytics_solution.main",
                                "count_expression": {
                                    "references": [
                                        "local.create_analytics_solution"
                                    ]
                                },
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "local.log_analytics_workspace.location",
                                            "local.log_analytics_workspace",
                                            "data.azurerm_log_analytics_workspace.main[0].location",
                                            "data.azurerm_log_analytics_workspace.main[0]",
                                            "data.azurerm_log_analytics_workspace.main"
                                        ]
                                    },
                                    "plan": [
                                        {
                                            "product": {
                                                "constant_value": "OMSGallery/ContainerInsights"
                                            },
                                            "publisher": {
                                                "constant_value": "Microsoft"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "local.log_analytics_workspace.resource_group_name",
                                            "local.log_analytics_workspace"
                                        ]
                                    },
                                    "solution_name": {
                                        "constant_value": "ContainerInsights"
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "workspace_name": {
                                        "references": [
                                            "local.log_analytics_workspace.name",
                                            "local.log_analytics_workspace"
                                        ]
                                    },
                                    "workspace_resource_id": {
                                        "references": [
                                            "local.log_analytics_workspace.id",
                                            "local.log_analytics_workspace"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_log_analytics_solution"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.main",
                                "count_expression": {
                                    "references": [
                                        "local.create_analytics_workspace"
                                    ]
                                },
                                "expressions": {
                                    "allow_resource_only_permissions": {
                                        "references": [
                                            "var.log_analytics_workspace_allow_resource_only_permissions"
                                        ]
                                    },
                                    "cmk_for_query_forced": {
                                        "references": [
                                            "var.log_analytics_workspace_cmk_for_query_forced"
                                        ]
                                    },
                                    "daily_quota_gb": {
                                        "references": [
                                            "var.log_analytics_workspace_daily_quota_gb"
                                        ]
                                    },
                                    "data_collection_rule_id": {
                                        "references": [
                                            "var.log_analytics_workspace_data_collection_rule_id"
                                        ]
                                    },
                                    "immediate_data_purge_on_30_days_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_immediate_data_purge_on_30_days_enabled"
                                        ]
                                    },
                                    "internet_ingestion_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_internet_ingestion_enabled"
                                        ]
                                    },
                                    "internet_query_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_internet_query_enabled"
                                        ]
                                    },
                                    "local_authentication_disabled": {
                                        "references": [
                                            "var.log_analytics_workspace_local_authentication_disabled"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location",
                                            "data.azurerm_resource_group.main.location",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_log_analytics_workspace_name",
                                            "var.prefix"
                                        ]
                                    },
                                    "reservation_capacity_in_gb_per_day": {
                                        "references": [
                                            "var.log_analytics_workspace_reservation_capacity_in_gb_per_day"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.log_analytics_workspace_resource_group_name",
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_in_days": {
                                        "references": [
                                            "var.log_retention_in_days"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.log_analytics_workspace_sku"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "azurerm_role_assignment.acr",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.kubelet_identity[0]",
                                            "azurerm_kubernetes_cluster.main.kubelet_identity",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "AcrPull"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "skip_service_principal_aad_check": {
                                        "constant_value": true
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.attached_acr_id_map"
                                    ]
                                },
                                "mode": "managed",
                                "name": "acr",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_green_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "local.default_nodepool_subnet_segments",
                                            "local.default_nodepool_subnet_segments"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_byo_vnet_network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "data.azurerm_virtual_network.application_gateway_vnet[0].id",
                                            "data.azurerm_virtual_network.application_gateway_vnet[0]",
                                            "data.azurerm_virtual_network.application_gateway_vnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_existing_vnet_network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_resource_group_reader",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.ingress_application_gateway_enabled"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Reader"
                                    },
                                    "scope": {
                                        "references": [
                                            "local.use_brown_field_gw_for_ingress",
                                            "data.azurerm_resource_group.ingress_gw[0].id",
                                            "data.azurerm_resource_group.ingress_gw[0]",
                                            "data.azurerm_resource_group.ingress_gw",
                                            "data.azurerm_resource_group.aks_rg[0].id",
                                            "data.azurerm_resource_group.aks_rg[0]",
                                            "data.azurerm_resource_group.aks_rg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_resource_group_reader",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.existing_application_gateway_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "var.brown_field_application_gateway_for_ingress.id",
                                            "var.brown_field_application_gateway_for_ingress"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "existing_application_gateway_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.network_contributor",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                            "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                            "data.azurerm_user_assigned_identity.cluster_identity",
                                            "azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                            "azurerm_kubernetes_cluster.main.identity[0]",
                                            "azurerm_kubernetes_cluster.main.identity",
                                            "azurerm_kubernetes_cluster.main",
                                            "var.client_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.create_role_assignment_network_contributor",
                                        "var.client_id",
                                        "var.client_secret",
                                        "local.subnet_ids"
                                    ]
                                },
                                "mode": "managed",
                                "name": "network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.network_contributor_on_subnet",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                            "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                            "data.azurerm_user_assigned_identity.cluster_identity",
                                            "azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                            "azurerm_kubernetes_cluster.main.identity[0]",
                                            "azurerm_kubernetes_cluster.main.identity",
                                            "azurerm_kubernetes_cluster.main",
                                            "var.client_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.network_contributor_role_assigned_subnet_ids"
                                    ]
                                },
                                "mode": "managed",
                                "name": "network_contributor_on_subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "null_resource.http_proxy_config_no_proxy_keeper",
                                "count_expression": {
                                    "references": [
                                        "var.http_proxy_config.no_proxy[0]",
                                        "var.http_proxy_config.no_proxy",
                                        "var.http_proxy_config"
                                    ]
                                },
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "var.http_proxy_config.no_proxy",
                                            "var.http_proxy_config"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "http_proxy_config_no_proxy_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.kubernetes_cluster_name_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "local.cluster_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubernetes_cluster_name_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.kubernetes_version_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubernetes_version_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.pool_name_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.node_pools"
                                    ]
                                },
                                "mode": "managed",
                                "name": "pool_name_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "tls_private_key.ssh",
                                "count_expression": {
                                    "references": [
                                        "var.admin_username"
                                    ]
                                },
                                "expressions": {
                                    "algorithm": {
                                        "constant_value": "RSA"
                                    },
                                    "rsa_bits": {
                                        "constant_value": 2048
                                    }
                                },
                                "mode": "managed",
                                "name": "ssh",
                                "provider_config_key": "module.aks:tls",
                                "schema_version": 1,
                                "type": "tls_private_key"
                            },
                            {
                                "address": "data.azurerm_client_config.this",
                                "mode": "data",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            },
                            {
                                "address": "data.azurerm_log_analytics_workspace.main",
                                "count_expression": {
                                    "references": [
                                        "local.query_datasource_for_log_analytics_workspace_location"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.log_analytics_workspace.name",
                                            "var.log_analytics_workspace"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "local.log_analytics_workspace.resource_group_name",
                                            "local.log_analytics_workspace"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "data.azurerm_resource_group.aks_rg",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "aks_rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_resource_group.ingress_gw",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "local.existing_application_gateway_resource_group_for_ingress"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "ingress_gw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_resource_group.main",
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_user_assigned_identity.cluster_identity",
                                "count_expression": {
                                    "references": [
                                        "var.client_id",
                                        "var.client_secret",
                                        "var.identity_type"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.identity_ids[0]",
                                            "var.identity_ids"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.identity_ids[0]",
                                            "var.identity_ids"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "cluster_identity",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_user_assigned_identity"
                            },
                            {
                                "address": "data.azurerm_virtual_network.application_gateway_vnet",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "local.existing_application_gateway_subnet_vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "local.existing_application_gateway_subnet_resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "application_gateway_vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "aci_connector_linux_enabled": {
                                "default": false,
                                "description": "Enable Virtual Node pool"
                            },
                            "aci_connector_linux_subnet_name": {
                                "default": null,
                                "description": "(Optional) aci_connector_linux subnet name"
                            },
                            "admin_username": {
                                "default": null,
                                "description": "The username of the local administrator to be created on the Kubernetes cluster. Set this variable to `null` to turn off the cluster's `linux_profile`. Changing this forces a new resource to be created."
                            },
                            "agents_availability_zones": {
                                "default": null,
                                "description": "(Optional) A list of Availability Zones across which the Node Pool should be spread. Changing this forces a new resource to be created."
                            },
                            "agents_count": {
                                "default": 2,
                                "description": "The number of Agents that should exist in the Agent Pool. Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes."
                            },
                            "agents_labels": {
                                "default": {},
                                "description": "(Optional) A map of Kubernetes labels which should be applied to nodes in the Default Node Pool. Changing this forces a new resource to be created."
                            },
                            "agents_max_count": {
                                "default": null,
                                "description": "Maximum number of nodes in a pool"
                            },
                            "agents_max_pods": {
                                "default": null,
                                "description": "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
                            },
                            "agents_min_count": {
                                "default": null,
                                "description": "Minimum number of nodes in a pool"
                            },
                            "agents_pool_drain_timeout_in_minutes": {
                                "default": null,
                                "description": "(Optional) The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created."
                            },
                            "agents_pool_kubelet_configs": {
                                "default": [],
                                "description": "  list(object({\n    cpu_manager_policy        = (Optional) Specifies the CPU Manager policy to use. Possible values are `none` and `static`, Changing this forces a new resource to be created.\n    cpu_cfs_quota_enabled     = (Optional) Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created.\n    cpu_cfs_quota_period      = (Optional) Specifies the CPU CFS quota period value. Changing this forces a new resource to be created.\n    image_gc_high_threshold   = (Optional) Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    image_gc_low_threshold    = (Optional) Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    topology_manager_policy   = (Optional) Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`. Changing this forces a new resource to be created.\n    allowed_unsafe_sysctls    = (Optional) Specifies the allow list of unsafe sysctls command or patterns (ending in `*`). Changing this forces a new resource to be created.\n    container_log_max_size_mb = (Optional) Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created.\n    container_log_max_line    = (Optional) Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created.\n    pod_max_pid               = (Optional) Specifies the maximum number of processes per pod. Changing this forces a new resource to be created.\n}))\n"
                            },
                            "agents_pool_linux_os_configs": {
                                "default": [],
                                "description": "list(object({\n  sysctl_configs = optional(list(object({\n    fs_aio_max_nr                      = (Optional) The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`. Changing this forces a new resource to be created.\n    fs_file_max                        = (Optional) The sysctl setting fs.file-max. Must be between `8192` and `12000500`. Changing this forces a new resource to be created.\n    fs_inotify_max_user_watches        = (Optional) The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`. Changing this forces a new resource to be created.\n    fs_nr_open                         = (Optional) The sysctl setting fs.nr_open. Must be between `8192` and `20000500`. Changing this forces a new resource to be created.\n    kernel_threads_max                 = (Optional) The sysctl setting kernel.threads-max. Must be between `20` and `513785`. Changing this forces a new resource to be created.\n    net_core_netdev_max_backlog        = (Optional) The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`. Changing this forces a new resource to be created.\n    net_core_optmem_max                = (Optional) The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`. Changing this forces a new resource to be created.\n    net_core_rmem_default              = (Optional) The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_rmem_max                  = (Optional) The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_somaxconn                 = (Optional) The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`. Changing this forces a new resource to be created.\n    net_core_wmem_default              = (Optional) The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_wmem_max                  = (Optional) The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_ipv4_ip_local_port_range_min   = (Optional) The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n    net_ipv4_ip_local_port_range_max   = (Optional) The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh1  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh2  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh3  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_fin_timeout           = (Optional) The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_intvl       = (Optional) The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `75`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_probes      = (Optional) The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_time        = (Optional) The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_max_syn_backlog       = (Optional) The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_max_tw_buckets        = (Optional) The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_tw_reuse              = (Optional) The sysctl setting net.ipv4.tcp_tw_reuse. Changing this forces a new resource to be created.\n    net_netfilter_nf_conntrack_buckets = (Optional) The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `147456`. Changing this forces a new resource to be created.\n    net_netfilter_nf_conntrack_max     = (Optional) The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `1048576`. Changing this forces a new resource to be created.\n    vm_max_map_count                   = (Optional) The sysctl setting vm.max_map_count. Must be between `65530` and `262144`. Changing this forces a new resource to be created.\n    vm_swappiness                      = (Optional) The sysctl setting vm.swappiness. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    vm_vfs_cache_pressure              = (Optional) The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`. Changing this forces a new resource to be created.\n  })), [])\n  transparent_huge_page_enabled = (Optional) Specifies the Transparent Huge Page enabled configuration. Possible values are `always`, `madvise` and `never`. Changing this forces a new resource to be created.\n  transparent_huge_page_defrag  = (Optional) specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`. Changing this forces a new resource to be created.\n  swap_file_size_mb             = (Optional) Specifies the size of the swap file on each node in MB. Changing this forces a new resource to be created.\n}))\n"
                            },
                            "agents_pool_max_surge": {
                                "default": "10%",
                                "description": "The maximum number or percentage of nodes which will be added to the Default Node Pool size during an upgrade."
                            },
                            "agents_pool_name": {
                                "default": "nodepool",
                                "description": "The default Azure AKS agentpool (nodepool) name."
                            },
                            "agents_pool_node_soak_duration_in_minutes": {
                                "default": 0,
                                "description": "(Optional) The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node. Defaults to 0."
                            },
                            "agents_proximity_placement_group_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Proximity Placement Group of the default Azure AKS agentpool (nodepool). Changing this forces a new resource to be created."
                            },
                            "agents_size": {
                                "default": "Standard_D2s_v3",
                                "description": "The default virtual machine size for the Kubernetes agents. Changing this without specifying `var.temporary_name_for_rotation` forces a new resource to be created."
                            },
                            "agents_tags": {
                                "default": {},
                                "description": "(Optional) A mapping of tags to assign to the Node Pool."
                            },
                            "agents_taints": {
                                "default": null,
                                "description": "(Optional) A list of the taints added to new nodes during node pool create and scale. Changing this forces a new resource to be created."
                            },
                            "agents_type": {
                                "default": "VirtualMachineScaleSets",
                                "description": "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
                            },
                            "api_server_authorized_ip_ranges": {
                                "default": null,
                                "description": "(Optional) The IP ranges to allow for incoming traffic to the server nodes."
                            },
                            "api_server_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Subnet where the API server endpoint is delegated to."
                            },
                            "attached_acr_id_map": {
                                "default": {},
                                "description": "Azure Container Registry ids that need an authentication mechanism with Azure Kubernetes Service (AKS). Map key must be static string as acr's name, the value is acr's resource id. Changing this forces some new resources to be created."
                            },
                            "auto_scaler_profile_balance_similar_node_groups": {
                                "default": false,
                                "description": "Detect similar node groups and balance the number of nodes between them. Defaults to `false`."
                            },
                            "auto_scaler_profile_empty_bulk_delete_max": {
                                "default": 10,
                                "description": "Maximum number of empty nodes that can be deleted at the same time. Defaults to `10`."
                            },
                            "auto_scaler_profile_enabled": {
                                "default": false,
                                "description": "Enable configuring the auto scaler profile"
                            },
                            "auto_scaler_profile_expander": {
                                "default": "random",
                                "description": "Expander to use. Possible values are `least-waste`, `priority`, `most-pods` and `random`. Defaults to `random`."
                            },
                            "auto_scaler_profile_max_graceful_termination_sec": {
                                "default": "600",
                                "description": "Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to `600`."
                            },
                            "auto_scaler_profile_max_node_provisioning_time": {
                                "default": "15m",
                                "description": "Maximum time the autoscaler waits for a node to be provisioned. Defaults to `15m`."
                            },
                            "auto_scaler_profile_max_unready_nodes": {
                                "default": 3,
                                "description": "Maximum Number of allowed unready nodes. Defaults to `3`."
                            },
                            "auto_scaler_profile_max_unready_percentage": {
                                "default": 45,
                                "description": "Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded. Defaults to `45`."
                            },
                            "auto_scaler_profile_new_pod_scale_up_delay": {
                                "default": "10s",
                                "description": "For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to `10s`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_add": {
                                "default": "10m",
                                "description": "How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to `10m`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_delete": {
                                "default": null,
                                "description": "How long after node deletion that scale down evaluation resumes. Defaults to the value used for `scan_interval`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_failure": {
                                "default": "3m",
                                "description": "How long after scale down failure that scale down evaluation resumes. Defaults to `3m`."
                            },
                            "auto_scaler_profile_scale_down_unneeded": {
                                "default": "10m",
                                "description": "How long a node should be unneeded before it is eligible for scale down. Defaults to `10m`."
                            },
                            "auto_scaler_profile_scale_down_unready": {
                                "default": "20m",
                                "description": "How long an unready node should be unneeded before it is eligible for scale down. Defaults to `20m`."
                            },
                            "auto_scaler_profile_scale_down_utilization_threshold": {
                                "default": "0.5",
                                "description": "Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to `0.5`."
                            },
                            "auto_scaler_profile_scan_interval": {
                                "default": "10s",
                                "description": "How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to `10s`."
                            },
                            "auto_scaler_profile_skip_nodes_with_local_storage": {
                                "default": true,
                                "description": "If `true` cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to `true`."
                            },
                            "auto_scaler_profile_skip_nodes_with_system_pods": {
                                "default": true,
                                "description": "If `true` cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to `true`."
                            },
                            "automatic_channel_upgrade": {
                                "default": null,
                                "description": "(Optional) The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. By default automatic-upgrades are turned off. Note that you cannot specify the patch version using `kubernetes_version` or `orchestrator_version` when using the `patch` upgrade channel. See [the documentation](https://learn.microsoft.com/en-us/azure/aks/auto-upgrade-cluster) for more information"
                            },
                            "azure_policy_enabled": {
                                "default": false,
                                "description": "Enable Azure Policy Addon."
                            },
                            "brown_field_application_gateway_for_ingress": {
                                "default": null,
                                "description": "[Definition of `brown_field`](https://learn.microsoft.com/en-us/azure/application-gateway/tutorial-ingress-controller-add-on-existing)\n* `id` - (Required) The ID of the Application Gateway that be used as cluster ingress.\n* `subnet_id` - (Required) The ID of the Subnet which the Application Gateway is connected to. Must be set when `create_role_assignments` is `true`.\n"
                            },
                            "client_id": {
                                "default": "",
                                "description": "(Optional) The Client ID (appId) for the Service Principal used for the AKS deployment"
                            },
                            "client_secret": {
                                "default": "",
                                "description": "(Optional) The Client Secret (password) for the Service Principal used for the AKS deployment"
                            },
                            "cluster_log_analytics_workspace_name": {
                                "default": null,
                                "description": "(Optional) The name of the Analytics workspace"
                            },
                            "cluster_name": {
                                "default": null,
                                "description": "(Optional) The name for the AKS resources created in the specified Azure Resource Group. This variable overwrites the 'prefix' var (The 'prefix' var will still be applied to the dns_prefix if it is set)"
                            },
                            "cluster_name_random_suffix": {
                                "default": false,
                                "description": "Whether to add a random suffix on Aks cluster's name or not. `azurerm_kubernetes_cluster` resource defined in this module is `create_before_destroy = true` implicity now(described [here](https://github.com/Azure/terraform-azurerm-aks/issues/389)), without this random suffix we'll not be able to recreate this cluster directly due to the naming conflict."
                            },
                            "confidential_computing": {
                                "default": null,
                                "description": "(Optional) Enable Confidential Computing."
                            },
                            "create_role_assignment_network_contributor": {
                                "default": false,
                                "description": "(Deprecated) Create a role assignment for the AKS Service Principal to be a Network Contributor on the subnets used for the AKS Cluster"
                            },
                            "create_role_assignments_for_application_gateway": {
                                "default": true,
                                "description": "(Optional) Whether to create the corresponding role assignments for application gateway or not. Defaults to `true`."
                            },
                            "default_node_pool_fips_enabled": {
                                "default": null,
                                "description": " (Optional) Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created."
                            },
                            "disk_encryption_set_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created."
                            },
                            "ebpf_data_plane": {
                                "default": null,
                                "description": "(Optional) Specifies the eBPF data plane used for building the Kubernetes network. Possible value is `cilium`. Changing this forces a new resource to be created."
                            },
                            "enable_auto_scaling": {
                                "default": false,
                                "description": "Enable node pool autoscaling"
                            },
                            "enable_host_encryption": {
                                "default": false,
                                "description": "Enable Host Encryption for default node pool. Encryption at host feature must be enabled on the subscription: https://docs.microsoft.com/azure/virtual-machines/linux/disks-enable-host-based-encryption-cli"
                            },
                            "enable_node_public_ip": {
                                "default": false,
                                "description": "(Optional) Should nodes in this Node Pool have a Public IP Address? Defaults to false."
                            },
                            "green_field_application_gateway_for_ingress": {
                                "default": null,
                                "description": "[Definition of `green_field`](https://learn.microsoft.com/en-us/azure/application-gateway/tutorial-ingress-controller-add-on-new)\n* `name` - (Optional) The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n* `subnet_cidr` - (Optional) The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n* `subnet_id` - (Optional) The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n"
                            },
                            "http_proxy_config": {
                                "default": null,
                                "description": "  optional(object({\n    http_proxy  = (Optional) The proxy address to be used when communicating over HTTP.\n    https_proxy = (Optional) The proxy address to be used when communicating over HTTPS.\n    no_proxy    = (Optional) The list of domains that will not use the proxy for communication. Note: If you specify the `default_node_pool.0.vnet_subnet_id`, be sure to include the Subnet CIDR in the `no_proxy` list. Note: You may wish to use Terraform's `ignore_changes` functionality to ignore the changes to this field.\n    trusted_ca  = (Optional) The base64 encoded alternative CA certificate content in PEM format.\n}))\nOnce you have set only one of `http_proxy` and `https_proxy`, this config would be used for both `http_proxy` and `https_proxy` to avoid a configuration drift.\n"
                            },
                            "identity_ids": {
                                "default": null,
                                "description": "(Optional) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster."
                            },
                            "identity_type": {
                                "default": "SystemAssigned",
                                "description": "(Optional) The type of identity used for the managed cluster. Conflicts with `client_id` and `client_secret`. Possible values are `SystemAssigned` and `UserAssigned`. If `UserAssigned` is set, an `identity_ids` must be set as well."
                            },
                            "image_cleaner_enabled": {
                                "default": false,
                                "description": "(Optional) Specifies whether Image Cleaner is enabled."
                            },
                            "image_cleaner_interval_hours": {
                                "default": 48,
                                "description": "(Optional) Specifies the interval in hours when images should be cleaned up. Defaults to `48`."
                            },
                            "key_vault_secrets_provider_enabled": {
                                "default": false,
                                "description": "(Optional) Whether to use the Azure Key Vault Provider for Secrets Store CSI Driver in an AKS cluster. For more details: https://docs.microsoft.com/en-us/azure/aks/csi-secrets-store-driver"
                            },
                            "kms_enabled": {
                                "default": false,
                                "description": "(Optional) Enable Azure KeyVault Key Management Service."
                            },
                            "kms_key_vault_key_id": {
                                "default": null,
                                "description": "(Optional) Identifier of Azure Key Vault key. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier."
                            },
                            "kms_key_vault_network_access": {
                                "default": "Public",
                                "description": "(Optional) Network Access of Azure Key Vault. Possible values are: `Private` and `Public`."
                            },
                            "kubelet_identity": {
                                "default": null,
                                "description": "- `client_id` - (Optional) The Client ID of the user-defined Managed Identity to be assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n- `object_id` - (Optional) The Object ID of the user-defined Managed Identity assigned to the Kubelets.If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n- `user_assigned_identity_id` - (Optional) The ID of the User Assigned Identity assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n"
                            },
                            "kubernetes_version": {
                                "default": null,
                                "description": "Specify which Kubernetes release to use. The default used is the latest Kubernetes version available in the region"
                            },
                            "load_balancer_profile_enabled": {
                                "default": false,
                                "description": "(Optional) Enable a load_balancer_profile block. This can only be used when load_balancer_sku is set to `standard`."
                            },
                            "load_balancer_profile_idle_timeout_in_minutes": {
                                "default": 30,
                                "description": "(Optional) Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between `4` and `120` inclusive."
                            },
                            "load_balancer_profile_managed_outbound_ip_count": {
                                "default": null,
                                "description": "(Optional) Count of desired managed outbound IPs for the cluster load balancer. Must be between `1` and `100` inclusive"
                            },
                            "load_balancer_profile_managed_outbound_ipv6_count": {
                                "default": null,
                                "description": "(Optional) The desired number of IPv6 outbound IPs created and managed by Azure for the cluster load balancer. Must be in the range of `1` to `100` (inclusive). The default value is `0` for single-stack and `1` for dual-stack. Note: managed_outbound_ipv6_count requires dual-stack networking. To enable dual-stack networking the Preview Feature Microsoft.ContainerService/AKS-EnableDualStack needs to be enabled and the Resource Provider re-registered, see the documentation for more information. https://learn.microsoft.com/en-us/azure/aks/configure-kubenet-dual-stack?tabs=azure-cli%2Ckubectl#register-the-aks-enabledualstack-preview-feature"
                            },
                            "load_balancer_profile_outbound_ip_address_ids": {
                                "default": null,
                                "description": "(Optional) The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer."
                            },
                            "load_balancer_profile_outbound_ip_prefix_ids": {
                                "default": null,
                                "description": "(Optional) The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer."
                            },
                            "load_balancer_profile_outbound_ports_allocated": {
                                "default": 0,
                                "description": "(Optional) Number of desired SNAT port for each VM in the clusters load balancer. Must be between `0` and `64000` inclusive. Defaults to `0`"
                            },
                            "load_balancer_sku": {
                                "default": "standard",
                                "description": "(Optional) Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are `basic` and `standard`. Defaults to `standard`. Changing this forces a new kubernetes cluster to be created."
                            },
                            "local_account_disabled": {
                                "default": null,
                                "description": "(Optional) - If `true` local accounts will be disabled. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information."
                            },
                            "location": {
                                "default": null,
                                "description": "Location of cluster, if not defined it will be read from the resource-group"
                            },
                            "log_analytics_solution": {
                                "default": null,
                                "description": "(Optional) Object which contains existing azurerm_log_analytics_solution ID. Providing ID disables creation of azurerm_log_analytics_solution."
                            },
                            "log_analytics_workspace": {
                                "default": null,
                                "description": "(Optional) Existing azurerm_log_analytics_workspace to attach azurerm_log_analytics_solution. Providing the config disables creation of azurerm_log_analytics_workspace."
                            },
                            "log_analytics_workspace_allow_resource_only_permissions": {
                                "default": null,
                                "description": "(Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to `true`."
                            },
                            "log_analytics_workspace_cmk_for_query_forced": {
                                "default": null,
                                "description": "(Optional) Is Customer Managed Storage mandatory for query management?"
                            },
                            "log_analytics_workspace_daily_quota_gb": {
                                "default": null,
                                "description": "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
                            },
                            "log_analytics_workspace_data_collection_rule_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Data Collection Rule to use for this workspace."
                            },
                            "log_analytics_workspace_enabled": {
                                "default": true,
                                "description": "Enable the integration of azurerm_log_analytics_workspace and azurerm_log_analytics_solution: https://docs.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-onboard"
                            },
                            "log_analytics_workspace_identity": {
                                "default": null,
                                "description": "- `identity_ids` - (Optional) Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.\n- `type` - (Required) Specifies the identity type of the Log Analytics Workspace. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you) and `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field.\n"
                            },
                            "log_analytics_workspace_immediate_data_purge_on_30_days_enabled": {
                                "default": null,
                                "description": "(Optional) Whether to remove the data in the Log Analytics Workspace immediately after 30 days."
                            },
                            "log_analytics_workspace_internet_ingestion_enabled": {
                                "default": null,
                                "description": "(Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`."
                            },
                            "log_analytics_workspace_internet_query_enabled": {
                                "default": null,
                                "description": "(Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`."
                            },
                            "log_analytics_workspace_local_authentication_disabled": {
                                "default": null,
                                "description": "(Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to `false`."
                            },
                            "log_analytics_workspace_reservation_capacity_in_gb_per_day": {
                                "default": null,
                                "description": "(Optional) The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`."
                            },
                            "log_analytics_workspace_resource_group_name": {
                                "default": null,
                                "description": "(Optional) Resource group name to create azurerm_log_analytics_solution."
                            },
                            "log_analytics_workspace_sku": {
                                "default": "PerGB2018",
                                "description": "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
                            },
                            "log_retention_in_days": {
                                "default": 30,
                                "description": "The retention period for the logs in days"
                            },
                            "maintenance_window": {
                                "default": null,
                                "description": "(Optional) Maintenance configuration of the managed cluster."
                            },
                            "maintenance_window_auto_upgrade": {
                                "default": null,
                                "description": "- `day_of_month` - (Optional) The day of the month for the maintenance run. Required in combination with RelativeMonthly frequency. Value between 0 and 31 (inclusive).\n- `day_of_week` - (Optional) The day of the week for the maintenance run. Options are `Monday`, `Tuesday`, `Wednesday`, `Thurday`, `Friday`, `Saturday` and `Sunday`. Required in combination with weekly frequency.\n- `duration` - (Required) The duration of the window for maintenance to run in hours.\n- `frequency` - (Required) Frequency of maintenance. Possible options are `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.\n- `interval` - (Required) The interval for maintenance runs. Depending on the frequency this interval is week or month based.\n- `start_date` - (Optional) The date on which the maintenance window begins to take effect.\n- `start_time` - (Optional) The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.\n- `utc_offset` - (Optional) Used to determine the timezone for cluster maintenance.\n- `week_index` - (Optional) The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.\n\n---\n`not_allowed` block supports the following:\n- `end` - (Required) The end of a time span, formatted as an RFC3339 string.\n- `start` - (Required) The start of a time span, formatted as an RFC3339 string.\n"
                            },
                            "maintenance_window_node_os": {
                                "default": null,
                                "description": "- `day_of_month` -\n- `day_of_week` - (Optional) The day of the week for the maintenance run. Options are `Monday`, `Tuesday`, `Wednesday`, `Thurday`, `Friday`, `Saturday` and `Sunday`. Required in combination with weekly frequency.\n- `duration` - (Required) The duration of the window for maintenance to run in hours.\n- `frequency` - (Required) Frequency of maintenance. Possible options are `Daily`, `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.\n- `interval` - (Required) The interval for maintenance runs. Depending on the frequency this interval is week or month based.\n- `start_date` - (Optional) The date on which the maintenance window begins to take effect.\n- `start_time` - (Optional) The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.\n- `utc_offset` - (Optional) Used to determine the timezone for cluster maintenance.\n- `week_index` - (Optional) The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.\n\n---\n`not_allowed` block supports the following:\n- `end` - (Required) The end of a time span, formatted as an RFC3339 string.\n- `start` - (Required) The start of a time span, formatted as an RFC3339 string.\n"
                            },
                            "microsoft_defender_enabled": {
                                "default": false,
                                "description": "(Optional) Is Microsoft Defender on the cluster enabled? Requires `var.log_analytics_workspace_enabled` to be `true` to set this variable to `true`."
                            },
                            "monitor_metrics": {
                                "default": null,
                                "description": "(Optional) Specifies a Prometheus add-on profile for the Kubernetes Cluster\nobject({\n  annotations_allowed = \"(Optional) Specifies a comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric.\"\n  labels_allowed      = \"(Optional) Specifies a Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric.\"\n})\n"
                            },
                            "msi_auth_for_monitoring_enabled": {
                                "default": null,
                                "description": "(Optional) Is managed identity authentication for monitoring enabled?"
                            },
                            "net_profile_dns_service_ip": {
                                "default": null,
                                "description": "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
                            },
                            "net_profile_outbound_type": {
                                "default": "loadBalancer",
                                "description": "(Optional) The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer and userDefinedRouting. Defaults to loadBalancer."
                            },
                            "net_profile_pod_cidr": {
                                "default": null,
                                "description": " (Optional) The CIDR to use for pod IP addresses. This field can only be set when network_plugin is set to kubenet or network_plugin is set to azure and network_plugin_mode is set to overlay. Changing this forces a new resource to be created."
                            },
                            "net_profile_service_cidr": {
                                "default": null,
                                "description": "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
                            },
                            "network_contributor_role_assigned_subnet_ids": {
                                "default": {},
                                "description": "Create role assignments for the AKS Service Principal to be a Network Contributor on the subnets used for the AKS Cluster, key should be static string, value should be subnet's id"
                            },
                            "network_plugin": {
                                "default": "kubenet",
                                "description": "Network plugin to use for networking."
                            },
                            "network_plugin_mode": {
                                "default": null,
                                "description": "(Optional) Specifies the network plugin mode used for building the Kubernetes network. Possible value is `overlay`. Changing this forces a new resource to be created."
                            },
                            "network_policy": {
                                "default": null,
                                "description": " (Optional) Sets up network policy to be used with Azure CNI. Network policy allows us to control the traffic flow between pods. Currently supported values are calico and azure. Changing this forces a new resource to be created."
                            },
                            "node_os_channel_upgrade": {
                                "default": null,
                                "description": " (Optional) The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`."
                            },
                            "node_pools": {
                                "default": {},
                                "description": "A map of node pools that need to be created and attached on the Kubernetes cluster. The key of the map can be the name of the node pool, and the key must be static string. The value of the map is a `node_pool` block as defined below:\nmap(object({\n  name                          = (Required) The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created. A Windows Node Pool cannot have a `name` longer than 6 characters. A random suffix of 4 characters is always added to the name to avoid clashes during recreates.\n  node_count                    = (Optional) The initial number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` (inclusive) for user pools and between `1` and `1000` (inclusive) for system pools and must be a value in the range `min_count` - `max_count`.\n  tags                          = (Optional) A mapping of tags to assign to the resource. At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you [may wish to use Terraform's `ignore_changes` functionality to ignore changes to the casing](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess) until this is fixed in the AKS API.\n  vm_size                       = (Required) The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created.\n  host_group_id                 = (Optional) The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.\n  capacity_reservation_group_id = (Optional) Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.\n  custom_ca_trust_enabled       = (Optional) Specifies whether to trust a Custom CA. This requires that the Preview Feature `Microsoft.ContainerService/CustomCATrustPreview` is enabled and the Resource Provider is re-registered, see [the documentation](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority) for more information.\n  enable_auto_scaling           = (Optional) Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).\n  enable_host_encryption        = (Optional) Should the nodes in this Node Pool have host encryption enabled? Changing this forces a new resource to be created.\n  enable_node_public_ip         = (Optional) Should each node have a Public IP Address? Changing this forces a new resource to be created.\n  eviction_policy               = (Optional) The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. An Eviction Policy can only be configured when `priority` is set to `Spot` and will default to `Delete` unless otherwise specified.\n  gpu_instance                  = (Optional) Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.\n  kubelet_config = optional(object({\n    cpu_manager_policy        = (Optional) Specifies the CPU Manager policy to use. Possible values are `none` and `static`, Changing this forces a new resource to be created.\n    cpu_cfs_quota_enabled     = (Optional) Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created.\n    cpu_cfs_quota_period      = (Optional) Specifies the CPU CFS quota period value. Changing this forces a new resource to be created.\n    image_gc_high_threshold   = (Optional) Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    image_gc_low_threshold    = (Optional) Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    topology_manager_policy   = (Optional) Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`. Changing this forces a new resource to be created.\n    allowed_unsafe_sysctls    = (Optional) Specifies the allow list of unsafe sysctls command or patterns (ending in `*`). Changing this forces a new resource to be created.\n    container_log_max_size_mb = (Optional) Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created.\n    container_log_max_files   = (Optional) Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created.\n    pod_max_pid               = (Optional) Specifies the maximum number of processes per pod. Changing this forces a new resource to be created.\n  }))\n  linux_os_config = optional(object({\n    sysctl_config = optional(object({\n      fs_aio_max_nr                      = (Optional) The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`. Changing this forces a new resource to be created.\n      fs_file_max                        = (Optional) The sysctl setting fs.file-max. Must be between `8192` and `12000500`. Changing this forces a new resource to be created.\n      fs_inotify_max_user_watches        = (Optional) The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`. Changing this forces a new resource to be created.\n      fs_nr_open                         = (Optional) The sysctl setting fs.nr_open. Must be between `8192` and `20000500`. Changing this forces a new resource to be created.\n      kernel_threads_max                 = (Optional) The sysctl setting kernel.threads-max. Must be between `20` and `513785`. Changing this forces a new resource to be created.\n      net_core_netdev_max_backlog        = (Optional) The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`. Changing this forces a new resource to be created.\n      net_core_optmem_max                = (Optional) The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`. Changing this forces a new resource to be created.\n      net_core_rmem_default              = (Optional) The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_rmem_max                  = (Optional) The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_somaxconn                 = (Optional) The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`. Changing this forces a new resource to be created.\n      net_core_wmem_default              = (Optional) The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_wmem_max                  = (Optional) The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_ipv4_ip_local_port_range_min   = (Optional) The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n      net_ipv4_ip_local_port_range_max   = (Optional) The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh1  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh2  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh3  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_fin_timeout           = (Optional) The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_intvl       = (Optional) The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `75`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_probes      = (Optional) The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_time        = (Optional) The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_max_syn_backlog       = (Optional) The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_max_tw_buckets        = (Optional) The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_tw_reuse              = (Optional) Is sysctl setting net.ipv4.tcp_tw_reuse enabled? Changing this forces a new resource to be created.\n      net_netfilter_nf_conntrack_buckets = (Optional) The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `147456`. Changing this forces a new resource to be created.\n      net_netfilter_nf_conntrack_max     = (Optional) The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `1048576`. Changing this forces a new resource to be created.\n      vm_max_map_count                   = (Optional) The sysctl setting vm.max_map_count. Must be between `65530` and `262144`. Changing this forces a new resource to be created.\n      vm_swappiness                      = (Optional) The sysctl setting vm.swappiness. Must be between `0` and `100`. Changing this forces a new resource to be created.\n      vm_vfs_cache_pressure              = (Optional) The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    }))\n    transparent_huge_page_enabled = (Optional) Specifies the Transparent Huge Page enabled configuration. Possible values are `always`, `madvise` and `never`. Changing this forces a new resource to be created.\n    transparent_huge_page_defrag  = (Optional) specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`. Changing this forces a new resource to be created.\n    swap_file_size_mb             = (Optional) Specifies the size of swap file on each node in MB. Changing this forces a new resource to be created.\n  }))\n  fips_enabled       = (Optional) Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created. FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview).\n  kubelet_disk_type  = (Optional) The type of disk used by kubelet. Possible values are `OS` and `Temporary`.\n  max_count          = (Optional) The maximum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be greater than or equal to `min_count`.\n  max_pods           = (Optional) The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`.\n  message_of_the_day = (Optional) A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created.\n  mode               = (Optional) Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.\n  min_count          = (Optional) The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`.\n  node_network_profile = optional(object({\n    node_public_ip_tags = (Optional) Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.\n  }))\n  node_labels                  = (Optional) A map of Kubernetes labels which should be applied to nodes in this Node Pool.\n  node_public_ip_prefix_id     = (Optional) Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `enable_node_public_ip` should be `true`. Changing this forces a new resource to be created.\n  node_taints                  = (Optional) A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`). Changing this forces a new resource to be created.\n  orchestrator_version         = (Optional) Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.\n  os_disk_size_gb              = (Optional) The Agent Operating System disk size in GB. Changing this forces a new resource to be created.\n  os_disk_type                 = (Optional) The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created.\n  os_sku                       = (Optional) Specifies the OS SKU used by the agent pool. Possible values include: `Ubuntu`, `CBLMariner`, `Mariner`, `Windows2019`, `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created.\n  os_type                      = (Optional) The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.\n  pod_subnet_id                = (Optional) The ID of the Subnet where the pods in the Node Pool should exist. Changing this forces a new resource to be created.\n  priority                     = (Optional) The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.\n  proximity_placement_group_id = (Optional) The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created. When setting `priority` to Spot - you must configure an `eviction_policy`, `spot_max_price` and add the applicable `node_labels` and `node_taints` [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool).\n  spot_max_price               = (Optional) The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created. This field can only be configured when `priority` is set to `Spot`.\n  scale_down_mode              = (Optional) Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.\n  snapshot_id                  = (Optional) The ID of the Snapshot which should be used to create this Node Pool. Changing this forces a new resource to be created.\n  ultra_ssd_enabled            = (Optional) Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this forces a new resource to be created.\n  vnet_subnet_id               = (Optional) The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created. A route table must be configured on this Subnet.\n  upgrade_settings = optional(object({\n    drain_timeout_in_minutes      = number\n    node_soak_duration_in_minutes = number\n    max_surge                     = string\n  }))\n  windows_profile = optional(object({\n    outbound_nat_enabled = optional(bool, true)\n  }))\n  workload_runtime = (Optional) Used to specify the workload runtime. Allowed values are `OCIContainer` and `WasmWasi`. WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools)\n  zones            = (Optional) Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created.\n  create_before_destroy = (Optional) Create a new node pool before destroy the old one when Terraform must update an argument that cannot be updated in-place. Set this argument to `true` will add add a random suffix to pool's name to avoid conflict. Default to `true`.\n}))\n"
                            },
                            "node_resource_group": {
                                "default": null,
                                "description": "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster. Changing this forces a new resource to be created."
                            },
                            "oidc_issuer_enabled": {
                                "default": false,
                                "description": "Enable or Disable the OIDC issuer URL. Defaults to false."
                            },
                            "only_critical_addons_enabled": {
                                "default": null,
                                "description": "(Optional) Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. Changing this forces a new resource to be created."
                            },
                            "open_service_mesh_enabled": {
                                "default": null,
                                "description": "Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about)."
                            },
                            "orchestrator_version": {
                                "default": null,
                                "description": "Specify which Kubernetes release to use for the orchestration layer. The default used is the latest Kubernetes version available in the region"
                            },
                            "os_disk_size_gb": {
                                "default": 50,
                                "description": "Disk size of nodes in GBs."
                            },
                            "os_disk_type": {
                                "default": "Managed",
                                "description": "The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created."
                            },
                            "os_sku": {
                                "default": null,
                                "description": "(Optional) Specifies the OS SKU used by the agent pool. Possible values include: `Ubuntu`, `CBLMariner`, `Mariner`, `Windows2019`, `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created."
                            },
                            "pod_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Subnet where the pods in the default Node Pool should exist. Changing this forces a new resource to be created."
                            },
                            "prefix": {
                                "default": "",
                                "description": "(Optional) The prefix for the resources created in the specified Azure Resource Group. Omitting this variable requires both `var.cluster_log_analytics_workspace_name` and `var.cluster_name` have been set."
                            },
                            "private_cluster_enabled": {
                                "default": false,
                                "description": "If true cluster API server will be exposed only on internal IP address and available only in cluster vnet."
                            },
                            "private_cluster_public_fqdn_enabled": {
                                "default": false,
                                "description": "(Optional) Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`."
                            },
                            "private_dns_zone_id": {
                                "default": null,
                                "description": "(Optional) Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise cluster will have issues after provisioning. Changing this forces a new resource to be created."
                            },
                            "public_ssh_key": {
                                "default": "",
                                "description": "A custom ssh key to control access to the AKS cluster. Changing this forces a new resource to be created."
                            },
                            "rbac_aad": {
                                "default": true,
                                "description": "(Optional) Is Azure Active Directory integration enabled?"
                            },
                            "rbac_aad_admin_group_object_ids": {
                                "default": null,
                                "description": "Object ID of groups with admin access."
                            },
                            "rbac_aad_azure_rbac_enabled": {
                                "default": null,
                                "description": "(Optional) Is Role Based Access Control based on Azure AD enabled?"
                            },
                            "rbac_aad_client_app_id": {
                                "default": null,
                                "description": "The Client ID of an Azure Active Directory Application."
                            },
                            "rbac_aad_managed": {
                                "default": false,
                                "description": "Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration."
                            },
                            "rbac_aad_server_app_id": {
                                "default": null,
                                "description": "The Server ID of an Azure Active Directory Application."
                            },
                            "rbac_aad_server_app_secret": {
                                "default": null,
                                "description": "The Server Secret of an Azure Active Directory Application."
                            },
                            "rbac_aad_tenant_id": {
                                "default": null,
                                "description": "(Optional) The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used."
                            },
                            "resource_group_name": {
                                "description": "The resource group name to be imported"
                            },
                            "role_based_access_control_enabled": {
                                "default": false,
                                "description": "Enable Role Based Access Control."
                            },
                            "run_command_enabled": {
                                "default": true,
                                "description": "(Optional) Whether to enable run command for the cluster or not."
                            },
                            "scale_down_mode": {
                                "default": "Delete",
                                "description": "(Optional) Specifies the autoscaling behaviour of the Kubernetes Cluster. If not specified, it defaults to `Delete`. Possible values include `Delete` and `Deallocate`. Changing this forces a new resource to be created."
                            },
                            "secret_rotation_enabled": {
                                "default": false,
                                "description": "Is secret rotation enabled? This variable is only used when `key_vault_secrets_provider_enabled` is `true` and defaults to `false`"
                            },
                            "secret_rotation_interval": {
                                "default": "2m",
                                "description": "The interval to poll for secret rotation. This attribute is only set when `secret_rotation` is `true` and defaults to `2m`"
                            },
                            "service_mesh_profile": {
                                "default": null,
                                "description": "`mode` - (Required) The mode of the service mesh. Possible value is `Istio`.\n`internal_ingress_gateway_enabled` - (Optional) Is Istio Internal Ingress Gateway enabled? Defaults to `true`.\n`external_ingress_gateway_enabled` - (Optional) Is Istio External Ingress Gateway enabled? Defaults to `true`.\n"
                            },
                            "sku_tier": {
                                "default": "Free",
                                "description": "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, `Standard` and `Premium`"
                            },
                            "snapshot_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property."
                            },
                            "storage_profile_blob_driver_enabled": {
                                "default": false,
                                "description": "(Optional) Is the Blob CSI driver enabled? Defaults to `false`"
                            },
                            "storage_profile_disk_driver_enabled": {
                                "default": true,
                                "description": "(Optional) Is the Disk CSI driver enabled? Defaults to `true`"
                            },
                            "storage_profile_disk_driver_version": {
                                "default": "v1",
                                "description": "(Optional) Disk CSI Driver version to be used. Possible values are `v1` and `v2`. Defaults to `v1`."
                            },
                            "storage_profile_enabled": {
                                "default": false,
                                "description": "Enable storage profile"
                            },
                            "storage_profile_file_driver_enabled": {
                                "default": true,
                                "description": "(Optional) Is the File CSI driver enabled? Defaults to `true`"
                            },
                            "storage_profile_snapshot_controller_enabled": {
                                "default": true,
                                "description": "(Optional) Is the Snapshot Controller enabled? Defaults to `true`"
                            },
                            "support_plan": {
                                "default": "KubernetesOfficial",
                                "description": "The support plan which should be used for this Kubernetes Cluster. Possible values are `KubernetesOfficial` and `AKSLongTermSupport`."
                            },
                            "tags": {
                                "default": {},
                                "description": "Any tags that should be present on the AKS cluster resources"
                            },
                            "temporary_name_for_rotation": {
                                "default": null,
                                "description": "(Optional) Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing. the `var.agents_size` is no longer ForceNew and can be resized by specifying `temporary_name_for_rotation`"
                            },
                            "tracing_tags_enabled": {
                                "default": false,
                                "description": "Whether enable tracing tags that generated by BridgeCrew Yor."
                            },
                            "tracing_tags_prefix": {
                                "default": "avm_",
                                "description": "Default prefix for generated tracing tags"
                            },
                            "ultra_ssd_enabled": {
                                "default": false,
                                "description": "(Optional) Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to false."
                            },
                            "vnet_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
                            },
                            "web_app_routing": {
                                "default": null,
                                "description": "object({\n  dns_zone_id = \"(Required) Specifies the ID of the DNS Zone in which DNS entries are created for applications deployed to the cluster when Web App Routing is enabled.\"\n})\n"
                            },
                            "workload_autoscaler_profile": {
                                "default": null,
                                "description": "`keda_enabled` - (Optional) Specifies whether KEDA Autoscaler can be used for workloads.\n`vertical_pod_autoscaler_enabled` - (Optional) Specifies whether Vertical Pod Autoscaler should be enabled.\n"
                            },
                            "workload_identity_enabled": {
                                "default": false,
                                "description": "Enable or Disable Workload Identity. Defaults to false."
                            }
                        }
                    },
                    "source": "git::https://github.com/Azure/terraform-azurerm-aks"
                }
            },
            "outputs": {
                "ingress_endpoint": {
                    "depends_on": [
                        "time_sleep.wait_for_ingress"
                    ],
                    "expression": {
                        "references": [
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress[0].ip",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress[0]",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0]",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer",
                            "data.kubernetes_ingress_v1.ing.status[0]",
                            "data.kubernetes_ingress_v1.ing.status",
                            "data.kubernetes_ingress_v1.ing"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
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
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 1
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
                                        "azurerm_public_ip.pip[0].id",
                                        "azurerm_public_ip.pip[0]",
                                        "azurerm_public_ip.pip"
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
                                    "constant_value": "appGatewayIpConfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appgw[0].id",
                                        "azurerm_subnet.appgw[0]",
                                        "azurerm_subnet.appgw"
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
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "constant_value": "ingress"
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
                                "local.resource_group.name",
                                "local.resource_group"
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
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-pip"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
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
                    "address": "azurerm_resource_group.main",
                    "count_expression": {
                        "references": [
                            "var.create_resource_group"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_group_name",
                                "random_id.prefix.hex",
                                "random_id.prefix"
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
                    "address": "azurerm_subnet.appgw",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "local.appgw_cidr"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.test[0].name",
                                "azurerm_virtual_network.test[0]",
                                "azurerm_virtual_network.test"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.test",
                    "count_expression": {
                        "references": [
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.52.0.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.test[0].name",
                                "azurerm_virtual_network.test[0]",
                                "azurerm_virtual_network.test"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "test",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.test",
                    "count_expression": {
                        "references": [
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.52.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "test",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "kubernetes_ingress_v1.ing",
                    "depends_on": [
                        "module.aks"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "annotations": {
                                    "constant_value": {
                                        "kubernetes.io/ingress.class": "azure/application-gateway"
                                    }
                                },
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "rule": [
                                    {
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "service": [
                                                                    {
                                                                        "name": {
                                                                            "constant_value": "aspnetapp"
                                                                        },
                                                                        "port": [
                                                                            {
                                                                                "number": {
                                                                                    "constant_value": 80
                                                                                }
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ],
                                                        "path": {
                                                            "constant_value": "/"
                                                        },
                                                        "path_type": {
                                                            "constant_value": "Exact"
                                                        }
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "ing",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_ingress_v1"
                },
                {
                    "address": "kubernetes_namespace_v1.example",
                    "depends_on": [
                        "module.aks"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "example"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_namespace_v1"
                },
                {
                    "address": "kubernetes_pod.aspnet_app",
                    "expressions": {
                        "metadata": [
                            {
                                "labels": {
                                    "constant_value": {
                                        "app": "aspnetapp"
                                    }
                                },
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "container": [
                                    {
                                        "image": {
                                            "constant_value": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea"
                                        },
                                        "image_pull_policy": {
                                            "constant_value": "Always"
                                        },
                                        "name": {
                                            "constant_value": "aspnetapp-image"
                                        },
                                        "port": [
                                            {
                                                "container_port": {
                                                    "constant_value": 80
                                                },
                                                "protocol": {
                                                    "constant_value": "TCP"
                                                }
                                            }
                                        ],
                                        "resources": [
                                            {
                                                "limits": {
                                                    "constant_value": {
                                                        "cpu": "250m",
                                                        "memory": "256Mi"
                                                    }
                                                },
                                                "requests": {
                                                    "constant_value": {
                                                        "cpu": "250m",
                                                        "memory": "256Mi"
                                                    }
                                                }
                                            }
                                        ],
                                        "security_context": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "aspnet_app",
                    "provider_config_key": "kubernetes",
                    "schema_version": 1,
                    "type": "kubernetes_pod"
                },
                {
                    "address": "kubernetes_service.svc",
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "port": [
                                    {
                                        "port": {
                                            "constant_value": 80
                                        },
                                        "protocol": {
                                            "constant_value": "TCP"
                                        },
                                        "target_port": {
                                            "constant_value": 80
                                        }
                                    }
                                ],
                                "selector": {
                                    "constant_value": {
                                        "app": "aspnetapp"
                                    }
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "svc",
                    "provider_config_key": "kubernetes",
                    "schema_version": 1,
                    "type": "kubernetes_service"
                },
                {
                    "address": "random_id.name",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        }
                    },
                    "mode": "managed",
                    "name": "name",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "random_id.prefix",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        }
                    },
                    "mode": "managed",
                    "name": "prefix",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "time_sleep.wait_for_ingress",
                    "depends_on": [
                        "kubernetes_ingress_v1.ing"
                    ],
                    "expressions": {
                        "create_duration": {
                            "constant_value": "15m"
                        }
                    },
                    "mode": "managed",
                    "name": "wait_for_ingress",
                    "provider_config_key": "time",
                    "schema_version": 0,
                    "type": "time_sleep"
                },
                {
                    "address": "data.kubernetes_ingress_v1.ing",
                    "depends_on": [
                        "time_sleep.wait_for_ingress"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "data",
                    "name": "ing",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_ingress_v1"
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_http_proxy_config_no_proxy",
                    "count_expression": {
                        "references": [
                            "var.http_proxy_config.no_proxy[0]",
                            "var.http_proxy_config.no_proxy",
                            "var.http_proxy_config"
                        ]
                    },
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "body": {
                            "references": [
                                "var.http_proxy_config.no_proxy",
                                "var.http_proxy_config"
                            ]
                        },
                        "resource_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                        }
                    },
                    "mode": "managed",
                    "name": "aks_cluster_http_proxy_config_no_proxy",
                    "provider_config_key": "module.aks:azapi",
                    "schema_version": 1,
                    "type": "azapi_update_resource"
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                    "expressions": {
                        "body": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        },
                        "resource_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                        }
                    },
                    "mode": "managed",
                    "name": "aks_cluster_post_create",
                    "provider_config_key": "module.aks:azapi",
                    "schema_version": 1,
                    "type": "azapi_update_resource"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster.main",
                    "expressions": {
                        "automatic_channel_upgrade": {
                            "references": [
                                "root.aks.automatic_channel_upgrade"
                            ]
                        },
                        "azure_policy_enabled": {
                            "references": [
                                "root.aks.azure_policy_enabled"
                            ]
                        },
                        "disk_encryption_set_id": {
                            "references": [
                                "var.disk_encryption_set_id"
                            ]
                        },
                        "dns_prefix": {
                            "references": [
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "image_cleaner_enabled": {
                            "references": [
                                "var.image_cleaner_enabled"
                            ]
                        },
                        "image_cleaner_interval_hours": {
                            "references": [
                                "var.image_cleaner_interval_hours"
                            ]
                        },
                        "kubernetes_version": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        },
                        "local_account_disabled": {
                            "references": [
                                "root.aks.local_account_disabled"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location",
                                "module.aks.data.azurerm_resource_group.main.location",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.cluster_name",
                                "var.cluster_name_random_suffix"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "references": [
                                        "root.aks.net_profile_dns_service_ip"
                                    ]
                                },
                                "ebpf_data_plane": {
                                    "references": [
                                        "var.ebpf_data_plane"
                                    ]
                                },
                                "load_balancer_sku": {
                                    "references": [
                                        "var.load_balancer_sku"
                                    ]
                                },
                                "network_plugin": {
                                    "references": [
                                        "root.aks.network_plugin"
                                    ]
                                },
                                "network_plugin_mode": {
                                    "references": [
                                        "root.aks.network_plugin_mode"
                                    ]
                                },
                                "network_policy": {
                                    "references": [
                                        "root.aks.network_policy"
                                    ]
                                },
                                "outbound_type": {
                                    "references": [
                                        "var.net_profile_outbound_type"
                                    ]
                                },
                                "pod_cidr": {
                                    "references": [
                                        "var.net_profile_pod_cidr"
                                    ]
                                },
                                "service_cidr": {
                                    "references": [
                                        "root.aks.net_profile_service_cidr"
                                    ]
                                }
                            }
                        ],
                        "node_os_channel_upgrade": {
                            "references": [
                                "var.node_os_channel_upgrade"
                            ]
                        },
                        "node_resource_group": {
                            "references": [
                                "var.node_resource_group"
                            ]
                        },
                        "oidc_issuer_enabled": {
                            "references": [
                                "var.oidc_issuer_enabled"
                            ]
                        },
                        "open_service_mesh_enabled": {
                            "references": [
                                "var.open_service_mesh_enabled"
                            ]
                        },
                        "private_cluster_enabled": {
                            "references": [
                                "root.aks.private_cluster_enabled"
                            ]
                        },
                        "private_cluster_public_fqdn_enabled": {
                            "references": [
                                "var.private_cluster_public_fqdn_enabled"
                            ]
                        },
                        "private_dns_zone_id": {
                            "references": [
                                "var.private_dns_zone_id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.aks.data.azurerm_resource_group.main.name",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "role_based_access_control_enabled": {
                            "references": [
                                "root.aks.role_based_access_control_enabled"
                            ]
                        },
                        "run_command_enabled": {
                            "references": [
                                "var.run_command_enabled"
                            ]
                        },
                        "sku_tier": {
                            "references": [
                                "root.aks.sku_tier"
                            ]
                        },
                        "support_plan": {
                            "references": [
                                "var.support_plan"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "workload_identity_enabled": {
                            "references": [
                                "var.workload_identity_enabled"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "capacity_reservation_group_id": {
                            "references": [
                                "each.value.capacity_reservation_group_id",
                                "each.value"
                            ]
                        },
                        "custom_ca_trust_enabled": {
                            "references": [
                                "each.value.custom_ca_trust_enabled",
                                "each.value"
                            ]
                        },
                        "enable_auto_scaling": {
                            "references": [
                                "each.value.enable_auto_scaling",
                                "each.value"
                            ]
                        },
                        "enable_host_encryption": {
                            "references": [
                                "each.value.enable_host_encryption",
                                "each.value"
                            ]
                        },
                        "enable_node_public_ip": {
                            "references": [
                                "each.value.enable_node_public_ip",
                                "each.value"
                            ]
                        },
                        "eviction_policy": {
                            "references": [
                                "each.value.eviction_policy",
                                "each.value"
                            ]
                        },
                        "fips_enabled": {
                            "references": [
                                "each.value.fips_enabled",
                                "each.value"
                            ]
                        },
                        "host_group_id": {
                            "references": [
                                "each.value.host_group_id",
                                "each.value"
                            ]
                        },
                        "kubelet_disk_type": {
                            "references": [
                                "each.value.kubelet_disk_type",
                                "each.value"
                            ]
                        },
                        "kubernetes_cluster_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "max_count": {
                            "references": [
                                "each.value.max_count",
                                "each.value"
                            ]
                        },
                        "max_pods": {
                            "references": [
                                "each.value.max_pods",
                                "each.value"
                            ]
                        },
                        "message_of_the_day": {
                            "references": [
                                "each.value.message_of_the_day",
                                "each.value"
                            ]
                        },
                        "min_count": {
                            "references": [
                                "each.value.min_count",
                                "each.value"
                            ]
                        },
                        "mode": {
                            "references": [
                                "each.value.mode",
                                "each.value"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        },
                        "node_count": {
                            "references": [
                                "each.value.node_count",
                                "each.value"
                            ]
                        },
                        "node_labels": {
                            "references": [
                                "each.value.node_labels",
                                "each.value"
                            ]
                        },
                        "node_public_ip_prefix_id": {
                            "references": [
                                "each.value.node_public_ip_prefix_id",
                                "each.value"
                            ]
                        },
                        "node_taints": {
                            "references": [
                                "each.value.node_taints",
                                "each.value"
                            ]
                        },
                        "orchestrator_version": {
                            "references": [
                                "each.value.orchestrator_version",
                                "each.value"
                            ]
                        },
                        "os_disk_size_gb": {
                            "references": [
                                "each.value.os_disk_size_gb",
                                "each.value"
                            ]
                        },
                        "os_disk_type": {
                            "references": [
                                "each.value.os_disk_type",
                                "each.value"
                            ]
                        },
                        "os_sku": {
                            "references": [
                                "each.value.os_sku",
                                "each.value"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "each.value.os_type",
                                "each.value"
                            ]
                        },
                        "pod_subnet_id": {
                            "references": [
                                "each.value.pod_subnet_id",
                                "each.value"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.value.priority",
                                "each.value"
                            ]
                        },
                        "proximity_placement_group_id": {
                            "references": [
                                "each.value.proximity_placement_group_id",
                                "each.value"
                            ]
                        },
                        "scale_down_mode": {
                            "references": [
                                "each.value.scale_down_mode",
                                "each.value"
                            ]
                        },
                        "snapshot_id": {
                            "references": [
                                "each.value.snapshot_id",
                                "each.value"
                            ]
                        },
                        "spot_max_price": {
                            "references": [
                                "each.value.spot_max_price",
                                "each.value"
                            ]
                        },
                        "tags": {
                            "references": [
                                "each.value.tags",
                                "each.value",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "ultra_ssd_enabled": {
                            "references": [
                                "each.value.ultra_ssd_enabled",
                                "each.value"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "each.value.vm_size",
                                "each.value"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "each.value.vnet_subnet_id",
                                "each.value"
                            ]
                        },
                        "workload_runtime": {
                            "references": [
                                "each.value.workload_runtime",
                                "each.value"
                            ]
                        },
                        "zones": {
                            "references": [
                                "each.value.zones",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.node_pools_create_after_destroy"
                        ]
                    },
                    "mode": "managed",
                    "name": "node_pool_create_after_destroy",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_kubernetes_cluster_node_pool"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "capacity_reservation_group_id": {
                            "references": [
                                "each.value.capacity_reservation_group_id",
                                "each.value"
                            ]
                        },
                        "custom_ca_trust_enabled": {
                            "references": [
                                "each.value.custom_ca_trust_enabled",
                                "each.value"
                            ]
                        },
                        "enable_auto_scaling": {
                            "references": [
                                "each.value.enable_auto_scaling",
                                "each.value"
                            ]
                        },
                        "enable_host_encryption": {
                            "references": [
                                "each.value.enable_host_encryption",
                                "each.value"
                            ]
                        },
                        "enable_node_public_ip": {
                            "references": [
                                "each.value.enable_node_public_ip",
                                "each.value"
                            ]
                        },
                        "eviction_policy": {
                            "references": [
                                "each.value.eviction_policy",
                                "each.value"
                            ]
                        },
                        "fips_enabled": {
                            "references": [
                                "each.value.fips_enabled",
                                "each.value"
                            ]
                        },
                        "gpu_instance": {
                            "references": [
                                "each.value.gpu_instance",
                                "each.value"
                            ]
                        },
                        "host_group_id": {
                            "references": [
                                "each.value.host_group_id",
                                "each.value"
                            ]
                        },
                        "kubelet_disk_type": {
                            "references": [
                                "each.value.kubelet_disk_type",
                                "each.value"
                            ]
                        },
                        "kubernetes_cluster_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "max_count": {
                            "references": [
                                "each.value.max_count",
                                "each.value"
                            ]
                        },
                        "max_pods": {
                            "references": [
                                "each.value.max_pods",
                                "each.value"
                            ]
                        },
                        "message_of_the_day": {
                            "references": [
                                "each.value.message_of_the_day",
                                "each.value"
                            ]
                        },
                        "min_count": {
                            "references": [
                                "each.value.min_count",
                                "each.value"
                            ]
                        },
                        "mode": {
                            "references": [
                                "each.value.mode",
                                "each.value"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        },
                        "node_count": {
                            "references": [
                                "each.value.node_count",
                                "each.value"
                            ]
                        },
                        "node_labels": {
                            "references": [
                                "each.value.node_labels",
                                "each.value"
                            ]
                        },
                        "node_public_ip_prefix_id": {
                            "references": [
                                "each.value.node_public_ip_prefix_id",
                                "each.value"
                            ]
                        },
                        "node_taints": {
                            "references": [
                                "each.value.node_taints",
                                "each.value"
                            ]
                        },
                        "orchestrator_version": {
                            "references": [
                                "each.value.orchestrator_version",
                                "each.value"
                            ]
                        },
                        "os_disk_size_gb": {
                            "references": [
                                "each.value.os_disk_size_gb",
                                "each.value"
                            ]
                        },
                        "os_disk_type": {
                            "references": [
                                "each.value.os_disk_type",
                                "each.value"
                            ]
                        },
                        "os_sku": {
                            "references": [
                                "each.value.os_sku",
                                "each.value"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "each.value.os_type",
                                "each.value"
                            ]
                        },
                        "pod_subnet_id": {
                            "references": [
                                "each.value.pod_subnet_id",
                                "each.value"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.value.priority",
                                "each.value"
                            ]
                        },
                        "proximity_placement_group_id": {
                            "references": [
                                "each.value.proximity_placement_group_id",
                                "each.value"
                            ]
                        },
                        "scale_down_mode": {
                            "references": [
                                "each.value.scale_down_mode",
                                "each.value"
                            ]
                        },
                        "snapshot_id": {
                            "references": [
                                "each.value.snapshot_id",
                                "each.value"
                            ]
                        },
                        "spot_max_price": {
                            "references": [
                                "each.value.spot_max_price",
                                "each.value"
                            ]
                        },
                        "tags": {
                            "references": [
                                "each.value.tags",
                                "each.value",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "ultra_ssd_enabled": {
                            "references": [
                                "each.value.ultra_ssd_enabled",
                                "each.value"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "each.value.vm_size",
                                "each.value"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "each.value.vnet_subnet_id",
                                "each.value"
                            ]
                        },
                        "workload_runtime": {
                            "references": [
                                "each.value.workload_runtime",
                                "each.value"
                            ]
                        },
                        "zones": {
                            "references": [
                                "each.value.zones",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.node_pools_create_before_destroy"
                        ]
                    },
                    "mode": "managed",
                    "name": "node_pool_create_before_destroy",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_kubernetes_cluster_node_pool"
                },
                {
                    "address": "module.aks.azurerm_log_analytics_solution.main",
                    "count_expression": {
                        "references": [
                            "local.create_analytics_solution"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "local.log_analytics_workspace.location",
                                "local.log_analytics_workspace",
                                "data.azurerm_log_analytics_workspace.main[0].location",
                                "data.azurerm_log_analytics_workspace.main[0]",
                                "module.aks.data.azurerm_log_analytics_workspace.main"
                            ]
                        },
                        "plan": [
                            {
                                "product": {
                                    "constant_value": "OMSGallery/ContainerInsights"
                                },
                                "publisher": {
                                    "constant_value": "Microsoft"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "local.log_analytics_workspace.resource_group_name",
                                "local.log_analytics_workspace"
                            ]
                        },
                        "solution_name": {
                            "constant_value": "ContainerInsights"
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "workspace_name": {
                            "references": [
                                "local.log_analytics_workspace.name",
                                "local.log_analytics_workspace"
                            ]
                        },
                        "workspace_resource_id": {
                            "references": [
                                "local.log_analytics_workspace.id",
                                "local.log_analytics_workspace"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_log_analytics_solution"
                },
                {
                    "address": "module.aks.azurerm_log_analytics_workspace.main",
                    "count_expression": {
                        "references": [
                            "local.create_analytics_workspace"
                        ]
                    },
                    "expressions": {
                        "allow_resource_only_permissions": {
                            "references": [
                                "var.log_analytics_workspace_allow_resource_only_permissions"
                            ]
                        },
                        "cmk_for_query_forced": {
                            "references": [
                                "var.log_analytics_workspace_cmk_for_query_forced"
                            ]
                        },
                        "daily_quota_gb": {
                            "references": [
                                "var.log_analytics_workspace_daily_quota_gb"
                            ]
                        },
                        "data_collection_rule_id": {
                            "references": [
                                "var.log_analytics_workspace_data_collection_rule_id"
                            ]
                        },
                        "immediate_data_purge_on_30_days_enabled": {
                            "references": [
                                "var.log_analytics_workspace_immediate_data_purge_on_30_days_enabled"
                            ]
                        },
                        "internet_ingestion_enabled": {
                            "references": [
                                "var.log_analytics_workspace_internet_ingestion_enabled"
                            ]
                        },
                        "internet_query_enabled": {
                            "references": [
                                "var.log_analytics_workspace_internet_query_enabled"
                            ]
                        },
                        "local_authentication_disabled": {
                            "references": [
                                "var.log_analytics_workspace_local_authentication_disabled"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location",
                                "module.aks.data.azurerm_resource_group.main.location",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.cluster_log_analytics_workspace_name",
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "reservation_capacity_in_gb_per_day": {
                            "references": [
                                "var.log_analytics_workspace_reservation_capacity_in_gb_per_day"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.log_analytics_workspace_resource_group_name",
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "retention_in_days": {
                            "references": [
                                "var.log_retention_in_days"
                            ]
                        },
                        "sku": {
                            "references": [
                                "var.log_analytics_workspace_sku"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.acr",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "AcrPull"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "constant_value": true
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.attached_acr_id_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "acr",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_green_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "local.default_nodepool_subnet_segments",
                                "local.default_nodepool_subnet_segments"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_byo_vnet_network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_virtual_network.application_gateway_vnet[0].id",
                                "data.azurerm_virtual_network.application_gateway_vnet[0]",
                                "module.aks.data.azurerm_virtual_network.application_gateway_vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_existing_vnet_network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.ingress_application_gateway_enabled"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Reader"
                        },
                        "scope": {
                            "references": [
                                "local.use_brown_field_gw_for_ingress",
                                "data.azurerm_resource_group.ingress_gw[0].id",
                                "data.azurerm_resource_group.ingress_gw[0]",
                                "module.aks.data.azurerm_resource_group.ingress_gw",
                                "data.azurerm_resource_group.aks_rg[0].id",
                                "data.azurerm_resource_group.aks_rg[0]",
                                "module.aks.data.azurerm_resource_group.aks_rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_resource_group_reader",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.existing_application_gateway_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "root.aks.brown_field_application_gateway_for_ingress.id",
                                "var.use_brown_field_application_gateway",
                                "azurerm_application_gateway.appgw[0].id",
                                "azurerm_application_gateway.appgw[0]",
                                "azurerm_application_gateway.appgw",
                                "azurerm_subnet.appgw[0].id",
                                "azurerm_subnet.appgw[0]",
                                "azurerm_subnet.appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "existing_application_gateway_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.network_contributor",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.identity",
                                "module.aks.azurerm_kubernetes_cluster.main",
                                "var.client_id"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.create_role_assignment_network_contributor",
                            "var.client_id",
                            "var.client_secret",
                            "local.subnet_ids"
                        ]
                    },
                    "mode": "managed",
                    "name": "network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.network_contributor_on_subnet",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.identity",
                                "module.aks.azurerm_kubernetes_cluster.main",
                                "var.client_id"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.network_contributor_role_assigned_subnet_ids"
                        ]
                    },
                    "mode": "managed",
                    "name": "network_contributor_on_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.null_resource.http_proxy_config_no_proxy_keeper",
                    "count_expression": {
                        "references": [
                            "var.http_proxy_config.no_proxy[0]",
                            "var.http_proxy_config.no_proxy",
                            "var.http_proxy_config"
                        ]
                    },
                    "expressions": {
                        "triggers": {
                            "references": [
                                "var.http_proxy_config.no_proxy",
                                "var.http_proxy_config"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "http_proxy_config_no_proxy_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "local.cluster_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kubernetes_cluster_name_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.kubernetes_version_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kubernetes_version_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.pool_name_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.node_pools"
                        ]
                    },
                    "mode": "managed",
                    "name": "pool_name_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.tls_private_key.ssh",
                    "count_expression": {
                        "references": [
                            "var.admin_username"
                        ]
                    },
                    "expressions": {
                        "algorithm": {
                            "constant_value": "RSA"
                        },
                        "rsa_bits": {
                            "constant_value": 2048
                        }
                    },
                    "mode": "managed",
                    "name": "ssh",
                    "provider_config_key": "module.aks:tls",
                    "schema_version": 1,
                    "type": "tls_private_key"
                },
                {
                    "address": "module.aks.data.azurerm_client_config.this",
                    "mode": "data",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "module.aks.data.azurerm_log_analytics_workspace.main",
                    "count_expression": {
                        "references": [
                            "local.query_datasource_for_log_analytics_workspace_location"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.log_analytics_workspace.name",
                                "var.log_analytics_workspace"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.log_analytics_workspace.resource_group_name",
                                "local.log_analytics_workspace"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.aks_rg",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "aks_rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.ingress_gw",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.existing_application_gateway_resource_group_for_ingress"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "ingress_gw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.main",
                    "expressions": {
                        "name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                    "count_expression": {
                        "references": [
                            "var.client_id",
                            "var.client_secret",
                            "var.identity_type"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.identity_ids[0]",
                                "var.identity_ids"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.identity_ids[0]",
                                "var.identity_ids"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "cluster_identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "module.aks.data.azurerm_virtual_network.application_gateway_vnet",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.existing_application_gateway_subnet_vnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.existing_application_gateway_subnet_resource_group_name"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "application_gateway_vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "bring_your_own_vnet": {
                    "default": true
                },
                "create_resource_group": {
                    "default": true
                },
                "create_role_assignments_for_application_gateway": {
                    "default": true
                },
                "location": {
                    "default": "eastus"
                },
                "resource_group_name": {
                    "default": null
                },
                "use_brown_field_application_gateway": {
                    "default": false
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "ingress_endpoint": {
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
            "ingress_endpoint": {
                "sensitive": false
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.aks",
                    "resources": [
                        {
                            "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                            "mode": "managed",
                            "name": "aks_cluster_post_create",
                            "provider_name": "registry.terraform.io/azure/azapi",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azapi_update_resource",
                            "values": {
                                "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                                "ignore_body_changes": null,
                                "ignore_casing": false,
                                "ignore_missing_property": true,
                                "locks": null,
                                "response_export_values": null,
                                "timeouts": null,
                                "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                            }
                        },
                        {
                            "address": "module.aks.azurerm_kubernetes_cluster.main",
                            "mode": "managed",
                            "name": "main",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "aci_connector_linux": [],
                                "api_server_access_profile": [],
                                "api_server_authorized_ip_ranges": [],
                                "auto_scaler_profile": [],
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "server_app_secret": true
                                    }
                                ],
                                "confidential_computing": [],
                                "default_node_pool": [
                                    {
                                        "kubelet_config": [],
                                        "linux_os_config": [
                                            {
                                                "sysctl_config": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "node_labels": {},
                                        "node_network_profile": [],
                                        "upgrade_settings": [
                                            {}
                                        ],
                                        "zones": [
                                            false,
                                            false
                                        ]
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
                                "web_app_routing": [],
                                "windows_profile": [],
                                "workload_autoscaler_profile": []
                            },
                            "type": "azurerm_kubernetes_cluster",
                            "values": {
                                "aci_connector_linux": [],
                                "automatic_channel_upgrade": "patch",
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "admin_group_object_ids": null,
                                        "azure_rbac_enabled": null,
                                        "client_app_id": null,
                                        "managed": true,
                                        "server_app_id": null,
                                        "server_app_secret": null
                                    }
                                ],
                                "azure_policy_enabled": true,
                                "confidential_computing": [],
                                "cost_analysis_enabled": null,
                                "custom_ca_trust_certificates_base64": null,
                                "default_node_pool": [
                                    {
                                        "capacity_reservation_group_id": null,
                                        "custom_ca_trust_enabled": null,
                                        "enable_auto_scaling": true,
                                        "enable_host_encryption": true,
                                        "enable_node_public_ip": false,
                                        "fips_enabled": null,
                                        "gpu_instance": null,
                                        "host_group_id": null,
                                        "kubelet_config": [],
                                        "linux_os_config": [
                                            {
                                                "swap_file_size_mb": null,
                                                "sysctl_config": [
                                                    {
                                                        "fs_aio_max_nr": 65536,
                                                        "fs_file_max": 100000,
                                                        "fs_inotify_max_user_watches": 1000000,
                                                        "fs_nr_open": null,
                                                        "kernel_threads_max": null,
                                                        "net_core_netdev_max_backlog": null,
                                                        "net_core_optmem_max": null,
                                                        "net_core_rmem_default": null,
                                                        "net_core_rmem_max": null,
                                                        "net_core_somaxconn": null,
                                                        "net_core_wmem_default": null,
                                                        "net_core_wmem_max": null,
                                                        "net_ipv4_ip_local_port_range_max": null,
                                                        "net_ipv4_ip_local_port_range_min": null,
                                                        "net_ipv4_neigh_default_gc_thresh1": null,
                                                        "net_ipv4_neigh_default_gc_thresh2": null,
                                                        "net_ipv4_neigh_default_gc_thresh3": null,
                                                        "net_ipv4_tcp_fin_timeout": null,
                                                        "net_ipv4_tcp_keepalive_intvl": null,
                                                        "net_ipv4_tcp_keepalive_probes": null,
                                                        "net_ipv4_tcp_keepalive_time": null,
                                                        "net_ipv4_tcp_max_syn_backlog": null,
                                                        "net_ipv4_tcp_max_tw_buckets": null,
                                                        "net_ipv4_tcp_tw_reuse": null,
                                                        "net_netfilter_nf_conntrack_buckets": null,
                                                        "net_netfilter_nf_conntrack_max": null,
                                                        "vm_max_map_count": null,
                                                        "vm_swappiness": null,
                                                        "vm_vfs_cache_pressure": null
                                                    }
                                                ],
                                                "transparent_huge_page_defrag": null,
                                                "transparent_huge_page_enabled": "always"
                                            }
                                        ],
                                        "max_count": 2,
                                        "max_pods": 100,
                                        "message_of_the_day": null,
                                        "min_count": 1,
                                        "name": "testnodepool",
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
                                        "os_disk_size_gb": 60,
                                        "os_disk_type": "Managed",
                                        "pod_subnet_id": null,
                                        "proximity_placement_group_id": null,
                                        "scale_down_mode": "Delete",
                                        "snapshot_id": null,
                                        "tags": null,
                                        "temporary_name_for_rotation": null,
                                        "type": "VirtualMachineScaleSets",
                                        "ultra_ssd_enabled": false,
                                        "upgrade_settings": [
                                            {
                                                "drain_timeout_in_minutes": null,
                                                "max_surge": "10%",
                                                "node_soak_duration_in_minutes": 0
                                            }
                                        ],
                                        "vm_size": "Standard_D2s_v3",
                                        "zones": [
                                            "1",
                                            "2"
                                        ]
                                    }
                                ],
                                "disk_encryption_set_id": null,
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
                                        "gateway_id": null,
                                        "gateway_name": "ingress",
                                        "subnet_cidr": "10.52.1.0/24",
                                        "subnet_id": null
                                    }
                                ],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [],
                                "kubernetes_version": "1.29",
                                "linux_profile": [],
                                "local_account_disabled": false,
                                "maintenance_window": [],
                                "maintenance_window_auto_upgrade": [],
                                "maintenance_window_node_os": [],
                                "microsoft_defender": [],
                                "monitor_metrics": [],
                                "network_profile": [
                                    {
                                        "dns_service_ip": "10.0.0.10",
                                        "load_balancer_sku": "standard",
                                        "network_plugin": "azure",
                                        "network_plugin_mode": null,
                                        "network_policy": "azure",
                                        "outbound_type": "loadBalancer",
                                        "service_cidr": "10.0.0.0/16"
                                    }
                                ],
                                "node_os_channel_upgrade": null,
                                "oidc_issuer_enabled": false,
                                "oms_agent": [],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
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
                                "workload_identity_enabled": false
                            }
                        },
                        {
                            "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "application_gateway_byo_vnet_network_contributor",
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
                            "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "application_gateway_resource_group_reader",
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
                            "address": "module.aks.data.azurerm_client_config.this",
                            "mode": "data",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_client_config",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
                            "index": 0,
                            "mode": "data",
                            "name": "aks_rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "tags": {}
                            },
                            "type": "azurerm_resource_group",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.data.azurerm_resource_group.main",
                            "mode": "data",
                            "name": "main",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "tags": {}
                            },
                            "type": "azurerm_resource_group",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                            "mode": "managed",
                            "name": "kubernetes_cluster_name_keeper",
                            "provider_name": "registry.terraform.io/hashicorp/null",
                            "schema_version": 0,
                            "sensitive_values": {
                                "triggers": {}
                            },
                            "type": "null_resource",
                            "values": {
                                "triggers": {}
                            }
                        },
                        {
                            "address": "module.aks.null_resource.kubernetes_version_keeper",
                            "mode": "managed",
                            "name": "kubernetes_version_keeper",
                            "provider_name": "registry.terraform.io/hashicorp/null",
                            "schema_version": 0,
                            "sensitive_values": {
                                "triggers": {}
                            },
                            "type": "null_resource",
                            "values": {
                                "triggers": {
                                    "version": "1.29"
                                }
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azurerm_resource_group.main[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.test[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "test",
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
                            "10.52.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.test[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "test",
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
                            "10.52.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "data.kubernetes_ingress_v1.ing",
                    "mode": "data",
                    "name": "ing",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ],
                        "spec": [],
                        "status": []
                    },
                    "type": "kubernetes_ingress_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ]
                    }
                },
                {
                    "address": "kubernetes_ingress_v1.ing",
                    "mode": "managed",
                    "name": "ing",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {
                                "annotations": {}
                            }
                        ],
                        "spec": [
                            {
                                "default_backend": [],
                                "rule": [
                                    {
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "resource": [],
                                                                "service": [
                                                                    {
                                                                        "port": [
                                                                            {}
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ]
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "tls": []
                            }
                        ],
                        "status": []
                    },
                    "type": "kubernetes_ingress_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": {
                                    "kubernetes.io/ingress.class": "azure/application-gateway"
                                },
                                "generate_name": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "default_backend": [],
                                "rule": [
                                    {
                                        "host": null,
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "resource": [],
                                                                "service": [
                                                                    {
                                                                        "name": "aspnetapp",
                                                                        "port": [
                                                                            {
                                                                                "name": null,
                                                                                "number": 80
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ],
                                                        "path": "/",
                                                        "path_type": "Exact"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "tls": []
                            }
                        ],
                        "timeouts": null,
                        "wait_for_load_balancer": null
                    }
                },
                {
                    "address": "kubernetes_namespace_v1.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ]
                    },
                    "type": "kubernetes_namespace_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": null,
                                "name": "example"
                            }
                        ],
                        "timeouts": null,
                        "wait_for_default_service_account": false
                    }
                },
                {
                    "address": "kubernetes_pod.aspnet_app",
                    "mode": "managed",
                    "name": "aspnet_app",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [
                            {
                                "labels": {}
                            }
                        ],
                        "spec": [
                            {
                                "affinity": [],
                                "container": [
                                    {
                                        "env": [],
                                        "env_from": [],
                                        "lifecycle": [],
                                        "liveness_probe": [],
                                        "port": [
                                            {}
                                        ],
                                        "readiness_probe": [],
                                        "resources": [
                                            {
                                                "limits": {},
                                                "requests": {}
                                            }
                                        ],
                                        "security_context": [
                                            {
                                                "capabilities": [],
                                                "se_linux_options": [],
                                                "seccomp_profile": []
                                            }
                                        ],
                                        "startup_probe": [],
                                        "volume_mount": []
                                    }
                                ],
                                "dns_config": [],
                                "host_aliases": [],
                                "image_pull_secrets": [],
                                "init_container": [],
                                "os": [],
                                "readiness_gate": [],
                                "security_context": [],
                                "toleration": [],
                                "topology_spread_constraint": [],
                                "volume": []
                            }
                        ]
                    },
                    "type": "kubernetes_pod",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": {
                                    "app": "aspnetapp"
                                },
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "active_deadline_seconds": null,
                                "affinity": [],
                                "automount_service_account_token": true,
                                "container": [
                                    {
                                        "args": null,
                                        "command": null,
                                        "env": [],
                                        "env_from": [],
                                        "image": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea",
                                        "image_pull_policy": "Always",
                                        "lifecycle": [],
                                        "liveness_probe": [],
                                        "name": "aspnetapp-image",
                                        "port": [
                                            {
                                                "container_port": 80,
                                                "host_ip": null,
                                                "host_port": null,
                                                "name": null,
                                                "protocol": "TCP"
                                            }
                                        ],
                                        "readiness_probe": [],
                                        "resources": [
                                            {
                                                "limits": {
                                                    "cpu": "250m",
                                                    "memory": "256Mi"
                                                },
                                                "requests": {
                                                    "cpu": "250m",
                                                    "memory": "256Mi"
                                                }
                                            }
                                        ],
                                        "security_context": [
                                            {
                                                "allow_privilege_escalation": true,
                                                "capabilities": [],
                                                "privileged": false,
                                                "read_only_root_filesystem": false,
                                                "run_as_group": null,
                                                "run_as_non_root": null,
                                                "run_as_user": null,
                                                "se_linux_options": [],
                                                "seccomp_profile": []
                                            }
                                        ],
                                        "startup_probe": [],
                                        "stdin": false,
                                        "stdin_once": false,
                                        "termination_message_path": "/dev/termination-log",
                                        "tty": false,
                                        "volume_mount": [],
                                        "working_dir": null
                                    }
                                ],
                                "dns_config": [],
                                "dns_policy": "ClusterFirst",
                                "enable_service_links": true,
                                "host_aliases": [],
                                "host_ipc": false,
                                "host_network": false,
                                "host_pid": false,
                                "init_container": [],
                                "node_selector": null,
                                "os": [],
                                "priority_class_name": null,
                                "restart_policy": "Always",
                                "runtime_class_name": null,
                                "security_context": [],
                                "share_process_namespace": false,
                                "subdomain": null,
                                "termination_grace_period_seconds": 30,
                                "toleration": [],
                                "topology_spread_constraint": [],
                                "volume": []
                            }
                        ],
                        "target_state": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "kubernetes_service.svc",
                    "mode": "managed",
                    "name": "svc",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ],
                        "spec": [
                            {
                                "cluster_ips": [],
                                "ip_families": [],
                                "port": [
                                    {}
                                ],
                                "selector": {},
                                "session_affinity_config": []
                            }
                        ],
                        "status": []
                    },
                    "type": "kubernetes_service",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "allocate_load_balancer_node_ports": true,
                                "external_ips": null,
                                "external_name": null,
                                "load_balancer_class": null,
                                "load_balancer_ip": null,
                                "load_balancer_source_ranges": null,
                                "port": [
                                    {
                                        "app_protocol": null,
                                        "name": null,
                                        "port": 80,
                                        "protocol": "TCP",
                                        "target_port": "80"
                                    }
                                ],
                                "publish_not_ready_addresses": false,
                                "selector": {
                                    "app": "aspnetapp"
                                },
                                "session_affinity": "None",
                                "type": "ClusterIP"
                            }
                        ],
                        "timeouts": null,
                        "wait_for_load_balancer": true
                    }
                },
                {
                    "address": "random_id.name",
                    "mode": "managed",
                    "name": "name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": null,
                        "prefix": null
                    }
                },
                {
                    "address": "random_id.prefix",
                    "mode": "managed",
                    "name": "prefix",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": null,
                        "prefix": null
                    }
                },
                {
                    "address": "time_sleep.wait_for_ingress",
                    "mode": "managed",
                    "name": "wait_for_ingress",
                    "provider_name": "registry.terraform.io/hashicorp/time",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "time_sleep",
                    "values": {
                        "create_duration": "15m",
                        "destroy_duration": null,
                        "triggers": null
                    }
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                    "mode": "managed",
                    "name": "aks_cluster_post_create",
                    "provider_name": "registry.terraform.io/azure/azapi",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azapi_update_resource",
                    "values": {
                        "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                        "ignore_body_changes": null,
                        "ignore_casing": false,
                        "ignore_missing_property": true,
                        "locks": null,
                        "response_export_values": null,
                        "timeouts": null,
                        "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                    }
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster.main",
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "aci_connector_linux": [],
                        "api_server_access_profile": [],
                        "api_server_authorized_ip_ranges": [],
                        "auto_scaler_profile": [],
                        "azure_active_directory_role_based_access_control": [
                            {
                                "server_app_secret": true
                            }
                        ],
                        "confidential_computing": [],
                        "default_node_pool": [
                            {
                                "kubelet_config": [],
                                "linux_os_config": [
                                    {
                                        "sysctl_config": [
                                            {}
                                        ]
                                    }
                                ],
                                "node_labels": {},
                                "node_network_profile": [],
                                "upgrade_settings": [
                                    {}
                                ],
                                "zones": [
                                    false,
                                    false
                                ]
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
                        "web_app_routing": [],
                        "windows_profile": [],
                        "workload_autoscaler_profile": []
                    },
                    "type": "azurerm_kubernetes_cluster",
                    "values": {
                        "aci_connector_linux": [],
                        "automatic_channel_upgrade": "patch",
                        "azure_active_directory_role_based_access_control": [
                            {
                                "admin_group_object_ids": null,
                                "azure_rbac_enabled": null,
                                "client_app_id": null,
                                "managed": true,
                                "server_app_id": null,
                                "server_app_secret": null
                            }
                        ],
                        "azure_policy_enabled": true,
                        "confidential_computing": [],
                        "cost_analysis_enabled": null,
                        "custom_ca_trust_certificates_base64": null,
                        "default_node_pool": [
                            {
                                "capacity_reservation_group_id": null,
                                "custom_ca_trust_enabled": null,
                                "enable_auto_scaling": true,
                                "enable_host_encryption": true,
                                "enable_node_public_ip": false,
                                "fips_enabled": null,
                                "gpu_instance": null,
                                "host_group_id": null,
                                "kubelet_config": [],
                                "linux_os_config": [
                                    {
                                        "swap_file_size_mb": null,
                                        "sysctl_config": [
                                            {
                                                "fs_aio_max_nr": 65536,
                                                "fs_file_max": 100000,
                                                "fs_inotify_max_user_watches": 1000000,
                                                "fs_nr_open": null,
                                                "kernel_threads_max": null,
                                                "net_core_netdev_max_backlog": null,
                                                "net_core_optmem_max": null,
                                                "net_core_rmem_default": null,
                                                "net_core_rmem_max": null,
                                                "net_core_somaxconn": null,
                                                "net_core_wmem_default": null,
                                                "net_core_wmem_max": null,
                                                "net_ipv4_ip_local_port_range_max": null,
                                                "net_ipv4_ip_local_port_range_min": null,
                                                "net_ipv4_neigh_default_gc_thresh1": null,
                                                "net_ipv4_neigh_default_gc_thresh2": null,
                                                "net_ipv4_neigh_default_gc_thresh3": null,
                                                "net_ipv4_tcp_fin_timeout": null,
                                                "net_ipv4_tcp_keepalive_intvl": null,
                                                "net_ipv4_tcp_keepalive_probes": null,
                                                "net_ipv4_tcp_keepalive_time": null,
                                                "net_ipv4_tcp_max_syn_backlog": null,
                                                "net_ipv4_tcp_max_tw_buckets": null,
                                                "net_ipv4_tcp_tw_reuse": null,
                                                "net_netfilter_nf_conntrack_buckets": null,
                                                "net_netfilter_nf_conntrack_max": null,
                                                "vm_max_map_count": null,
                                                "vm_swappiness": null,
                                                "vm_vfs_cache_pressure": null
                                            }
                                        ],
                                        "transparent_huge_page_defrag": null,
                                        "transparent_huge_page_enabled": "always"
                                    }
                                ],
                                "max_count": 2,
                                "max_pods": 100,
                                "message_of_the_day": null,
                                "min_count": 1,
                                "name": "testnodepool",
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_size_gb": 60,
                                "os_disk_type": "Managed",
                                "pod_subnet_id": null,
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": null,
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [
                                    {
                                        "drain_timeout_in_minutes": null,
                                        "max_surge": "10%",
                                        "node_soak_duration_in_minutes": 0
                                    }
                                ],
                                "vm_size": "Standard_D2s_v3",
                                "zones": [
                                    "1",
                                    "2"
                                ]
                            }
                        ],
                        "disk_encryption_set_id": null,
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
                                "gateway_id": null,
                                "gateway_name": "ingress",
                                "subnet_cidr": "10.52.1.0/24",
                                "subnet_id": null
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kubernetes_version": "1.29",
                        "linux_profile": [],
                        "local_account_disabled": false,
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "network_profile": [
                            {
                                "dns_service_ip": "10.0.0.10",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "network_policy": "azure",
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.0.0.0/16"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": false,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
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
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "application_gateway_byo_vnet_network_contributor",
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
                    "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "application_gateway_resource_group_reader",
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
                    "address": "module.aks.data.azurerm_client_config.this",
                    "mode": "data",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_client_config",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
                    "index": 0,
                    "mode": "data",
                    "name": "aks_rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.main",
                    "mode": "data",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                    "mode": "managed",
                    "name": "kubernetes_cluster_name_keeper",
                    "provider_name": "registry.terraform.io/hashicorp/null",
                    "schema_version": 0,
                    "sensitive_values": {
                        "triggers": {}
                    },
                    "type": "null_resource",
                    "values": {
                        "triggers": {}
                    }
                },
                {
                    "address": "module.aks.null_resource.kubernetes_version_keeper",
                    "mode": "managed",
                    "name": "kubernetes_version_keeper",
                    "provider_name": "registry.terraform.io/hashicorp/null",
                    "schema_version": 0,
                    "sensitive_values": {
                        "triggers": {}
                    },
                    "type": "null_resource",
                    "values": {
                        "triggers": {
                            "version": "1.29"
                        }
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "metadata",
                0,
                "name"
            ],
            "resource": "kubernetes_namespace_v1.example"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.main[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.appgw[0]"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.test[0]"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.data.azurerm_resource_group.main"
        },
        {
            "attribute": [
                "portal_fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config_raw"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "oms_agent",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "node_resource_group"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0,
                "ingress_application_gateway_identity",
                0,
                "object_id"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "client_key"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "host"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "host"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_key"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "identity",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "client_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "cluster_ca_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "network_profile"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "status",
                0,
                "load_balancer",
                0,
                "ingress",
                0,
                "ip"
            ],
            "resource": "data.kubernetes_ingress_v1.ing"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "username"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "http_application_routing_zone_name"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "web_app_routing",
                0,
                "web_app_routing_identity"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "hex"
            ],
            "resource": "random_id.name"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.data.azurerm_resource_group.main"
        },
        {
            "attribute": [
                "public_key_openssh"
            ],
            "resource": "module.aks.tls_private_key.ssh[0]"
        },
        {
            "attribute": [
                "private_fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "aci_connector_linux",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "azure_policy_enabled"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "hex"
            ],
            "resource": "random_id.prefix"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.data.azurerm_resource_group.ingress_gw[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.data.azurerm_resource_group.aks_rg[0]"
        },
        {
            "attribute": [
                "kubelet_identity"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "oidc_issuer_url"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "cluster_ca_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "password"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "username"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "password"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appgw[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.test[0]"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_dependency_pending",
            "address": "data.kubernetes_ingress_v1.ing",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ]
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ],
                    "spec": [],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": true,
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "ing",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_ingress_v1"
        },
        {
            "address": "azurerm_resource_group.main[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.test[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.52.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null
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
                    "name": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "test",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.test[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.52.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
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
                    "name": true,
                    "resource_group_name": true,
                    "subnet": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "test",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "kubernetes_ingress_v1.ing",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": {
                                "kubernetes.io/ingress.class": "azure/application-gateway"
                            },
                            "generate_name": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "rule": [
                                {
                                    "host": null,
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "name": "aspnetapp",
                                                                    "port": [
                                                                        {
                                                                            "name": null,
                                                                            "number": 80
                                                                        }
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ],
                                                    "path": "/",
                                                    "path_type": "Exact"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "timeouts": null,
                    "wait_for_load_balancer": null
                },
                "after_sensitive": {
                    "metadata": [
                        {
                            "annotations": {}
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "rule": [
                                {
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "port": [
                                                                        {}
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "annotations": {},
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "ingress_class_name": true,
                            "rule": [
                                {
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "port": [
                                                                        {}
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "ing",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_ingress_v1"
        },
        {
            "address": "kubernetes_namespace_v1.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": null,
                            "name": "example"
                        }
                    ],
                    "timeouts": null,
                    "wait_for_default_service_account": false
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_namespace_v1"
        },
        {
            "address": "kubernetes_pod.aspnet_app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": {
                                "app": "aspnetapp"
                            },
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "active_deadline_seconds": null,
                            "affinity": [],
                            "automount_service_account_token": true,
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "env": [],
                                    "env_from": [],
                                    "image": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea",
                                    "image_pull_policy": "Always",
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "name": "aspnetapp-image",
                                    "port": [
                                        {
                                            "container_port": 80,
                                            "host_ip": null,
                                            "host_port": null,
                                            "name": null,
                                            "protocol": "TCP"
                                        }
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {
                                                "cpu": "250m",
                                                "memory": "256Mi"
                                            },
                                            "requests": {
                                                "cpu": "250m",
                                                "memory": "256Mi"
                                            }
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "allow_privilege_escalation": true,
                                            "capabilities": [],
                                            "privileged": false,
                                            "read_only_root_filesystem": false,
                                            "run_as_group": null,
                                            "run_as_non_root": null,
                                            "run_as_user": null,
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "stdin": false,
                                    "stdin_once": false,
                                    "termination_message_path": "/dev/termination-log",
                                    "tty": false,
                                    "volume_mount": [],
                                    "working_dir": null
                                }
                            ],
                            "dns_config": [],
                            "dns_policy": "ClusterFirst",
                            "enable_service_links": true,
                            "host_aliases": [],
                            "host_ipc": false,
                            "host_network": false,
                            "host_pid": false,
                            "init_container": [],
                            "node_selector": null,
                            "os": [],
                            "priority_class_name": null,
                            "restart_policy": "Always",
                            "runtime_class_name": null,
                            "security_context": [],
                            "share_process_namespace": false,
                            "subdomain": null,
                            "termination_grace_period_seconds": 30,
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ],
                    "target_state": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "metadata": [
                        {
                            "labels": {}
                        }
                    ],
                    "spec": [
                        {
                            "affinity": [],
                            "container": [
                                {
                                    "env": [],
                                    "env_from": [],
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "port": [
                                        {}
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {},
                                            "requests": {}
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "capabilities": [],
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "volume_mount": []
                                }
                            ],
                            "dns_config": [],
                            "host_aliases": [],
                            "image_pull_secrets": [],
                            "init_container": [],
                            "os": [],
                            "readiness_gate": [],
                            "security_context": [],
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "labels": {},
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "affinity": [],
                            "container": [
                                {
                                    "env": [],
                                    "env_from": [],
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "port": [
                                        {}
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {},
                                            "requests": {}
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "capabilities": [],
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "termination_message_policy": true,
                                    "volume_mount": []
                                }
                            ],
                            "dns_config": [],
                            "host_aliases": [],
                            "hostname": true,
                            "image_pull_secrets": true,
                            "init_container": [],
                            "node_name": true,
                            "os": [],
                            "readiness_gate": true,
                            "scheduler_name": true,
                            "security_context": [],
                            "service_account_name": true,
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aspnet_app",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_pod"
        },
        {
            "address": "kubernetes_service.svc",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "allocate_load_balancer_node_ports": true,
                            "external_ips": null,
                            "external_name": null,
                            "load_balancer_class": null,
                            "load_balancer_ip": null,
                            "load_balancer_source_ranges": null,
                            "port": [
                                {
                                    "app_protocol": null,
                                    "name": null,
                                    "port": 80,
                                    "protocol": "TCP",
                                    "target_port": "80"
                                }
                            ],
                            "publish_not_ready_addresses": false,
                            "selector": {
                                "app": "aspnetapp"
                            },
                            "session_affinity": "None",
                            "type": "ClusterIP"
                        }
                    ],
                    "timeouts": null,
                    "wait_for_load_balancer": true
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ],
                    "spec": [
                        {
                            "cluster_ips": [],
                            "ip_families": [],
                            "port": [
                                {}
                            ],
                            "selector": {},
                            "session_affinity_config": []
                        }
                    ],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "cluster_ip": true,
                            "cluster_ips": true,
                            "external_traffic_policy": true,
                            "health_check_node_port": true,
                            "internal_traffic_policy": true,
                            "ip_families": true,
                            "ip_family_policy": true,
                            "port": [
                                {
                                    "node_port": true
                                }
                            ],
                            "selector": {},
                            "session_affinity_config": true
                        }
                    ],
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "svc",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_service"
        },
        {
            "address": "random_id.name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": null,
                    "prefix": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "random_id.prefix",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": null,
                    "prefix": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "prefix",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "time_sleep.wait_for_ingress",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_duration": "15m",
                    "destroy_duration": null,
                    "triggers": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "wait_for_ingress",
            "provider_name": "registry.terraform.io/hashicorp/time",
            "type": "time_sleep"
        },
        {
            "action_reason": "read_because_dependency_pending",
            "address": "module.aks.data.azurerm_client_config.this",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "object_id": true,
                    "subscription_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.aks",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_client_config"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "name": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "data",
            "module_address": "module.aks",
            "name": "aks_rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "module.aks.data.azurerm_resource_group.main",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "name": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.aks",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                    "ignore_body_changes": null,
                    "ignore_casing": false,
                    "ignore_missing_property": true,
                    "locks": null,
                    "response_export_values": null,
                    "timeouts": null,
                    "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "output": true,
                    "parent_id": true,
                    "resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "aks_cluster_post_create",
            "provider_name": "registry.terraform.io/azure/azapi",
            "type": "azapi_update_resource"
        },
        {
            "address": "module.aks.azurerm_kubernetes_cluster.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "aci_connector_linux": [],
                    "automatic_channel_upgrade": "patch",
                    "azure_active_directory_role_based_access_control": [
                        {
                            "admin_group_object_ids": null,
                            "azure_rbac_enabled": null,
                            "client_app_id": null,
                            "managed": true,
                            "server_app_id": null,
                            "server_app_secret": null
                        }
                    ],
                    "azure_policy_enabled": true,
                    "confidential_computing": [],
                    "cost_analysis_enabled": null,
                    "custom_ca_trust_certificates_base64": null,
                    "default_node_pool": [
                        {
                            "capacity_reservation_group_id": null,
                            "custom_ca_trust_enabled": null,
                            "enable_auto_scaling": true,
                            "enable_host_encryption": true,
                            "enable_node_public_ip": false,
                            "fips_enabled": null,
                            "gpu_instance": null,
                            "host_group_id": null,
                            "kubelet_config": [],
                            "linux_os_config": [
                                {
                                    "swap_file_size_mb": null,
                                    "sysctl_config": [
                                        {
                                            "fs_aio_max_nr": 65536,
                                            "fs_file_max": 100000,
                                            "fs_inotify_max_user_watches": 1000000,
                                            "fs_nr_open": null,
                                            "kernel_threads_max": null,
                                            "net_core_netdev_max_backlog": null,
                                            "net_core_optmem_max": null,
                                            "net_core_rmem_default": null,
                                            "net_core_rmem_max": null,
                                            "net_core_somaxconn": null,
                                            "net_core_wmem_default": null,
                                            "net_core_wmem_max": null,
                                            "net_ipv4_ip_local_port_range_max": null,
                                            "net_ipv4_ip_local_port_range_min": null,
                                            "net_ipv4_neigh_default_gc_thresh1": null,
                                            "net_ipv4_neigh_default_gc_thresh2": null,
                                            "net_ipv4_neigh_default_gc_thresh3": null,
                                            "net_ipv4_tcp_fin_timeout": null,
                                            "net_ipv4_tcp_keepalive_intvl": null,
                                            "net_ipv4_tcp_keepalive_probes": null,
                                            "net_ipv4_tcp_keepalive_time": null,
                                            "net_ipv4_tcp_max_syn_backlog": null,
                                            "net_ipv4_tcp_max_tw_buckets": null,
                                            "net_ipv4_tcp_tw_reuse": null,
                                            "net_netfilter_nf_conntrack_buckets": null,
                                            "net_netfilter_nf_conntrack_max": null,
                                            "vm_max_map_count": null,
                                            "vm_swappiness": null,
                                            "vm_vfs_cache_pressure": null
                                        }
                                    ],
                                    "transparent_huge_page_defrag": null,
                                    "transparent_huge_page_enabled": "always"
                                }
                            ],
                            "max_count": 2,
                            "max_pods": 100,
                            "message_of_the_day": null,
                            "min_count": 1,
                            "name": "testnodepool",
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_size_gb": 60,
                            "os_disk_type": "Managed",
                            "pod_subnet_id": null,
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": null,
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [
                                {
                                    "drain_timeout_in_minutes": null,
                                    "max_surge": "10%",
                                    "node_soak_duration_in_minutes": 0
                                }
                            ],
                            "vm_size": "Standard_D2s_v3",
                            "zones": [
                                "1",
                                "2"
                            ]
                        }
                    ],
                    "disk_encryption_set_id": null,
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
                            "gateway_id": null,
                            "gateway_name": "ingress",
                            "subnet_cidr": "10.52.1.0/24",
                            "subnet_id": null
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kubernetes_version": "1.29",
                    "linux_profile": [],
                    "local_account_disabled": false,
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "dns_service_ip": "10.0.0.10",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "network_policy": "azure",
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.0.0.0/16"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": false,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
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
                    "workload_identity_enabled": false
                },
                "after_sensitive": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": [],
                    "api_server_authorized_ip_ranges": [],
                    "auto_scaler_profile": [],
                    "azure_active_directory_role_based_access_control": [
                        {
                            "server_app_secret": true
                        }
                    ],
                    "confidential_computing": [],
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "linux_os_config": [
                                {
                                    "sysctl_config": [
                                        {}
                                    ]
                                }
                            ],
                            "node_labels": {},
                            "node_network_profile": [],
                            "upgrade_settings": [
                                {}
                            ],
                            "zones": [
                                false,
                                false
                            ]
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
                    "web_app_routing": [],
                    "windows_profile": [],
                    "workload_autoscaler_profile": []
                },
                "after_unknown": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": true,
                    "api_server_authorized_ip_ranges": true,
                    "auto_scaler_profile": true,
                    "azure_active_directory_role_based_access_control": [
                        {
                            "tenant_id": true
                        }
                    ],
                    "confidential_computing": [],
                    "current_kubernetes_version": true,
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "kubelet_disk_type": true,
                            "linux_os_config": [
                                {
                                    "sysctl_config": [
                                        {}
                                    ]
                                }
                            ],
                            "node_count": true,
                            "node_labels": true,
                            "node_network_profile": [],
                            "orchestrator_version": true,
                            "os_sku": true,
                            "upgrade_settings": [
                                {}
                            ],
                            "vnet_subnet_id": true,
                            "workload_runtime": true,
                            "zones": [
                                false,
                                false
                            ]
                        }
                    ],
                    "dns_prefix": true,
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
                    "linux_profile": [],
                    "location": true,
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": true,
                    "network_profile": [
                        {
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
                    "resource_group_name": true,
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
            "module_address": "module.aks",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.aks",
            "name": "application_gateway_byo_vnet_network_contributor",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.aks",
            "name": "application_gateway_resource_group_reader",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "triggers": {}
                },
                "after_sensitive": {
                    "triggers": {}
                },
                "after_unknown": {
                    "id": true,
                    "triggers": {
                        "name": true
                    }
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "kubernetes_cluster_name_keeper",
            "provider_name": "registry.terraform.io/hashicorp/null",
            "type": "null_resource"
        },
        {
            "address": "module.aks.null_resource.kubernetes_version_keeper",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "triggers": {
                        "version": "1.29"
                    }
                },
                "after_sensitive": {
                    "triggers": {}
                },
                "after_unknown": {
                    "id": true,
                    "triggers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "kubernetes_version_keeper",
            "provider_name": "registry.terraform.io/hashicorp/null",
            "type": "null_resource"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:46:35Z",
    "variables": {
        "bring_your_own_vnet": {
            "value": true
        },
        "create_resource_group": {
            "value": true
        },
        "create_role_assignments_for_application_gateway": {
            "value": true
        },
        "location": {
            "value": "eastus"
        },
        "resource_group_name": {
            "value": null
        },
        "use_brown_field_application_gateway": {
            "value": false
        }
    }
}