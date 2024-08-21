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
                "storage_account_name": {
                    "expression": {
                        "references": [
                            "azurerm_storage_account.storage_account.name",
                            "azurerm_storage_account.storage_account"
                        ]
                    }
                },
                "storage_account_primary_access_key": {
                    "expression": {
                        "references": [
                            "azurerm_storage_account.storage_account.primary_access_key",
                            "azurerm_storage_account.storage_account"
                        ]
                    },
                    "sensitive": true
                },
                "storage_account_primary_blob_endpoint": {
                    "expression": {
                        "references": [
                            "azurerm_storage_account.storage_account.primary_web_endpoint",
                            "azurerm_storage_account.storage_account"
                        ]
                    }
                },
                "storage_account_primary_web_host": {
                    "expression": {
                        "references": [
                            "azurerm_storage_account.storage_account.primary_web_host",
                            "azurerm_storage_account.storage_account"
                        ]
                    }
                },
                "virtual_network_id": {
                    "description": "ID of the virtual network",
                    "expression": {
                        "references": [
                            "azurerm_virtual_network.vnet.id",
                            "azurerm_virtual_network.vnet"
                        ]
                    }
                },
                "virtual_network_name": {
                    "description": "Name of the virtual network",
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
                    "description": "ID of the webtier subnet",
                    "expression": {
                        "references": [
                            "azurerm_subnet.websubnet.id",
                            "azurerm_subnet.websubnet"
                        ]
                    }
                },
                "web_subnet_name": {
                    "description": "Name of the webtier subnet",
                    "expression": {
                        "references": [
                            "azurerm_subnet.websubnet.name",
                            "azurerm_subnet.websubnet"
                        ]
                    }
                },
                "web_subnet_nsg_id": {
                    "description": "ID of the webtier subnet NSG",
                    "expression": {
                        "references": [
                            "azurerm_network_security_group.web_subnet_nsg.id",
                            "azurerm_network_security_group.web_subnet_nsg"
                        ]
                    }
                },
                "web_subnet_nsg_name": {
                    "description": "Name of the webtier subnet NSG",
                    "expression": {
                        "references": [
                            "azurerm_network_security_group.web_subnet_nsg.name",
                            "azurerm_network_security_group.web_subnet_nsg"
                        ]
                    }
                },
                "web_vmss_id": {
                    "description": "Web Virutal Machine Scale Set ID",
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
                                        "local.frontend_port_name_http"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            },
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_port_name_https"
                                    ]
                                },
                                "port": {
                                    "constant_value": 443
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
                                        "local.frontend_port_name_http"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_name_http"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            },
                            {
                                "custom_error_configuration": [
                                    {
                                        "custom_error_page_url": {
                                            "references": [
                                                "azurerm_storage_account.storage_account.primary_web_endpoint",
                                                "azurerm_storage_account.storage_account"
                                            ]
                                        },
                                        "status_code": {
                                            "constant_value": "HttpStatus502"
                                        }
                                    },
                                    {
                                        "custom_error_page_url": {
                                            "references": [
                                                "azurerm_storage_account.storage_account.primary_web_endpoint",
                                                "azurerm_storage_account.storage_account"
                                            ]
                                        },
                                        "status_code": {
                                            "constant_value": "HttpStatus403"
                                        }
                                    }
                                ],
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.frontend_port_name_https"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_name_https"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "ssl_certificate_name": {
                                    "references": [
                                        "local.ssl_certificate_name"
                                    ]
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
                        "redirect_configuration": [
                            {
                                "include_path": {
                                    "constant_value": true
                                },
                                "include_query_string": {
                                    "constant_value": true
                                },
                                "name": {
                                    "references": [
                                        "local.redirect_configuration_name"
                                    ]
                                },
                                "redirect_type": {
                                    "constant_value": "Permanent"
                                },
                                "target_listener_name": {
                                    "references": [
                                        "local.listener_name_https"
                                    ]
                                }
                            }
                        ],
                        "request_routing_rule": [
                            {
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_name_http"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_name_http"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 140
                                },
                                "redirect_configuration_name": {
                                    "references": [
                                        "local.redirect_configuration_name"
                                    ]
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
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
                                        "local.listener_name_https"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_name_https"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 120
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
                        ],
                        "ssl_certificate": [
                            {
                                "data": {
                                    "references": [
                                        "path.module"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.ssl_certificate_name"
                                    ]
                                },
                                "password": {
                                    "constant_value": "kalyan"
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
                            "constant_value": 2
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
                            "constant_value": "Standard_DS1_v2"
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
                        "profile": [
                            {
                                "capacity": [
                                    {
                                        "default": {
                                            "constant_value": 2
                                        },
                                        "maximum": {
                                            "constant_value": 6
                                        },
                                        "minimum": {
                                            "constant_value": 2
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
                                                    "constant_value": "Microsoft.Compute/virtualMachineScaleSets"
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
                                                    "constant_value": "Microsoft.Compute/virtualMachineScaleSets"
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
                    "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound",
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
                    "name": "web_subnet_nsg_rule_inbound",
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
                    "address": "azurerm_storage_account.storage_account",
                    "expressions": {
                        "account_kind": {
                            "references": [
                                "var.storage_account_kind"
                            ]
                        },
                        "account_replication_type": {
                            "references": [
                                "var.storage_account_replication_type"
                            ]
                        },
                        "account_tier": {
                            "references": [
                                "var.storage_account_tier"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.storage_account_name",
                                "random_string.myrandom.id",
                                "random_string.myrandom"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "static_website": [
                            {
                                "error_404_document": {
                                    "references": [
                                        "var.static_website_error_404_document"
                                    ]
                                },
                                "index_document": {
                                    "references": [
                                        "var.static_website_index_document"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "storage_account",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "azurerm_storage_blob.static_container_blob",
                    "expressions": {
                        "content_type": {
                            "constant_value": "text/html"
                        },
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "source": {
                            "references": [
                                "path.module",
                                "each.value"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "azurerm_storage_account.storage_account.name",
                                "azurerm_storage_account.storage_account"
                            ]
                        },
                        "storage_container_name": {
                            "constant_value": "$web"
                        },
                        "type": {
                            "constant_value": "Block"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.pages"
                        ]
                    },
                    "mode": "managed",
                    "name": "static_container_blob",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_blob"
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
                    "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_association",
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
                    "name": "app_subnet_nsg_association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_association",
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
                    "name": "bastion_subnet_nsg_association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_association",
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
                    "name": "db_subnet_nsg_association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_association",
                    "depends_on": [
                        "azurerm_network_security_rule.web_subnet_nsg_rule_inbound"
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
                    "name": "web_subnet_nsg_association",
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
                    "description": "Address space of the app subnet in vnet"
                },
                "app_subnet_name": {
                    "default": "app-subnet",
                    "description": "Virtual network app subnet name"
                },
                "bastion_subnet_address": {
                    "default": [
                        "10.0.100.0/24"
                    ],
                    "description": "Address space of the bastion subnet in vnet"
                },
                "bastion_subnet_name": {
                    "default": "bastion-subnet",
                    "description": "Virtual network bastion subnet name"
                },
                "business_division": {
                    "default": "sap",
                    "description": "Business Division of the large corporation the infrastructure belongs to"
                },
                "db_subnet_address": {
                    "default": [
                        "10.0.21.0/24"
                    ],
                    "description": "Address space of the db subnet in vnet"
                },
                "db_subnet_name": {
                    "default": "db-subnet",
                    "description": "Virtual network db subnet name"
                },
                "environment": {
                    "default": "dev",
                    "description": "Environment the infrastructure is deployed in"
                },
                "resource_group_location": {
                    "default": "eastus",
                    "description": "Location of Resource group"
                },
                "resource_group_name": {
                    "default": "rg-default",
                    "description": "Name of Resource group"
                },
                "static_website_error_404_document": {
                    "description": "static website error 404 document"
                },
                "static_website_index_document": {
                    "description": "static website index document"
                },
                "storage_account_kind": {
                    "description": "Kind of storage account"
                },
                "storage_account_name": {
                    "description": "Name of storage account"
                },
                "storage_account_replication_type": {
                    "description": "Replication type of storage account"
                },
                "storage_account_tier": {
                    "description": "Tier of storage account"
                },
                "vnet_address_space": {
                    "default": [
                        "10.0.0.0/16"
                    ],
                    "description": "Address space of the virtual network"
                },
                "vnet_name": {
                    "default": "vnet-default",
                    "description": "Name of the virtual network"
                },
                "web_subnet_address": {
                    "default": [
                        "10.0.1.0/24"
                    ],
                    "description": "Address space of the web subnet"
                },
                "web_subnet_name": {
                    "default": "web-subnet",
                    "description": "Virtual network web subnet name"
                },
                "web_vmss_nsg_inbound_ports": {
                    "default": [
                        "22",
                        "80",
                        "443"
                    ],
                    "description": "Web VMSS NSG inbound ports"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "storage_account_name": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "storage_account_primary_access_key": {
            "actions": [
                "create"
            ],
            "after_sensitive": true,
            "after_unknown": true,
            "before": null,
            "before_sensitive": true
        },
        "storage_account_primary_blob_endpoint": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "storage_account_primary_web_host": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
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
            "after": "hr-dev-vnet-web-subnet",
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
            "after": "hr-dev-vnet-web-subnet-nsg",
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
            "storage_account_name": {
                "sensitive": false
            },
            "storage_account_primary_access_key": {
                "sensitive": true
            },
            "storage_account_primary_blob_endpoint": {
                "sensitive": false
            },
            "storage_account_primary_web_host": {
                "sensitive": false
            },
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
                "value": "hr-dev-vnet-web-subnet"
            },
            "web_subnet_nsg_id": {
                "sensitive": false
            },
            "web_subnet_nsg_name": {
                "sensitive": false,
                "type": "string",
                "value": "hr-dev-vnet-web-subnet-nsg"
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
                            {},
                            {}
                        ],
                        "gateway_ip_configuration": [
                            {}
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [
                                    {},
                                    {}
                                ],
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
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "redirect_configuration": [
                            {}
                        ],
                        "request_routing_rule": [
                            {},
                            {}
                        ],
                        "rewrite_rule_set": [],
                        "sku": [
                            {}
                        ],
                        "ssl_certificate": true,
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
                                "name": "hr-dev-vnet-beap-app1"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "hr-dev-vnet-be-htst-app1",
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
                                "name": "hr-dev-vnet-feport-http",
                                "port": 80
                            },
                            {
                                "name": "hr-dev-vnet-feport-https",
                                "port": 443
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
                                "custom_error_configuration": [
                                    {
                                        "status_code": "HttpStatus502"
                                    },
                                    {
                                        "status_code": "HttpStatus403"
                                    }
                                ],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                                "frontend_port_name": "hr-dev-vnet-feport-https",
                                "host_name": "",
                                "host_names": [],
                                "name": "hr-dev-vnet-lstn-https",
                                "protocol": "Https",
                                "require_sni": null,
                                "ssl_certificate_name": "my-cert-1",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                                "frontend_port_name": "hr-dev-vnet-feport-http",
                                "host_name": "",
                                "host_names": [],
                                "name": "hr-dev-vnet-lstn-http",
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
                        "redirect_configuration": [
                            {
                                "include_path": true,
                                "include_query_string": true,
                                "name": "hr-dev-vnet-redirect",
                                "redirect_type": "Permanent",
                                "target_listener_name": "hr-dev-vnet-lstn-https",
                                "target_url": ""
                            }
                        ],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "hr-dev-vnet-lstn-http",
                                "name": "hr-dev-vnet-rqrt-http",
                                "priority": 140,
                                "redirect_configuration_name": "hr-dev-vnet-redirect",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "hr-dev-vnet-beap-app1",
                                "backend_http_settings_name": "hr-dev-vnet-be-htst-app1",
                                "http_listener_name": "hr-dev-vnet-lstn-https",
                                "name": "hr-dev-vnet-rqrt-https",
                                "priority": 120,
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
                        "ssl_certificate": [
                            {
                                "data": "MIILHwIBAzCCCtUGCSqGSIb3DQEHAaCCCsYEggrCMIIKvjCCBSoGCSqGSIb3DQEHBqCCBRswggUXAgEAMIIFEAYJKoZIhvcNAQcBMF8GCSqGSIb3DQEFDTBSMDEGCSqGSIb3DQEFDDAkBBB74BHtwqUHsz7dSkoaaeBGAgIIADAMBggqhkiG9w0CCQUAMB0GCWCGSAFlAwQBKgQQBI0xa/Aa7Z+n64vDe6qIHICCBKCcTJv3torzBmN7npMdK6w+O/f2bfm+aFrhxo0MAyE3ynHgN3B0SfsolzbMfCzYvt0pdOg4a1LBcHxQbWXEISqC1hwSdtmgrMLM1BxJgx5IGl0aNIvdemV8hJx3ZGAK91i5rIPms5o1nAyrA/QcLNxqxJorLBwIAjfIfosqX3BN4aJ9VSA9Hb68Ws60SN8fOafNGwHtqJeg4hIU69T+rccZ7NGhJayBdHlQZ1Jfd/zFcYgZtZn0s/NQ7LbTHV+H2iixj9VyB3/GH7vge6n8JujTc3LgckA2zOH3tRtjm4lg8Y+Y8TLif+qr4RFx5CpT8xn5n9l6EyHgJiHr3BkSLE6IFDG+Yo9hr/Mpynu2ii70OGb0U3nGn7urMkJZ2Y+jKFuAqtUqMDjX1ll6i22U825z5awqDziOAKhAsHS83uFoKlcnRczRT7UVijAjEfAuT1p02WNCgdjuTQKAyJm+IMNWuUkaGJgsS2yvfK22o7/o/ICmZf943MewBoS41huWkB460iMznmm7IXe5uHVGxoeUFHRX41UP+lIEa9qjbwC33IoVO4oSAJHwi3zUXZ1kp33tMshG5dkmo8j84iay8n1g/J9rwb7uDsrbvkA41YTeOdgAza1bfropJWj8g8cO065IY3XTsX1sJRYkwE8pAtFuomiYiCov9j8pTwvlVGZT60TclrxJWdQ1sxaPcsFWuwzbFBcdYHcWHVU5AMEGGVzWO8l7N5bq1Vam9dAGsEvLE7Pi/OdlzyIVD4SlI7h5UlT05IFL0rIPz9lCJUL1Daig5Nqw16k3uaKbDZu9D986JgsAJw8v2dRzEf1dWvnjvzLLPDXXwk8SqPwgy8Ud2NjcdG0VbNw9S+iHrqI61u1OmlrRLZVagmp4hgfSorIrqBg2B5FwzYbDGbwzkstkYuKBK900vXbDcrZEmISQeECm86qc7HGAkSxU2VsRMIWYo0CWxLvE8fUVKcKrqvrOcCfZVz43UdibIuN2EEsCA5JbNKiZ2+NpplISDWYjHkI9G6+1JFr+HrLgLMsilMv7qN1YlQ8BeRh9AdNjf9+fgd4Du1QU/aHj7MFC2qP4k372uEZlTpoYF7IEB0rL60yd7iSbwkGNdPGLeehkOz04c+yneSJRNQOI3Wl59fHVYS+u48aCS+HuU5cRiyJXbTqB2zIK3Ud3cnRU2L695UNfqybFudJvcaR+xWuKmgkmscKk3WV+3YqzYRhP9BzBQowfKed6ChZ+Ktnsms5gyS+0ipLuLDCUEiLWdYh1kBt8YO2Ye1qeQyIT7/RpoXe9uDhwffZ3eMFzl5dZTBKRM7WwreM1AVt4+3fmhGg2EDBIe39RQPQH8gmEKpiDVD6A6L8dzcYHBplX7qAGC/qlpZwmwvMQUTxhuJ/yY6OYs9c7KlcjNLX3Ny56np1ZN39Yrp1ZpTPFgJs6oDpmKVaHRGpDe9IA/32rDGRFl43dfLwZq4ldhBI0Bwv+8aI6IkIlSFdYnhZAzzkM8PVMN8zs415zQ6OWUxXAMOGpPS40SaYdMZdpmc4pmkQvEWyO7G1xVAoMGfqndhqT7uFtWBMs9P5haHcfATCCBYwGCSqGSIb3DQEHAaCCBX0EggV5MIIFdTCCBXEGCyqGSIb3DQEMCgECoIIFOTCCBTUwXwYJKoZIhvcNAQUNMFIwMQYJKoZIhvcNAQUMMCQEEF4e+YnrRgzwgfIj+cTO518CAggAMAwGCCqGSIb3DQIJBQAwHQYJYIZIAWUDBAEqBBAod59+d7FurATWQkFu5R69BIIE0K8yi6opyWJwRcFa+OFDpmu9HjgrXzNqZqhiDzJIWrEHaZvyXtxuO0NIAS9+5wk9YKLsdGDysZVmHbGFNwH8tUjPxr+3xfuW7cYP1SC/wMi+sF0XeJWAhbslxUQNIW6EKhbeSeMBmOPiCEQ1mRsmiZHJuVmqhsMzpB+wTb4lUx8c4qPoksk9S1SkSvp5MV0ibCEShsN9jUivWAKeUWM87FeTA1JJ17OS7z8m5hC/iB/lkhJTRIYGRbPSvGMBjfPhpdTMY1JzVPT9TFshoOySG0Ds3mRRMDBgpBKay/V3y3vSYJcnVrS9wA1/dMIgyWf8mIhLAaFKa4PPdptKZAuuUH7ODwioEyUG0KInFtAxZ3+2Tf3stHKrukx+cTl40Ym55NINLQF+RbeM6v8/ueHgijXkUTwSMyIjL8YEDowt+8JeoW/DHrLXjmfEQlvqYiMWO6sOLH4mxxLE91qrono8xAlumIP5k3p9rHdr8GUTqnd3WR6lmRee24yWShjEU7TWMh5aDr5IHiNF1jkJcc/4CPw155KOfyTXHD8XDWzzb3ue8gRtTB4zN1yLwMDQDH2eksmto3Es1/wHFKlQ5ixFVTBrJwL4n5B6IwDr5PnJUdnEZxOk/C3hP1hVCZmPTV9YYjqHwOShmzEaJAUAODUhaXxgwDPrqd6Z9BkPHhYJ/0oNbeyLQXETN5PMxV/q7HbA1taZJIZwhvkt4mXdWW9jWGgfooDtPrM+qht89SdHoPj2v9iPg57sSkYOVDrUE828oiQEP+H8MxGi54X+rh3NUHspN03qI/eWMKwbUlnYQR+3HpsQplxEzRt7oxQ5fgJ6OUf6uCPya8njQWc/2q7O/9CFgo/IgEe8vXdqJ5pWsKeghWBM4Xvlon7klShzY1RWZV/K5jCxyix59Mn2lhPiVfTih8kVp1gfnSDzaJHs6bzHSlJxbmaDJqXIfj2OqZ+WcNapKrUqQjYSiby26ZJ+ARgZiT62uGlsl8yHysttixTR7wVXsuwluTzIlcdpo1Se99dqbN9d/92XW2eoaIeJ3bonEMX+kj3/t3Ck4cu2BRdl6ZvCCz3OQe/pe98e/yFgXyW5fzCoLkkq4TIyEuPG8v7ZXZBp2hJspplUM9djCao+X2WmxZ22CxSWfdI/b1fQEjqoLvKGhPeDUUixxs33kLphoYj7SG2oLRdi6/kFjAO1Qp3GTyCO4KPm4K3TOa7UoOUH8jda5T1BAF8bkg3bFDfSBgGoCt9+ENs4woLUH9LnS8J892+2sxbrxDFIzIL4OBPygPfk5k3dVHF7wP6BT0qljLFtTwpdZPFEYVBxICziP4ITLXuSFLXTTjXtyoHgsOgmbiX5NEu34ekJGk8qbm7e5Kb70sdlw2c2x/Oo7p1lE19HT5OW9fWo1sSpmyzTn0HpnyrOL9NJ08Zz937UtgNeWLjwFemqtgA/evHYLptQpL+XPAiBQZM8gZ2CHcZQ4Q7UwsKqKG5EYjg3ljzcXHWtLH80ZWNgOCP/HlVe5S98UKpkmYZ5/frtzVx1JlQUS0ltH5yDKlA2R5ouuHvPADn/OIgPCzLMJHCl4VRk+f7NUkV9m1V/2qcyegK/0aVnrDgOtEOIFf7nA6bwkyVbPlmumgm4bXuJxTF/3343155iMSUwIwYJKoZIhvcNAQkVMRYEFH0cRv2LUOw74XPKrvmHQZ15l/+BMEEwMTANBglghkgBZQMEAgEFAAQgfg6mdGkOcRe6VBJCBUAsjCnmfNB81SNYbkOmRcAdeyQECFmqnRzhuivZAgIIAA==",
                                "key_vault_secret_id": "",
                                "name": "my-cert-1",
                                "password": "kalyan"
                            }
                        ],
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
                        "instances": 2,
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
                        "sku": "Standard_DS1_v2",
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
                        "notification": [],
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
                        "notification": [],
                        "predictive": [],
                        "profile": [
                            {
                                "capacity": [
                                    {
                                        "default": 2,
                                        "maximum": 6,
                                        "minimum": 2
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
                                                "metric_namespace": "Microsoft.Compute/virtualMachineScaleSets",
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
                                                "metric_namespace": "Microsoft.Compute/virtualMachineScaleSets",
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
                        "name": "hr-dev-vnet-app-subnet-nsg",
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
                        "name": "hr-dev-vnet-bastion-subnet-nsg",
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
                        "name": "hr-dev-vnet-db-subnet-nsg",
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
                        "name": "hr-dev-vnet-web-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-bastion-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-bastion-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
                        "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
                    "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"100\"]",
                    "index": "100",
                    "mode": "managed",
                    "name": "web_subnet_nsg_rule_inbound",
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
                        "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
                    "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"110\"]",
                    "index": "110",
                    "mode": "managed",
                    "name": "web_subnet_nsg_rule_inbound",
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
                        "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
                    "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"120\"]",
                    "index": "120",
                    "mode": "managed",
                    "name": "web_subnet_nsg_rule_inbound",
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
                        "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
                    "address": "azurerm_storage_account.storage_account",
                    "mode": "managed",
                    "name": "storage_account",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 4,
                    "sensitive_values": {
                        "azure_files_authentication": [],
                        "blob_properties": [],
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "identity": [],
                        "immutability_policy": [],
                        "network_rules": [],
                        "primary_access_key": true,
                        "primary_blob_connection_string": true,
                        "primary_connection_string": true,
                        "queue_properties": [],
                        "routing": [],
                        "sas_policy": [],
                        "secondary_access_key": true,
                        "secondary_blob_connection_string": true,
                        "secondary_connection_string": true,
                        "share_properties": [],
                        "static_website": [
                            {}
                        ]
                    },
                    "type": "azurerm_storage_account",
                    "values": {
                        "account_kind": "StorageV2",
                        "account_replication_type": "LRS",
                        "account_tier": "Standard",
                        "allow_nested_items_to_be_public": true,
                        "allowed_copy_scope": null,
                        "azure_files_authentication": [],
                        "cross_tenant_replication_enabled": true,
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "default_to_oauth_authentication": false,
                        "dns_endpoint_type": "Standard",
                        "edge_zone": null,
                        "identity": [],
                        "immutability_policy": [],
                        "infrastructure_encryption_enabled": false,
                        "is_hns_enabled": false,
                        "local_user_enabled": true,
                        "location": "eastus",
                        "min_tls_version": "TLS1_2",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "sas_policy": [],
                        "sftp_enabled": false,
                        "shared_access_key_enabled": true,
                        "static_website": [
                            {
                                "error_404_document": "error.html",
                                "index_document": "index.html"
                            }
                        ],
                        "table_encryption_key_type": "Service",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_blob.static_container_blob[\"403.html\"]",
                    "index": "403.html",
                    "mode": "managed",
                    "name": "static_container_blob",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "text/html",
                        "encryption_scope": null,
                        "name": "403.html",
                        "parallelism": 8,
                        "size": 0,
                        "source": "./custom_error_pages/403.html",
                        "source_content": null,
                        "source_uri": null,
                        "storage_container_name": "$web",
                        "timeouts": null,
                        "type": "Block"
                    }
                },
                {
                    "address": "azurerm_storage_blob.static_container_blob[\"502.html\"]",
                    "index": "502.html",
                    "mode": "managed",
                    "name": "static_container_blob",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "text/html",
                        "encryption_scope": null,
                        "name": "502.html",
                        "parallelism": 8,
                        "size": 0,
                        "source": "./custom_error_pages/502.html",
                        "source_content": null,
                        "source_uri": null,
                        "storage_container_name": "$web",
                        "timeouts": null,
                        "type": "Block"
                    }
                },
                {
                    "address": "azurerm_storage_blob.static_container_blob[\"error.html\"]",
                    "index": "error.html",
                    "mode": "managed",
                    "name": "static_container_blob",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "text/html",
                        "encryption_scope": null,
                        "name": "error.html",
                        "parallelism": 8,
                        "size": 0,
                        "source": "./custom_error_pages/error.html",
                        "source_content": null,
                        "source_uri": null,
                        "storage_container_name": "$web",
                        "timeouts": null,
                        "type": "Block"
                    }
                },
                {
                    "address": "azurerm_storage_blob.static_container_blob[\"index.html\"]",
                    "index": "index.html",
                    "mode": "managed",
                    "name": "static_container_blob",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "text/html",
                        "encryption_scope": null,
                        "name": "index.html",
                        "parallelism": 8,
                        "size": 0,
                        "source": "./custom_error_pages/index.html",
                        "source_content": null,
                        "source_uri": null,
                        "storage_container_name": "$web",
                        "timeouts": null,
                        "type": "Block"
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
                        "name": "hr-dev-vnet-app-subnet",
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
                            "10.1.100.0/27"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "hr-dev-vnet-bastion-subnet",
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
                        "name": "hr-dev-vnet-db-subnet",
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
                        "name": "hr-dev-vnet-web-subnet",
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
                    "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_association",
                    "mode": "managed",
                    "name": "app_subnet_nsg_association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_association",
                    "mode": "managed",
                    "name": "bastion_subnet_nsg_association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_association",
                    "mode": "managed",
                    "name": "db_subnet_nsg_association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_association",
                    "mode": "managed",
                    "name": "web_subnet_nsg_association",
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
                    "value": "hr-dev-vnet-web-subnet"
                },
                "web_subnet_nsg_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "hr-dev-vnet-web-subnet-nsg"
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
            "resource": "azurerm_subnet.dbsubnet"
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
                "id"
            ],
            "resource": "azurerm_subnet.websubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.web_ag_publicip"
        },
        {
            "attribute": [
                "primary_web_endpoint"
            ],
            "resource": "azurerm_storage_account.storage_account"
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
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.web_vmss_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.db_subnet_nsg"
        },
        {
            "attribute": [
                "primary_access_key"
            ],
            "resource": "azurerm_storage_account.storage_account"
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
            "resource": "azurerm_network_security_group.app_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.app_subnet_nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_storage_account.storage_account"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.web_subnet_nsg"
        },
        {
            "attribute": [
                "primary_web_host"
            ],
            "resource": "azurerm_storage_account.storage_account"
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
            "resource": "azurerm_subnet.bastionsubnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.ag_subnet_nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.dbsubnet"
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
            "resource": "azurerm_application_gateway.web_ag"
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
            "resource": "azurerm_network_security_group.db_subnet_nsg"
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
            "resource": "azurerm_subnet.bastionsubnet"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "azurerm_application_gateway.web_ag"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.web_ag_publicip"
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
            "resource": "azurerm_subnet.agsubnet"
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
            "resource": "azurerm_linux_virtual_machine_scale_set.web_vmss"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.web_subnet_nsg"
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
                            "name": "hr-dev-vnet-beap-app1"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "hr-dev-vnet-be-htst-app1",
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
                            "name": "hr-dev-vnet-feport-http",
                            "port": 80
                        },
                        {
                            "name": "hr-dev-vnet-feport-https",
                            "port": 443
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
                            "custom_error_configuration": [
                                {
                                    "status_code": "HttpStatus502"
                                },
                                {
                                    "status_code": "HttpStatus403"
                                }
                            ],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                            "frontend_port_name": "hr-dev-vnet-feport-https",
                            "host_name": "",
                            "host_names": [],
                            "name": "hr-dev-vnet-lstn-https",
                            "protocol": "Https",
                            "require_sni": null,
                            "ssl_certificate_name": "my-cert-1",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "hr-dev-vnet-feip",
                            "frontend_port_name": "hr-dev-vnet-feport-http",
                            "host_name": "",
                            "host_names": [],
                            "name": "hr-dev-vnet-lstn-http",
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
                    "redirect_configuration": [
                        {
                            "include_path": true,
                            "include_query_string": true,
                            "name": "hr-dev-vnet-redirect",
                            "redirect_type": "Permanent",
                            "target_listener_name": "hr-dev-vnet-lstn-https",
                            "target_url": ""
                        }
                    ],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "hr-dev-vnet-lstn-http",
                            "name": "hr-dev-vnet-rqrt-http",
                            "priority": 140,
                            "redirect_configuration_name": "hr-dev-vnet-redirect",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "hr-dev-vnet-beap-app1",
                            "backend_http_settings_name": "hr-dev-vnet-be-htst-app1",
                            "http_listener_name": "hr-dev-vnet-lstn-https",
                            "name": "hr-dev-vnet-rqrt-https",
                            "priority": 120,
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
                    "ssl_certificate": [
                        {
                            "data": "MIILHwIBAzCCCtUGCSqGSIb3DQEHAaCCCsYEggrCMIIKvjCCBSoGCSqGSIb3DQEHBqCCBRswggUXAgEAMIIFEAYJKoZIhvcNAQcBMF8GCSqGSIb3DQEFDTBSMDEGCSqGSIb3DQEFDDAkBBB74BHtwqUHsz7dSkoaaeBGAgIIADAMBggqhkiG9w0CCQUAMB0GCWCGSAFlAwQBKgQQBI0xa/Aa7Z+n64vDe6qIHICCBKCcTJv3torzBmN7npMdK6w+O/f2bfm+aFrhxo0MAyE3ynHgN3B0SfsolzbMfCzYvt0pdOg4a1LBcHxQbWXEISqC1hwSdtmgrMLM1BxJgx5IGl0aNIvdemV8hJx3ZGAK91i5rIPms5o1nAyrA/QcLNxqxJorLBwIAjfIfosqX3BN4aJ9VSA9Hb68Ws60SN8fOafNGwHtqJeg4hIU69T+rccZ7NGhJayBdHlQZ1Jfd/zFcYgZtZn0s/NQ7LbTHV+H2iixj9VyB3/GH7vge6n8JujTc3LgckA2zOH3tRtjm4lg8Y+Y8TLif+qr4RFx5CpT8xn5n9l6EyHgJiHr3BkSLE6IFDG+Yo9hr/Mpynu2ii70OGb0U3nGn7urMkJZ2Y+jKFuAqtUqMDjX1ll6i22U825z5awqDziOAKhAsHS83uFoKlcnRczRT7UVijAjEfAuT1p02WNCgdjuTQKAyJm+IMNWuUkaGJgsS2yvfK22o7/o/ICmZf943MewBoS41huWkB460iMznmm7IXe5uHVGxoeUFHRX41UP+lIEa9qjbwC33IoVO4oSAJHwi3zUXZ1kp33tMshG5dkmo8j84iay8n1g/J9rwb7uDsrbvkA41YTeOdgAza1bfropJWj8g8cO065IY3XTsX1sJRYkwE8pAtFuomiYiCov9j8pTwvlVGZT60TclrxJWdQ1sxaPcsFWuwzbFBcdYHcWHVU5AMEGGVzWO8l7N5bq1Vam9dAGsEvLE7Pi/OdlzyIVD4SlI7h5UlT05IFL0rIPz9lCJUL1Daig5Nqw16k3uaKbDZu9D986JgsAJw8v2dRzEf1dWvnjvzLLPDXXwk8SqPwgy8Ud2NjcdG0VbNw9S+iHrqI61u1OmlrRLZVagmp4hgfSorIrqBg2B5FwzYbDGbwzkstkYuKBK900vXbDcrZEmISQeECm86qc7HGAkSxU2VsRMIWYo0CWxLvE8fUVKcKrqvrOcCfZVz43UdibIuN2EEsCA5JbNKiZ2+NpplISDWYjHkI9G6+1JFr+HrLgLMsilMv7qN1YlQ8BeRh9AdNjf9+fgd4Du1QU/aHj7MFC2qP4k372uEZlTpoYF7IEB0rL60yd7iSbwkGNdPGLeehkOz04c+yneSJRNQOI3Wl59fHVYS+u48aCS+HuU5cRiyJXbTqB2zIK3Ud3cnRU2L695UNfqybFudJvcaR+xWuKmgkmscKk3WV+3YqzYRhP9BzBQowfKed6ChZ+Ktnsms5gyS+0ipLuLDCUEiLWdYh1kBt8YO2Ye1qeQyIT7/RpoXe9uDhwffZ3eMFzl5dZTBKRM7WwreM1AVt4+3fmhGg2EDBIe39RQPQH8gmEKpiDVD6A6L8dzcYHBplX7qAGC/qlpZwmwvMQUTxhuJ/yY6OYs9c7KlcjNLX3Ny56np1ZN39Yrp1ZpTPFgJs6oDpmKVaHRGpDe9IA/32rDGRFl43dfLwZq4ldhBI0Bwv+8aI6IkIlSFdYnhZAzzkM8PVMN8zs415zQ6OWUxXAMOGpPS40SaYdMZdpmc4pmkQvEWyO7G1xVAoMGfqndhqT7uFtWBMs9P5haHcfATCCBYwGCSqGSIb3DQEHAaCCBX0EggV5MIIFdTCCBXEGCyqGSIb3DQEMCgECoIIFOTCCBTUwXwYJKoZIhvcNAQUNMFIwMQYJKoZIhvcNAQUMMCQEEF4e+YnrRgzwgfIj+cTO518CAggAMAwGCCqGSIb3DQIJBQAwHQYJYIZIAWUDBAEqBBAod59+d7FurATWQkFu5R69BIIE0K8yi6opyWJwRcFa+OFDpmu9HjgrXzNqZqhiDzJIWrEHaZvyXtxuO0NIAS9+5wk9YKLsdGDysZVmHbGFNwH8tUjPxr+3xfuW7cYP1SC/wMi+sF0XeJWAhbslxUQNIW6EKhbeSeMBmOPiCEQ1mRsmiZHJuVmqhsMzpB+wTb4lUx8c4qPoksk9S1SkSvp5MV0ibCEShsN9jUivWAKeUWM87FeTA1JJ17OS7z8m5hC/iB/lkhJTRIYGRbPSvGMBjfPhpdTMY1JzVPT9TFshoOySG0Ds3mRRMDBgpBKay/V3y3vSYJcnVrS9wA1/dMIgyWf8mIhLAaFKa4PPdptKZAuuUH7ODwioEyUG0KInFtAxZ3+2Tf3stHKrukx+cTl40Ym55NINLQF+RbeM6v8/ueHgijXkUTwSMyIjL8YEDowt+8JeoW/DHrLXjmfEQlvqYiMWO6sOLH4mxxLE91qrono8xAlumIP5k3p9rHdr8GUTqnd3WR6lmRee24yWShjEU7TWMh5aDr5IHiNF1jkJcc/4CPw155KOfyTXHD8XDWzzb3ue8gRtTB4zN1yLwMDQDH2eksmto3Es1/wHFKlQ5ixFVTBrJwL4n5B6IwDr5PnJUdnEZxOk/C3hP1hVCZmPTV9YYjqHwOShmzEaJAUAODUhaXxgwDPrqd6Z9BkPHhYJ/0oNbeyLQXETN5PMxV/q7HbA1taZJIZwhvkt4mXdWW9jWGgfooDtPrM+qht89SdHoPj2v9iPg57sSkYOVDrUE828oiQEP+H8MxGi54X+rh3NUHspN03qI/eWMKwbUlnYQR+3HpsQplxEzRt7oxQ5fgJ6OUf6uCPya8njQWc/2q7O/9CFgo/IgEe8vXdqJ5pWsKeghWBM4Xvlon7klShzY1RWZV/K5jCxyix59Mn2lhPiVfTih8kVp1gfnSDzaJHs6bzHSlJxbmaDJqXIfj2OqZ+WcNapKrUqQjYSiby26ZJ+ARgZiT62uGlsl8yHysttixTR7wVXsuwluTzIlcdpo1Se99dqbN9d/92XW2eoaIeJ3bonEMX+kj3/t3Ck4cu2BRdl6ZvCCz3OQe/pe98e/yFgXyW5fzCoLkkq4TIyEuPG8v7ZXZBp2hJspplUM9djCao+X2WmxZ22CxSWfdI/b1fQEjqoLvKGhPeDUUixxs33kLphoYj7SG2oLRdi6/kFjAO1Qp3GTyCO4KPm4K3TOa7UoOUH8jda5T1BAF8bkg3bFDfSBgGoCt9+ENs4woLUH9LnS8J892+2sxbrxDFIzIL4OBPygPfk5k3dVHF7wP6BT0qljLFtTwpdZPFEYVBxICziP4ITLXuSFLXTTjXtyoHgsOgmbiX5NEu34ekJGk8qbm7e5Kb70sdlw2c2x/Oo7p1lE19HT5OW9fWo1sSpmyzTn0HpnyrOL9NJ08Zz937UtgNeWLjwFemqtgA/evHYLptQpL+XPAiBQZM8gZ2CHcZQ4Q7UwsKqKG5EYjg3ljzcXHWtLH80ZWNgOCP/HlVe5S98UKpkmYZ5/frtzVx1JlQUS0ltH5yDKlA2R5ouuHvPADn/OIgPCzLMJHCl4VRk+f7NUkV9m1V/2qcyegK/0aVnrDgOtEOIFf7nA6bwkyVbPlmumgm4bXuJxTF/3343155iMSUwIwYJKoZIhvcNAQkVMRYEFH0cRv2LUOw74XPKrvmHQZ15l/+BMEEwMTANBglghkgBZQMEAgEFAAQgfg6mdGkOcRe6VBJCBUAsjCnmfNB81SNYbkOmRcAdeyQECFmqnRzhuivZAgIIAA==",
                            "key_vault_secret_id": "",
                            "name": "my-cert-1",
                            "password": "kalyan"
                        }
                    ],
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
                        {},
                        {}
                    ],
                    "gateway_ip_configuration": [
                        {}
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [
                                {},
                                {}
                            ],
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
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "redirect_configuration": [
                        {}
                    ],
                    "request_routing_rule": [
                        {},
                        {}
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": true,
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
                        },
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
                            "custom_error_configuration": [
                                {
                                    "custom_error_page_url": true,
                                    "id": true
                                },
                                {
                                    "custom_error_page_url": true,
                                    "id": true
                                }
                            ],
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
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "redirect_configuration": [
                        {
                            "id": true,
                            "target_listener_id": true
                        }
                    ],
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
                        }
                    ],
                    "resource_group_name": true,
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": [
                        {
                            "id": true,
                            "public_cert_data": true
                        }
                    ],
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
                    "instances": 2,
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
                    "sku": "Standard_DS1_v2",
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
                    "notification": [],
                    "predictive": [],
                    "profile": [
                        {
                            "capacity": [
                                {
                                    "default": 2,
                                    "maximum": 6,
                                    "minimum": 2
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
                                            "metric_namespace": "Microsoft.Compute/virtualMachineScaleSets",
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
                                            "metric_namespace": "Microsoft.Compute/virtualMachineScaleSets",
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
                    "notification": [],
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
                    "notification": [],
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
                    "name": "hr-dev-vnet-app-subnet-nsg",
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
                    "name": "hr-dev-vnet-bastion-subnet-nsg",
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
                    "name": "hr-dev-vnet-db-subnet-nsg",
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
                    "name": "hr-dev-vnet-web-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-app-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-bastion-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-bastion-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
                    "network_security_group_name": "hr-dev-vnet-db-subnet-nsg",
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
            "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"100\"]",
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
                    "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
            "name": "web_subnet_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"110\"]",
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
                    "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
            "name": "web_subnet_nsg_rule_inbound",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_network_security_rule.web_subnet_nsg_rule_inbound[\"120\"]",
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
                    "network_security_group_name": "hr-dev-vnet-web-subnet-nsg",
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
            "name": "web_subnet_nsg_rule_inbound",
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
            "address": "azurerm_storage_account.storage_account",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_kind": "StorageV2",
                    "account_replication_type": "LRS",
                    "account_tier": "Standard",
                    "allow_nested_items_to_be_public": true,
                    "allowed_copy_scope": null,
                    "azure_files_authentication": [],
                    "cross_tenant_replication_enabled": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "default_to_oauth_authentication": false,
                    "dns_endpoint_type": "Standard",
                    "edge_zone": null,
                    "identity": [],
                    "immutability_policy": [],
                    "infrastructure_encryption_enabled": false,
                    "is_hns_enabled": false,
                    "local_user_enabled": true,
                    "location": "eastus",
                    "min_tls_version": "TLS1_2",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "sas_policy": [],
                    "sftp_enabled": false,
                    "shared_access_key_enabled": true,
                    "static_website": [
                        {
                            "error_404_document": "error.html",
                            "index_document": "index.html"
                        }
                    ],
                    "table_encryption_key_type": "Service",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "azure_files_authentication": [],
                    "blob_properties": [],
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "identity": [],
                    "immutability_policy": [],
                    "network_rules": [],
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_connection_string": true,
                    "queue_properties": [],
                    "routing": [],
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_connection_string": true,
                    "share_properties": [],
                    "static_website": [
                        {}
                    ]
                },
                "after_unknown": {
                    "access_tier": true,
                    "azure_files_authentication": [],
                    "blob_properties": true,
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "enable_https_traffic_only": true,
                    "https_traffic_only_enabled": true,
                    "id": true,
                    "identity": [],
                    "immutability_policy": [],
                    "large_file_share_enabled": true,
                    "name": true,
                    "network_rules": true,
                    "primary_access_key": true,
                    "primary_blob_connection_string": true,
                    "primary_blob_endpoint": true,
                    "primary_blob_host": true,
                    "primary_blob_internet_endpoint": true,
                    "primary_blob_internet_host": true,
                    "primary_blob_microsoft_endpoint": true,
                    "primary_blob_microsoft_host": true,
                    "primary_connection_string": true,
                    "primary_dfs_endpoint": true,
                    "primary_dfs_host": true,
                    "primary_dfs_internet_endpoint": true,
                    "primary_dfs_internet_host": true,
                    "primary_dfs_microsoft_endpoint": true,
                    "primary_dfs_microsoft_host": true,
                    "primary_file_endpoint": true,
                    "primary_file_host": true,
                    "primary_file_internet_endpoint": true,
                    "primary_file_internet_host": true,
                    "primary_file_microsoft_endpoint": true,
                    "primary_file_microsoft_host": true,
                    "primary_location": true,
                    "primary_queue_endpoint": true,
                    "primary_queue_host": true,
                    "primary_queue_microsoft_endpoint": true,
                    "primary_queue_microsoft_host": true,
                    "primary_table_endpoint": true,
                    "primary_table_host": true,
                    "primary_table_microsoft_endpoint": true,
                    "primary_table_microsoft_host": true,
                    "primary_web_endpoint": true,
                    "primary_web_host": true,
                    "primary_web_internet_endpoint": true,
                    "primary_web_internet_host": true,
                    "primary_web_microsoft_endpoint": true,
                    "primary_web_microsoft_host": true,
                    "queue_properties": true,
                    "resource_group_name": true,
                    "routing": true,
                    "sas_policy": [],
                    "secondary_access_key": true,
                    "secondary_blob_connection_string": true,
                    "secondary_blob_endpoint": true,
                    "secondary_blob_host": true,
                    "secondary_blob_internet_endpoint": true,
                    "secondary_blob_internet_host": true,
                    "secondary_blob_microsoft_endpoint": true,
                    "secondary_blob_microsoft_host": true,
                    "secondary_connection_string": true,
                    "secondary_dfs_endpoint": true,
                    "secondary_dfs_host": true,
                    "secondary_dfs_internet_endpoint": true,
                    "secondary_dfs_internet_host": true,
                    "secondary_dfs_microsoft_endpoint": true,
                    "secondary_dfs_microsoft_host": true,
                    "secondary_file_endpoint": true,
                    "secondary_file_host": true,
                    "secondary_file_internet_endpoint": true,
                    "secondary_file_internet_host": true,
                    "secondary_file_microsoft_endpoint": true,
                    "secondary_file_microsoft_host": true,
                    "secondary_location": true,
                    "secondary_queue_endpoint": true,
                    "secondary_queue_host": true,
                    "secondary_queue_microsoft_endpoint": true,
                    "secondary_queue_microsoft_host": true,
                    "secondary_table_endpoint": true,
                    "secondary_table_host": true,
                    "secondary_table_microsoft_endpoint": true,
                    "secondary_table_microsoft_host": true,
                    "secondary_web_endpoint": true,
                    "secondary_web_host": true,
                    "secondary_web_internet_endpoint": true,
                    "secondary_web_internet_host": true,
                    "secondary_web_microsoft_endpoint": true,
                    "secondary_web_microsoft_host": true,
                    "share_properties": true,
                    "static_website": [
                        {}
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "storage_account",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "azurerm_storage_blob.static_container_blob[\"403.html\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "text/html",
                    "encryption_scope": null,
                    "name": "403.html",
                    "parallelism": 8,
                    "size": 0,
                    "source": "./custom_error_pages/403.html",
                    "source_content": null,
                    "source_uri": null,
                    "storage_container_name": "$web",
                    "timeouts": null,
                    "type": "Block"
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "id": true,
                    "metadata": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "403.html",
            "mode": "managed",
            "name": "static_container_blob",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
        },
        {
            "address": "azurerm_storage_blob.static_container_blob[\"502.html\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "text/html",
                    "encryption_scope": null,
                    "name": "502.html",
                    "parallelism": 8,
                    "size": 0,
                    "source": "./custom_error_pages/502.html",
                    "source_content": null,
                    "source_uri": null,
                    "storage_container_name": "$web",
                    "timeouts": null,
                    "type": "Block"
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "id": true,
                    "metadata": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "502.html",
            "mode": "managed",
            "name": "static_container_blob",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
        },
        {
            "address": "azurerm_storage_blob.static_container_blob[\"error.html\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "text/html",
                    "encryption_scope": null,
                    "name": "error.html",
                    "parallelism": 8,
                    "size": 0,
                    "source": "./custom_error_pages/error.html",
                    "source_content": null,
                    "source_uri": null,
                    "storage_container_name": "$web",
                    "timeouts": null,
                    "type": "Block"
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "id": true,
                    "metadata": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "error.html",
            "mode": "managed",
            "name": "static_container_blob",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
        },
        {
            "address": "azurerm_storage_blob.static_container_blob[\"index.html\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "text/html",
                    "encryption_scope": null,
                    "name": "index.html",
                    "parallelism": 8,
                    "size": 0,
                    "source": "./custom_error_pages/index.html",
                    "source_content": null,
                    "source_uri": null,
                    "storage_container_name": "$web",
                    "timeouts": null,
                    "type": "Block"
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "id": true,
                    "metadata": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "index.html",
            "mode": "managed",
            "name": "static_container_blob",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
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
                    "name": "hr-dev-vnet-app-subnet",
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
                        "10.1.100.0/27"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "hr-dev-vnet-bastion-subnet",
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
                    "name": "hr-dev-vnet-db-subnet",
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
                    "name": "hr-dev-vnet-web-subnet",
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
            "address": "azurerm_subnet_network_security_group_association.app_subnet_nsg_association",
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
            "name": "app_subnet_nsg_association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.bastion_subnet_nsg_association",
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
            "name": "bastion_subnet_nsg_association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.db_subnet_nsg_association",
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
            "name": "db_subnet_nsg_association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.web_subnet_nsg_association",
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
            "name": "web_subnet_nsg_association",
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
    "timestamp": "2024-08-16T23:53:10Z",
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
            "value": "app-subnet"
        },
        "bastion_subnet_address": {
            "value": [
                "10.1.100.0/27"
            ]
        },
        "bastion_subnet_name": {
            "value": "bastion-subnet"
        },
        "business_division": {
            "value": "hr"
        },
        "db_subnet_address": {
            "value": [
                "10.1.21.0/24"
            ]
        },
        "db_subnet_name": {
            "value": "db-subnet"
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
        "static_website_error_404_document": {
            "value": "error.html"
        },
        "static_website_index_document": {
            "value": "index.html"
        },
        "storage_account_kind": {
            "value": "StorageV2"
        },
        "storage_account_name": {
            "value": "staticwebsite"
        },
        "storage_account_replication_type": {
            "value": "LRS"
        },
        "storage_account_tier": {
            "value": "Standard"
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
            "value": "web-subnet"
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