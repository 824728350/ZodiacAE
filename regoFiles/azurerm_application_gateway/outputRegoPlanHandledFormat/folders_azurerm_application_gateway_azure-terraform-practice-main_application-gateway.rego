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
            "aws": {
                "expressions": {
                    "access_key": {
                        "constant_value": "mock_access_key"
                    },
                    "region": {
                        "constant_value": "us-east-1"
                    },
                    "secret_key": {
                        "constant_value": "mock_secret_key"
                    },
                    "skip_credentials_validation": {
                        "constant_value": true
                    },
                    "skip_metadata_api_check": {
                        "constant_value": true
                    },
                    "skip_requesting_account_id": {
                        "constant_value": true
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/aws",
                "name": "aws"
            },
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
            "google": {
                "expressions": {
                    "project": {
                        "constant_value": "ZODIAC"
                    },
                    "region": {
                        "constant_value": "us-central1"
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/google",
                "name": "google"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgateway",
                    "depends_on": [
                        "azurerm_public_ip.gatewayip",
                        "azurerm_subnet.appsubnet"
                    ],
                    "expressions": {
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "HTTPSetting"
                                },
                                "path": {
                                    "constant_value": ""
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
                                    "constant_value": "front-end-ip-config"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.gatewayip.id",
                                        "azurerm_public_ip.gatewayip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "front-end-port"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "gateway-ip-config"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appsubnet.id",
                                        "azurerm_subnet.appsubnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "front-end-ip-config"
                                },
                                "frontend_port_name": {
                                    "constant_value": "front-end-port"
                                },
                                "name": {
                                    "constant_value": "gateway-listener"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "constant_value": "app-gateway"
                        },
                        "request_routing_rule": [
                            {
                                "http_listener_name": {
                                    "constant_value": "gateway-listener"
                                },
                                "name": {
                                    "constant_value": "RoutingRuleA"
                                },
                                "priority": {
                                    "constant_value": 1
                                },
                                "rule_type": {
                                    "constant_value": "PathBasedRouting"
                                },
                                "url_path_map_name": {
                                    "constant_value": "RoutingPath"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": {
                                    "references": [
                                        "local.function[0]",
                                        "local.function"
                                    ]
                                },
                                "default_backend_http_settings_name": {
                                    "constant_value": "HTTPSetting"
                                },
                                "name": {
                                    "constant_value": "RoutingPath"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "appgateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_network_interface.interface",
                    "depends_on": [
                        "azurerm_virtual_network.appnetwork"
                    ],
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
                                        "azurerm_subnet.subnetA.id",
                                        "azurerm_subnet.subnetA"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.function"
                        ]
                    },
                    "mode": "managed",
                    "name": "interface",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_security_group.appnsg",
                    "depends_on": [
                        "azurerm_virtual_network.appnetwork"
                    ],
                    "expressions": {
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "constant_value": "app-nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
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
                                    "destination_port_range": "3389",
                                    "destination_port_ranges": null,
                                    "direction": "Inbound",
                                    "name": "AllowRDP",
                                    "priority": 300,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "*",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                },
                                {
                                    "access": "Allow",
                                    "description": null,
                                    "destination_address_prefix": "*",
                                    "destination_address_prefixes": null,
                                    "destination_application_security_group_ids": null,
                                    "destination_port_range": "80",
                                    "destination_port_ranges": null,
                                    "direction": "Inbound",
                                    "name": "AllowHTTP",
                                    "priority": 400,
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
                    "name": "appnsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_public_ip.gatewayip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "constant_value": "gateway-ip"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "sku_tier": {
                            "constant_value": "Regional"
                        }
                    },
                    "mode": "managed",
                    "name": "gatewayip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.appgrp",
                    "expressions": {
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgrp",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_storage_account.vmstore4577687",
                    "depends_on": [
                        "azurerm_resource_group.appgrp"
                    ],
                    "expressions": {
                        "account_kind": {
                            "constant_value": "StorageV2"
                        },
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Standard"
                        },
                        "location": {
                            "constant_value": "North Europe"
                        },
                        "name": {
                            "constant_value": "vmstore4577687"
                        },
                        "resource_group_name": {
                            "constant_value": "app-grp"
                        }
                    },
                    "mode": "managed",
                    "name": "vmstore4577687",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "azurerm_storage_blob.IISConfig",
                    "depends_on": [
                        "azurerm_storage_container.data",
                        "azurerm_storage_account.vmstore4577687"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "source": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "storage_account_name": {
                            "constant_value": "vmstore4577687"
                        },
                        "storage_container_name": {
                            "constant_value": "data"
                        },
                        "type": {
                            "constant_value": "Block"
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.function"
                        ]
                    },
                    "mode": "managed",
                    "name": "IISConfig",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_blob"
                },
                {
                    "address": "azurerm_storage_container.data",
                    "depends_on": [
                        "azurerm_storage_account.vmstore4577687"
                    ],
                    "expressions": {
                        "container_access_type": {
                            "constant_value": "blob"
                        },
                        "name": {
                            "constant_value": "data"
                        },
                        "storage_account_name": {
                            "constant_value": "vmstore4577687"
                        }
                    },
                    "mode": "managed",
                    "name": "data",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_storage_container"
                },
                {
                    "address": "azurerm_subnet.appsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "appsubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "local.virtual_network.name",
                                "local.virtual_network"
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
                    "address": "azurerm_subnet.subnetA",
                    "depends_on": [
                        "azurerm_virtual_network.appnetwork"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.0.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "SubnetA"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "local.virtual_network.name",
                                "local.virtual_network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "subnetA",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.appnsg-link",
                    "depends_on": [
                        "azurerm_virtual_network.appnetwork",
                        "azurerm_network_security_group.appnsg"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.appnsg.id",
                                "azurerm_network_security_group.appnsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.subnetA.id",
                                "azurerm_subnet.subnetA"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appnsg-link",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_machine_extension.vmextension",
                    "depends_on": [
                        "azurerm_storage_blob.IISConfig"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "publisher": {
                            "constant_value": "Microsoft.Compute"
                        },
                        "settings": {
                            "references": [
                                "azurerm_storage_account.vmstore4577687.name",
                                "azurerm_storage_account.vmstore4577687",
                                "each.key",
                                "each.key"
                            ]
                        },
                        "type": {
                            "constant_value": "CustomScriptExtension"
                        },
                        "type_handler_version": {
                            "constant_value": "1.10"
                        },
                        "virtual_machine_id": {
                            "references": [
                                "azurerm_windows_virtual_machine.vm",
                                "each.key"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.function"
                        ]
                    },
                    "mode": "managed",
                    "name": "vmextension",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_machine_extension"
                },
                {
                    "address": "azurerm_virtual_network.appnetwork",
                    "depends_on": [
                        "azurerm_resource_group.appgrp"
                    ],
                    "expressions": {
                        "address_space": {
                            "references": [
                                "local.virtual_network.address_space",
                                "local.virtual_network"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.virtual_network.name",
                                "local.virtual_network"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appnetwork",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm",
                    "depends_on": [
                        "azurerm_virtual_network.appnetwork",
                        "azurerm_network_interface.interface"
                    ],
                    "expressions": {
                        "admin_password": {
                            "constant_value": "Azure@123"
                        },
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "location": {
                            "references": [
                                "local.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.interface",
                                "each.key"
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
                                "local.resource_group_name"
                            ]
                        },
                        "size": {
                            "constant_value": "Standard_D2s_v3"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "WindowsServer"
                                },
                                "publisher": {
                                    "constant_value": "MicrosoftWindowsServer"
                                },
                                "sku": {
                                    "constant_value": "2019-Datacenter"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ]
                    },
                    "for_each_expression": {
                        "references": [
                            "local.function"
                        ]
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine"
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
                    "address": "azurerm_application_gateway.appgateway",
                    "mode": "managed",
                    "name": "appgateway",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "ip_addresses": []
                            },
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
                        "url_path_map": [
                            {
                                "path_rule": [
                                    {
                                        "paths": [
                                            false
                                        ]
                                    },
                                    {
                                        "paths": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "waf_configuration": []
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "name": "images-pool"
                            },
                            {
                                "fqdns": [],
                                "name": "videos-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "HTTPSetting",
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
                                "name": "front-end-ip-config",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "front-end-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "gateway-ip-config"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "front-end-ip-config",
                                "frontend_port_name": "front-end-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "gateway-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "northeurope",
                        "name": "app-gateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "gateway-listener",
                                "name": "RoutingRuleA",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "PathBasedRouting",
                                "url_path_map_name": "RoutingPath"
                            }
                        ],
                        "resource_group_name": "app-grp",
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": "videos-pool",
                                "default_backend_http_settings_name": "HTTPSetting",
                                "default_redirect_configuration_name": null,
                                "default_rewrite_rule_set_name": null,
                                "name": "RoutingPath",
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": "images-pool",
                                        "backend_http_settings_name": "HTTPSetting",
                                        "firewall_policy_id": null,
                                        "name": "imagesRoutingRule",
                                        "paths": [
                                            "/images/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    },
                                    {
                                        "backend_address_pool_name": "videos-pool",
                                        "backend_http_settings_name": "HTTPSetting",
                                        "firewall_policy_id": null,
                                        "name": "videosRoutingRule",
                                        "paths": [
                                            "/videos/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    }
                                ]
                            }
                        ],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_network_interface.interface[\"images\"]",
                    "index": "images",
                    "mode": "managed",
                    "name": "interface",
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
                        "location": "northeurope",
                        "name": "images-interface",
                        "resource_group_name": "app-grp",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.interface[\"videos\"]",
                    "index": "videos",
                    "mode": "managed",
                    "name": "interface",
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
                        "location": "northeurope",
                        "name": "videos-interface",
                        "resource_group_name": "app-grp",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.appnsg",
                    "mode": "managed",
                    "name": "appnsg",
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
                            }
                        ]
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "northeurope",
                        "name": "app-nsg",
                        "resource_group_name": "app-grp",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "3389",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "AllowRDP",
                                "priority": 300,
                                "protocol": "Tcp",
                                "source_address_prefix": "*",
                                "source_address_prefixes": [],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            },
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "80",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "AllowHTTP",
                                "priority": 400,
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
                    "address": "azurerm_public_ip.gatewayip",
                    "mode": "managed",
                    "name": "gatewayip",
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
                        "location": "northeurope",
                        "name": "gateway-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "app-grp",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.appgrp",
                    "mode": "managed",
                    "name": "appgrp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "northeurope",
                        "managed_by": null,
                        "name": "app-grp",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_account.vmstore4577687",
                    "mode": "managed",
                    "name": "vmstore4577687",
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
                        "static_website": []
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
                        "location": "northeurope",
                        "min_tls_version": "TLS1_2",
                        "name": "vmstore4577687",
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "app-grp",
                        "sas_policy": [],
                        "sftp_enabled": false,
                        "shared_access_key_enabled": true,
                        "static_website": [],
                        "table_encryption_key_type": "Service",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_storage_blob.IISConfig[\"images\"]",
                    "index": "images",
                    "mode": "managed",
                    "name": "IISConfig",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "encryption_scope": null,
                        "name": "IIS_Config_images.ps1",
                        "parallelism": 8,
                        "size": 0,
                        "source": "IIS_Config_images.ps1",
                        "source_content": null,
                        "source_uri": null,
                        "storage_account_name": "vmstore4577687",
                        "storage_container_name": "data",
                        "timeouts": null,
                        "type": "Block"
                    }
                },
                {
                    "address": "azurerm_storage_blob.IISConfig[\"videos\"]",
                    "index": "videos",
                    "mode": "managed",
                    "name": "IISConfig",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_blob",
                    "values": {
                        "cache_control": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "encryption_scope": null,
                        "name": "IIS_Config_videos.ps1",
                        "parallelism": 8,
                        "size": 0,
                        "source": "IIS_Config_videos.ps1",
                        "source_content": null,
                        "source_uri": null,
                        "storage_account_name": "vmstore4577687",
                        "storage_container_name": "data",
                        "timeouts": null,
                        "type": "Block"
                    }
                },
                {
                    "address": "azurerm_storage_container.data",
                    "mode": "managed",
                    "name": "data",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": {}
                    },
                    "type": "azurerm_storage_container",
                    "values": {
                        "container_access_type": "blob",
                        "encryption_scope_override_enabled": true,
                        "name": "data",
                        "storage_account_name": "vmstore4577687",
                        "timeouts": null
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
                            "10.0.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "appsubnet",
                        "resource_group_name": "app-grp",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "app-network"
                    }
                },
                {
                    "address": "azurerm_subnet.subnetA",
                    "mode": "managed",
                    "name": "subnetA",
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
                            "10.0.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "SubnetA",
                        "resource_group_name": "app-grp",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "app-network"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.appnsg-link",
                    "mode": "managed",
                    "name": "appnsg-link",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_machine_extension.vmextension[\"images\"]",
                    "index": "images",
                    "mode": "managed",
                    "name": "vmextension",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "protected_settings": true,
                        "protected_settings_from_key_vault": []
                    },
                    "type": "azurerm_virtual_machine_extension",
                    "values": {
                        "auto_upgrade_minor_version": null,
                        "automatic_upgrade_enabled": null,
                        "failure_suppression_enabled": false,
                        "name": "images-extension",
                        "protected_settings": null,
                        "protected_settings_from_key_vault": [],
                        "provision_after_extensions": null,
                        "publisher": "Microsoft.Compute",
                        "settings": "    {\n        \"fileUris\": [\"https://vmstore4577687.blob.core.windows.net/data/IIS_Config_images.ps1\"],\n          \"commandToExecute\": \"powershell -ExecutionPolicy Unrestricted -file IIS_Config_images.ps1\"     \n    }\n",
                        "tags": null,
                        "timeouts": null,
                        "type": "CustomScriptExtension",
                        "type_handler_version": "1.10"
                    }
                },
                {
                    "address": "azurerm_virtual_machine_extension.vmextension[\"videos\"]",
                    "index": "videos",
                    "mode": "managed",
                    "name": "vmextension",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "protected_settings": true,
                        "protected_settings_from_key_vault": []
                    },
                    "type": "azurerm_virtual_machine_extension",
                    "values": {
                        "auto_upgrade_minor_version": null,
                        "automatic_upgrade_enabled": null,
                        "failure_suppression_enabled": false,
                        "name": "videos-extension",
                        "protected_settings": null,
                        "protected_settings_from_key_vault": [],
                        "provision_after_extensions": null,
                        "publisher": "Microsoft.Compute",
                        "settings": "    {\n        \"fileUris\": [\"https://vmstore4577687.blob.core.windows.net/data/IIS_Config_videos.ps1\"],\n          \"commandToExecute\": \"powershell -ExecutionPolicy Unrestricted -file IIS_Config_videos.ps1\"     \n    }\n",
                        "tags": null,
                        "timeouts": null,
                        "type": "CustomScriptExtension",
                        "type_handler_version": "1.10"
                    }
                },
                {
                    "address": "azurerm_virtual_network.appnetwork",
                    "mode": "managed",
                    "name": "appnetwork",
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
                        "location": "northeurope",
                        "name": "app-network",
                        "resource_group_name": "app-grp",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm[\"images\"]",
                    "index": "images",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
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
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": "Azure@123",
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "hotpatching_enabled": false,
                        "identity": [],
                        "license_type": null,
                        "location": "northeurope",
                        "max_bid_price": -1,
                        "name": "imagesvm",
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
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "app-grp",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_D2s_v3",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "WindowsServer",
                                "publisher": "MicrosoftWindowsServer",
                                "sku": "2019-Datacenter",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone": null
                    }
                },
                {
                    "address": "azurerm_windows_virtual_machine.vm[\"videos\"]",
                    "index": "videos",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
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
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": "Azure@123",
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "hotpatching_enabled": false,
                        "identity": [],
                        "license_type": null,
                        "location": "northeurope",
                        "max_bid_price": -1,
                        "name": "videosvm",
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
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "app-grp",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_D2s_v3",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "WindowsServer",
                                "publisher": "MicrosoftWindowsServer",
                                "sku": "2019-Datacenter",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [],
            "resource": "azurerm_windows_virtual_machine.vm"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.subnetA"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.appnsg"
        },
        {
            "attribute": [],
            "resource": "azurerm_network_interface.interface"
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
            "resource": "azurerm_public_ip.gatewayip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_storage_account.vmstore4577687"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.appgateway",
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
                            "name": "images-pool"
                        },
                        {
                            "fqdns": [],
                            "name": "videos-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "HTTPSetting",
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
                            "name": "front-end-ip-config",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "front-end-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "gateway-ip-config"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "front-end-ip-config",
                            "frontend_port_name": "front-end-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "gateway-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "northeurope",
                    "name": "app-gateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "gateway-listener",
                            "name": "RoutingRuleA",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "RoutingPath"
                        }
                    ],
                    "resource_group_name": "app-grp",
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_name": "videos-pool",
                            "default_backend_http_settings_name": "HTTPSetting",
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "RoutingPath",
                            "path_rule": [
                                {
                                    "backend_address_pool_name": "images-pool",
                                    "backend_http_settings_name": "HTTPSetting",
                                    "firewall_policy_id": null,
                                    "name": "imagesRoutingRule",
                                    "paths": [
                                        "/images/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                },
                                {
                                    "backend_address_pool_name": "videos-pool",
                                    "backend_http_settings_name": "HTTPSetting",
                                    "firewall_policy_id": null,
                                    "name": "videosRoutingRule",
                                    "paths": [
                                        "/videos/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        }
                    ],
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
                        },
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
                    "url_path_map": [
                        {
                            "path_rule": [
                                {
                                    "paths": [
                                        false
                                    ]
                                },
                                {
                                    "paths": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
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
                        },
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_http_settings_id": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                },
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        }
                    ],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_network_interface.interface[\"images\"]",
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
                    "location": "northeurope",
                    "name": "images-interface",
                    "resource_group_name": "app-grp",
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
            "index": "images",
            "mode": "managed",
            "name": "interface",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.interface[\"videos\"]",
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
                    "location": "northeurope",
                    "name": "videos-interface",
                    "resource_group_name": "app-grp",
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
            "index": "videos",
            "mode": "managed",
            "name": "interface",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_security_group.appnsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "app-nsg",
                    "resource_group_name": "app-grp",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "3389",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "AllowRDP",
                            "priority": 300,
                            "protocol": "Tcp",
                            "source_address_prefix": "*",
                            "source_address_prefixes": [],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        },
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "80",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "AllowHTTP",
                            "priority": 400,
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
            "name": "appnsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_public_ip.gatewayip",
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
                    "location": "northeurope",
                    "name": "gateway-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "app-grp",
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
            "name": "gatewayip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.appgrp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "managed_by": null,
                    "name": "app-grp",
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
            "name": "appgrp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_storage_account.vmstore4577687",
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
                    "location": "northeurope",
                    "min_tls_version": "TLS1_2",
                    "name": "vmstore4577687",
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "app-grp",
                    "sas_policy": [],
                    "sftp_enabled": false,
                    "shared_access_key_enabled": true,
                    "static_website": [],
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
                    "static_website": []
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
                    "static_website": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "vmstore4577687",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "azurerm_storage_blob.IISConfig[\"images\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "encryption_scope": null,
                    "name": "IIS_Config_images.ps1",
                    "parallelism": 8,
                    "size": 0,
                    "source": "IIS_Config_images.ps1",
                    "source_content": null,
                    "source_uri": null,
                    "storage_account_name": "vmstore4577687",
                    "storage_container_name": "data",
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
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "images",
            "mode": "managed",
            "name": "IISConfig",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
        },
        {
            "address": "azurerm_storage_blob.IISConfig[\"videos\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "cache_control": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "encryption_scope": null,
                    "name": "IIS_Config_videos.ps1",
                    "parallelism": 8,
                    "size": 0,
                    "source": "IIS_Config_videos.ps1",
                    "source_content": null,
                    "source_uri": null,
                    "storage_account_name": "vmstore4577687",
                    "storage_container_name": "data",
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
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "videos",
            "mode": "managed",
            "name": "IISConfig",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_blob"
        },
        {
            "address": "azurerm_storage_container.data",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "container_access_type": "blob",
                    "encryption_scope_override_enabled": true,
                    "name": "data",
                    "storage_account_name": "vmstore4577687",
                    "timeouts": null
                },
                "after_sensitive": {
                    "metadata": {}
                },
                "after_unknown": {
                    "default_encryption_scope": true,
                    "has_immutability_policy": true,
                    "has_legal_hold": true,
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "data",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_container"
        },
        {
            "address": "azurerm_subnet.appsubnet",
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
                    "name": "appsubnet",
                    "resource_group_name": "app-grp",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "app-network"
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
            "name": "appsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.subnetA",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "SubnetA",
                    "resource_group_name": "app-grp",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "app-network"
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
            "name": "subnetA",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.appnsg-link",
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
            "name": "appnsg-link",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_machine_extension.vmextension[\"images\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_upgrade_minor_version": null,
                    "automatic_upgrade_enabled": null,
                    "failure_suppression_enabled": false,
                    "name": "images-extension",
                    "protected_settings": null,
                    "protected_settings_from_key_vault": [],
                    "provision_after_extensions": null,
                    "publisher": "Microsoft.Compute",
                    "settings": "    {\n        \"fileUris\": [\"https://vmstore4577687.blob.core.windows.net/data/IIS_Config_images.ps1\"],\n          \"commandToExecute\": \"powershell -ExecutionPolicy Unrestricted -file IIS_Config_images.ps1\"     \n    }\n",
                    "tags": null,
                    "timeouts": null,
                    "type": "CustomScriptExtension",
                    "type_handler_version": "1.10"
                },
                "after_sensitive": {
                    "protected_settings": true,
                    "protected_settings_from_key_vault": []
                },
                "after_unknown": {
                    "id": true,
                    "protected_settings_from_key_vault": [],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "images",
            "mode": "managed",
            "name": "vmextension",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine_extension"
        },
        {
            "address": "azurerm_virtual_machine_extension.vmextension[\"videos\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_upgrade_minor_version": null,
                    "automatic_upgrade_enabled": null,
                    "failure_suppression_enabled": false,
                    "name": "videos-extension",
                    "protected_settings": null,
                    "protected_settings_from_key_vault": [],
                    "provision_after_extensions": null,
                    "publisher": "Microsoft.Compute",
                    "settings": "    {\n        \"fileUris\": [\"https://vmstore4577687.blob.core.windows.net/data/IIS_Config_videos.ps1\"],\n          \"commandToExecute\": \"powershell -ExecutionPolicy Unrestricted -file IIS_Config_videos.ps1\"     \n    }\n",
                    "tags": null,
                    "timeouts": null,
                    "type": "CustomScriptExtension",
                    "type_handler_version": "1.10"
                },
                "after_sensitive": {
                    "protected_settings": true,
                    "protected_settings_from_key_vault": []
                },
                "after_unknown": {
                    "id": true,
                    "protected_settings_from_key_vault": [],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "videos",
            "mode": "managed",
            "name": "vmextension",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine_extension"
        },
        {
            "address": "azurerm_virtual_network.appnetwork",
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
                    "location": "northeurope",
                    "name": "app-network",
                    "resource_group_name": "app-grp",
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
            "name": "appnetwork",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_windows_virtual_machine.vm[\"images\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Azure@123",
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "northeurope",
                    "max_bid_price": -1,
                    "name": "imagesvm",
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
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "app-grp",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
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
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "images",
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "azurerm_windows_virtual_machine.vm[\"videos\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Azure@123",
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "northeurope",
                    "max_bid_price": -1,
                    "name": "videosvm",
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
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "app-grp",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
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
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "videos",
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:54:49Z"
}