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
            "template": {
                "full_name": "registry.terraform.io/hashicorp/template",
                "name": "template"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.network",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_network_interface.nic[0].private_ip_address",
                                        "azurerm_network_interface.nic[0]",
                                        "azurerm_network_interface.nic",
                                        "azurerm_network_interface.nic[1].private_ip_address",
                                        "azurerm_network_interface.nic[1]",
                                        "azurerm_network_interface.nic"
                                    ]
                                },
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
                                "pick_host_name_from_backend_address": {
                                    "constant_value": true
                                },
                                "port": {
                                    "constant_value": 80
                                },
                                "probe_name": {
                                    "constant_value": "myProbe"
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
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.agwIP.id",
                                        "azurerm_public_ip.agwIP"
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
                                "azurerm_linux_virtual_machine.myVms[0].location",
                                "azurerm_linux_virtual_machine.myVms[0]",
                                "azurerm_linux_virtual_machine.myVms"
                            ]
                        },
                        "name": {
                            "constant_value": "myAppgatewayTerraform"
                        },
                        "probe": [
                            {
                                "interval": {
                                    "constant_value": 30
                                },
                                "name": {
                                    "constant_value": "myProbe"
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
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "constant_value": "Standard_Small"
                                },
                                "tier": {
                                    "constant_value": "Standard"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "network",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_linux_virtual_machine.myVms",
                    "count_expression": {
                        "references": [
                            "var.myIteration"
                        ]
                    },
                    "expressions": {
                        "admin_password": {
                            "constant_value": "Abc_123###"
                        },
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "custom_data": {
                            "references": [
                                "data.template_file.linux-vm-cloud-init.rendered",
                                "data.template_file.linux-vm-cloud-init"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": false
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.nic",
                                "count.index"
                            ]
                        },
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
                                "var.rg"
                            ]
                        },
                        "size": {
                            "constant_value": "Standard_F2"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "0001-com-ubuntu-server-focal"
                                },
                                "publisher": {
                                    "constant_value": "Canonical"
                                },
                                "sku": {
                                    "constant_value": "20_04-lts"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "myVms",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "azurerm_monitor_action_group.actionGrp",
                    "expressions": {
                        "email_receiver": [
                            {
                                "email_address": {
                                    "constant_value": "sidahmed.tafifet@infraxcode.com"
                                },
                                "name": {
                                    "constant_value": "mailTosend"
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "monitor-actiongroup"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "short_name": {
                            "constant_value": "myAct"
                        }
                    },
                    "mode": "managed",
                    "name": "actionGrp",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_action_group"
                },
                {
                    "address": "azurerm_monitor_metric_alert.metric",
                    "expressions": {
                        "criteria": [
                            {
                                "aggregation": {
                                    "constant_value": "Total"
                                },
                                "metric_name": {
                                    "constant_value": "TotalRequests"
                                },
                                "metric_namespace": {
                                    "constant_value": "Microsoft.Network/applicationGateways"
                                },
                                "operator": {
                                    "constant_value": "GreaterThan"
                                },
                                "skip_metric_validation": {
                                    "constant_value": true
                                },
                                "threshold": {
                                    "constant_value": 10
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Action will be triggered when more than 10 request/minute  to the app."
                        },
                        "name": {
                            "constant_value": "monitor-metricalert"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "scopes": {
                            "references": [
                                "azurerm_application_gateway.network.id",
                                "azurerm_application_gateway.network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "metric",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_metric_alert"
                },
                {
                    "address": "azurerm_nat_gateway.nat",
                    "expressions": {
                        "idle_timeout_in_minutes": {
                            "constant_value": 10
                        },
                        "location": {
                            "references": [
                                "azurerm_linux_virtual_machine.myVms[0].location",
                                "azurerm_linux_virtual_machine.myVms[0]",
                                "azurerm_linux_virtual_machine.myVms"
                            ]
                        },
                        "name": {
                            "constant_value": "nat-Gateway"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "Standard"
                        },
                        "zones": {
                            "constant_value": [
                                "1"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nat",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_nat_gateway"
                },
                {
                    "address": "azurerm_nat_gateway_public_ip_association.natAssocPubIP",
                    "expressions": {
                        "nat_gateway_id": {
                            "references": [
                                "azurerm_nat_gateway.nat.id",
                                "azurerm_nat_gateway.nat"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "azurerm_public_ip.natPubIP.id",
                                "azurerm_public_ip.natPubIP"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "natAssocPubIP",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_nat_gateway_public_ip_association"
                },
                {
                    "address": "azurerm_network_interface.nic",
                    "count_expression": {
                        "references": [
                            "var.myIteration"
                        ]
                    },
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "internal"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.mySubnet.id",
                                        "azurerm_subnet.mySubnet"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nic",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_public_ip.agwIP",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "location": {
                            "references": [
                                "azurerm_linux_virtual_machine.myVms[0].location",
                                "azurerm_linux_virtual_machine.myVms[0]",
                                "azurerm_linux_virtual_machine.myVms"
                            ]
                        },
                        "name": {
                            "constant_value": "agwPubIPterraform"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "agwIP",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.natPubIP",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_linux_virtual_machine.myVms[0].location",
                                "azurerm_linux_virtual_machine.myVms[0]",
                                "azurerm_linux_virtual_machine.myVms"
                            ]
                        },
                        "name": {
                            "constant_value": "nat-gateway-publicIP"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "zones": {
                            "constant_value": [
                                "1"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "natPubIP",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_subnet.frontend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "apgwSubnetTerraform"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vNet.name",
                                "azurerm_virtual_network.vNet"
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
                    "address": "azurerm_subnet.mySubnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "myVmSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.vNet.name",
                                "azurerm_virtual_network.vNet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "mySubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_nat_gateway_association.subnetNatgwAssoc",
                    "expressions": {
                        "nat_gateway_id": {
                            "references": [
                                "azurerm_nat_gateway.nat.id",
                                "azurerm_nat_gateway.nat"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.mySubnet.id",
                                "azurerm_subnet.mySubnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "subnetNatgwAssoc",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_nat_gateway_association"
                },
                {
                    "address": "azurerm_virtual_network.vNet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "constant_value": "vNet"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vNet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "data.template_file.linux-vm-cloud-init",
                    "expressions": {
                        "template": {
                            "constant_value": "FILENAME PLACEHOLDER"
                        }
                    },
                    "mode": "data",
                    "name": "linux-vm-cloud-init",
                    "provider_config_key": "template",
                    "schema_version": 0,
                    "type": "template_file"
                }
            ],
            "variables": {
                "myIteration": {
                    "default": 2,
                    "description": "this description for times of iteration"
                },
                "rg": {
                    "default": "1-521b9d1d-playground-sandbox"
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
                    "address": "azurerm_application_gateway.network",
                    "mode": "managed",
                    "name": "network",
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
                                "name": "vNet-backendPool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "vNet-be-htst",
                                "path": "",
                                "pick_host_name_from_backend_address": true,
                                "port": 80,
                                "probe_name": "myProbe",
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
                                "name": "vNet-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "vNet-feport",
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
                                "frontend_ip_configuration_name": "vNet-feip",
                                "frontend_port_name": "vNet-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "vNet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "myAppgatewayTerraform",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "",
                                "interval": 30,
                                "match": [],
                                "minimum_servers": 0,
                                "name": "myProbe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": true,
                                "port": null,
                                "protocol": "Http",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "vNet-backendPool",
                                "backend_http_settings_name": "vNet-be-htst",
                                "http_listener_name": "vNet-httplstn",
                                "name": "vNet-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_Small",
                                "tier": "Standard"
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
                    "address": "azurerm_linux_virtual_machine.myVms[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "myVms",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [],
                        "network_interface_ids": [],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "os_image_notification": [],
                        "plan": [],
                        "private_ip_addresses": [],
                        "public_ip_addresses": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": "Abc_123###",
                        "admin_ssh_key": [],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": false,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "eastus",
                        "max_bid_price": -1,
                        "name": "myVm0n0",
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
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "ImageDefault",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_F2",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-focal",
                                "publisher": "Canonical",
                                "sku": "20_04-lts",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "zone": null
                    }
                },
                {
                    "address": "azurerm_linux_virtual_machine.myVms[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "myVms",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [],
                        "network_interface_ids": [],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "os_image_notification": [],
                        "plan": [],
                        "private_ip_addresses": [],
                        "public_ip_addresses": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": "Abc_123###",
                        "admin_ssh_key": [],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": false,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "eastus",
                        "max_bid_price": -1,
                        "name": "myVm0n1",
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
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "ImageDefault",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_F2",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-focal",
                                "publisher": "Canonical",
                                "sku": "20_04-lts",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "zone": null
                    }
                },
                {
                    "address": "azurerm_monitor_action_group.actionGrp",
                    "mode": "managed",
                    "name": "actionGrp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "arm_role_receiver": [],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [
                            {}
                        ],
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "logic_app_receiver": [],
                        "sms_receiver": [],
                        "voice_receiver": [],
                        "webhook_receiver": []
                    },
                    "type": "azurerm_monitor_action_group",
                    "values": {
                        "arm_role_receiver": [],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [
                            {
                                "email_address": "sidahmed.tafifet@infraxcode.com",
                                "name": "mailTosend",
                                "use_common_alert_schema": null
                            }
                        ],
                        "enabled": true,
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "location": "global",
                        "logic_app_receiver": [],
                        "name": "monitor-actiongroup",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "short_name": "myAct",
                        "sms_receiver": [],
                        "tags": null,
                        "timeouts": null,
                        "voice_receiver": [],
                        "webhook_receiver": []
                    }
                },
                {
                    "address": "azurerm_monitor_metric_alert.metric",
                    "mode": "managed",
                    "name": "metric",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action": [],
                        "application_insights_web_test_location_availability_criteria": [],
                        "criteria": [
                            {
                                "dimension": []
                            }
                        ],
                        "dynamic_criteria": [],
                        "scopes": []
                    },
                    "type": "azurerm_monitor_metric_alert",
                    "values": {
                        "action": [],
                        "application_insights_web_test_location_availability_criteria": [],
                        "auto_mitigate": true,
                        "criteria": [
                            {
                                "aggregation": "Total",
                                "dimension": [],
                                "metric_name": "TotalRequests",
                                "metric_namespace": "Microsoft.Network/applicationGateways",
                                "operator": "GreaterThan",
                                "skip_metric_validation": true,
                                "threshold": 10
                            }
                        ],
                        "description": "Action will be triggered when more than 10 request/minute  to the app.",
                        "dynamic_criteria": [],
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "monitor-metricalert",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "severity": 3,
                        "tags": null,
                        "timeouts": null,
                        "window_size": "PT5M"
                    }
                },
                {
                    "address": "azurerm_nat_gateway.nat",
                    "mode": "managed",
                    "name": "nat",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "zones": [
                            false
                        ]
                    },
                    "type": "azurerm_nat_gateway",
                    "values": {
                        "idle_timeout_in_minutes": 10,
                        "location": "eastus",
                        "name": "nat-Gateway",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "sku_name": "Standard",
                        "tags": null,
                        "timeouts": null,
                        "zones": [
                            "1"
                        ]
                    }
                },
                {
                    "address": "azurerm_nat_gateway_public_ip_association.natAssocPubIP",
                    "mode": "managed",
                    "name": "natAssocPubIP",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_nat_gateway_public_ip_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "applied_dns_servers": [],
                        "dns_servers": [],
                        "ip_configuration": [
                            {}
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "internal",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "eastus",
                        "name": "myNic0",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "applied_dns_servers": [],
                        "dns_servers": [],
                        "ip_configuration": [
                            {}
                        ],
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "internal",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "eastus",
                        "name": "myNic1",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.agwIP",
                    "mode": "managed",
                    "name": "agwIP",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Dynamic",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": null,
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "eastus",
                        "name": "agwPubIPterraform",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.natPubIP",
                    "mode": "managed",
                    "name": "natPubIP",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "zones": [
                            false
                        ]
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
                        "location": "eastus",
                        "name": "nat-gateway-publicIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": [
                            "1"
                        ]
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
                            "10.0.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "apgwSubnetTerraform",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vNet"
                    }
                },
                {
                    "address": "azurerm_subnet.mySubnet",
                    "mode": "managed",
                    "name": "mySubnet",
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
                        "name": "myVmSubnet",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vNet"
                    }
                },
                {
                    "address": "azurerm_subnet_nat_gateway_association.subnetNatgwAssoc",
                    "mode": "managed",
                    "name": "subnetNatgwAssoc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_nat_gateway_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.vNet",
                    "mode": "managed",
                    "name": "vNet",
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
                            "10.0.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "name": "vNet",
                        "resource_group_name": "1-521b9d1d-playground-sandbox",
                        "tags": null,
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "root_module": {
                "resources": [
                    {
                        "address": "data.template_file.linux-vm-cloud-init",
                        "mode": "data",
                        "name": "linux-vm-cloud-init",
                        "provider_name": "registry.terraform.io/hashicorp/template",
                        "schema_version": 0,
                        "sensitive_values": {},
                        "type": "template_file",
                        "values": {
                            "filename": null,
                            "id": "2af1186a7fdf38f65237ac6af80c72c4313ab889fca594cd3e0aa60ceee57b62",
                            "rendered": "FILENAME PLACEHOLDER",
                            "template": "FILENAME PLACEHOLDER",
                            "vars": null
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
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.agwIP"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "azurerm_network_interface.nic[1]"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.vNet"
        },
        {
            "attribute": [],
            "resource": "azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "rendered"
            ],
            "resource": "data.template_file.linux-vm-cloud-init"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_linux_virtual_machine.myVms[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_nat_gateway.nat"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.network"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.mySubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.natPubIP"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "azurerm_network_interface.nic[0]"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.network",
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
                            "name": "vNet-backendPool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "vNet-be-htst",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 80,
                            "probe_name": "myProbe",
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
                            "name": "vNet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "vNet-feport",
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
                            "frontend_ip_configuration_name": "vNet-feip",
                            "frontend_port_name": "vNet-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "vNet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "myAppgatewayTerraform",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "",
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "myProbe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": true,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "vNet-backendPool",
                            "backend_http_settings_name": "vNet-be-htst",
                            "http_listener_name": "vNet-httplstn",
                            "name": "vNet-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_Small",
                            "tier": "Standard"
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
                            "ip_addresses": true
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
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_linux_virtual_machine.myVms[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Abc_123###",
                    "admin_ssh_key": [],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": false,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "eastus",
                    "max_bid_price": -1,
                    "name": "myVm0n0",
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
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "ImageDefault",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_F2",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-focal",
                            "publisher": "Canonical",
                            "sku": "20_04-lts",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [],
                    "network_interface_ids": [],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_addresses": [],
                    "public_ip_addresses": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
                    "network_interface_ids": true,
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true,
                            "name": true
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "public_ip_address": true,
                    "public_ip_addresses": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "myVms",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_linux_virtual_machine.myVms[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Abc_123###",
                    "admin_ssh_key": [],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": false,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "eastus",
                    "max_bid_price": -1,
                    "name": "myVm0n1",
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
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "ImageDefault",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_F2",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-focal",
                            "publisher": "Canonical",
                            "sku": "20_04-lts",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [],
                    "network_interface_ids": [],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_addresses": [],
                    "public_ip_addresses": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
                    "network_interface_ids": true,
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true,
                            "name": true
                        }
                    ],
                    "os_image_notification": [],
                    "plan": [],
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "public_ip_address": true,
                    "public_ip_addresses": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "termination_notification": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "myVms",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_monitor_action_group.actionGrp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "arm_role_receiver": [],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [
                        {
                            "email_address": "sidahmed.tafifet@infraxcode.com",
                            "name": "mailTosend",
                            "use_common_alert_schema": null
                        }
                    ],
                    "enabled": true,
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "location": "global",
                    "logic_app_receiver": [],
                    "name": "monitor-actiongroup",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "short_name": "myAct",
                    "sms_receiver": [],
                    "tags": null,
                    "timeouts": null,
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_sensitive": {
                    "arm_role_receiver": [],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [
                        {}
                    ],
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_unknown": {
                    "arm_role_receiver": [],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [
                        {}
                    ],
                    "event_hub_receiver": [],
                    "id": true,
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "actionGrp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_action_group"
        },
        {
            "address": "azurerm_monitor_metric_alert.metric",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action": [],
                    "application_insights_web_test_location_availability_criteria": [],
                    "auto_mitigate": true,
                    "criteria": [
                        {
                            "aggregation": "Total",
                            "dimension": [],
                            "metric_name": "TotalRequests",
                            "metric_namespace": "Microsoft.Network/applicationGateways",
                            "operator": "GreaterThan",
                            "skip_metric_validation": true,
                            "threshold": 10
                        }
                    ],
                    "description": "Action will be triggered when more than 10 request/minute  to the app.",
                    "dynamic_criteria": [],
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "monitor-metricalert",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "severity": 3,
                    "tags": null,
                    "timeouts": null,
                    "window_size": "PT5M"
                },
                "after_sensitive": {
                    "action": [],
                    "application_insights_web_test_location_availability_criteria": [],
                    "criteria": [
                        {
                            "dimension": []
                        }
                    ],
                    "dynamic_criteria": [],
                    "scopes": []
                },
                "after_unknown": {
                    "action": [],
                    "application_insights_web_test_location_availability_criteria": [],
                    "criteria": [
                        {
                            "dimension": []
                        }
                    ],
                    "dynamic_criteria": [],
                    "id": true,
                    "scopes": true,
                    "target_resource_location": true,
                    "target_resource_type": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "metric",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_metric_alert"
        },
        {
            "address": "azurerm_nat_gateway.nat",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "idle_timeout_in_minutes": 10,
                    "location": "eastus",
                    "name": "nat-Gateway",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "sku_name": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "zones": [
                        "1"
                    ]
                },
                "after_sensitive": {
                    "zones": [
                        false
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "resource_guid": true,
                    "zones": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "nat",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_nat_gateway"
        },
        {
            "address": "azurerm_nat_gateway_public_ip_association.natAssocPubIP",
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
                    "nat_gateway_id": true,
                    "public_ip_address_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "natAssocPubIP",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_nat_gateway_public_ip_association"
        },
        {
            "address": "azurerm_network_interface.nic[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "internal",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "eastus",
                    "name": "myNic0",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "applied_dns_servers": [],
                    "dns_servers": [],
                    "ip_configuration": [
                        {}
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "accelerated_networking_enabled": true,
                    "applied_dns_servers": true,
                    "dns_servers": true,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "id": true,
                    "internal_domain_name_suffix": true,
                    "ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "primary": true,
                            "private_ip_address": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.nic[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "internal",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "eastus",
                    "name": "myNic1",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "applied_dns_servers": [],
                    "dns_servers": [],
                    "ip_configuration": [
                        {}
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "accelerated_networking_enabled": true,
                    "applied_dns_servers": true,
                    "dns_servers": true,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "id": true,
                    "internal_domain_name_suffix": true,
                    "ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "primary": true,
                            "private_ip_address": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_public_ip.agwIP",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Dynamic",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": null,
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "eastus",
                    "name": "agwPubIPterraform",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "reverse_fqdn": null,
                    "sku": "Basic",
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
            "name": "agwIP",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.natPubIP",
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
                    "name": "nat-gateway-publicIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null,
                    "zones": [
                        "1"
                    ]
                },
                "after_sensitive": {
                    "zones": [
                        false
                    ]
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true,
                    "zones": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "natPubIP",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_subnet.frontend",
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
                    "name": "apgwSubnetTerraform",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vNet"
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
            "address": "azurerm_subnet.mySubnet",
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
                    "name": "myVmSubnet",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vNet"
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
            "name": "mySubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_nat_gateway_association.subnetNatgwAssoc",
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
                    "nat_gateway_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "subnetNatgwAssoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_nat_gateway_association"
        },
        {
            "address": "azurerm_virtual_network.vNet",
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
                    "location": "eastus",
                    "name": "vNet",
                    "resource_group_name": "1-521b9d1d-playground-sandbox",
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
            "name": "vNet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:06:21Z",
    "variables": {
        "myIteration": {
            "value": 2
        },
        "rg": {
            "value": "1-521b9d1d-playground-sandbox"
        }
    }
}