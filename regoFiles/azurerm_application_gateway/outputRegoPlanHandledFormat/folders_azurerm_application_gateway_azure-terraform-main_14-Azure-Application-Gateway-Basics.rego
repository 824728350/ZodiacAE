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
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            }
        },
        "root_module": {
            "outputs": {
                "virtual_network_id": {
                    "description": "Virtual Network ID",
                    "expression": {
                        "references": [
                            "azurerm_virtual_network.vnet.id",
                            "azurerm_virtual_network.vnet"
                        ]
                    }
                },
                "virtual_network_name": {
                    "description": "Virtual Network Name",
                    "expression": {
                        "references": [
                            "azurerm_virtual_network.vnet.name",
                            "azurerm_virtual_network.vnet"
                        ]
                    }
                },
                "web_ag_id": {
                    "description": "Azure Application Gateway ID",
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.web_ag.id",
                            "azurerm_application_gateway.web_ag"
                        ]
                    }
                },
                "web_ag_public_ip_1": {
                    "description": "Azure Application Gateway Public IP 1",
                    "expression": {
                        "references": [
                            "azurerm_public_ip.web_ag_publicip.ip_address",
                            "azurerm_public_ip.web_ag_publicip"
                        ]
                    }
                },
                "web_subnet_id": {
                    "description": "WebTier Subnet ID",
                    "expression": {
                        "references": [
                            "azurerm_subnet.websubnet.id",
                            "azurerm_subnet.websubnet"
                        ]
                    }
                },
                "web_subnet_name": {
                    "description": "WebTier Subnet Name",
                    "expression": {
                        "references": [
                            "azurerm_subnet.websubnet.name",
                            "azurerm_subnet.websubnet"
                        ]
                    }
                },
                "web_subnet_nsg_id": {
                    "description": "WebTier Subnet NSG ID",
                    "expression": {
                        "references": [
                            "azurerm_network_security_group.web_subnet_nsg.id",
                            "azurerm_network_security_group.web_subnet_nsg"
                        ]
                    }
                },
                "web_subnet_nsg_name": {
                    "description": "WebTier Subnet NSG Name",
                    "expression": {
                        "references": [
                            "azurerm_network_security_group.web_subnet_nsg.name",
                            "azurerm_network_security_group.web_subnet_nsg"
                        ]
                    }
                },
                "web_vmss_id": {
                    "description": "Web Virtual Machine Scale Set ID",
                    "expression": {
                        "references": [
                            "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                            "azurerm_linux_virtual_machine_scale_set.web_vmss"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.web_ag",
                    "expressions": {
                        "autoscale_configuration": [
                            {
                                "max_capacity": {
                                    "constant_value": 10
                                },
                                "min_capacity": {
                                    "constant_value": 0
                                }
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name_app1"
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
                                        "local.http_setting_name_app1"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "references": [
                                        "local.probe_name_app1"
                                    ]
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
                                        "azurerm_public_ip.web_ag_publicip.id",
                                        "azurerm_public_ip.web_ag_publicip"
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
                                        "azurerm_subnet.agsubnet.id",
                                        "azurerm_subnet.agsubnet"
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
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_name_prefix"
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
                                "match": [
                                    {
                                        "body": {
                                            "constant_value": "App1"
                                        },
                                        "status_code": {
                                            "constant_value": [
                                                "200"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "references": [
                                        "local.probe_name_app1"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/app1/status.html"
                                },
                                "port": {
                                    "constant_value": 80
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
                                    "references": [
                                        "local.backend_address_pool_name_app1"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_name_app1"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule1_name"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 9
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
                    "name": "web_ag",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_linux_virtual_machine_scale_set.web_vmss",
                    "expressions": {
                        "admin_ssh_key": [
                            {
                                "public_key": {
                                    "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                },
                                "username": {
                                    "constant_value": "azureuser"
                                }
                            }
                        ],
                        "admin_username": {
                            "constant_value": "azureuser"
                        },
                        "custom_data": {
                            "references": [
                                "local.webvm_custom_data"
                            ]
                        },
                        "instances": {
                            "constant_value": 1
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_name_prefix"
                            ]
                        },
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "application_gateway_backend_address_pool_ids": {
                                            "references": [
                                                "azurerm_application_gateway.web_ag.backend_address_pool",
                                                "azurerm_application_gateway.web_ag"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "internal"
                                        },
                                        "primary": {
                                            "constant_value": true
                                        },
                                        "subnet_id": {
                                            "references": [
                                                "azurerm_subnet.websubnet.id",
                                                "azurerm_subnet.websubnet"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "web-vmss-nic"
                                },
                                "network_security_group_id": {
                                    "references": [
                                        "azurerm_network_security_group.web_vmss_nsg.id",
                                        "azurerm_network_security_group.web_vmss_nsg"
                                    ]
                                },
                                "primary": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Standard_LRS"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard_B1s"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "RHEL"
                                },
                                "publisher": {
                                    "constant_value": "RedHat"
                                },
                                "sku": {
                                    "constant_value": "83-gen2"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ],
                        "upgrade_mode": {
                            "constant_value": "Automatic"
                        }
                    },
                    "mode": "managed",
                    "name": "web_vmss",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine_scale_set"
                },
                {
                    "address": "azurerm_monitor_autoscale_setting.web_vmss_autoscale",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_name_prefix"
                            ]
                        },
                        "notification": [
                            {
                                "email": [
                                    {
                                        "custom_emails": {
                                            "constant_value": [
                                                "myadminteam@ourorg.com"
                                            ]
                                        },
                                        "send_to_subscription_administrator": {
                                            "constant_value": true
                                        },
                                        "send_to_subscription_co_administrator": {
                                            "constant_value": true
                                        }
                                    }
                                ]
                            }
                        ],
                        "profile": [
                            {
                                "capacity": [
                                    {
                                        "default": {
                                            "constant_value": 1
                                        },
                                        "maximum": {
                                            "constant_value": 2
                                        },
                                        "minimum": {
                                            "constant_value": 1
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "default"
                                },
                                "rule": [
                                    {
                                        "metric_trigger": [
                                            {
                                                "metric_name": {
                                                    "constant_value": "Percentage CPU"
                                                },
                                                "metric_namespace": {
                                                    "constant_value": "microsoft.compute/virtualmachinescalesets"
                                                },
                                                "metric_resource_id": {
                                                    "references": [
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss"
                                                    ]
                                                },
                                                "operator": {
                                                    "constant_value": "GreaterThan"
                                                },
                                                "statistic": {
                                                    "constant_value": "Average"
                                                },
                                                "threshold": {
                                                    "constant_value": 75
                                                },
                                                "time_aggregation": {
                                                    "constant_value": "Average"
                                                },
                                                "time_grain": {
                                                    "constant_value": "PT1M"
                                                },
                                                "time_window": {
                                                    "constant_value": "PT5M"
                                                }
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": {
                                                    "constant_value": "PT5M"
                                                },
                                                "direction": {
                                                    "constant_value": "Increase"
                                                },
                                                "type": {
                                                    "constant_value": "ChangeCount"
                                                },
                                                "value": {
                                                    "constant_value": 1
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "metric_name": {
                                                    "constant_value": "Percentage CPU"
                                                },
                                                "metric_namespace": {
                                                    "constant_value": "microsoft.compute/virtualmachinescalesets"
                                                },
                                                "metric_resource_id": {
                                                    "references": [
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss"
                                                    ]
                                                },
                                                "operator": {
                                                    "constant_value": "LessThan"
                                                },
                                                "statistic": {
                                                    "constant_value": "Average"
                                                },
                                                "threshold": {
                                                    "constant_value": 25
                                                },
                                                "time_aggregation": {
                                                    "constant_value": "Average"
                                                },
                                                "time_grain": {
                                                    "constant_value": "PT1M"
                                                },
                                                "time_window": {
                                                    "constant_value": "PT5M"
                                                }
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": {
                                                    "constant_value": "PT5M"
                                                },
                                                "direction": {
                                                    "constant_value": "Decrease"
                                                },
                                                "type": {
                                                    "constant_value": "ChangeCount"
                                                },
                                                "value": {
                                                    "constant_value": 1
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "metric_name": {
                                                    "constant_value": "Available Memory Bytes"
                                                },
                                                "metric_namespace": {
                                                    "constant_value": "microsoft.compute/virtualmachinescalesets"
                                                },
                                                "metric_resource_id": {
                                                    "references": [
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss"
                                                    ]
                                                },
                                                "operator": {
                                                    "constant_value": "LessThan"
                                                },
                                                "statistic": {
                                                    "constant_value": "Average"
                                                },
                                                "threshold": {
                                                    "constant_value": 1073741824
                                                },
                                                "time_aggregation": {
                                                    "constant_value": "Average"
                                                },
                                                "time_grain": {
                                                    "constant_value": "PT1M"
                                                },
                                                "time_window": {
                                                    "constant_value": "PT5M"
                                                }
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": {
                                                    "constant_value": "PT5M"
                                                },
                                                "direction": {
                                                    "constant_value": "Increase"
                                                },
                                                "type": {
                                                    "constant_value": "ChangeCount"
                                                },
                                                "value": {
                                                    "constant_value": 1
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "metric_name": {
                                                    "constant_value": "Available Memory Bytes"
                                                },
                                                "metric_namespace": {
                                                    "constant_value": "microsoft.compute/virtualmachinescalesets"
                                                },
                                                "metric_resource_id": {
                                                    "references": [
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                                                        "azurerm_linux_virtual_machine_scale_set.web_vmss"
                                                    ]
                                                },
                                                "operator": {
                                                    "constant_value": "GreaterThan"
                                                },
                                                "statistic": {
                                                    "constant_value": "Average"
                                                },
                                                "threshold": {
                                                    "constant_value": 2147483648
                                                },
                                                "time_aggregation": {
                                                    "constant_value": "Average"
                                                },
                                                "time_grain": {
                                                    "constant_value": "PT1M"
                                                },
                                                "time_window": {
                                                    "constant_value": "PT5M"
                                                }
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": {
                                                    "constant_value": "PT5M"
                                                },
                                                "direction": {
                                                    "constant_value": "Decrease"
                                                },
                                                "type": {
                                                    "constant_value": "ChangeCount"
                                                },
                                                "value": {
                                                    "constant_value": 1
                                                }
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "target_resource_id": {
                            "references": [
                                "azurerm_linux_virtual_machine_scale_set.web_vmss.id",
                                "azurerm_linux_virtual_machine_scale_set.web_vmss"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "web_vmss_autoscale",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_monitor_autoscale_setting"
                },
                {
                    "address": "azurerm_network_security_group.ag_subnet_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_subnet.agsubnet.name",
                                "azurerm_subnet.agsubnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ag_subnet_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.app_subnet_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_subnet.appsubnet.name",
                                "azurerm_subnet.appsubnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app_subnet_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.bastion_subnet_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_subnet.bastionsubnet.name",
                                "azurerm_subnet.bastionsubnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "bastion_subnet_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.db_subnet_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_subnet.dbsubnet.name",
                                "azurerm_subnet.dbsubnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "db_subnet_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.web_subnet_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_subnet.websubnet.name",
                                "azurerm_subnet.websubnet"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "web_subnet_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.web_vmss_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_name_prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "web_vmss_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_rule.ag_nsg_rule_inbound",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.ag_subnet_nsg.name",
                                "azurerm_network_security_group.ag_subnet_nsg"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.ag_inbound_ports_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "ag_nsg_rule_inbound",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_network_security_rule.app_nsg_rule_inbound",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.app_subnet_nsg.name",
                                "azurerm_network_security_group.app_subnet_nsg"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.app_inbound_ports_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "app_nsg_rule_inbound",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_network_security_rule.bastion_nsg_rule_inbound",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.bastion_subnet_nsg.name",
                                "azurerm_network_security_group.bastion_subnet_nsg"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.bastion_inbound_ports_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "bastion_nsg_rule_inbound",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_network_security_rule.db_nsg_rule_inbound",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.db_subnet_nsg.name",
                                "azurerm_network_security_group.db_subnet_nsg"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.db_inbound_ports_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "db_nsg_rule_inbound",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_network_security_rule.web_nsg_rule_inbound",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.web_subnet_nsg.name",
                                "azurerm_network_security_group.web_subnet_nsg"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.web_inbound_ports_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "web_nsg_rule_inbound",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_public_ip.web_ag_publicip",
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
                                "local.resource_name_prefix"
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
                        }
                    },
                    "mode": "managed",
                    "name": "web_ag_publicip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_name_prefix",
                                "var.resource_group_name",
                                "random_string.myrandom.id",
                                "random_string.myrandom"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.common_tags"
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
                    "address": "azurerm_subnet.agsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.ag_subnet_address"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet",
                                "var.ag_subnet_name"
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
                    "name": "agsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.appsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.app_subnet_address"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet",
                                "var.app_subnet_name"
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
                    "name": "appsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.bastionsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.bastion_subnet_address"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet",
                                "var.bastion_subnet_name"
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
                    "name": "bastionsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.dbsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.db_subnet_address"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet",
                                "var.db_subnet_name"
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
                    "name": "dbsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.websubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.web_subnet_address"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_virtual_network.vnet.name",
                                "azurerm_virtual_network.vnet",
                                "var.web_subnet_name"
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
                    "name": "websubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.ag_subnet_nsg_associate",
                    "depends_on": [
                        "azurerm_network_security_rule.ag_nsg_rule_inbound"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.ag_subnet_nsg.id",
                                "azurerm_network_security_group.ag_subnet_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.agsubnet.id",
                                "azurerm_subnet.agsubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ag_subnet_nsg_associate",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_associate",
                    "depends_on": [
                        "azurerm_network_security_rule.app_nsg_rule_inbound"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.app_subnet_nsg.id",
                                "azurerm_network_security_group.app_subnet_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.appsubnet.id",
                                "azurerm_subnet.appsubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app_subnet_nsg_associate",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_associate",
                    "depends_on": [
                        "azurerm_network_security_rule.bastion_nsg_rule_inbound"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.bastion_subnet_nsg.id",
                                "azurerm_network_security_group.bastion_subnet_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.bastionsubnet.id",
                                "azurerm_subnet.bastionsubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "bastion_subnet_nsg_associate",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_associate",
                    "depends_on": [
                        "azurerm_network_security_rule.db_nsg_rule_inbound"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.db_subnet_nsg.id",
                                "azurerm_network_security_group.db_subnet_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.dbsubnet.id",
                                "azurerm_subnet.dbsubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "db_subnet_nsg_associate",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_associate",
                    "depends_on": [
                        "azurerm_network_security_rule.web_nsg_rule_inbound"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.web_subnet_nsg.id",
                                "azurerm_network_security_group.web_subnet_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.websubnet.id",
                                "azurerm_subnet.websubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "web_subnet_nsg_associate",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_network.vnet",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.vnet_address_space"
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
                                "local.resource_name_prefix",
                                "var.vnet_name"
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
                                "local.common_tags"
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
                    "address": "random_string.myrandom",
                    "expressions": {
                        "length": {
                            "constant_value": 6
                        },
                        "numeric": {
                            "constant_value": false
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "myrandom",
                    "provider_config_key": "random",
                    "schema_version": 2,
                    "type": "random_string"
                }
            ],
            "variables": {
                "ag_subnet_address": {
                    "default": [
                        "10.0.51.0/24"
                    ],
                    "description": "Virtual Network Application Gateway Subnet Address Spaces"
                },
                "ag_subnet_name": {
                    "default": "agsubnet",
                    "description": "Virtual Network Application Gateway Subnet Name"
                },
                "app_subnet_address": {
                    "default": [
                        "10.0.11.0/24"
                    ],
                    "description": "Virtual Network App Subnet Address Spaces"
                },
                "app_subnet_name": {
                    "default": "appsubnet",
                    "description": "Virtual Network App Subnet Name"
                },
                "bastion_subnet_address": {
                    "default": [
                        "10.0.100.0/24"
                    ],
                    "description": "Virtual Network Bastion Subnet Address Spaces"
                },
                "bastion_subnet_name": {
                    "default": "bastionsubnet",
                    "description": "Virtual Network Bastion Subnet Name"
                },
                "business_divsion": {
                    "default": "sap",
                    "description": "Business Division in the large organization this Infrastructure belongs"
                },
                "db_subnet_address": {
                    "default": [
                        "10.0.21.0/24"
                    ],
                    "description": "Virtual Network Database Subnet Address Spaces"
                },
                "db_subnet_name": {
                    "default": "dbsubnet",
                    "description": "Virtual Network Database Subnet Name"
                },
                "environment": {
                    "default": "dev",
                    "description": "Environment Variable used as a prefix"
                },
                "resource_group_location": {
                    "default": "eastus2",
                    "description": "Region in which Azure Resources to be created"
                },
                "resource_group_name": {
                    "default": "rg-default",
                    "description": "Resource Group Name"
                },
                "vnet_address_space": {
                    "default": [
                        "10.0.0.0/16"
                    ],
                    "description": "Virtual Network address_space"
                },
                "vnet_name": {
                    "default": "vnet-default",
                    "description": "Virtual Network name"
                },
                "web_subnet_address": {
                    "default": [
                        "10.0.1.0/24"
                    ],
                    "description": "Virtual Network Web Subnet Address Spaces"
                },
                "web_subnet_name": {
                    "default": "websubnet",
                    "description": "Virtual Network Web Subnet Name"
                },
                "web_vmss_nsg_inbound_ports": {
                    "default": [
                        "22",
                        "80",
                        "443"
                    ],
                    "description": "Web VMSS NSG Inbound Ports"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "virtual_network_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "virtual_network_name": {
            "actions": [
                "create"
            ],
            "after": "hr-dev-vnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_ag_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_ag_public_ip_1": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_name": {
            "actions": [
                "create"
            ],
            "after": "hr-dev-vnet-websubnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_nsg_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_nsg_name": {
            "actions": [
                "create"
            ],
            "after": "hr-dev-vnet-websubnet-nsg",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_vmss_id": {
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
            "virtual_network_id": {
                "sensitive": false
            },
            "virtual_network_name": {
                "sensitive": false,
                "type": "string",
                "value": "hr-dev-vnet"
            },
            "web_ag_id": {
                "sensitive": false
            },
            "web_ag_public_ip_1": {
                "sensitive": false
            },
            "web_subnet_id": {
                "sensitive": false
            },
            "web_subnet_name": {
                "sensitive": false,
                "type": "string",
                "value": "hr-dev-vnet-websubnet"
            },
            "web_subnet_nsg_id": {
                "sensitive": false
            },
            "web_subnet_nsg_name": {
                "sensitive": false,
                "type": "string",
                "value": "hr-dev-vnet-websubnet-nsg"
            },
            "web_vmss_id": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.web_ag",
                    "mode": "managed",
                    "name": "web_ag",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [
                            {}
                        ],
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
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
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
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": []
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [
                            {
                                "max_capacity": 10,
                                "min_capacity": 0
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "ip_addresses": [],
                                "name": "hr-dev-vnet-backend-pool-app1"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "hr-dev-vnet-be-http-stngs-app1",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "hr-dev-vnet-be-probe-app1",
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
                                "name": "hr-dev-vnet-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "hr-dev-vnet-feport",
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
                                "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                                "frontend_port_name": "hr-dev-vnet-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "hr-dev-vnet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "hr-dev-web-ag",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "127.0.0.1",
                                "interval": 30,
                                "match": [
                                    {
                                        "body": "App1",
                                        "status_code": [
                                            "200"
                                        ]
                                    }
                                ],
                                "minimum_servers": 0,
                                "name": "hr-dev-vnet-be-probe-app1",
                                "path": "/app1/status.html",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": 80,
                                "protocol": "Http",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "hr-dev-vnet-backend-pool-app1",
                                "backend_http_settings_name": "hr-dev-vnet-be-http-stngs-app1",
                                "http_listener_name": "hr-dev-vnet-httplstn",
                                "name": "hr-dev-vnet-rqrt-1",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": null,
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
                    "address": "azurerm_linux_virtual_machine_scale_set.web_vmss",
                    "mode": "managed",
                    "name": "web_vmss",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
                        "automatic_instance_repair": [],
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "data_disk": [],
                        "extension": [],
                        "gallery_application": [],
                        "gallery_applications": [],
                        "identity": [],
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "application_gateway_backend_address_pool_ids": [],
                                        "public_ip_address": []
                                    }
                                ]
                            }
                        ],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "plan": [],
                        "rolling_upgrade_policy": [],
                        "scale_in": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "spot_restore": [],
                        "terminate_notification": [],
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine_scale_set",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": null,
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "azureuser"
                            }
                        ],
                        "admin_username": "azureuser",
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "capacity_reservation_group_id": null,
                        "custom_data": "IyEvYmluL3NoCiNzdWRvIHl1bSB1cGRhdGUgLXkKc3VkbyB5dW0gaW5zdGFsbCAteSBodHRwZApzdWRvIHN5c3RlbWN0bCBlbmFibGUgaHR0cGQKc3VkbyBzeXN0ZW1jdGwgc3RhcnQgaHR0cGQgIApzdWRvIHN5c3RlbWN0bCBzdG9wIGZpcmV3YWxsZApzdWRvIHN5c3RlbWN0bCBkaXNhYmxlIGZpcmV3YWxsZApzdWRvIGNobW9kIC1SIDc3NyAvdmFyL3d3dy9odG1sIApzdWRvIGVjaG8gIldlbGNvbWUgdG8gc3RhY2tzaW1wbGlmeSAtIFdlYlZNIEFwcDEgLSBWTSBIb3N0bmFtZTogJChob3N0bmFtZSkiID4gL3Zhci93d3cvaHRtbC9pbmRleC5odG1sCnN1ZG8gbWtkaXIgL3Zhci93d3cvaHRtbC9hcHAxCnN1ZG8gZWNobyAiV2VsY29tZSB0byBzdGFja3NpbXBsaWZ5IC0gV2ViVk0gQXBwMSAtIFZNIEhvc3RuYW1lOiAkKGhvc3RuYW1lKSIgPiAvdmFyL3d3dy9odG1sL2FwcDEvaG9zdG5hbWUuaHRtbApzdWRvIGVjaG8gIldlbGNvbWUgdG8gc3RhY2tzaW1wbGlmeSAtIFdlYlZNIEFwcDEgLSBBcHAgU3RhdHVzIFBhZ2UiID4gL3Zhci93d3cvaHRtbC9hcHAxL3N0YXR1cy5odG1sCnN1ZG8gZWNobyAnPCFET0NUWVBFIGh0bWw+IDxodG1sPiA8Ym9keSBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjUwLCAyMTAsIDIxMCk7Ij4gPGgxPldlbGNvbWUgdG8gU3RhY2sgU2ltcGxpZnkgLSBXZWJWTSBBUFAtMSA8L2gxPiA8cD5UZXJyYWZvcm0gRGVtbzwvcD4gPHA+QXBwbGljYXRpb24gVmVyc2lvbjogVjE8L3A+IDwvYm9keT48L2h0bWw+JyB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvYXBwMS9pbmRleC5odG1sCnN1ZG8gY3VybCAtSCAiTWV0YWRhdGE6dHJ1ZSIgLS1ub3Byb3h5ICIqIiAiaHR0cDovLzE2OS4yNTQuMTY5LjI1NC9tZXRhZGF0YS9pbnN0YW5jZT9hcGktdmVyc2lvbj0yMDIwLTA5LTAxIiAtbyAvdmFyL3d3dy9odG1sL2FwcDEvbWV0YWRhdGEuaHRtbAo=",
                        "data_disk": [],
                        "disable_password_authentication": true,
                        "do_not_run_extensions_on_overprovisioned_machines": false,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "health_probe_id": null,
                        "host_group_id": null,
                        "identity": [],
                        "instances": 1,
                        "location": "eastus",
                        "max_bid_price": -1,
                        "name": "hr-dev-web-vmss",
                        "network_interface": [
                            {
                                "dns_servers": null,
                                "enable_accelerated_networking": false,
                                "enable_ip_forwarding": false,
                                "ip_configuration": [
                                    {
                                        "application_security_group_ids": null,
                                        "load_balancer_backend_address_pool_ids": null,
                                        "load_balancer_inbound_nat_rules_ids": null,
                                        "name": "internal",
                                        "primary": true,
                                        "public_ip_address": [],
                                        "version": "IPv4"
                                    }
                                ],
                                "name": "web-vmss-nic",
                                "primary": true
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "overprovision": true,
                        "plan": [],
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "rolling_upgrade_policy": [],
                        "secret": [],
                        "secure_boot_enabled": null,
                        "single_placement_group": true,
                        "sku": "Standard_B1s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "RHEL",
                                "publisher": "RedHat",
                                "sku": "83-gen2",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "upgrade_mode": "Automatic",
                        "user_data": null,
                        "vtpm_enabled": null,
                        "zone_balance": false,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_monitor_autoscale_setting.web_vmss_autoscale",
                    "mode": "managed",
                    "name": "web_vmss_autoscale",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "notification": [
                            {
                                "email": [
                                    {
                                        "custom_emails": [
                                            false
                                        ]
                                    }
                                ],
                                "webhook": []
                            }
                        ],
                        "predictive": [],
                        "profile": [
                            {
                                "capacity": [
                                    {}
                                ],
                                "fixed_date": [],
                                "recurrence": [],
                                "rule": [
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": []
                                            }
                                        ],
                                        "scale_action": [
                                            {}
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": []
                                            }
                                        ],
                                        "scale_action": [
                                            {}
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": []
                                            }
                                        ],
                                        "scale_action": [
                                            {}
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": []
                                            }
                                        ],
                                        "scale_action": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_monitor_autoscale_setting",
                    "values": {
                        "enabled": true,
                        "location": "eastus",
                        "name": "hr-dev-web-vmss-autoscale-profiles",
                        "notification": [
                            {
                                "email": [
                                    {
                                        "custom_emails": [
                                            "myadminteam@ourorg.com"
                                        ],
                                        "send_to_subscription_administrator": true,
                                        "send_to_subscription_co_administrator": true
                                    }
                                ],
                                "webhook": []
                            }
                        ],
                        "predictive": [],
                        "profile": [
                            {
                                "capacity": [
                                    {
                                        "default": 1,
                                        "maximum": 2,
                                        "minimum": 1
                                    }
                                ],
                                "fixed_date": [],
                                "name": "default",
                                "recurrence": [],
                                "rule": [
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": [],
                                                "divide_by_instance_count": null,
                                                "metric_name": "Percentage CPU",
                                                "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                                "operator": "GreaterThan",
                                                "statistic": "Average",
                                                "threshold": 75,
                                                "time_aggregation": "Average",
                                                "time_grain": "PT1M",
                                                "time_window": "PT5M"
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": "PT5M",
                                                "direction": "Increase",
                                                "type": "ChangeCount",
                                                "value": 1
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": [],
                                                "divide_by_instance_count": null,
                                                "metric_name": "Percentage CPU",
                                                "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                                "operator": "LessThan",
                                                "statistic": "Average",
                                                "threshold": 25,
                                                "time_aggregation": "Average",
                                                "time_grain": "PT1M",
                                                "time_window": "PT5M"
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": "PT5M",
                                                "direction": "Decrease",
                                                "type": "ChangeCount",
                                                "value": 1
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": [],
                                                "divide_by_instance_count": null,
                                                "metric_name": "Available Memory Bytes",
                                                "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                                "operator": "LessThan",
                                                "statistic": "Average",
                                                "threshold": 1073741824,
                                                "time_aggregation": "Average",
                                                "time_grain": "PT1M",
                                                "time_window": "PT5M"
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": "PT5M",
                                                "direction": "Increase",
                                                "type": "ChangeCount",
                                                "value": 1
                                            }
                                        ]
                                    },
                                    {
                                        "metric_trigger": [
                                            {
                                                "dimensions": [],
                                                "divide_by_instance_count": null,
                                                "metric_name": "Available Memory Bytes",
                                                "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                                "operator": "GreaterThan",
                                                "statistic": "Average",
                                                "threshold": 2147483648,
                                                "time_aggregation": "Average",
                                                "time_grain": "PT1M",
                                                "time_window": "PT5M"
                                            }
                                        ],
                                        "scale_action": [
                                            {
                                                "cooldown": "PT5M",
                                                "direction": "Decrease",
                                                "type": "ChangeCount",
                                                "value": 1
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.ag_subnet_nsg",
                    "mode": "managed",
                    "name": "ag_subnet_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "hr-dev-vnet-agsubnet-nsg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.app_subnet_nsg",
                    "mode": "managed",
                    "name": "app_subnet_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "hr-dev-vnet-appsubnet-nsg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.bastion_subnet_nsg",
                    "mode": "managed",
                    "name": "bastion_subnet_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "hr-dev-vnet-bastionsubnet-nsg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.db_subnet_nsg",
                    "mode": "managed",
                    "name": "db_subnet_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "hr-dev-vnet-dbsubnet-nsg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.web_subnet_nsg",
                    "mode": "managed",
                    "name": "web_subnet_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "name": "hr-dev-vnet-websubnet-nsg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.web_vmss_nsg",
                    "mode": "managed",
                    "name": "web_vmss_nsg",
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
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
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
                        "name": "hr-dev-web-vmss-nsg",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "Inbound Rule 0",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "22",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "inbound-rule-0",
                                "priority": 100,
                                "protocol": "Tcp",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "Inbound Rule 1",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "80",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "inbound-rule-1",
                                "priority": 101,
                                "protocol": "Tcp",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "Inbound Rule 2",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "443",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "inbound-rule-2",
                                "priority": 102,
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
                },
                {
                    "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "ag_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "80",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-80",
                        "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                        "priority": 100,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "ag_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-443",
                        "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                        "priority": 110,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"130\"]",
                    "index": "130",
                    "mode": "managed",
                    "name": "ag_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "65200-65535",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-65200-65535",
                        "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                        "priority": 130,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "app_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "80",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-80",
                        "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                        "priority": 100,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "app_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-443",
                        "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                        "priority": 110,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"120\"]",
                    "index": "120",
                    "mode": "managed",
                    "name": "app_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "8080",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-8080",
                        "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                        "priority": 120,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"130\"]",
                    "index": "130",
                    "mode": "managed",
                    "name": "app_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "22",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-22",
                        "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                        "priority": 130,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.bastion_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "bastion_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "22",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-22",
                        "network_security_group_name": "hr-dev-vnet-bastionsubnet-nsg",
                        "priority": 100,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.bastion_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "bastion_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "3389",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-3389",
                        "network_security_group_name": "hr-dev-vnet-bastionsubnet-nsg",
                        "priority": 110,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "db_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "3306",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-3306",
                        "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                        "priority": 100,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "db_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "1433",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-1433",
                        "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                        "priority": 110,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"120\"]",
                    "index": "120",
                    "mode": "managed",
                    "name": "db_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "5432",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-5432",
                        "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                        "priority": 120,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "web_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "80",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-80",
                        "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                        "priority": 100,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "web_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-443",
                        "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                        "priority": 110,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"120\"]",
                    "index": "120",
                    "mode": "managed",
                    "name": "web_nsg_rule_inbound",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "22",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "Rule-Port-22",
                        "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                        "priority": 120,
                        "protocol": "Tcp",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.web_ag_publicip",
                    "mode": "managed",
                    "name": "web_ag_publicip",
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
                        "name": "hr-dev-web-ag-publicip",
                        "public_ip_prefix_id": null,
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
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
                        "location": "eastus",
                        "managed_by": null,
                        "tags": {
                            "environment": "dev",
                            "owners": "hr"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.agsubnet",
                    "mode": "managed",
                    "name": "agsubnet",
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
                            "10.1.51.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-agsubnet",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hr-dev-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.appsubnet",
                    "mode": "managed",
                    "name": "appsubnet",
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
                            "10.1.11.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-appsubnet",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hr-dev-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.bastionsubnet",
                    "mode": "managed",
                    "name": "bastionsubnet",
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
                            "10.1.100.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-bastionsubnet",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hr-dev-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.dbsubnet",
                    "mode": "managed",
                    "name": "dbsubnet",
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
                            "10.1.21.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-dbsubnet",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hr-dev-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet.websubnet",
                    "mode": "managed",
                    "name": "websubnet",
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
                            "10.1.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-websubnet",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hr-dev-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.ag_subnet_nsg_associate",
                    "mode": "managed",
                    "name": "ag_subnet_nsg_associate",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_associate",
                    "mode": "managed",
                    "name": "app_subnet_nsg_associate",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_associate",
                    "mode": "managed",
                    "name": "bastion_subnet_nsg_associate",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_associate",
                    "mode": "managed",
                    "name": "db_subnet_nsg_associate",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_associate",
                    "mode": "managed",
                    "name": "web_subnet_nsg_associate",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
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
                            "10.1.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "name": "hr-dev-vnet",
                        "tags": {
                            "environment": "dev",
                            "owners": "hr"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "random_string.myrandom",
                    "mode": "managed",
                    "name": "myrandom",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 6,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": false,
                        "numeric": false,
                        "override_special": null,
                        "special": false,
                        "upper": false
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
                "virtual_network_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "hr-dev-vnet"
                },
                "web_subnet_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "hr-dev-vnet-websubnet"
                },
                "web_subnet_nsg_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "hr-dev-vnet-websubnet-nsg"
                }
            },
            "root_module": {}
        }
    },
    "relevant_attributes": [
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
            "resource": "azurerm_subnet.bastionsubnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_subnet.dbsubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.web_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.db_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.app_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.websubnet"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.web_ag_publicip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "random_string.myrandom"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_subnet.bastionsubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.bastion_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.ag_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_subnet.appsubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.web_vmss_nsg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appsubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.web_ag_publicip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_linux_virtual_machine_scale_set.web_vmss"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.ag_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.db_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.app_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.agsubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.web_ag"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_subnet.websubnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_subnet.agsubnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.web_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.bastion_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.dbsubnet"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "azurerm_application_gateway.web_ag"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.web_ag",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {
                            "max_capacity": 10,
                            "min_capacity": 0
                        }
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "ip_addresses": [],
                            "name": "hr-dev-vnet-backend-pool-app1"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "hr-dev-vnet-be-http-stngs-app1",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "hr-dev-vnet-be-probe-app1",
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
                            "name": "hr-dev-vnet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "hr-dev-vnet-feport",
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
                            "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                            "frontend_port_name": "hr-dev-vnet-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "hr-dev-vnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "hr-dev-web-ag",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "127.0.0.1",
                            "interval": 30,
                            "match": [
                                {
                                    "body": "App1",
                                    "status_code": [
                                        "200"
                                    ]
                                }
                            ],
                            "minimum_servers": 0,
                            "name": "hr-dev-vnet-be-probe-app1",
                            "path": "/app1/status.html",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": 80,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "hr-dev-vnet-backend-pool-app1",
                            "backend_http_settings_name": "hr-dev-vnet-be-http-stngs-app1",
                            "http_listener_name": "hr-dev-vnet-httplstn",
                            "name": "hr-dev-vnet-rqrt-1",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": null,
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
                    "autoscale_configuration": [
                        {}
                    ],
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
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
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
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {}
                    ],
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
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
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
                    "resource_group_name": true,
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
            "name": "web_ag",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_linux_virtual_machine_scale_set.web_vmss",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": null,
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "azureuser"
                        }
                    ],
                    "admin_username": "azureuser",
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "capacity_reservation_group_id": null,
                    "custom_data": "IyEvYmluL3NoCiNzdWRvIHl1bSB1cGRhdGUgLXkKc3VkbyB5dW0gaW5zdGFsbCAteSBodHRwZApzdWRvIHN5c3RlbWN0bCBlbmFibGUgaHR0cGQKc3VkbyBzeXN0ZW1jdGwgc3RhcnQgaHR0cGQgIApzdWRvIHN5c3RlbWN0bCBzdG9wIGZpcmV3YWxsZApzdWRvIHN5c3RlbWN0bCBkaXNhYmxlIGZpcmV3YWxsZApzdWRvIGNobW9kIC1SIDc3NyAvdmFyL3d3dy9odG1sIApzdWRvIGVjaG8gIldlbGNvbWUgdG8gc3RhY2tzaW1wbGlmeSAtIFdlYlZNIEFwcDEgLSBWTSBIb3N0bmFtZTogJChob3N0bmFtZSkiID4gL3Zhci93d3cvaHRtbC9pbmRleC5odG1sCnN1ZG8gbWtkaXIgL3Zhci93d3cvaHRtbC9hcHAxCnN1ZG8gZWNobyAiV2VsY29tZSB0byBzdGFja3NpbXBsaWZ5IC0gV2ViVk0gQXBwMSAtIFZNIEhvc3RuYW1lOiAkKGhvc3RuYW1lKSIgPiAvdmFyL3d3dy9odG1sL2FwcDEvaG9zdG5hbWUuaHRtbApzdWRvIGVjaG8gIldlbGNvbWUgdG8gc3RhY2tzaW1wbGlmeSAtIFdlYlZNIEFwcDEgLSBBcHAgU3RhdHVzIFBhZ2UiID4gL3Zhci93d3cvaHRtbC9hcHAxL3N0YXR1cy5odG1sCnN1ZG8gZWNobyAnPCFET0NUWVBFIGh0bWw+IDxodG1sPiA8Ym9keSBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjpyZ2IoMjUwLCAyMTAsIDIxMCk7Ij4gPGgxPldlbGNvbWUgdG8gU3RhY2sgU2ltcGxpZnkgLSBXZWJWTSBBUFAtMSA8L2gxPiA8cD5UZXJyYWZvcm0gRGVtbzwvcD4gPHA+QXBwbGljYXRpb24gVmVyc2lvbjogVjE8L3A+IDwvYm9keT48L2h0bWw+JyB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvYXBwMS9pbmRleC5odG1sCnN1ZG8gY3VybCAtSCAiTWV0YWRhdGE6dHJ1ZSIgLS1ub3Byb3h5ICIqIiAiaHR0cDovLzE2OS4yNTQuMTY5LjI1NC9tZXRhZGF0YS9pbnN0YW5jZT9hcGktdmVyc2lvbj0yMDIwLTA5LTAxIiAtbyAvdmFyL3d3dy9odG1sL2FwcDEvbWV0YWRhdGEuaHRtbAo=",
                    "data_disk": [],
                    "disable_password_authentication": true,
                    "do_not_run_extensions_on_overprovisioned_machines": false,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "health_probe_id": null,
                    "host_group_id": null,
                    "identity": [],
                    "instances": 1,
                    "location": "eastus",
                    "max_bid_price": -1,
                    "name": "hr-dev-web-vmss",
                    "network_interface": [
                        {
                            "dns_servers": null,
                            "enable_accelerated_networking": false,
                            "enable_ip_forwarding": false,
                            "ip_configuration": [
                                {
                                    "application_security_group_ids": null,
                                    "load_balancer_backend_address_pool_ids": null,
                                    "load_balancer_inbound_nat_rules_ids": null,
                                    "name": "internal",
                                    "primary": true,
                                    "public_ip_address": [],
                                    "version": "IPv4"
                                }
                            ],
                            "name": "web-vmss-nic",
                            "primary": true
                        }
                    ],
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "overprovision": true,
                    "plan": [],
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "rolling_upgrade_policy": [],
                    "secret": [],
                    "secure_boot_enabled": null,
                    "single_placement_group": true,
                    "sku": "Standard_B1s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "RHEL",
                            "publisher": "RedHat",
                            "sku": "83-gen2",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "upgrade_mode": "Automatic",
                    "user_data": null,
                    "vtpm_enabled": null,
                    "zone_balance": false,
                    "zones": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [
                        {}
                    ],
                    "automatic_instance_repair": [],
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "data_disk": [],
                    "extension": [],
                    "gallery_application": [],
                    "gallery_applications": [],
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "application_gateway_backend_address_pool_ids": [],
                                    "public_ip_address": []
                                }
                            ]
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "plan": [],
                    "rolling_upgrade_policy": [],
                    "scale_in": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": [],
                    "terminate_notification": [],
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [
                        {}
                    ],
                    "automatic_instance_repair": true,
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "computer_name_prefix": true,
                    "data_disk": [],
                    "extension": true,
                    "extension_operations_enabled": true,
                    "gallery_application": true,
                    "gallery_applications": true,
                    "id": true,
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "application_gateway_backend_address_pool_ids": true,
                                    "public_ip_address": [],
                                    "subnet_id": true
                                }
                            ],
                            "network_security_group_id": true
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true
                        }
                    ],
                    "plan": [],
                    "platform_fault_domain_count": true,
                    "resource_group_name": true,
                    "rolling_upgrade_policy": [],
                    "scale_in": true,
                    "scale_in_policy": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": true,
                    "terminate_notification": true,
                    "termination_notification": true,
                    "unique_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "web_vmss",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine_scale_set"
        },
        {
            "address": "azurerm_monitor_autoscale_setting.web_vmss_autoscale",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enabled": true,
                    "location": "eastus",
                    "name": "hr-dev-web-vmss-autoscale-profiles",
                    "notification": [
                        {
                            "email": [
                                {
                                    "custom_emails": [
                                        "myadminteam@ourorg.com"
                                    ],
                                    "send_to_subscription_administrator": true,
                                    "send_to_subscription_co_administrator": true
                                }
                            ],
                            "webhook": []
                        }
                    ],
                    "predictive": [],
                    "profile": [
                        {
                            "capacity": [
                                {
                                    "default": 1,
                                    "maximum": 2,
                                    "minimum": 1
                                }
                            ],
                            "fixed_date": [],
                            "name": "default",
                            "recurrence": [],
                            "rule": [
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "divide_by_instance_count": null,
                                            "metric_name": "Percentage CPU",
                                            "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                            "operator": "GreaterThan",
                                            "statistic": "Average",
                                            "threshold": 75,
                                            "time_aggregation": "Average",
                                            "time_grain": "PT1M",
                                            "time_window": "PT5M"
                                        }
                                    ],
                                    "scale_action": [
                                        {
                                            "cooldown": "PT5M",
                                            "direction": "Increase",
                                            "type": "ChangeCount",
                                            "value": 1
                                        }
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "divide_by_instance_count": null,
                                            "metric_name": "Percentage CPU",
                                            "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                            "operator": "LessThan",
                                            "statistic": "Average",
                                            "threshold": 25,
                                            "time_aggregation": "Average",
                                            "time_grain": "PT1M",
                                            "time_window": "PT5M"
                                        }
                                    ],
                                    "scale_action": [
                                        {
                                            "cooldown": "PT5M",
                                            "direction": "Decrease",
                                            "type": "ChangeCount",
                                            "value": 1
                                        }
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "divide_by_instance_count": null,
                                            "metric_name": "Available Memory Bytes",
                                            "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                            "operator": "LessThan",
                                            "statistic": "Average",
                                            "threshold": 1073741824,
                                            "time_aggregation": "Average",
                                            "time_grain": "PT1M",
                                            "time_window": "PT5M"
                                        }
                                    ],
                                    "scale_action": [
                                        {
                                            "cooldown": "PT5M",
                                            "direction": "Increase",
                                            "type": "ChangeCount",
                                            "value": 1
                                        }
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "divide_by_instance_count": null,
                                            "metric_name": "Available Memory Bytes",
                                            "metric_namespace": "microsoft.compute/virtualmachinescalesets",
                                            "operator": "GreaterThan",
                                            "statistic": "Average",
                                            "threshold": 2147483648,
                                            "time_aggregation": "Average",
                                            "time_grain": "PT1M",
                                            "time_window": "PT5M"
                                        }
                                    ],
                                    "scale_action": [
                                        {
                                            "cooldown": "PT5M",
                                            "direction": "Decrease",
                                            "type": "ChangeCount",
                                            "value": 1
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "notification": [
                        {
                            "email": [
                                {
                                    "custom_emails": [
                                        false
                                    ]
                                }
                            ],
                            "webhook": []
                        }
                    ],
                    "predictive": [],
                    "profile": [
                        {
                            "capacity": [
                                {}
                            ],
                            "fixed_date": [],
                            "recurrence": [],
                            "rule": [
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": []
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": []
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": []
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": []
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "notification": [
                        {
                            "email": [
                                {
                                    "custom_emails": [
                                        false
                                    ]
                                }
                            ],
                            "webhook": []
                        }
                    ],
                    "predictive": [],
                    "profile": [
                        {
                            "capacity": [
                                {}
                            ],
                            "fixed_date": [],
                            "recurrence": [],
                            "rule": [
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "metric_resource_id": true
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "metric_resource_id": true
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "metric_resource_id": true
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                },
                                {
                                    "metric_trigger": [
                                        {
                                            "dimensions": [],
                                            "metric_resource_id": true
                                        }
                                    ],
                                    "scale_action": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
                    "resource_group_name": true,
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "web_vmss_autoscale",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_autoscale_setting"
        },
        {
            "address": "azurerm_network_security_group.ag_subnet_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-vnet-agsubnet-nsg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "ag_subnet_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.app_subnet_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-vnet-appsubnet-nsg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app_subnet_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.bastion_subnet_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-vnet-bastionsubnet-nsg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "bastion_subnet_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.db_subnet_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-vnet-dbsubnet-nsg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "db_subnet_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.web_subnet_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-vnet-websubnet-nsg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "web_subnet_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.web_vmss_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "hr-dev-web-vmss-nsg",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "Inbound Rule 0",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "22",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "inbound-rule-0",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "Inbound Rule 1",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "80",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "inbound-rule-1",
                            "priority": 101,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "Inbound Rule 2",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "443",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "inbound-rule-2",
                            "priority": 102,
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
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
                    "resource_group_name": true,
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
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
            "name": "web_vmss_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"100\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "80",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-80",
                    "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                    "priority": 100,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "100",
            "mode": "managed",
            "name": "ag_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"110\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-443",
                    "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                    "priority": 110,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "110",
            "mode": "managed",
            "name": "ag_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.ag_nsg_rule_inbound[\"130\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "65200-65535",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-65200-65535",
                    "network_security_group_name": "hr-dev-vnet-agsubnet-nsg",
                    "priority": 130,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "130",
            "mode": "managed",
            "name": "ag_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"100\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "80",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-80",
                    "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                    "priority": 100,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "100",
            "mode": "managed",
            "name": "app_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"110\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-443",
                    "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                    "priority": 110,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "110",
            "mode": "managed",
            "name": "app_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"120\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "8080",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-8080",
                    "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                    "priority": 120,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "120",
            "mode": "managed",
            "name": "app_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.app_nsg_rule_inbound[\"130\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "22",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-22",
                    "network_security_group_name": "hr-dev-vnet-appsubnet-nsg",
                    "priority": 130,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "130",
            "mode": "managed",
            "name": "app_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.bastion_nsg_rule_inbound[\"100\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "22",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-22",
                    "network_security_group_name": "hr-dev-vnet-bastionsubnet-nsg",
                    "priority": 100,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "100",
            "mode": "managed",
            "name": "bastion_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.bastion_nsg_rule_inbound[\"110\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "3389",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-3389",
                    "network_security_group_name": "hr-dev-vnet-bastionsubnet-nsg",
                    "priority": 110,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "110",
            "mode": "managed",
            "name": "bastion_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"100\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "3306",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-3306",
                    "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                    "priority": 100,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "100",
            "mode": "managed",
            "name": "db_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"110\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "1433",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-1433",
                    "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                    "priority": 110,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "110",
            "mode": "managed",
            "name": "db_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.db_nsg_rule_inbound[\"120\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "5432",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-5432",
                    "network_security_group_name": "hr-dev-vnet-dbsubnet-nsg",
                    "priority": 120,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "120",
            "mode": "managed",
            "name": "db_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"100\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "80",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-80",
                    "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                    "priority": 100,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "100",
            "mode": "managed",
            "name": "web_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"110\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-443",
                    "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                    "priority": 110,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "110",
            "mode": "managed",
            "name": "web_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.web_nsg_rule_inbound[\"120\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "22",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "Rule-Port-22",
                    "network_security_group_name": "hr-dev-vnet-websubnet-nsg",
                    "priority": 120,
                    "protocol": "Tcp",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "120",
            "mode": "managed",
            "name": "web_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_public_ip.web_ag_publicip",
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
                    "name": "hr-dev-web-ag-publicip",
                    "public_ip_prefix_id": null,
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
                    "ip_address": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "web_ag_publicip",
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
                    "location": "eastus",
                    "managed_by": null,
                    "tags": {
                        "environment": "dev",
                        "owners": "hr"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "name": true,
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
            "address": "azurerm_subnet.agsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.51.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "hr-dev-vnet-agsubnet",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hr-dev-vnet"
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
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "agsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.appsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.11.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "hr-dev-vnet-appsubnet",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hr-dev-vnet"
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
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.bastionsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.100.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "hr-dev-vnet-bastionsubnet",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hr-dev-vnet"
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
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "bastionsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.dbsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.21.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "hr-dev-vnet-dbsubnet",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hr-dev-vnet"
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
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "dbsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.websubnet",
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
                    "name": "hr-dev-vnet-websubnet",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hr-dev-vnet"
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
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "websubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.ag_subnet_nsg_associate",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "ag_subnet_nsg_associate",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_associate",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app_subnet_nsg_associate",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_associate",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "bastion_subnet_nsg_associate",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_associate",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "db_subnet_nsg_associate",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_associate",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "network_security_group_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "web_subnet_nsg_associate",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_network.vnet",
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
                    "name": "hr-dev-vnet",
                    "tags": {
                        "environment": "dev",
                        "owners": "hr"
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
                    "resource_group_name": true,
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
            "address": "random_string.myrandom",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 6,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": false,
                    "numeric": false,
                    "override_special": null,
                    "special": false,
                    "upper": false
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "myrandom",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:12:47Z",
    "variables": {
        "ag_subnet_address": {
            "value": [
                "10.1.51.0/24"
            ]
        },
        "ag_subnet_name": {
            "value": "agsubnet"
        },
        "app_subnet_address": {
            "value": [
                "10.1.11.0/24"
            ]
        },
        "app_subnet_name": {
            "value": "appsubnet"
        },
        "bastion_subnet_address": {
            "value": [
                "10.1.100.0/24"
            ]
        },
        "bastion_subnet_name": {
            "value": "bastionsubnet"
        },
        "business_divsion": {
            "value": "hr"
        },
        "db_subnet_address": {
            "value": [
                "10.1.21.0/24"
            ]
        },
        "db_subnet_name": {
            "value": "dbsubnet"
        },
        "environment": {
            "value": "dev"
        },
        "resource_group_location": {
            "value": "eastus"
        },
        "resource_group_name": {
            "value": "rg"
        },
        "vnet_address_space": {
            "value": [
                "10.1.0.0/16"
            ]
        },
        "vnet_name": {
            "value": "vnet"
        },
        "web_subnet_address": {
            "value": [
                "10.1.1.0/24"
            ]
        },
        "web_subnet_name": {
            "value": "websubnet"
        },
        "web_vmss_nsg_inbound_ports": {
            "value": [
                22,
                80,
                443
            ]
        }
    }
}