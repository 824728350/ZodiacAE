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
                "name": "azurerm",
                "version_constraint": "3.116.0"
            },
            "module.cluster:local": {
                "full_name": "registry.terraform.io/hashicorp/local",
                "module_address": "module.cluster",
                "name": "local"
            }
        },
        "root_module": {
            "module_calls": {
                "appgw": {
                    "expressions": {
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
                        "frontend_ip_configuration_name": {
                            "references": [
                                "local.frontend_ip_configuration_name"
                            ]
                        },
                        "frontend_port_name": {
                            "references": [
                                "local.frontend_port_HTTP_name"
                            ]
                        },
                        "http_listener_frontend_ip_configuration_name": {
                            "references": [
                                "local.frontend_ip_configuration_name"
                            ]
                        },
                        "http_listener_frontend_port_name": {
                            "references": [
                                "local.frontend_port_HTTP_name"
                            ]
                        },
                        "http_listener_name": {
                            "references": [
                                "local.listener_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.network.public_ip_id",
                                "module.network"
                            ]
                        },
                        "request_routing_rule_backend_address_pool_name": {
                            "references": [
                                "local.backend_address_pool_name"
                            ]
                        },
                        "request_routing_rule_backend_http_settings_name": {
                            "references": [
                                "local.http_setting_name"
                            ]
                        },
                        "request_routing_rule_http_listener_name": {
                            "references": [
                                "local.listener_name"
                            ]
                        },
                        "request_routing_rule_name": {
                            "references": [
                                "local.request_routing_rule_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.network.apgw_subnet_id",
                                "module.network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.myApplicationGateway",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.backend_address_pool_name"
                                                ]
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "references": [
                                                    "var.cookie_based_affinity"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.backend_http_settings_name"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.backend_http_settings_port"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.backend_http_settings_protocol"
                                                ]
                                            },
                                            "request_timeout": {
                                                "references": [
                                                    "var.backend_http_settings_request_timeout"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.frontend_ip_configuration_name"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_address_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.frontend_port_name"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.frontend_port_port"
                                                ]
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.gateway_ip_configuration_name"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "references": [
                                                    "var.http_listener_frontend_ip_configuration_name"
                                                ]
                                            },
                                            "frontend_port_name": {
                                                "references": [
                                                    "var.http_listener_frontend_port_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.http_listener_name"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.http_listener_protocol"
                                                ]
                                            }
                                        }
                                    ],
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.application_gateway"
                                        ]
                                    },
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "references": [
                                                    "var.request_routing_rule_backend_address_pool_name"
                                                ]
                                            },
                                            "backend_http_settings_name": {
                                                "references": [
                                                    "var.request_routing_rule_backend_http_settings_name"
                                                ]
                                            },
                                            "http_listener_name": {
                                                "references": [
                                                    "var.request_routing_rule_http_listener_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.request_routing_rule_name"
                                                ]
                                            },
                                            "priority": {
                                                "references": [
                                                    "var.request_routing_rule_priority"
                                                ]
                                            },
                                            "rule_type": {
                                                "references": [
                                                    "var.request_routing_rule_rule_type"
                                                ]
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "capacity": {
                                                "references": [
                                                    "var.sku_capacity"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.sku_name"
                                                ]
                                            },
                                            "tier": {
                                                "references": [
                                                    "var.sku_tier"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "myApplicationGateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "application_gateway": {
                                "default": "myPLDApplicationGateway",
                                "description": "The name of the Application Gateway."
                            },
                            "backend_address_pool_name": {
                                "default": null,
                                "description": "The name of the backend address pool."
                            },
                            "backend_http_settings_name": {
                                "default": null,
                                "description": "The name of the backend HTTP settings."
                            },
                            "backend_http_settings_port": {
                                "default": 80,
                                "description": "The port number for the backend HTTP settings."
                            },
                            "backend_http_settings_protocol": {
                                "default": "Http",
                                "description": "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
                            },
                            "backend_http_settings_request_timeout": {
                                "default": 60,
                                "description": "The request timeout for the backend HTTP settings (in seconds)."
                            },
                            "cookie_based_affinity": {
                                "default": "Disabled"
                            },
                            "frontend_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the frontend IP configuration."
                            },
                            "frontend_port_name": {
                                "default": null,
                                "description": "The name of the frontend port."
                            },
                            "frontend_port_port": {
                                "default": 80,
                                "description": "The port number of the frontend port."
                            },
                            "gateway_ip_configuration_name": {
                                "default": "appGatewayIpConfig",
                                "description": "The name of the gateway IP configuration."
                            },
                            "http_listener_frontend_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the frontend IP configuration associated with the HTTP listener."
                            },
                            "http_listener_frontend_port_name": {
                                "default": null,
                                "description": "The name of the frontend port associated with the HTTP listener."
                            },
                            "http_listener_name": {
                                "default": null,
                                "description": "The name of the HTTP listener."
                            },
                            "http_listener_protocol": {
                                "default": "Http",
                                "description": "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location/region where the Application Gateway will be deployed."
                            },
                            "public_ip_address_id": {
                                "default": "10.0.0.0/16",
                                "description": "The ID of the public IP address to associate with the frontend IP configuration."
                            },
                            "request_routing_rule_backend_address_pool_name": {
                                "default": null,
                                "description": "The name of the backend address pool associated with the request routing rule."
                            },
                            "request_routing_rule_backend_http_settings_name": {
                                "default": null,
                                "description": "The name of the backend HTTP settings associated with the request routing rule."
                            },
                            "request_routing_rule_http_listener_name": {
                                "default": null,
                                "description": "The name of the HTTP listener associated with the request routing rule."
                            },
                            "request_routing_rule_name": {
                                "default": null,
                                "description": "The name of the request routing rule."
                            },
                            "request_routing_rule_priority": {
                                "default": 9,
                                "description": "The priority of the request routing rule."
                            },
                            "request_routing_rule_rule_type": {
                                "default": "Basic",
                                "description": "The type of the request routing rule."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Application Gateway."
                            },
                            "sku_capacity": {
                                "default": 2,
                                "description": "The capacity (instance count) of the SKU for the Application Gateway."
                            },
                            "sku_name": {
                                "default": "Standard_v2",
                                "description": "The name of the SKU for the Application Gateway."
                            },
                            "sku_tier": {
                                "default": "Standard_v2",
                                "description": "The tier of the SKU for the Application Gateway."
                            },
                            "subnet_id": {
                                "default": null,
                                "description": "The ID of the subnet to which the Application Gateway should be deployed."
                            }
                        }
                    },
                    "source": "./modules/appgw"
                },
                "cluster": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "private_cluster_enabled": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "secret_rotation_enabled": {
                            "constant_value": true
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.network.cluster_subnet_id",
                                "module.network"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "aks_secret_provider": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            },
                            "client_certificate-Store": {
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
                            "cluster_ip": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.fqdn",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            },
                            "kube_config-Store": {
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kubelet_identity": {
                                "description": "The ID of the Kubernetes Cluster Identity",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_kubernetes_cluster.aks_cluster",
                                "expressions": {
                                    "default_node_pool": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.node_pool"
                                                ]
                                            },
                                            "node_count": {
                                                "references": [
                                                    "var.node_count"
                                                ]
                                            },
                                            "os_disk_size_gb": {
                                                "references": [
                                                    "var.os_disk_size_gb"
                                                ]
                                            },
                                            "vm_size": {
                                                "references": [
                                                    "var.vm_size"
                                                ]
                                            },
                                            "vnet_subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "dns_prefix": {
                                        "references": [
                                            "var.dns_prefix"
                                        ]
                                    },
                                    "identity": [
                                        {
                                            "type": {
                                                "constant_value": "SystemAssigned"
                                            }
                                        }
                                    ],
                                    "key_vault_secrets_provider": [
                                        {
                                            "secret_rotation_enabled": {
                                                "references": [
                                                    "var.secret_rotation_enabled"
                                                ]
                                            }
                                        }
                                    ],
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            },
                            {
                                "address": "local_file.kubeconfig",
                                "depends_on": [
                                    "azurerm_kubernetes_cluster.aks_cluster"
                                ],
                                "expressions": {
                                    "content": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
                                            "azurerm_kubernetes_cluster.aks_cluster"
                                        ]
                                    },
                                    "filename": {
                                        "references": [
                                            "var.local_file"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubeconfig",
                                "provider_config_key": "module.cluster:local",
                                "schema_version": 0,
                                "type": "local_file"
                            }
                        ],
                        "variables": {
                            "cluster_name": {
                                "default": "aks_cluster",
                                "description": "Name of the AKS cluster"
                            },
                            "dns_prefix": {
                                "default": "MyClusterDNS",
                                "description": "DNS prefix for the AKS cluster"
                            },
                            "local_file": {
                                "default": "kubeconfig",
                                "description": "Name of the kuberneter file"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the AKS cluster"
                            },
                            "node_count": {
                                "default": 1,
                                "description": "Number of nodes in the default node pool"
                            },
                            "node_pool": {
                                "default": "nodepool",
                                "description": "Name of the default node pool"
                            },
                            "os_disk_size_gb": {
                                "default": 40,
                                "description": "Size of the OS disk in GB for nodes in the default node pool"
                            },
                            "private_cluster_enabled": {
                                "default": null,
                                "description": "Name of the kuberneter file"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "secret_rotation_enabled": {
                                "default": null,
                                "description": "Name of the kuberneter file"
                            },
                            "vm_size": {
                                "default": "Standard_D2_v2",
                                "description": "Size of VMs in the default node pool"
                            },
                            "vnet_subnet_id": {
                                "default": null,
                                "description": "ID of the subnet where the AKS cluster will be deployed"
                            }
                        }
                    },
                    "source": "./modules/cluster"
                },
                "container_registry": {
                    "expressions": {
                        "cr_name": {
                            "constant_value": "myPLDFirstContainerRegistry"
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "container_registry_id": {
                                "description": "The ID of the container registry",
                                "expression": {
                                    "references": [
                                        "azurerm_container_registry.container_registry.id",
                                        "azurerm_container_registry.container_registry"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_container_registry.container_registry",
                                "expressions": {
                                    "admin_enabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cr_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.container_sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "container_registry",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_container_registry"
                            }
                        ],
                        "variables": {
                            "container_sku": {
                                "default": "Standard",
                                "description": "The SKU name of the Azure Container Registry."
                            },
                            "cr_name": {
                                "default": null,
                                "description": "The name of the Azure Container Registry."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resource group in which to create the Azure Container Registry."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Azure Container Registry."
                            }
                        }
                    },
                    "source": "./modules/container_registry"
                },
                "identity": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "name": {
                            "constant_value": "myUserAssignedIdentity_Ecommerce"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "client_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.client_id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            },
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            },
                            "principal_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.ecommerce_identity.principal_id",
                                        "azurerm_user_assigned_identity.ecommerce_identity"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_user_assigned_identity.ecommerce_identity",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "ecommerce_identity",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_user_assigned_identity"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "The location/region where the identity should be created."
                            },
                            "name": {
                                "default": "3ahehold",
                                "description": "The name of the user-assigned identity."
                            },
                            "resource_group_name": {
                                "default": "y0fphold",
                                "description": "The name of the resource group."
                            }
                        }
                    },
                    "source": "./modules/identity"
                },
                "keyvault": {
                    "expressions": {
                        "aks_secret_provider_id": {
                            "references": [
                                "module.cluster.aks_secret_provider",
                                "module.cluster"
                            ]
                        },
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
                            ]
                        },
                        "expire_after": {
                            "constant_value": "P90D"
                        },
                        "key_names": {
                            "constant_value": [
                                "myPLDKey1",
                                "myPLDKey2"
                            ]
                        },
                        "key_opts": {
                            "constant_value": [
                                "decrypt",
                                "encrypt",
                                "sign",
                                "unwrapKey",
                                "verify",
                                "wrapKey"
                            ]
                        },
                        "key_permissions": {
                            "constant_value": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ]
                        },
                        "key_sizes": {
                            "constant_value": [
                                2048,
                                2048
                            ]
                        },
                        "key_types": {
                            "constant_value": [
                                "RSA",
                                "RSA"
                            ]
                        },
                        "key_vault_name": {
                            "constant_value": "myPLDKeyVault"
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "notify_before_expiry": {
                            "constant_value": "P29D"
                        },
                        "object_id": {
                            "references": [
                                "local.current_user_id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "secret_names": {
                            "constant_value": [
                                "mySecret1",
                                "mySecret2"
                            ]
                        },
                        "secret_permissions": {
                            "constant_value": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ]
                        },
                        "secret_values": {
                            "constant_value": [
                                "miprimeracontra1!",
                                "misegundacontra2!"
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
                        },
                        "time_before_expiry": {
                            "constant_value": "P30D"
                        },
                        "user_assigned_identity_principal_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "key_vault_id": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "name": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.name",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "secrets": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault_secret.key_vault_secret"
                                    ]
                                }
                            },
                            "tenant_id": {
                                "description": "The ID of the created Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.tenant_id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_key_vault.key_vault",
                                "expressions": {
                                    "access_policy": {
                                        "references": [
                                            "var.object_id",
                                            "var.secret_permissions",
                                            "var.tenant_id",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.aks_secret_provider_id",
                                            "var.secret_permissions",
                                            "data.azurerm_client_config.current.tenant_id",
                                            "data.azurerm_client_config.current"
                                        ]
                                    },
                                    "enabled_for_disk_encryption": {
                                        "references": [
                                            "var.enabled_for_disk_encryption"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.key_vault_name"
                                        ]
                                    },
                                    "purge_protection_enabled": {
                                        "references": [
                                            "var.purge_protection_enabled"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "references": [
                                            "var.sku_name"
                                        ]
                                    },
                                    "soft_delete_retention_days": {
                                        "references": [
                                            "var.soft_delete_retention_days"
                                        ]
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_key_vault"
                            },
                            {
                                "address": "azurerm_key_vault_key.key_vault_key",
                                "count_expression": {
                                    "references": [
                                        "var.key_names"
                                    ]
                                },
                                "expressions": {
                                    "key_opts": {
                                        "references": [
                                            "var.key_opts"
                                        ]
                                    },
                                    "key_size": {
                                        "references": [
                                            "var.key_sizes",
                                            "count.index"
                                        ]
                                    },
                                    "key_type": {
                                        "references": [
                                            "var.key_types",
                                            "count.index"
                                        ]
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.key_names",
                                            "count.index"
                                        ]
                                    },
                                    "rotation_policy": [
                                        {
                                            "automatic": [
                                                {
                                                    "time_before_expiry": {
                                                        "references": [
                                                            "var.time_before_expiry"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "expire_after": {
                                                "references": [
                                                    "var.expire_after"
                                                ]
                                            },
                                            "notify_before_expiry": {
                                                "references": [
                                                    "var.notify_before_expiry"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "key_vault_key",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_key"
                            },
                            {
                                "address": "azurerm_key_vault_secret.key_vault_secret",
                                "count_expression": {
                                    "references": [
                                        "var.secret_names"
                                    ]
                                },
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.secret_names",
                                            "count.index"
                                        ]
                                    },
                                    "value": {
                                        "references": [
                                            "var.secret_values",
                                            "count.index"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault_secret",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_secret"
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
                            "aks_secret_provider_id": {
                                "default": "null"
                            },
                            "certificate_permissions": {
                                "default": [],
                                "description": "Certificate permissions"
                            },
                            "enabled_for_disk_encryption": {
                                "default": true,
                                "description": "Notify before expiry"
                            },
                            "expire_after": {
                                "default": null,
                                "description": "Expire after"
                            },
                            "key_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault keys"
                            },
                            "key_opts": {
                                "default": [],
                                "description": "Key options"
                            },
                            "key_permissions": {
                                "default": [],
                                "description": "Key permissions"
                            },
                            "key_sizes": {
                                "default": [],
                                "description": "Sizes of the Azure Key Vault keys"
                            },
                            "key_types": {
                                "default": [],
                                "description": "Types of the Azure Key Vault keys"
                            },
                            "key_vault_name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure Key Vault"
                            },
                            "notify_before_expiry": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "object_id": {
                                "default": null,
                                "description": "Object ID"
                            },
                            "purge_protection_enabled": {
                                "default": false,
                                "description": "Notify before expiry"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "secret_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault secrets"
                            },
                            "secret_permissions": {
                                "default": [],
                                "description": "Secret permissions"
                            },
                            "secret_values": {
                                "default": [],
                                "description": "Values of the Azure Key Vault secrets"
                            },
                            "sku_name": {
                                "default": "Standard",
                                "description": "SKU name for the Azure Key Vault"
                            },
                            "soft_delete_retention_days": {
                                "default": 7,
                                "description": "Soft delete retention period in days"
                            },
                            "tenant_id": {
                                "default": null,
                                "description": "Tenant ID"
                            },
                            "time_before_expiry": {
                                "default": null,
                                "description": "Time before expiry"
                            },
                            "user_assigned_identity_principal_id": {
                                "default": "10.0.0.0/16",
                                "description": "The principal ID of the user-assigned identity."
                            }
                        }
                    },
                    "source": "./modules/keyvault"
                },
                "network": {
                    "expressions": {
                        "apgw_subnet_address_prefixes": {
                            "constant_value": [
                                "10.1.10.0/24"
                            ]
                        },
                        "apgw_vnet_address_space": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "cluster_subnet_address_prefixes": {
                            "constant_value": [
                                "10.2.10.0/24"
                            ]
                        },
                        "cluster_vnet_address_space": {
                            "constant_value": [
                                "10.2.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "apgw_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.apiGatewaySubnet.id",
                                        "azurerm_subnet.apiGatewaySubnet"
                                    ]
                                }
                            },
                            "apgw_vnet": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.apiVnet.name",
                                        "azurerm_virtual_network.apiVnet"
                                    ]
                                }
                            },
                            "api_vnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.apiVnet.id",
                                        "azurerm_virtual_network.apiVnet"
                                    ]
                                }
                            },
                            "cluster_subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.clusterSubnet.id",
                                        "azurerm_subnet.clusterSubnet"
                                    ]
                                }
                            },
                            "cluster_vnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.clusterVnet.id",
                                        "azurerm_virtual_network.clusterVnet"
                                    ]
                                }
                            },
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.publicIp.id",
                                        "azurerm_public_ip.publicIp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.publicIp",
                                "expressions": {
                                    "allocation_method": {
                                        "references": [
                                            "var.allocation_method"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.public_ip"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "publicIp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_subnet.apiGatewaySubnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.apgw_subnet_address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.apgw_subnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.name",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "apiGatewaySubnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.clusterSubnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.cluster_subnet_address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_subnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.name",
                                            "azurerm_virtual_network.clusterVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "clusterSubnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.apiVnet",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.apgw_vnet_address_space"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.apgw_vnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "apiVnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network.clusterVnet",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.cluster_vnet_address_space"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_vnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "clusterVnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.appgw_to_cluster_peering"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.id",
                                            "azurerm_virtual_network.clusterVnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.name",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "AppGWtoClusterVnetPeering",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_to_appgw_peering"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.apiVnet.id",
                                            "azurerm_virtual_network.apiVnet"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.clusterVnet.name",
                                            "azurerm_virtual_network.clusterVnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "ClustertoAppGWVnetPeering",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            }
                        ],
                        "variables": {
                            "allocation_method": {
                                "default": "Static",
                                "description": "Allocation method for the Public IP"
                            },
                            "apgw_subnet": {
                                "default": "apiGatewaySubnet",
                                "description": "Name of the API Gateway Subnet"
                            },
                            "apgw_subnet_address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Address prefixes for the API Gateway Subnet"
                            },
                            "apgw_vnet": {
                                "default": "ApiVnet",
                                "description": "Name of the API Virtual Network"
                            },
                            "apgw_vnet_address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Address space for the API Virtual Network"
                            },
                            "appgw_to_cluster_peering": {
                                "default": "AppGWtoClusterVnetPeering",
                                "description": "Name of the peering from AppGW to Cluster VNet"
                            },
                            "cluster_subnet": {
                                "default": "clusterSubnet",
                                "description": "Name of the Cluster Subnet"
                            },
                            "cluster_subnet_address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Address prefixes for the Cluster Subnet"
                            },
                            "cluster_to_appgw_peering": {
                                "default": "ClustertoAppGWVnetPeering",
                                "description": "Name of the peering from Cluster to AppGW VNet"
                            },
                            "cluster_vnet": {
                                "default": "myClusterVnet",
                                "description": "Name of the Cluster Virtual Network"
                            },
                            "cluster_vnet_address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Address space for the Cluster Virtual Network"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure resources"
                            },
                            "public_ip": {
                                "default": "myFirstPublicIp",
                                "description": "Name of the Azure Public IP"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "sku": {
                                "default": "Standard",
                                "description": "SKU for the Public IP"
                            }
                        }
                    },
                    "source": "./modules/network"
                },
                "resources": {
                    "expressions": {
                        "location": {
                            "constant_value": "East US"
                        },
                        "resource_group_name": {
                            "constant_value": "ApiK8sResourceGroup"
                        }
                    },
                    "module": {
                        "outputs": {
                            "location": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.argk8s.location",
                                        "azurerm_resource_group.argk8s"
                                    ]
                                }
                            },
                            "resource_group_name": {
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.argk8s.name",
                                        "azurerm_resource_group.argk8s"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_resource_group.argk8s",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "argk8s",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource group in which to create the Azure Container Registry."
                            },
                            "resource_group_name": {
                                "default": "ApiK8sResourceGroup",
                                "description": "The name of the resource group in which to create the Azure Container Registry."
                            }
                        }
                    },
                    "source": "./modules/resources"
                },
                "security_group": {
                    "expressions": {
                        "resource_group_location": {
                            "references": [
                                "module.resources.location",
                                "module.resources"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resources.resource_group_name",
                                "module.resources"
                            ]
                        },
                        "security_group_name": {
                            "constant_value": "SecurityGroupPLD"
                        }
                    },
                    "module": {
                        "outputs": {
                            "security_group_id": {
                                "description": "The ID of the security group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.storeGroup.id",
                                        "azurerm_network_security_group.storeGroup"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.storeGroup",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.resource_group_location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.security_group_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "security_rule": {
                                        "constant_value": [
                                            {
                                                "access": "Allow",
                                                "description": null,
                                                "destination_address_prefix": "*",
                                                "destination_address_prefixes": null,
                                                "destination_application_security_group_ids": null,
                                                "destination_port_range": "22",
                                                "destination_port_ranges": null,
                                                "direction": "Inbound",
                                                "name": "SSH",
                                                "priority": 1001,
                                                "protocol": "Tcp",
                                                "source_address_prefix": "*",
                                                "source_address_prefixes": null,
                                                "source_application_security_group_ids": null,
                                                "source_port_range": "*",
                                                "source_port_ranges": null
                                            }
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "storeGroup",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            }
                        ],
                        "variables": {
                            "resource_group_location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name for the resource group"
                            },
                            "security_group_name": {
                                "default": null,
                                "description": "Name for the security group"
                            }
                        }
                    },
                    "source": "./modules/security_group"
                }
            },
            "resources": [
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.appgw",
                    "resources": [
                        {
                            "address": "module.appgw.azurerm_application_gateway.myApplicationGateway",
                            "mode": "managed",
                            "name": "myApplicationGateway",
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
                                        "name": "ApiVnet-beap"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "ApiVnet-be-htst",
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
                                        "name": "ApiVnet-feip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "ApiVnet-fe_HTTP_port",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appGatewayIpConfig"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "ApiVnet-feip",
                                        "frontend_port_name": "ApiVnet-fe_HTTP_port",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "ApiVnet-httplstn",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "myPLDApplicationGateway",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "ApiVnet-beap",
                                        "backend_http_settings_name": "ApiVnet-be-htst",
                                        "http_listener_name": "ApiVnet-httplstn",
                                        "name": "ApiVnet-rqrt",
                                        "priority": 9,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "ApiK8sResourceGroup",
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
                        }
                    ]
                },
                {
                    "address": "module.cluster",
                    "resources": [
                        {
                            "address": "module.cluster.azurerm_kubernetes_cluster.aks_cluster",
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
                                        "name": "nodepool",
                                        "node_count": 1,
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
                                        "os_disk_size_gb": 40,
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
                                "dns_prefix": "MyClusterDNS",
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
                                "key_vault_secrets_provider": [
                                    {
                                        "secret_rotation_enabled": true,
                                        "secret_rotation_interval": "2m"
                                    }
                                ],
                                "linux_profile": [],
                                "local_account_disabled": null,
                                "location": "eastus",
                                "maintenance_window": [],
                                "maintenance_window_auto_upgrade": [],
                                "maintenance_window_node_os": [],
                                "microsoft_defender": [],
                                "monitor_metrics": [],
                                "name": "aks_cluster",
                                "node_os_channel_upgrade": null,
                                "oidc_issuer_enabled": null,
                                "oms_agent": [],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "ApiK8sResourceGroup",
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
                            "address": "module.cluster.local_file.kubeconfig",
                            "mode": "managed",
                            "name": "kubeconfig",
                            "provider_name": "registry.terraform.io/hashicorp/local",
                            "schema_version": 0,
                            "sensitive_values": {
                                "content": true,
                                "sensitive_content": true
                            },
                            "type": "local_file",
                            "values": {
                                "content_base64": null,
                                "directory_permission": "0777",
                                "file_permission": "0777",
                                "filename": "kubeconfig",
                                "sensitive_content": null,
                                "source": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.container_registry",
                    "resources": [
                        {
                            "address": "module.container_registry.azurerm_container_registry.container_registry",
                            "mode": "managed",
                            "name": "container_registry",
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
                                "location": "eastus",
                                "name": "myPLDFirstContainerRegistry",
                                "network_rule_bypass_option": "AzureServices",
                                "public_network_access_enabled": true,
                                "quarantine_policy_enabled": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "sku": "Standard",
                                "tags": null,
                                "timeouts": null,
                                "zone_redundancy_enabled": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.identity",
                    "resources": [
                        {
                            "address": "module.identity.azurerm_user_assigned_identity.ecommerce_identity",
                            "mode": "managed",
                            "name": "ecommerce_identity",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_user_assigned_identity",
                            "values": {
                                "location": "eastus",
                                "name": "myUserAssignedIdentity_Ecommerce",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.keyvault",
                    "resources": [
                        {
                            "address": "module.keyvault.azurerm_key_vault.key_vault",
                            "mode": "managed",
                            "name": "key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [
                                    {
                                        "certificate_permissions": [
                                            false
                                        ],
                                        "key_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ],
                                        "secret_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    },
                                    {
                                        "certificate_permissions": [
                                            false
                                        ],
                                        "key_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ],
                                        "secret_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
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
                                            "Get"
                                        ],
                                        "key_permissions": [
                                            "Get",
                                            "Create",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover",
                                            "SetRotationPolicy",
                                            "GetRotationPolicy"
                                        ],
                                        "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                        "secret_permissions": [
                                            "Get",
                                            "Set",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    },
                                    {
                                        "application_id": null,
                                        "certificate_permissions": [
                                            "Get"
                                        ],
                                        "key_permissions": [
                                            "Get",
                                            "Create",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover",
                                            "SetRotationPolicy",
                                            "GetRotationPolicy"
                                        ],
                                        "secret_permissions": [
                                            "Get",
                                            "Set",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    }
                                ],
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": true,
                                "enabled_for_template_deployment": null,
                                "location": "eastus",
                                "name": "myPLDKeyVault",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": false,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "key_vault_key",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "key_opts": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {}
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_key_vault_key",
                            "values": {
                                "expiration_date": null,
                                "key_opts": [
                                    "decrypt",
                                    "encrypt",
                                    "sign",
                                    "unwrapKey",
                                    "verify",
                                    "wrapKey"
                                ],
                                "key_size": 2048,
                                "key_type": "RSA",
                                "name": "myPLDKey1",
                                "not_before_date": null,
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {
                                                "time_after_creation": null,
                                                "time_before_expiry": "P30D"
                                            }
                                        ],
                                        "expire_after": "P90D",
                                        "notify_before_expiry": "P29D"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "key_vault_key",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "key_opts": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {}
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_key_vault_key",
                            "values": {
                                "expiration_date": null,
                                "key_opts": [
                                    "decrypt",
                                    "encrypt",
                                    "sign",
                                    "unwrapKey",
                                    "verify",
                                    "wrapKey"
                                ],
                                "key_size": 2048,
                                "key_type": "RSA",
                                "name": "myPLDKey2",
                                "not_before_date": null,
                                "rotation_policy": [
                                    {
                                        "automatic": [
                                            {
                                                "time_after_creation": null,
                                                "time_before_expiry": "P30D"
                                            }
                                        ],
                                        "expire_after": "P90D",
                                        "notify_before_expiry": "P29D"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "mySecret1",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "miprimeracontra1!"
                            }
                        },
                        {
                            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "mySecret2",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "misegundacontra2!"
                            }
                        }
                    ]
                },
                {
                    "address": "module.network",
                    "resources": [
                        {
                            "address": "module.network.azurerm_public_ip.publicIp",
                            "mode": "managed",
                            "name": "publicIp",
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
                                "location": "eastus",
                                "name": "myFirstPublicIp",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.apiGatewaySubnet",
                            "mode": "managed",
                            "name": "apiGatewaySubnet",
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
                                    "10.1.10.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "apiGatewaySubnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "ApiVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.clusterSubnet",
                            "mode": "managed",
                            "name": "clusterSubnet",
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
                                    "10.2.10.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "clusterSubnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "myClusterVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.apiVnet",
                            "mode": "managed",
                            "name": "apiVnet",
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
                                "location": "eastus",
                                "name": "ApiVnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.clusterVnet",
                            "mode": "managed",
                            "name": "clusterVnet",
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
                                    "10.2.0.0/16"
                                ],
                                "bgp_community": null,
                                "ddos_protection_plan": [],
                                "edge_zone": null,
                                "encryption": [],
                                "flow_timeout_in_minutes": null,
                                "location": "eastus",
                                "name": "myClusterVnet",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
                            "mode": "managed",
                            "name": "AppGWtoClusterVnetPeering",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "AppGWtoClusterVnetPeering",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "ApiVnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                            "mode": "managed",
                            "name": "ClustertoAppGWVnetPeering",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "ClustertoAppGWVnetPeering",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ApiK8sResourceGroup",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "myClusterVnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.resources",
                    "resources": [
                        {
                            "address": "module.resources.azurerm_resource_group.argk8s",
                            "mode": "managed",
                            "name": "argk8s",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "ApiK8sResourceGroup",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.security_group",
                    "resources": [
                        {
                            "address": "module.security_group.azurerm_network_security_group.storeGroup",
                            "mode": "managed",
                            "name": "storeGroup",
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
                                    }
                                ]
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "eastus",
                                "name": "SecurityGroupPLD",
                                "resource_group_name": "ApiK8sResourceGroup",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "22",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "SSH",
                                        "priority": 1001,
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
                        }
                    ]
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "root_module": {
                "child_modules": [
                    {
                        "address": "module.keyvault",
                        "resources": [
                            {
                                "address": "module.keyvault.data.azurerm_client_config.current",
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
                ],
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
            "resource": "module.network.azurerm_virtual_network.clusterVnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_public_ip.publicIp"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.security_group.azurerm_network_security_group.storeGroup"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.container_registry.azurerm_container_registry.container_registry"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.network.azurerm_virtual_network.clusterVnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.network.azurerm_virtual_network.apiVnet"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
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
            "resource": "module.network.azurerm_subnet.apiGatewaySubnet"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "kubelet_identity",
                0,
                "object_id"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.resources.azurerm_resource_group.argk8s"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.resources.azurerm_resource_group.argk8s"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_certificate"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0,
                "secret_identity",
                0,
                "object_id"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.keyvault.data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.clusterSubnet"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.keyvault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [],
            "resource": "module.keyvault.azurerm_key_vault_secret.key_vault_secret"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_virtual_network.apiVnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.ecommerce_identity"
        }
    ],
    "resource_changes": [
        {
            "address": "module.appgw.azurerm_application_gateway.myApplicationGateway",
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
                            "name": "ApiVnet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "ApiVnet-be-htst",
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
                            "name": "ApiVnet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "ApiVnet-fe_HTTP_port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appGatewayIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "ApiVnet-feip",
                            "frontend_port_name": "ApiVnet-fe_HTTP_port",
                            "host_name": "",
                            "host_names": [],
                            "name": "ApiVnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "myPLDApplicationGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "ApiVnet-beap",
                            "backend_http_settings_name": "ApiVnet-be-htst",
                            "http_listener_name": "ApiVnet-httplstn",
                            "name": "ApiVnet-rqrt",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.appgw",
            "name": "myApplicationGateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.cluster.azurerm_kubernetes_cluster.aks_cluster",
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
                            "name": "nodepool",
                            "node_count": 1,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_size_gb": 40,
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
                    "dns_prefix": "MyClusterDNS",
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
                    "key_vault_secrets_provider": [
                        {
                            "secret_rotation_enabled": true,
                            "secret_rotation_interval": "2m"
                        }
                    ],
                    "linux_profile": [],
                    "local_account_disabled": null,
                    "location": "eastus",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "aks_cluster",
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.cluster",
            "name": "aks_cluster",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.cluster.local_file.kubeconfig",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_base64": null,
                    "directory_permission": "0777",
                    "file_permission": "0777",
                    "filename": "kubeconfig",
                    "sensitive_content": null,
                    "source": null
                },
                "after_sensitive": {
                    "content": true,
                    "sensitive_content": true
                },
                "after_unknown": {
                    "content": true,
                    "content_base64sha256": true,
                    "content_base64sha512": true,
                    "content_md5": true,
                    "content_sha1": true,
                    "content_sha256": true,
                    "content_sha512": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.cluster",
            "name": "kubeconfig",
            "provider_name": "registry.terraform.io/hashicorp/local",
            "type": "local_file"
        },
        {
            "address": "module.container_registry.azurerm_container_registry.container_registry",
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
                    "location": "eastus",
                    "name": "myPLDFirstContainerRegistry",
                    "network_rule_bypass_option": "AzureServices",
                    "public_network_access_enabled": true,
                    "quarantine_policy_enabled": null,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "sku": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "zone_redundancy_enabled": false
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
            "module_address": "module.container_registry",
            "name": "container_registry",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_registry"
        },
        {
            "address": "module.identity.azurerm_user_assigned_identity.ecommerce_identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "myUserAssignedIdentity_Ecommerce",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.identity",
            "name": "ecommerce_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "module.keyvault.azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get"
                            ],
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ],
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "secret_permissions": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        },
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get"
                            ],
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ],
                            "secret_permissions": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "myPLDKeyVault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "ApiK8sResourceGroup",
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
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
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
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "object_id": true,
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
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
            "module_address": "module.keyvault",
            "name": "key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "expiration_date": null,
                    "key_opts": [
                        "decrypt",
                        "encrypt",
                        "sign",
                        "unwrapKey",
                        "verify",
                        "wrapKey"
                    ],
                    "key_size": 2048,
                    "key_type": "RSA",
                    "name": "myPLDKey1",
                    "not_before_date": null,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {
                                    "time_after_creation": null,
                                    "time_before_expiry": "P30D"
                                }
                            ],
                            "expire_after": "P90D",
                            "notify_before_expiry": "P29D"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "curve": true,
                    "e": true,
                    "id": true,
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "key_vault_id": true,
                    "n": true,
                    "public_key_openssh": true,
                    "public_key_pem": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ],
                    "version": true,
                    "versionless_id": true,
                    "x": true,
                    "y": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_key",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_key"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_key.key_vault_key[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "expiration_date": null,
                    "key_opts": [
                        "decrypt",
                        "encrypt",
                        "sign",
                        "unwrapKey",
                        "verify",
                        "wrapKey"
                    ],
                    "key_size": 2048,
                    "key_type": "RSA",
                    "name": "myPLDKey2",
                    "not_before_date": null,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {
                                    "time_after_creation": null,
                                    "time_before_expiry": "P30D"
                                }
                            ],
                            "expire_after": "P90D",
                            "notify_before_expiry": "P29D"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "curve": true,
                    "e": true,
                    "id": true,
                    "key_opts": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ],
                    "key_vault_id": true,
                    "n": true,
                    "public_key_openssh": true,
                    "public_key_pem": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "rotation_policy": [
                        {
                            "automatic": [
                                {}
                            ]
                        }
                    ],
                    "version": true,
                    "versionless_id": true,
                    "x": true,
                    "y": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_key",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_key"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "mySecret1",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "miprimeracontra1!"
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.keyvault.azurerm_key_vault_secret.key_vault_secret[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "mySecret2",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "misegundacontra2!"
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.keyvault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.network.azurerm_public_ip.publicIp",
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
                    "location": "eastus",
                    "name": "myFirstPublicIp",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "publicIp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.network.azurerm_subnet.apiGatewaySubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "apiGatewaySubnet",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "ApiVnet"
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
            "module_address": "module.network",
            "name": "apiGatewaySubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_subnet.clusterSubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.2.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "clusterSubnet",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "myClusterVnet"
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
            "module_address": "module.network",
            "name": "clusterSubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_virtual_network.apiVnet",
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
                    "location": "eastus",
                    "name": "ApiVnet",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "apiVnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.network.azurerm_virtual_network.clusterVnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.2.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
                    "name": "myClusterVnet",
                    "resource_group_name": "ApiK8sResourceGroup",
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
            "module_address": "module.network",
            "name": "clusterVnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.network.azurerm_virtual_network_peering.AppGWtoClusterVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "AppGWtoClusterVnetPeering",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "ApiVnet"
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
            "module_address": "module.network",
            "name": "AppGWtoClusterVnetPeering",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.network.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "ClustertoAppGWVnetPeering",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ApiK8sResourceGroup",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "myClusterVnet"
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
            "module_address": "module.network",
            "name": "ClustertoAppGWVnetPeering",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.resources.azurerm_resource_group.argk8s",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "ApiK8sResourceGroup",
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
            "module_address": "module.resources",
            "name": "argk8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.security_group.azurerm_network_security_group.storeGroup",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "SecurityGroupPLD",
                    "resource_group_name": "ApiK8sResourceGroup",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "22",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "SSH",
                            "priority": 1001,
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
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.security_group",
            "name": "storeGroup",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:00:21Z"
}