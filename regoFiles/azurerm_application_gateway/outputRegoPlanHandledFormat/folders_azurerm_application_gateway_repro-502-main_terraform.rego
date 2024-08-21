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
                    "address": "azurerm_application_gateway.repro_502",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "constant_value": [
                                        "10.10.1.250"
                                    ]
                                },
                                "name": {
                                    "constant_value": "aks-lb"
                                }
                            },
                            {
                                "ip_addresses": {
                                    "constant_value": [
                                        "10.10.1.7",
                                        "10.10.1.8",
                                        "10.10.1.9"
                                    ]
                                },
                                "name": {
                                    "constant_value": "aks-direct"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "host_name": {
                                    "constant_value": "test.contoso.com"
                                },
                                "name": {
                                    "constant_value": "aks-https-lb"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "aks-https"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                },
                                "trusted_root_certificate_names": {
                                    "constant_value": [
                                        "self-signed-root"
                                    ]
                                }
                            },
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "host_name": {
                                    "constant_value": "test.contoso.com"
                                },
                                "name": {
                                    "constant_value": "aks-http-lb"
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "constant_value": "aks-http"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                }
                            },
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "host_name": {
                                    "constant_value": "test.contoso.com"
                                },
                                "name": {
                                    "constant_value": "aks-https-direct"
                                },
                                "port": {
                                    "constant_value": 31291
                                },
                                "probe_name": {
                                    "constant_value": "aks-https"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 60
                                },
                                "trusted_root_certificate_names": {
                                    "constant_value": [
                                        "self-signed-root"
                                    ]
                                }
                            },
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "host_name": {
                                    "constant_value": "test.contoso.com"
                                },
                                "name": {
                                    "constant_value": "aks-http-direct"
                                },
                                "port": {
                                    "constant_value": 31701
                                },
                                "probe_name": {
                                    "constant_value": "aks-http"
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
                                    "constant_value": "public"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.agw.id",
                                        "azurerm_public_ip.agw"
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
                                    "constant_value": "my-gateway-ip-configuration"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.ingress.id",
                                        "azurerm_subnet.ingress"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "public"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http"
                                },
                                "host_name": {
                                    "constant_value": "https-backend-lb.contoso.com"
                                },
                                "name": {
                                    "constant_value": "https-backend-contoso-com-lb"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "public"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http"
                                },
                                "host_name": {
                                    "constant_value": "http-backend-lb.contoso.com"
                                },
                                "name": {
                                    "constant_value": "http-backend-contoso-com-lb"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "public"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http"
                                },
                                "host_name": {
                                    "constant_value": "https-backend-direct.contoso.com"
                                },
                                "name": {
                                    "constant_value": "https-backend-contoso-com-direct"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "public"
                                },
                                "frontend_port_name": {
                                    "constant_value": "http"
                                },
                                "host_name": {
                                    "constant_value": "http-backend-direct.contoso.com"
                                },
                                "name": {
                                    "constant_value": "http-backend-contoso-com-direct"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "agw-repro-502"
                        },
                        "probe": [
                            {
                                "interval": {
                                    "constant_value": 10
                                },
                                "name": {
                                    "constant_value": "aks-https"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "pick_host_name_from_backend_http_settings": {
                                    "constant_value": true
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "timeout": {
                                    "constant_value": 30
                                },
                                "unhealthy_threshold": {
                                    "constant_value": 3
                                }
                            },
                            {
                                "interval": {
                                    "constant_value": 10
                                },
                                "name": {
                                    "constant_value": "aks-http"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "pick_host_name_from_backend_http_settings": {
                                    "constant_value": true
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "timeout": {
                                    "constant_value": 30
                                },
                                "unhealthy_threshold": {
                                    "constant_value": 3
                                }
                            }
                        ],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "aks-lb"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "aks-https-lb"
                                },
                                "http_listener_name": {
                                    "constant_value": "https-backend-contoso-com-lb"
                                },
                                "name": {
                                    "constant_value": "https-backend-contoso-com-lb"
                                },
                                "priority": {
                                    "constant_value": 1000
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "aks-lb"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "aks-http-lb"
                                },
                                "http_listener_name": {
                                    "constant_value": "http-backend-contoso-com-lb"
                                },
                                "name": {
                                    "constant_value": "http-backend-contoso-com-lb"
                                },
                                "priority": {
                                    "constant_value": 1010
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "aks-direct"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "aks-https-direct"
                                },
                                "http_listener_name": {
                                    "constant_value": "https-backend-contoso-com-direct"
                                },
                                "name": {
                                    "constant_value": "https-backend-contoso-com-direct"
                                },
                                "priority": {
                                    "constant_value": 1020
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "aks-direct"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "aks-http-direct"
                                },
                                "http_listener_name": {
                                    "constant_value": "http-backend-contoso-com-direct"
                                },
                                "name": {
                                    "constant_value": "http-backend-contoso-com-direct"
                                },
                                "priority": {
                                    "constant_value": 1030
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 10
                                },
                                "name": {
                                    "constant_value": "Standard_v2"
                                },
                                "tier": {
                                    "constant_value": "Standard_v2"
                                }
                            }
                        ],
                        "trusted_root_certificate": [
                            {
                                "data": {
                                    "constant_value": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tDQpNSUlCdHpDQ0FWMENGSEUvNk5mME92L3QxV2JCQlBTOWp2VlBJV0pOTUFvR0NDcUdTTTQ5QkFNQ01GNHhDekFKDQpCZ05WQkFZVEFrNU1NUTR3REFZRFZRUUlEQVZCZW5WeVpURVNNQkFHQTFVRUJ3d0pRVzF6ZEdWeVpHRnRNUkV3DQpEd1lEVlFRS0RBaHViR2xuYUhSbGJqRVlNQllHQTFVRUF3d1BjMlZzWm5OcFoyNWxaQzF5YjI5ME1CNFhEVEl6DQpNRFl5TWpFM05UQXpNMW9YRFRJME1EWXlNVEUzTlRBek0xb3dYakVMTUFrR0ExVUVCaE1DVGt3eERqQU1CZ05WDQpCQWdNQlVGNmRYSmxNUkl3RUFZRFZRUUhEQWxCYlhOMFpYSmtZVzB4RVRBUEJnTlZCQW9NQ0c1c2FXZG9kR1Z1DQpNUmd3RmdZRFZRUUREQTl6Wld4bWMybG5ibVZrTFhKdmIzUXdXVEFUQmdjcWhrak9QUUlCQmdncWhrak9QUU1CDQpCd05DQUFUTzZvVVpsRjBwRWdEME5nQ1Bsc1ptUjk2OVMrcHBzRlF1bVZFK1NYK1JkVDMwZ1BVRjFyRTB1WjZ2DQpLMWJRREhSSVV3bzNnZzJZTnZKb3BvbFVmL3VLTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFDbDdlN1o0bHplDQoxTGowMS9zU1I2K0lCZHVESUpNTkQxamdsTTYvdDc0NXh3SWdZSHl3SjArNmw2SHgvT2tOTnlYZmxNalBvaWk0DQpoNHczNzQxNFZqMG56Qk09DQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tDQo="
                                },
                                "name": {
                                    "constant_value": "self-signed-root"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_kubernetes_cluster.repro_502",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "default"
                                },
                                "node_count": {
                                    "constant_value": 3
                                },
                                "only_critical_addons_enabled": {
                                    "constant_value": true
                                },
                                "os_disk_type": {
                                    "references": [
                                        "var.vm_disk_type"
                                    ]
                                },
                                "temporary_name_for_rotation": {
                                    "constant_value": "defaulttmp"
                                },
                                "vm_size": {
                                    "references": [
                                        "var.vm_sku"
                                    ]
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.aks.id",
                                        "azurerm_subnet.aks"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "constant_value": "repro-502"
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
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "aks-repro-502"
                        },
                        "network_profile": [
                            {
                                "network_plugin": {
                                    "references": [
                                        "var.aks_network_plugin"
                                    ]
                                },
                                "network_plugin_mode": {
                                    "references": [
                                        "var.aks_network_plugin"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_kubernetes_cluster_node_pool.user",
                    "expressions": {
                        "kubernetes_cluster_id": {
                            "references": [
                                "azurerm_kubernetes_cluster.repro_502.id",
                                "azurerm_kubernetes_cluster.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "user"
                        },
                        "node_count": {
                            "constant_value": 3
                        },
                        "os_disk_type": {
                            "references": [
                                "var.vm_disk_type"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "var.vm_sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "user",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_kubernetes_cluster_node_pool"
                },
                {
                    "address": "azurerm_log_analytics_workspace.repro_502",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "la-repro-502"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
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
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "azurerm_monitor_diagnostic_setting.repro_502",
                    "expressions": {
                        "enabled_log": [
                            {
                                "category": {
                                    "constant_value": "ApplicationGatewayAccessLog"
                                },
                                "retention_policy": [
                                    {
                                        "enabled": {
                                            "constant_value": false
                                        }
                                    }
                                ]
                            },
                            {
                                "category": {
                                    "constant_value": "ApplicationGatewayPerformanceLog"
                                },
                                "retention_policy": [
                                    {
                                        "enabled": {
                                            "constant_value": false
                                        }
                                    }
                                ]
                            }
                        ],
                        "log_analytics_workspace_id": {
                            "references": [
                                "azurerm_log_analytics_workspace.repro_502.id",
                                "azurerm_log_analytics_workspace.repro_502"
                            ]
                        },
                        "metric": [
                            {
                                "category": {
                                    "constant_value": "AllMetrics"
                                },
                                "retention_policy": [
                                    {
                                        "enabled": {
                                            "constant_value": false
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "diag-la"
                        },
                        "target_resource_id": {
                            "references": [
                                "azurerm_application_gateway.repro_502.id",
                                "azurerm_application_gateway.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_setting"
                },
                {
                    "address": "azurerm_network_watcher.repro_502",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "NetworkWatcher_WestEurope"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_watcher"
                },
                {
                    "address": "azurerm_public_ip.agw",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "pip-agw"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "agw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.repro_502",
                    "expressions": {
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "repro-502"
                        }
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.aks_on_subnet",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_kubernetes_cluster.repro_502.identity[0].principal_id",
                                "azurerm_kubernetes_cluster.repro_502.identity[0]",
                                "azurerm_kubernetes_cluster.repro_502.identity",
                                "azurerm_kubernetes_cluster.repro_502"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_virtual_network.repro_502.id",
                                "azurerm_virtual_network.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_on_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.aks",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.10.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AksSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.repro_502.name",
                                "azurerm_virtual_network.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.ingress",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.10.0.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "IngressSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.repro_502.name",
                                "azurerm_virtual_network.repro_502"
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
                    "address": "azurerm_virtual_network.repro_502",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.10.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.repro_502.location",
                                "azurerm_resource_group.repro_502"
                            ]
                        },
                        "name": {
                            "constant_value": "vnet-repro-502"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.repro_502.name",
                                "azurerm_resource_group.repro_502"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "aks_network_plugin": {
                    "default": "azure",
                    "description": "AKS network plugin (kubenet/azure)"
                },
                "vm_disk_type": {
                    "default": "Managed",
                    "description": "disk type for aks cluster vm's (Managed/Ephemeral)"
                },
                "vm_sku": {
                    "default": "Standard_D4s_v5",
                    "description": "sku for aks cluster vm's"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "ip_addresses": [
                                    false
                                ]
                            },
                            {
                                "fqdns": [],
                                "ip_addresses": [
                                    false,
                                    false,
                                    false
                                ]
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": [
                                    false
                                ]
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": [
                                    false
                                ]
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
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
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
                            },
                            {
                                "match": []
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {},
                            {},
                            {},
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
                        "trusted_root_certificate": [
                            {
                                "data": true
                            }
                        ],
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
                                "ip_addresses": [
                                    "10.10.1.250"
                                ],
                                "name": "aks-lb"
                            },
                            {
                                "fqdns": [],
                                "ip_addresses": [
                                    "10.10.1.7",
                                    "10.10.1.8",
                                    "10.10.1.9"
                                ],
                                "name": "aks-direct"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "test.contoso.com",
                                "name": "aks-http-direct",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 31701,
                                "probe_name": "aks-http",
                                "protocol": "Http",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "test.contoso.com",
                                "name": "aks-http-lb",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "aks-http",
                                "protocol": "Http",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "test.contoso.com",
                                "name": "aks-https-direct",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 31291,
                                "probe_name": "aks-https",
                                "protocol": "Https",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": [
                                    "self-signed-root"
                                ]
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "test.contoso.com",
                                "name": "aks-https-lb",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "aks-https",
                                "protocol": "Https",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": [
                                    "self-signed-root"
                                ]
                            }
                        ],
                        "custom_error_configuration": [],
                        "enable_http2": null,
                        "fips_enabled": null,
                        "firewall_policy_id": null,
                        "force_firewall_policy_association": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "public",
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
                                "name": "my-gateway-ip-configuration"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "public",
                                "frontend_port_name": "http",
                                "host_name": "http-backend-direct.contoso.com",
                                "host_names": [],
                                "name": "http-backend-contoso-com-direct",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "public",
                                "frontend_port_name": "http",
                                "host_name": "http-backend-lb.contoso.com",
                                "host_names": [],
                                "name": "http-backend-contoso-com-lb",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "public",
                                "frontend_port_name": "http",
                                "host_name": "https-backend-direct.contoso.com",
                                "host_names": [],
                                "name": "https-backend-contoso-com-direct",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "public",
                                "frontend_port_name": "http",
                                "host_name": "https-backend-lb.contoso.com",
                                "host_names": [],
                                "name": "https-backend-contoso-com-lb",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "agw-repro-502",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "",
                                "interval": 10,
                                "match": [],
                                "minimum_servers": 0,
                                "name": "aks-http",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": true,
                                "port": null,
                                "protocol": "Http",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "",
                                "interval": 10,
                                "match": [],
                                "minimum_servers": 0,
                                "name": "aks-https",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": true,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "aks-direct",
                                "backend_http_settings_name": "aks-http-direct",
                                "http_listener_name": "http-backend-contoso-com-direct",
                                "name": "http-backend-contoso-com-direct",
                                "priority": 1030,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "aks-direct",
                                "backend_http_settings_name": "aks-https-direct",
                                "http_listener_name": "https-backend-contoso-com-direct",
                                "name": "https-backend-contoso-com-direct",
                                "priority": 1020,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "aks-lb",
                                "backend_http_settings_name": "aks-http-lb",
                                "http_listener_name": "http-backend-contoso-com-lb",
                                "name": "http-backend-contoso-com-lb",
                                "priority": 1010,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "aks-lb",
                                "backend_http_settings_name": "aks-https-lb",
                                "http_listener_name": "https-backend-contoso-com-lb",
                                "name": "https-backend-contoso-com-lb",
                                "priority": 1000,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "repro-502",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 10,
                                "name": "Standard_v2",
                                "tier": "Standard_v2"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_profile": [],
                        "tags": null,
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [
                            {
                                "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tDQpNSUlCdHpDQ0FWMENGSEUvNk5mME92L3QxV2JCQlBTOWp2VlBJV0pOTUFvR0NDcUdTTTQ5QkFNQ01GNHhDekFKDQpCZ05WQkFZVEFrNU1NUTR3REFZRFZRUUlEQVZCZW5WeVpURVNNQkFHQTFVRUJ3d0pRVzF6ZEdWeVpHRnRNUkV3DQpEd1lEVlFRS0RBaHViR2xuYUhSbGJqRVlNQllHQTFVRUF3d1BjMlZzWm5OcFoyNWxaQzF5YjI5ME1CNFhEVEl6DQpNRFl5TWpFM05UQXpNMW9YRFRJME1EWXlNVEUzTlRBek0xb3dYakVMTUFrR0ExVUVCaE1DVGt3eERqQU1CZ05WDQpCQWdNQlVGNmRYSmxNUkl3RUFZRFZRUUhEQWxCYlhOMFpYSmtZVzB4RVRBUEJnTlZCQW9NQ0c1c2FXZG9kR1Z1DQpNUmd3RmdZRFZRUUREQTl6Wld4bWMybG5ibVZrTFhKdmIzUXdXVEFUQmdjcWhrak9QUUlCQmdncWhrak9QUU1CDQpCd05DQUFUTzZvVVpsRjBwRWdEME5nQ1Bsc1ptUjk2OVMrcHBzRlF1bVZFK1NYK1JkVDMwZ1BVRjFyRTB1WjZ2DQpLMWJRREhSSVV3bzNnZzJZTnZKb3BvbFVmL3VLTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFDbDdlN1o0bHplDQoxTGowMS9zU1I2K0lCZHVESUpNTkQxamdsTTYvdDc0NXh3SWdZSHl3SjArNmw2SHgvT2tOTnlYZmxNalBvaWk0DQpoNHczNzQxNFZqMG56Qk09DQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tDQo=",
                                "key_vault_secret_id": null,
                                "name": "self-signed-root"
                            }
                        ],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
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
                                "node_count": 3,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": true,
                                "os_disk_type": "Managed",
                                "pod_subnet_id": null,
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": "defaulttmp",
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [],
                                "vm_size": "Standard_D4s_v5",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "repro-502",
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
                        "location": "westeurope",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "aks-repro-502",
                        "network_profile": [
                            {
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": "overlay",
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
                        "resource_group_name": "repro-502",
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
                    "address": "azurerm_kubernetes_cluster_node_pool.user",
                    "mode": "managed",
                    "name": "user",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "kubelet_config": [],
                        "linux_os_config": [],
                        "node_labels": {},
                        "node_network_profile": [],
                        "upgrade_settings": [],
                        "windows_profile": []
                    },
                    "type": "azurerm_kubernetes_cluster_node_pool",
                    "values": {
                        "capacity_reservation_group_id": null,
                        "custom_ca_trust_enabled": null,
                        "enable_auto_scaling": null,
                        "enable_host_encryption": null,
                        "enable_node_public_ip": null,
                        "eviction_policy": null,
                        "fips_enabled": null,
                        "gpu_instance": null,
                        "host_group_id": null,
                        "kubelet_config": [],
                        "linux_os_config": [],
                        "max_count": null,
                        "message_of_the_day": null,
                        "min_count": null,
                        "mode": "User",
                        "name": "user",
                        "node_count": 3,
                        "node_network_profile": [],
                        "node_public_ip_prefix_id": null,
                        "node_taints": null,
                        "os_disk_type": "Managed",
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
                        "upgrade_settings": [],
                        "vm_size": "Standard_D4s_v5",
                        "vnet_subnet_id": null,
                        "windows_profile": [],
                        "workload_runtime": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_log_analytics_workspace.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
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
                        "name": "la-repro-502",
                        "reservation_capacity_in_gb_per_day": null,
                        "resource_group_name": "repro-502",
                        "retention_in_days": 30,
                        "sku": "PerGB2018",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_diagnostic_setting.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "enabled_log": [
                            {
                                "retention_policy": [
                                    {}
                                ]
                            },
                            {
                                "retention_policy": [
                                    {}
                                ]
                            }
                        ],
                        "log": [],
                        "metric": [
                            {
                                "retention_policy": [
                                    {}
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_monitor_diagnostic_setting",
                    "values": {
                        "enabled_log": [
                            {
                                "category": "ApplicationGatewayAccessLog",
                                "category_group": "",
                                "retention_policy": [
                                    {
                                        "days": null,
                                        "enabled": false
                                    }
                                ]
                            },
                            {
                                "category": "ApplicationGatewayPerformanceLog",
                                "category_group": "",
                                "retention_policy": [
                                    {
                                        "days": null,
                                        "enabled": false
                                    }
                                ]
                            }
                        ],
                        "eventhub_authorization_rule_id": null,
                        "eventhub_name": null,
                        "metric": [
                            {
                                "category": "AllMetrics",
                                "enabled": true,
                                "retention_policy": [
                                    {
                                        "days": null,
                                        "enabled": false
                                    }
                                ]
                            }
                        ],
                        "name": "diag-la",
                        "partner_solution_id": null,
                        "storage_account_id": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_watcher.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_watcher",
                    "values": {
                        "location": "westeurope",
                        "name": "NetworkWatcher_WestEurope",
                        "resource_group_name": "repro-502",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.agw",
                    "mode": "managed",
                    "name": "agw",
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
                        "name": "pip-agw",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "repro-502",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "repro-502",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.aks_on_subnet",
                    "mode": "managed",
                    "name": "aks_on_subnet",
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
                    "address": "azurerm_subnet.aks",
                    "mode": "managed",
                    "name": "aks",
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
                            "10.10.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AksSubnet",
                        "resource_group_name": "repro-502",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-repro-502"
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
                            "10.10.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "IngressSubnet",
                        "resource_group_name": "repro-502",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-repro-502"
                    }
                },
                {
                    "address": "azurerm_virtual_network.repro_502",
                    "mode": "managed",
                    "name": "repro_502",
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
                            "10.10.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "vnet-repro-502",
                        "resource_group_name": "repro-502",
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
                "id"
            ],
            "resource": "azurerm_subnet.aks"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_kubernetes_cluster.repro_502"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_log_analytics_workspace.repro_502"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.repro_502"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.repro_502"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.repro_502"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.agw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.repro_502"
        },
        {
            "attribute": [
                "identity",
                0,
                "principal_id"
            ],
            "resource": "azurerm_kubernetes_cluster.repro_502"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.repro_502"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.ingress"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.repro_502",
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
                            "ip_addresses": [
                                "10.10.1.250"
                            ],
                            "name": "aks-lb"
                        },
                        {
                            "fqdns": [],
                            "ip_addresses": [
                                "10.10.1.7",
                                "10.10.1.8",
                                "10.10.1.9"
                            ],
                            "name": "aks-direct"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "test.contoso.com",
                            "name": "aks-http-direct",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 31701,
                            "probe_name": "aks-http",
                            "protocol": "Http",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "test.contoso.com",
                            "name": "aks-http-lb",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "aks-http",
                            "protocol": "Http",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "test.contoso.com",
                            "name": "aks-https-direct",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 31291,
                            "probe_name": "aks-https",
                            "protocol": "Https",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": [
                                "self-signed-root"
                            ]
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "test.contoso.com",
                            "name": "aks-https-lb",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "aks-https",
                            "protocol": "Https",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": [
                                "self-signed-root"
                            ]
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": null,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "public",
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
                            "name": "my-gateway-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "public",
                            "frontend_port_name": "http",
                            "host_name": "http-backend-direct.contoso.com",
                            "host_names": [],
                            "name": "http-backend-contoso-com-direct",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "public",
                            "frontend_port_name": "http",
                            "host_name": "http-backend-lb.contoso.com",
                            "host_names": [],
                            "name": "http-backend-contoso-com-lb",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "public",
                            "frontend_port_name": "http",
                            "host_name": "https-backend-direct.contoso.com",
                            "host_names": [],
                            "name": "https-backend-contoso-com-direct",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "public",
                            "frontend_port_name": "http",
                            "host_name": "https-backend-lb.contoso.com",
                            "host_names": [],
                            "name": "https-backend-contoso-com-lb",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "agw-repro-502",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "",
                            "interval": 10,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "aks-http",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": true,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "",
                            "interval": 10,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "aks-https",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": true,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "aks-direct",
                            "backend_http_settings_name": "aks-http-direct",
                            "http_listener_name": "http-backend-contoso-com-direct",
                            "name": "http-backend-contoso-com-direct",
                            "priority": 1030,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "aks-direct",
                            "backend_http_settings_name": "aks-https-direct",
                            "http_listener_name": "https-backend-contoso-com-direct",
                            "name": "https-backend-contoso-com-direct",
                            "priority": 1020,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "aks-lb",
                            "backend_http_settings_name": "aks-http-lb",
                            "http_listener_name": "http-backend-contoso-com-lb",
                            "name": "http-backend-contoso-com-lb",
                            "priority": 1010,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "aks-lb",
                            "backend_http_settings_name": "aks-https-lb",
                            "http_listener_name": "https-backend-contoso-com-lb",
                            "name": "https-backend-contoso-com-lb",
                            "priority": 1000,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "repro-502",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 10,
                            "name": "Standard_v2",
                            "tier": "Standard_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [
                        {
                            "data": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tDQpNSUlCdHpDQ0FWMENGSEUvNk5mME92L3QxV2JCQlBTOWp2VlBJV0pOTUFvR0NDcUdTTTQ5QkFNQ01GNHhDekFKDQpCZ05WQkFZVEFrNU1NUTR3REFZRFZRUUlEQVZCZW5WeVpURVNNQkFHQTFVRUJ3d0pRVzF6ZEdWeVpHRnRNUkV3DQpEd1lEVlFRS0RBaHViR2xuYUhSbGJqRVlNQllHQTFVRUF3d1BjMlZzWm5OcFoyNWxaQzF5YjI5ME1CNFhEVEl6DQpNRFl5TWpFM05UQXpNMW9YRFRJME1EWXlNVEUzTlRBek0xb3dYakVMTUFrR0ExVUVCaE1DVGt3eERqQU1CZ05WDQpCQWdNQlVGNmRYSmxNUkl3RUFZRFZRUUhEQWxCYlhOMFpYSmtZVzB4RVRBUEJnTlZCQW9NQ0c1c2FXZG9kR1Z1DQpNUmd3RmdZRFZRUUREQTl6Wld4bWMybG5ibVZrTFhKdmIzUXdXVEFUQmdjcWhrak9QUUlCQmdncWhrak9QUU1CDQpCd05DQUFUTzZvVVpsRjBwRWdEME5nQ1Bsc1ptUjk2OVMrcHBzRlF1bVZFK1NYK1JkVDMwZ1BVRjFyRTB1WjZ2DQpLMWJRREhSSVV3bzNnZzJZTnZKb3BvbFVmL3VLTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFDbDdlN1o0bHplDQoxTGowMS9zU1I2K0lCZHVESUpNTkQxamdsTTYvdDc0NXh3SWdZSHl3SjArNmw2SHgvT2tOTnlYZmxNalBvaWk0DQpoNHczNzQxNFZqMG56Qk09DQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tDQo=",
                            "key_vault_secret_id": null,
                            "name": "self-signed-root"
                        }
                    ],
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
                            "ip_addresses": [
                                false
                            ]
                        },
                        {
                            "fqdns": [],
                            "ip_addresses": [
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": [
                                false
                            ]
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": [
                                false
                            ]
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
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
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
                        },
                        {
                            "match": []
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {},
                        {},
                        {},
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
                    "trusted_root_certificate": [
                        {
                            "data": true
                        }
                    ],
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
                            "ip_addresses": [
                                false
                            ]
                        },
                        {
                            "fqdns": [],
                            "id": true,
                            "ip_addresses": [
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": [
                                false
                            ]
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": [
                                false
                            ]
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
                        },
                        {
                            "custom_error_configuration": [],
                            "frontend_ip_configuration_id": true,
                            "frontend_port_id": true,
                            "host_names": [],
                            "id": true,
                            "ssl_certificate_id": true,
                            "ssl_profile_id": true
                        },
                        {
                            "custom_error_configuration": [],
                            "frontend_ip_configuration_id": true,
                            "frontend_port_id": true,
                            "host_names": [],
                            "id": true,
                            "ssl_certificate_id": true,
                            "ssl_profile_id": true
                        },
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
                        },
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
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
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
                    "trusted_root_certificate": [
                        {
                            "id": true
                        }
                    ],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_kubernetes_cluster.repro_502",
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
                            "node_count": 3,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": true,
                            "os_disk_type": "Managed",
                            "pod_subnet_id": null,
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": "defaulttmp",
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [],
                            "vm_size": "Standard_D4s_v5",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "repro-502",
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
                    "location": "westeurope",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "aks-repro-502",
                    "network_profile": [
                        {
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": "overlay",
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
                    "resource_group_name": "repro-502",
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
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_kubernetes_cluster_node_pool.user",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "capacity_reservation_group_id": null,
                    "custom_ca_trust_enabled": null,
                    "enable_auto_scaling": null,
                    "enable_host_encryption": null,
                    "enable_node_public_ip": null,
                    "eviction_policy": null,
                    "fips_enabled": null,
                    "gpu_instance": null,
                    "host_group_id": null,
                    "kubelet_config": [],
                    "linux_os_config": [],
                    "max_count": null,
                    "message_of_the_day": null,
                    "min_count": null,
                    "mode": "User",
                    "name": "user",
                    "node_count": 3,
                    "node_network_profile": [],
                    "node_public_ip_prefix_id": null,
                    "node_taints": null,
                    "os_disk_type": "Managed",
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
                    "upgrade_settings": [],
                    "vm_size": "Standard_D4s_v5",
                    "vnet_subnet_id": null,
                    "windows_profile": [],
                    "workload_runtime": null,
                    "zones": null
                },
                "after_sensitive": {
                    "kubelet_config": [],
                    "linux_os_config": [],
                    "node_labels": {},
                    "node_network_profile": [],
                    "upgrade_settings": [],
                    "windows_profile": []
                },
                "after_unknown": {
                    "id": true,
                    "kubelet_config": [],
                    "kubelet_disk_type": true,
                    "kubernetes_cluster_id": true,
                    "linux_os_config": [],
                    "max_pods": true,
                    "node_labels": true,
                    "node_network_profile": [],
                    "orchestrator_version": true,
                    "os_disk_size_gb": true,
                    "os_sku": true,
                    "upgrade_settings": [],
                    "windows_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "user",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster_node_pool"
        },
        {
            "address": "azurerm_log_analytics_workspace.repro_502",
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
                    "name": "la-repro-502",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "repro-502",
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
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "azurerm_monitor_diagnostic_setting.repro_502",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enabled_log": [
                        {
                            "category": "ApplicationGatewayAccessLog",
                            "category_group": "",
                            "retention_policy": [
                                {
                                    "days": null,
                                    "enabled": false
                                }
                            ]
                        },
                        {
                            "category": "ApplicationGatewayPerformanceLog",
                            "category_group": "",
                            "retention_policy": [
                                {
                                    "days": null,
                                    "enabled": false
                                }
                            ]
                        }
                    ],
                    "eventhub_authorization_rule_id": null,
                    "eventhub_name": null,
                    "metric": [
                        {
                            "category": "AllMetrics",
                            "enabled": true,
                            "retention_policy": [
                                {
                                    "days": null,
                                    "enabled": false
                                }
                            ]
                        }
                    ],
                    "name": "diag-la",
                    "partner_solution_id": null,
                    "storage_account_id": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "enabled_log": [
                        {
                            "retention_policy": [
                                {}
                            ]
                        },
                        {
                            "retention_policy": [
                                {}
                            ]
                        }
                    ],
                    "log": [],
                    "metric": [
                        {
                            "retention_policy": [
                                {}
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "enabled_log": [
                        {
                            "retention_policy": [
                                {}
                            ]
                        },
                        {
                            "retention_policy": [
                                {}
                            ]
                        }
                    ],
                    "id": true,
                    "log": true,
                    "log_analytics_destination_type": true,
                    "log_analytics_workspace_id": true,
                    "metric": [
                        {
                            "retention_policy": [
                                {}
                            ]
                        }
                    ],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_setting"
        },
        {
            "address": "azurerm_network_watcher.repro_502",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "name": "NetworkWatcher_WestEurope",
                    "resource_group_name": "repro-502",
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
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_watcher"
        },
        {
            "address": "azurerm_public_ip.agw",
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
                    "name": "pip-agw",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "repro-502",
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
            "name": "agw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.repro_502",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "repro-502",
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
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.aks_on_subnet",
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
            "name": "aks_on_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AksSubnet",
                    "resource_group_name": "repro-502",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-repro-502"
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
            "name": "aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.ingress",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "IngressSubnet",
                    "resource_group_name": "repro-502",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-repro-502"
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
            "address": "azurerm_virtual_network.repro_502",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.10.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "westeurope",
                    "name": "vnet-repro-502",
                    "resource_group_name": "repro-502",
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
            "name": "repro_502",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:22:36Z",
    "variables": {
        "aks_network_plugin": {
            "value": "azure"
        },
        "vm_disk_type": {
            "value": "Managed"
        },
        "vm_sku": {
            "value": "Standard_D4s_v5"
        }
    }
}