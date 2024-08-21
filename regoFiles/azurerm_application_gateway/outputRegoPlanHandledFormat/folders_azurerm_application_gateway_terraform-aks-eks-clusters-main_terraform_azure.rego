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
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "client_key": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].client_key",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "cluster_ca_certificate": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            },
                            "host": {
                                "references": [
                                    "azurerm_kubernetes_cluster.aks.kube_config[0].host",
                                    "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                    "azurerm_kubernetes_cluster.aks.kube_config",
                                    "azurerm_kubernetes_cluster.aks"
                                ]
                            }
                        }
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/helm",
                "name": "helm"
            }
        },
        "root_module": {
            "outputs": {
                "appgw_public_ip": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.pip.ip_address",
                            "azurerm_public_ip.pip"
                        ]
                    }
                },
                "role_assignment_id": {
                    "expression": {
                        "references": [
                            "azurerm_role_assignment.aks_appgw_role.id",
                            "azurerm_role_assignment.aks_appgw_role"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "depends_on": [
                        "azurerm_public_ip.pip"
                    ],
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                        "var.prefix"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.pip.id",
                                        "azurerm_public_ip.pip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                        "var.prefix"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appgwsubnet.id",
                                        "azurerm_subnet.appgwsubnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                "var.prefix"
                            ]
                        },
                        "probe": [
                            {
                                "host": {
                                    "constant_value": "127.0.0.1"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "timeout": {
                                    "constant_value": 20
                                },
                                "unhealthy_threshold": {
                                    "constant_value": 3
                                }
                            }
                        ],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "var.prefix"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.prefix"
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
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                        ],
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_federated_identity_credential.example",
                    "depends_on": [
                        "azurerm_user_assigned_identity.testIdentity"
                    ],
                    "expressions": {
                        "audience": {
                            "constant_value": [
                                "api://AzureADTokenExchange"
                            ]
                        },
                        "issuer": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.oidc_issuer_url",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "parent_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "subject": {
                            "constant_value": "system:serviceaccount:default:ingress-azure"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_federated_identity_credential"
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
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
                                    "constant_value": "Standard_D4ps_v5"
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
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
                                "var.prefix"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "constant_value": "10.0.1.10"
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "service_cidr": {
                                    "references": [
                                        "azurerm_subnet.akssubnet.address_prefixes[0]",
                                        "azurerm_subnet.akssubnet.address_prefixes",
                                        "azurerm_subnet.akssubnet"
                                    ]
                                }
                            }
                        ],
                        "oidc_issuer_enabled": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "workload_identity_enabled": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "depends_on": [
                        "azurerm_resource_group.rg"
                    ],
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
                                "var.prefix"
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
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "constant_value": "westus2"
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
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
                    "address": "azurerm_role_assignment.aks_appgw_role",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_application_gateway.appgw.id",
                                "azurerm_application_gateway.appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_appgw_role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.ra1",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ra1",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.ra3",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.testIdentity.principal_id",
                                "azurerm_user_assigned_identity.testIdentity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_resource_group.rg.id",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ra3",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.akssubnet",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
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
                    "name": "akssubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.appgwsubnet",
                    "depends_on": [
                        "azurerm_virtual_network.vnet"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
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
                    "name": "appgwsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_user_assigned_identity.testIdentity",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "testIdentity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
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
                                "var.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.prefix"
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
                    "address": "azurerm_virtual_network_peering.aks_to_appgw",
                    "depends_on": [
                        "azurerm_application_gateway.appgw"
                    ],
                    "expressions": {
                        "allow_forwarded_traffic": {
                            "constant_value": true
                        },
                        "allow_gateway_transit": {
                            "constant_value": false
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.node_resource_group",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "use_remote_gateways": {
                            "constant_value": false
                        },
                        "virtual_network_name": {
                            "references": [
                                "data.azurerm_resources.vnet.resources[0].name",
                                "data.azurerm_resources.vnet.resources[0]",
                                "data.azurerm_resources.vnet.resources",
                                "data.azurerm_resources.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_to_appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "azurerm_virtual_network_peering.appgw_to_aks",
                    "depends_on": [
                        "azurerm_application_gateway.appgw"
                    ],
                    "expressions": {
                        "allow_forwarded_traffic": {
                            "constant_value": true
                        },
                        "allow_gateway_transit": {
                            "constant_value": false
                        },
                        "name": {
                            "references": [
                                "var.prefix"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "data.azurerm_resources.vnet.resources[0].id",
                                "data.azurerm_resources.vnet.resources[0]",
                                "data.azurerm_resources.vnet.resources",
                                "data.azurerm_resources.vnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "use_remote_gateways": {
                            "constant_value": false
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw_to_aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "helm_release.app",
                    "expressions": {
                        "chart": {
                            "constant_value": "../../k8s/app"
                        },
                        "name": {
                            "constant_value": "app"
                        },
                        "set": [
                            {
                                "name": {
                                    "constant_value": "namespace.name"
                                },
                                "value": {
                                    "references": [
                                        "var.namespace"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "hosts.app"
                                },
                                "value": {
                                    "references": [
                                        "var.host-name"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "replicas.count"
                                },
                                "value": {
                                    "references": [
                                        "var.replicas-count"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "image.repository"
                                },
                                "value": {
                                    "references": [
                                        "var.image_repository"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "image.tag"
                                },
                                "value": {
                                    "references": [
                                        "var.image_tag"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "app",
                    "provider_config_key": "helm",
                    "schema_version": 1,
                    "type": "helm_release"
                },
                {
                    "address": "helm_release.appgw_ingress",
                    "depends_on": [
                        "azurerm_federated_identity_credential.example",
                        "azurerm_kubernetes_cluster.aks"
                    ],
                    "expressions": {
                        "chart": {
                            "constant_value": "ingress-azure"
                        },
                        "create_namespace": {
                            "constant_value": true
                        },
                        "name": {
                            "constant_value": "ingress-azure"
                        },
                        "namespace": {
                            "constant_value": "default"
                        },
                        "repository": {
                            "constant_value": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/"
                        },
                        "timeout": {
                            "constant_value": 125
                        },
                        "values": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg",
                                "azurerm_application_gateway.appgw.name",
                                "azurerm_application_gateway.appgw",
                                "azurerm_user_assigned_identity.testIdentity.client_id",
                                "azurerm_user_assigned_identity.testIdentity",
                                "azurerm_kubernetes_cluster.aks.kube_config[0].host",
                                "azurerm_kubernetes_cluster.aks.kube_config[0]",
                                "azurerm_kubernetes_cluster.aks.kube_config",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw_ingress",
                    "provider_config_key": "helm",
                    "schema_version": 1,
                    "type": "helm_release"
                },
                {
                    "address": "data.azurerm_resources.vnet",
                    "expressions": {
                        "resource_group_name": {
                            "references": [
                                "azurerm_kubernetes_cluster.aks.node_resource_group",
                                "azurerm_kubernetes_cluster.aks"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.Network/virtualNetworks"
                        }
                    },
                    "mode": "data",
                    "name": "vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resources"
                }
            ],
            "variables": {
                "host-name": {
                    "default": "app.vigregus.com",
                    "description": "host name of the deployment."
                },
                "image_repository": {
                    "default": "nginxdemos/hello",
                    "description": "Docker image repository."
                },
                "image_tag": {
                    "default": "0.4-plain-text",
                    "description": "Docker image tag."
                },
                "location": {
                    "default": "westus2",
                    "description": "The location where resources will be created"
                },
                "namespace": {
                    "default": "example1",
                    "description": "namespace of the deployment."
                },
                "prefix": {
                    "default": "test-mind-io",
                    "description": "Prefix for resource names"
                },
                "replicas-count": {
                    "default": 3,
                    "description": "count of pods"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "appgw_public_ip": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "role_assignment_id": {
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
            "appgw_public_ip": {
                "sensitive": false
            },
            "role_assignment_id": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "mode": "managed",
                    "name": "appgw",
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
                        "probe": [
                            {
                                "match": []
                            }
                        ],
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
                        "tags": {},
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
                                "name": "test-mind-io-backend-address-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "test-mind-io-http-settings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "test-mind-io-probe",
                                "protocol": "Http",
                                "request_timeout": 20,
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
                                "name": "test-mind-io-frontend-ip-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "test-mind-io-frontend-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "test-mind-io-gateway-ip-config"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "test-mind-io-frontend-ip-config",
                                "frontend_port_name": "test-mind-io-frontend-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "test-mind-io-http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westus2",
                        "name": "test-mind-io-app-gateway",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "127.0.0.1",
                                "interval": 30,
                                "match": [],
                                "minimum_servers": 0,
                                "name": "test-mind-io-probe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": 80,
                                "protocol": "Http",
                                "timeout": 20,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "test-mind-io-backend-address-pool",
                                "backend_http_settings_name": "test-mind-io-http-settings",
                                "http_listener_name": "test-mind-io-http-listener",
                                "name": "test-mind-io-routing-rule",
                                "priority": 100,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "test-mind-io-resource-group",
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
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_federated_identity_credential.example",
                    "mode": "managed",
                    "name": "example",
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
                            "api://AzureADTokenExchange"
                        ],
                        "name": "test-mind-io-federated-identity",
                        "resource_group_name": "test-mind-io-resource-group",
                        "subject": "system:serviceaccount:default:ingress-azure",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.aks",
                    "mode": "managed",
                    "name": "aks",
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
                                "vm_size": "Standard_D4ps_v5",
                                "vnet_subnet_id": null,
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "test-mind-io-aks",
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
                        "location": "westus2",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "test-mind-io-aks-cluster",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.0.1.10",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.0.1.0/24"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": true,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "test-mind-io-resource-group",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": true
                    }
                },
                {
                    "address": "azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
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
                        "name": "test-mind-io-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "test-mind-io-resource-group",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "env": "test-mind-io"
                        },
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
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westus2",
                        "managed_by": null,
                        "name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.aks_appgw_role",
                    "mode": "managed",
                    "name": "aks_appgw_role",
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
                    "address": "azurerm_role_assignment.ra1",
                    "mode": "managed",
                    "name": "ra1",
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
                    "address": "azurerm_role_assignment.ra3",
                    "mode": "managed",
                    "name": "ra3",
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
                    "address": "azurerm_subnet.akssubnet",
                    "mode": "managed",
                    "name": "akssubnet",
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
                        "name": "test-mind-io-aks-subnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.appgwsubnet",
                    "mode": "managed",
                    "name": "appgwsubnet",
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
                        "name": "test-mind-io-appgw-subnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.testIdentity",
                    "mode": "managed",
                    "name": "testIdentity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "westus2",
                        "name": "test-mind-io-identity1",
                        "resource_group_name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
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
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westus2",
                        "name": "test-mind-io-vnet",
                        "resource_group_name": "test-mind-io-resource-group",
                        "tags": {
                            "env": "test-mind-io"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.aks_to_appgw",
                    "mode": "managed",
                    "name": "aks_to_appgw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": true,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "test-mind-io-aks-to-appgw",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.appgw_to_aks",
                    "mode": "managed",
                    "name": "appgw_to_aks",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": true,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "test-mind-io-appgw-to-aks",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "test-mind-io-resource-group",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "test-mind-io-vnet"
                    }
                },
                {
                    "address": "data.azurerm_resources.vnet",
                    "mode": "data",
                    "name": "vnet",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "resources": []
                    },
                    "type": "azurerm_resources",
                    "values": {
                        "required_tags": null,
                        "timeouts": null,
                        "type": "Microsoft.Network/virtualNetworks"
                    }
                },
                {
                    "address": "helm_release.app",
                    "mode": "managed",
                    "name": "app",
                    "provider_name": "registry.terraform.io/hashicorp/helm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [],
                        "postrender": [],
                        "repository_password": true,
                        "set": [
                            {},
                            {},
                            {},
                            {},
                            {}
                        ],
                        "set_list": [],
                        "set_sensitive": []
                    },
                    "type": "helm_release",
                    "values": {
                        "atomic": false,
                        "chart": "../../k8s/app",
                        "cleanup_on_fail": false,
                        "create_namespace": false,
                        "dependency_update": false,
                        "description": null,
                        "devel": null,
                        "disable_crd_hooks": false,
                        "disable_openapi_validation": false,
                        "disable_webhooks": false,
                        "force_update": false,
                        "keyring": null,
                        "lint": false,
                        "max_history": 0,
                        "name": "app",
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
                        "set": [
                            {
                                "name": "hosts.app",
                                "type": "",
                                "value": "app.vigregus.com"
                            },
                            {
                                "name": "image.repository",
                                "type": "",
                                "value": "nginxdemos/hello"
                            },
                            {
                                "name": "image.tag",
                                "type": "",
                                "value": "0.4-plain-text"
                            },
                            {
                                "name": "namespace.name",
                                "type": "",
                                "value": "example1"
                            },
                            {
                                "name": "replicas.count",
                                "type": "",
                                "value": "3"
                            }
                        ],
                        "set_list": [],
                        "set_sensitive": [],
                        "skip_crds": false,
                        "status": "deployed",
                        "timeout": 300,
                        "upgrade_install": null,
                        "values": null,
                        "verify": false,
                        "version": "0.1.0",
                        "wait": true,
                        "wait_for_jobs": false
                    }
                },
                {
                    "address": "helm_release.appgw_ingress",
                    "mode": "managed",
                    "name": "appgw_ingress",
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
                        "chart": "ingress-azure",
                        "cleanup_on_fail": false,
                        "create_namespace": true,
                        "dependency_update": false,
                        "description": null,
                        "devel": null,
                        "disable_crd_hooks": false,
                        "disable_openapi_validation": false,
                        "disable_webhooks": false,
                        "force_update": false,
                        "keyring": null,
                        "lint": false,
                        "max_history": 0,
                        "name": "ingress-azure",
                        "namespace": "default",
                        "pass_credentials": false,
                        "postrender": [],
                        "recreate_pods": false,
                        "render_subchart_notes": true,
                        "replace": false,
                        "repository": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/",
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
                        "timeout": 125,
                        "upgrade_install": null,
                        "verify": false,
                        "version": "1.7.5",
                        "wait": true,
                        "wait_for_jobs": false
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
                "host"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "address_prefixes",
                0
            ],
            "resource": "azurerm_subnet.akssubnet"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "oidc_issuer_url"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_role_assignment.aks_appgw_role"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appgwsubnet"
        },
        {
            "attribute": [
                "node_resource_group"
            ],
            "resource": "azurerm_kubernetes_cluster.aks"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "resources",
                0,
                "id"
            ],
            "resource": "data.azurerm_resources.vnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "resources",
                0,
                "name"
            ],
            "resource": "data.azurerm_resources.vnet"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "azurerm_user_assigned_identity.testIdentity"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.appgw"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_resources.vnet",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "required_tags": null,
                    "timeouts": null,
                    "type": "Microsoft.Network/virtualNetworks"
                },
                "after_sensitive": {
                    "resources": []
                },
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "resource_group_name": true,
                    "resources": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resources"
        },
        {
            "address": "azurerm_application_gateway.appgw",
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
                            "name": "test-mind-io-backend-address-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "test-mind-io-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "test-mind-io-probe",
                            "protocol": "Http",
                            "request_timeout": 20,
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
                            "name": "test-mind-io-frontend-ip-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "test-mind-io-frontend-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "test-mind-io-gateway-ip-config"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "test-mind-io-frontend-ip-config",
                            "frontend_port_name": "test-mind-io-frontend-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "test-mind-io-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westus2",
                    "name": "test-mind-io-app-gateway",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "127.0.0.1",
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "test-mind-io-probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": 80,
                            "protocol": "Http",
                            "timeout": 20,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "test-mind-io-backend-address-pool",
                            "backend_http_settings_name": "test-mind-io-http-settings",
                            "http_listener_name": "test-mind-io-http-listener",
                            "name": "test-mind-io-routing-rule",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "test-mind-io-resource-group",
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
                    "tags": {
                        "env": "test-mind-io"
                    },
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
                    "probe": [
                        {
                            "match": []
                        }
                    ],
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
                    "tags": {},
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
                    "probe": [
                        {
                            "id": true,
                            "match": []
                        }
                    ],
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_federated_identity_credential.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "audience": [
                        "api://AzureADTokenExchange"
                    ],
                    "name": "test-mind-io-federated-identity",
                    "resource_group_name": "test-mind-io-resource-group",
                    "subject": "system:serviceaccount:default:ingress-azure",
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_federated_identity_credential"
        },
        {
            "address": "azurerm_kubernetes_cluster.aks",
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
                            "vm_size": "Standard_D4ps_v5",
                            "vnet_subnet_id": null,
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "test-mind-io-aks",
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
                    "location": "westus2",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "test-mind-io-aks-cluster",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.0.1.10",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.0.1.0/24"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": true,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "test-mind-io-resource-group",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "env": "test-mind-io"
                    },
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
                    "network_profile": [
                        {
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
            "name": "aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_public_ip.pip",
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
                    "name": "test-mind-io-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "test-mind-io-resource-group",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null,
                    "zones": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "pip",
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
                    "location": "westus2",
                    "managed_by": null,
                    "name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "tags": {}
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
            "address": "azurerm_role_assignment.aks_appgw_role",
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
            "name": "aks_appgw_role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.ra1",
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
            "name": "ra1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.ra3",
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
            "name": "ra3",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.akssubnet",
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
                    "name": "test-mind-io-aks-subnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "test-mind-io-vnet"
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
            "name": "akssubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.appgwsubnet",
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
                    "name": "test-mind-io-appgw-subnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "test-mind-io-vnet"
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
            "name": "appgwsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_user_assigned_identity.testIdentity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westus2",
                    "name": "test-mind-io-identity1",
                    "resource_group_name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "principal_id": true,
                    "tags": {},
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "testIdentity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
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
                    "location": "westus2",
                    "name": "test-mind-io-vnet",
                    "resource_group_name": "test-mind-io-resource-group",
                    "tags": {
                        "env": "test-mind-io"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "address_space": [
                        false
                    ],
                    "ddos_protection_plan": [],
                    "dns_servers": [],
                    "encryption": [],
                    "subnet": [],
                    "tags": {}
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
                    "subnet": true,
                    "tags": {}
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
            "address": "azurerm_virtual_network_peering.aks_to_appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": true,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "test-mind-io-aks-to-appgw",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "remote_virtual_network_id": true,
                    "resource_group_name": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks_to_appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "azurerm_virtual_network_peering.appgw_to_aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": true,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "test-mind-io-appgw-to-aks",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "test-mind-io-resource-group",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "test-mind-io-vnet"
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "remote_virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw_to_aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "helm_release.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "atomic": false,
                    "chart": "../../k8s/app",
                    "cleanup_on_fail": false,
                    "create_namespace": false,
                    "dependency_update": false,
                    "description": null,
                    "devel": null,
                    "disable_crd_hooks": false,
                    "disable_openapi_validation": false,
                    "disable_webhooks": false,
                    "force_update": false,
                    "keyring": null,
                    "lint": false,
                    "max_history": 0,
                    "name": "app",
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
                    "set": [
                        {
                            "name": "hosts.app",
                            "type": "",
                            "value": "app.vigregus.com"
                        },
                        {
                            "name": "image.repository",
                            "type": "",
                            "value": "nginxdemos/hello"
                        },
                        {
                            "name": "image.tag",
                            "type": "",
                            "value": "0.4-plain-text"
                        },
                        {
                            "name": "namespace.name",
                            "type": "",
                            "value": "example1"
                        },
                        {
                            "name": "replicas.count",
                            "type": "",
                            "value": "3"
                        }
                    ],
                    "set_list": [],
                    "set_sensitive": [],
                    "skip_crds": false,
                    "status": "deployed",
                    "timeout": 300,
                    "upgrade_install": null,
                    "values": null,
                    "verify": false,
                    "version": "0.1.0",
                    "wait": true,
                    "wait_for_jobs": false
                },
                "after_sensitive": {
                    "metadata": [],
                    "postrender": [],
                    "repository_password": true,
                    "set": [
                        {},
                        {},
                        {},
                        {},
                        {}
                    ],
                    "set_list": [],
                    "set_sensitive": []
                },
                "after_unknown": {
                    "id": true,
                    "manifest": true,
                    "metadata": true,
                    "postrender": [],
                    "set": [
                        {},
                        {},
                        {},
                        {},
                        {}
                    ],
                    "set_list": [],
                    "set_sensitive": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/helm",
            "type": "helm_release"
        },
        {
            "address": "helm_release.appgw_ingress",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "atomic": false,
                    "chart": "ingress-azure",
                    "cleanup_on_fail": false,
                    "create_namespace": true,
                    "dependency_update": false,
                    "description": null,
                    "devel": null,
                    "disable_crd_hooks": false,
                    "disable_openapi_validation": false,
                    "disable_webhooks": false,
                    "force_update": false,
                    "keyring": null,
                    "lint": false,
                    "max_history": 0,
                    "name": "ingress-azure",
                    "namespace": "default",
                    "pass_credentials": false,
                    "postrender": [],
                    "recreate_pods": false,
                    "render_subchart_notes": true,
                    "replace": false,
                    "repository": "https://appgwingress.blob.core.windows.net/ingress-azure-helm-package/",
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
                    "timeout": 125,
                    "upgrade_install": null,
                    "verify": false,
                    "version": "1.7.5",
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
            "name": "appgw_ingress",
            "provider_name": "registry.terraform.io/hashicorp/helm",
            "type": "helm_release"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:15:50Z",
    "variables": {
        "host-name": {
            "value": "app.vigregus.com"
        },
        "image_repository": {
            "value": "nginxdemos/hello"
        },
        "image_tag": {
            "value": "0.4-plain-text"
        },
        "location": {
            "value": "westus2"
        },
        "namespace": {
            "value": "example1"
        },
        "prefix": {
            "value": "test-mind-io"
        },
        "replicas-count": {
            "value": 3
        }
    }
}