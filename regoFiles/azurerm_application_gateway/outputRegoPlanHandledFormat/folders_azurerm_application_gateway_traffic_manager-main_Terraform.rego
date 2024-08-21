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
            "module_calls": {
                "east_app_gateway": {
                    "expressions": {
                        "app_service_fqdn": {
                            "references": [
                                "module.east_webapp.webapp_name",
                                "module.east_webapp"
                            ]
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "public_ip_id": {
                            "references": [
                                "module.east_network.public_ip_id",
                                "module.east_network"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.east_network.subnet_id",
                                "module.east_network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.app_gateway",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "fqdns": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "name": {
                                                "constant_value": "AppService"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": "true"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            },
                                            "probe_name": {
                                                "constant_value": "probe"
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
                                                "constant_value": "frontend"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "Http"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "subnet"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "constant_value": "frontend"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
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
                                            "var.name"
                                        ]
                                    },
                                    "probe": [
                                        {
                                            "host": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "interval": {
                                                "constant_value": "30"
                                            },
                                            "name": {
                                                "constant_value": "probe"
                                            },
                                            "path": {
                                                "constant_value": "/"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "timeout": {
                                                "constant_value": "30"
                                            },
                                            "unhealthy_threshold": {
                                                "constant_value": "3"
                                            }
                                        }
                                    ],
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "AppService"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "http"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
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
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "capacity": {
                                                "constant_value": 2
                                            },
                                            "name": {
                                                "constant_value": "WAF_v2"
                                            },
                                            "tier": {
                                                "constant_value": "WAF_v2"
                                            }
                                        }
                                    ],
                                    "waf_configuration": [
                                        {
                                            "enabled": {
                                                "constant_value": "true"
                                            },
                                            "firewall_mode": {
                                                "constant_value": "Detection"
                                            },
                                            "rule_set_type": {
                                                "constant_value": "OWASP"
                                            },
                                            "rule_set_version": {
                                                "constant_value": "3.0"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_gateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "app_service_fqdn": {
                                "default": "9f43hold",
                                "description": "FQDN of the App Service to be used in the Application Gateway configuration"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Application Gateway"
                            },
                            "name": {
                                "default": "t08ghold",
                                "description": "Name for the Application Gateway"
                            },
                            "public_ip_id": {
                                "default": "10.0.0.0/16",
                                "description": "ID of the Public IP for the Application Gateway"
                            },
                            "rg_name": {
                                "default": "m1lhhold",
                                "description": "Name for the Resource Group"
                            },
                            "vnet_subnet_id": {
                                "default": "a534hold",
                                "description": "ID of the VNet Subnet for the Application Gateway"
                            }
                        }
                    },
                    "source": "./modules/app_gateway"
                },
                "east_network": {
                    "expressions": {
                        "domain_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "public_ip_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.ip.id",
                                        "azurerm_public_ip.ip"
                                    ]
                                }
                            },
                            "subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.ip",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "domain_name_label": {
                                        "references": [
                                            "var.domain_name"
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
                                            "var.public_ip_name"
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
                                "name": "ip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_resource_group.rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
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
                                "address": "azurerm_subnet.subnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "default"
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
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
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
                                            "var.vnet_name"
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
                                "name": "vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "domain_name": {
                                "default": "zchjhold",
                                "description": "Domaine Name for the public IP"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "public_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "Name for the public IP"
                            },
                            "rg_name": {
                                "default": "4j6qhold",
                                "description": "Name for the resource group"
                            },
                            "vnet_name": {
                                "default": "03urhold",
                                "description": "Name for the virtual network"
                            }
                        }
                    },
                    "source": "./modules/Network"
                },
                "east_webapp": {
                    "expressions": {
                        "app_service_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "app_service_plan_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "branch": {
                            "constant_value": "master"
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "repo_url": {
                            "constant_value": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git"
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The ID of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.id",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            },
                            "webapp_name": {
                                "description": "The default hostname of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.default_site_hostname",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_app_service.webapp",
                                "expressions": {
                                    "app_service_plan_id": {
                                        "references": [
                                            "azurerm_app_service_plan.app_service_plan.id",
                                            "azurerm_app_service_plan.app_service_plan"
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
                                            "var.app_service_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "site_config": [
                                        {
                                            "dotnet_framework_version": {
                                                "constant_value": "v6.0"
                                            }
                                        }
                                    ],
                                    "source_control": [
                                        {
                                            "branch": {
                                                "references": [
                                                    "var.branch"
                                                ]
                                            },
                                            "manual_integration": {
                                                "constant_value": true
                                            },
                                            "repo_url": {
                                                "references": [
                                                    "var.repo_url"
                                                ]
                                            },
                                            "use_mercurial": {
                                                "constant_value": false
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "webapp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_app_service"
                            },
                            {
                                "address": "azurerm_app_service_plan.app_service_plan",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_plan_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "size": {
                                                "constant_value": "S1"
                                            },
                                            "tier": {
                                                "constant_value": "Standard"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_service_plan",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_app_service_plan"
                            },
                            {
                                "address": "azurerm_resource_group.rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "app_service_name": {
                                "default": "r8wqhold",
                                "description": "Name for the App Service"
                            },
                            "app_service_plan_name": {
                                "default": "v75fhold",
                                "description": "Name for the App Service Plan"
                            },
                            "branch": {
                                "default": "i4uqhold",
                                "description": "Branch of the Git repository"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "repo_url": {
                                "default": "he5whold",
                                "description": "URL of the Git repository"
                            },
                            "rg_name": {
                                "default": "1854hold",
                                "description": "Name for the resource group"
                            }
                        }
                    },
                    "source": "./modules/App_Services"
                },
                "traffic_manager": {
                    "expressions": {
                        "location": {
                            "constant_value": "Central US"
                        },
                        "monitor_failures": {
                            "constant_value": 2
                        },
                        "monitor_interval": {
                            "constant_value": 30
                        },
                        "monitor_path": {
                            "constant_value": "/"
                        },
                        "monitor_port": {
                            "constant_value": 443
                        },
                        "monitor_protocol": {
                            "constant_value": "HTTPS"
                        },
                        "monitor_timeout": {
                            "constant_value": 10
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "primary_target_resource_id": {
                            "references": [
                                "module.east_network.public_ip_id",
                                "module.east_network"
                            ]
                        },
                        "profile_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "secondary_target_resource_id": {
                            "references": [
                                "module.west_network.public_ip_id",
                                "module.west_network"
                            ]
                        },
                        "ttl": {
                            "constant_value": 100
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_resource_group.rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
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
                                "address": "azurerm_traffic_manager_azure_endpoint.primary_endpoint",
                                "expressions": {
                                    "name": {
                                        "constant_value": "primary-endpoint"
                                    },
                                    "priority": {
                                        "constant_value": 1
                                    },
                                    "profile_id": {
                                        "references": [
                                            "azurerm_traffic_manager_profile.traffic_profile.id",
                                            "azurerm_traffic_manager_profile.traffic_profile"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.primary_target_resource_id"
                                        ]
                                    },
                                    "weight": {
                                        "constant_value": 100
                                    }
                                },
                                "mode": "managed",
                                "name": "primary_endpoint",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_azure_endpoint"
                            },
                            {
                                "address": "azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
                                "expressions": {
                                    "name": {
                                        "constant_value": "secondary-endpoint"
                                    },
                                    "priority": {
                                        "constant_value": 2
                                    },
                                    "profile_id": {
                                        "references": [
                                            "azurerm_traffic_manager_profile.traffic_profile.id",
                                            "azurerm_traffic_manager_profile.traffic_profile"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.secondary_target_resource_id"
                                        ]
                                    },
                                    "weight": {
                                        "constant_value": 100
                                    }
                                },
                                "mode": "managed",
                                "name": "secondary_endpoint",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_azure_endpoint"
                            },
                            {
                                "address": "azurerm_traffic_manager_profile.traffic_profile",
                                "expressions": {
                                    "dns_config": [
                                        {
                                            "relative_name": {
                                                "references": [
                                                    "var.name"
                                                ]
                                            },
                                            "ttl": {
                                                "references": [
                                                    "var.ttl"
                                                ]
                                            }
                                        }
                                    ],
                                    "monitor_config": [
                                        {
                                            "interval_in_seconds": {
                                                "references": [
                                                    "var.monitor_interval"
                                                ]
                                            },
                                            "path": {
                                                "references": [
                                                    "var.monitor_path"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.monitor_port"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.monitor_protocol"
                                                ]
                                            },
                                            "timeout_in_seconds": {
                                                "references": [
                                                    "var.monitor_timeout"
                                                ]
                                            },
                                            "tolerated_number_of_failures": {
                                                "references": [
                                                    "var.monitor_failures"
                                                ]
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.profile_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "traffic_routing_method": {
                                        "constant_value": "Priority"
                                    }
                                },
                                "mode": "managed",
                                "name": "traffic_profile",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_profile"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "Locationn of the resource group"
                            },
                            "monitor_failures": {
                                "default": null,
                                "description": "Number of tolerated failures for monitoring"
                            },
                            "monitor_interval": {
                                "default": null,
                                "description": "Interval in seconds for monitoring"
                            },
                            "monitor_path": {
                                "default": "rhwxhold",
                                "description": "Path used for monitoring"
                            },
                            "monitor_port": {
                                "default": null,
                                "description": "Port used for monitoring"
                            },
                            "monitor_protocol": {
                                "default": "an5rhold",
                                "description": "Protocol used for monitoring"
                            },
                            "monitor_timeout": {
                                "default": null,
                                "description": "Timeout in seconds for monitoring"
                            },
                            "name": {
                                "default": "6r0zhold",
                                "description": "Relative name for DNS configuration"
                            },
                            "primary_target_resource_id": {
                                "default": "as1mhold",
                                "description": "ID of the primary target resource (e.g., App Service)"
                            },
                            "profile_name": {
                                "default": "y027hold",
                                "description": "Name of the Traffic Manager profile"
                            },
                            "rg_name": {
                                "default": "p9e6hold",
                                "description": "Name of the resource group"
                            },
                            "secondary_target_resource_id": {
                                "default": "ug14hold",
                                "description": "ID of the secondary target resource (e.g., App Service)"
                            },
                            "ttl": {
                                "default": null,
                                "description": "Time to live for DNS records"
                            }
                        }
                    },
                    "source": "./modules/traffic_manager"
                },
                "west_app_gateway": {
                    "expressions": {
                        "app_service_fqdn": {
                            "references": [
                                "module.west_webapp.webapp_name",
                                "module.west_webapp"
                            ]
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "public_ip_id": {
                            "references": [
                                "module.west_network.public_ip_id",
                                "module.west_network"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.west_network.subnet_id",
                                "module.west_network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.app_gateway",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "fqdns": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "name": {
                                                "constant_value": "AppService"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": "true"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            },
                                            "probe_name": {
                                                "constant_value": "probe"
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
                                                "constant_value": "frontend"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "Http"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "subnet"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "constant_value": "frontend"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
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
                                            "var.name"
                                        ]
                                    },
                                    "probe": [
                                        {
                                            "host": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "interval": {
                                                "constant_value": "30"
                                            },
                                            "name": {
                                                "constant_value": "probe"
                                            },
                                            "path": {
                                                "constant_value": "/"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "timeout": {
                                                "constant_value": "30"
                                            },
                                            "unhealthy_threshold": {
                                                "constant_value": "3"
                                            }
                                        }
                                    ],
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "AppService"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "http"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
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
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "capacity": {
                                                "constant_value": 2
                                            },
                                            "name": {
                                                "constant_value": "WAF_v2"
                                            },
                                            "tier": {
                                                "constant_value": "WAF_v2"
                                            }
                                        }
                                    ],
                                    "waf_configuration": [
                                        {
                                            "enabled": {
                                                "constant_value": "true"
                                            },
                                            "firewall_mode": {
                                                "constant_value": "Detection"
                                            },
                                            "rule_set_type": {
                                                "constant_value": "OWASP"
                                            },
                                            "rule_set_version": {
                                                "constant_value": "3.0"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_gateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "app_service_fqdn": {
                                "default": "9f43hold",
                                "description": "FQDN of the App Service to be used in the Application Gateway configuration"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Application Gateway"
                            },
                            "name": {
                                "default": "t08ghold",
                                "description": "Name for the Application Gateway"
                            },
                            "public_ip_id": {
                                "default": "10.0.0.0/16",
                                "description": "ID of the Public IP for the Application Gateway"
                            },
                            "rg_name": {
                                "default": "m1lhhold",
                                "description": "Name for the Resource Group"
                            },
                            "vnet_subnet_id": {
                                "default": "a534hold",
                                "description": "ID of the VNet Subnet for the Application Gateway"
                            }
                        }
                    },
                    "source": "./modules/app_gateway"
                },
                "west_network": {
                    "expressions": {
                        "domain_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "public_ip_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.ip.id",
                                        "azurerm_public_ip.ip"
                                    ]
                                }
                            },
                            "subnet_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.ip",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "domain_name_label": {
                                        "references": [
                                            "var.domain_name"
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
                                            "var.public_ip_name"
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
                                "name": "ip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_resource_group.rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
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
                                "address": "azurerm_subnet.subnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "default"
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
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
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
                                            "var.vnet_name"
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
                                "name": "vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "domain_name": {
                                "default": "zchjhold",
                                "description": "Domaine Name for the public IP"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "public_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "Name for the public IP"
                            },
                            "rg_name": {
                                "default": "4j6qhold",
                                "description": "Name for the resource group"
                            },
                            "vnet_name": {
                                "default": "03urhold",
                                "description": "Name for the virtual network"
                            }
                        }
                    },
                    "source": "./modules/Network"
                },
                "west_webapp": {
                    "expressions": {
                        "app_service_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "app_service_plan_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "branch": {
                            "constant_value": "master"
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "repo_url": {
                            "constant_value": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git"
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The ID of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.id",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            },
                            "webapp_name": {
                                "description": "The default hostname of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.default_site_hostname",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_app_service.webapp",
                                "expressions": {
                                    "app_service_plan_id": {
                                        "references": [
                                            "azurerm_app_service_plan.app_service_plan.id",
                                            "azurerm_app_service_plan.app_service_plan"
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
                                            "var.app_service_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "site_config": [
                                        {
                                            "dotnet_framework_version": {
                                                "constant_value": "v6.0"
                                            }
                                        }
                                    ],
                                    "source_control": [
                                        {
                                            "branch": {
                                                "references": [
                                                    "var.branch"
                                                ]
                                            },
                                            "manual_integration": {
                                                "constant_value": true
                                            },
                                            "repo_url": {
                                                "references": [
                                                    "var.repo_url"
                                                ]
                                            },
                                            "use_mercurial": {
                                                "constant_value": false
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "webapp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_app_service"
                            },
                            {
                                "address": "azurerm_app_service_plan.app_service_plan",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_plan_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "size": {
                                                "constant_value": "S1"
                                            },
                                            "tier": {
                                                "constant_value": "Standard"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_service_plan",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_app_service_plan"
                            },
                            {
                                "address": "azurerm_resource_group.rg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "app_service_name": {
                                "default": "r8wqhold",
                                "description": "Name for the App Service"
                            },
                            "app_service_plan_name": {
                                "default": "v75fhold",
                                "description": "Name for the App Service Plan"
                            },
                            "branch": {
                                "default": "i4uqhold",
                                "description": "Branch of the Git repository"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "repo_url": {
                                "default": "he5whold",
                                "description": "URL of the Git repository"
                            },
                            "rg_name": {
                                "default": "1854hold",
                                "description": "Name for the resource group"
                            }
                        }
                    },
                    "source": "./modules/App_Services"
                }
            },
            "variables": {
                "environment": {
                    "default": "se3xhold",
                    "description": "Environment"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.east_app_gateway",
                    "resources": [
                        {
                            "address": "module.east_app_gateway.azurerm_application_gateway.app_gateway",
                            "mode": "managed",
                            "name": "app_gateway",
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
                                "waf_configuration": [
                                    {
                                        "disabled_rule_group": [],
                                        "exclusion": []
                                    }
                                ]
                            },
                            "type": "azurerm_application_gateway",
                            "values": {
                                "authentication_certificate": [],
                                "autoscale_configuration": [],
                                "backend_address_pool": [
                                    {
                                        "ip_addresses": [],
                                        "name": "AppService"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "http",
                                        "path": "",
                                        "pick_host_name_from_backend_address": true,
                                        "port": 80,
                                        "probe_name": "probe",
                                        "protocol": "Http",
                                        "request_timeout": 1,
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
                                        "name": "frontend",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "Http",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "subnet"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "frontend",
                                        "frontend_port_name": "http",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "http",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "app-gateway-eastus-se3xhold",
                                "private_link_configuration": [],
                                "probe": [
                                    {
                                        "interval": 30,
                                        "match": [],
                                        "minimum_servers": 0,
                                        "name": "probe",
                                        "path": "/",
                                        "pick_host_name_from_backend_http_settings": false,
                                        "port": null,
                                        "protocol": "Http",
                                        "timeout": 30,
                                        "unhealthy_threshold": 3
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "AppService",
                                        "backend_http_settings_name": "http",
                                        "http_listener_name": "http",
                                        "name": "http",
                                        "priority": 100,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "east_rg-se3xhold",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": 2,
                                        "name": "WAF_v2",
                                        "tier": "WAF_v2"
                                    }
                                ],
                                "ssl_certificate": [],
                                "ssl_profile": [],
                                "tags": null,
                                "timeouts": null,
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
                                "waf_configuration": [
                                    {
                                        "disabled_rule_group": [],
                                        "enabled": true,
                                        "exclusion": [],
                                        "file_upload_limit_mb": 100,
                                        "firewall_mode": "Detection",
                                        "max_request_body_size_kb": 128,
                                        "request_body_check": true,
                                        "rule_set_type": "OWASP",
                                        "rule_set_version": "3.0"
                                    }
                                ],
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.east_network",
                    "resources": [
                        {
                            "address": "module.east_network.azurerm_public_ip.ip",
                            "mode": "managed",
                            "name": "ip",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_public_ip",
                            "values": {
                                "allocation_method": "Static",
                                "ddos_protection_mode": "VirtualNetworkInherited",
                                "ddos_protection_plan_id": null,
                                "domain_name_label": "ipeastusse3xhold",
                                "edge_zone": null,
                                "idle_timeout_in_minutes": 4,
                                "ip_tags": null,
                                "ip_version": "IPv4",
                                "location": "eastus",
                                "name": "ip-eastus-se3xhold",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "east_rg-se3xhold",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_subnet.subnet",
                            "mode": "managed",
                            "name": "subnet",
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
                                "name": "default",
                                "resource_group_name": "east_rg-se3xhold",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "vnet-eastus-se3xhold"
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_virtual_network.vnet",
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
                                "name": "vnet-eastus-se3xhold",
                                "resource_group_name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.east_webapp",
                    "resources": [
                        {
                            "address": "module.east_webapp.azurerm_app_service.webapp",
                            "mode": "managed",
                            "name": "webapp",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "app_settings": {},
                                "auth_settings": [],
                                "backup": [],
                                "connection_string": [],
                                "identity": [],
                                "logs": [],
                                "outbound_ip_address_list": [],
                                "possible_outbound_ip_address_list": [],
                                "site_config": [
                                    {
                                        "cors": [],
                                        "ip_restriction": [],
                                        "scm_ip_restriction": []
                                    }
                                ],
                                "site_credential": [],
                                "source_control": [
                                    {}
                                ],
                                "storage_account": []
                            },
                            "type": "azurerm_app_service",
                            "values": {
                                "backup": [],
                                "client_affinity_enabled": false,
                                "client_cert_enabled": false,
                                "enabled": true,
                                "https_only": false,
                                "identity": [],
                                "location": "eastus",
                                "name": "EastWebApp-se3xhold",
                                "resource_group_name": "east_rg-se3xhold",
                                "site_config": [
                                    {
                                        "acr_use_managed_identity_credentials": false,
                                        "acr_user_managed_identity_client_id": null,
                                        "always_on": false,
                                        "app_command_line": null,
                                        "auto_swap_slot_name": null,
                                        "default_documents": null,
                                        "dotnet_framework_version": "v6.0",
                                        "health_check_path": null,
                                        "http2_enabled": false,
                                        "java_container": null,
                                        "java_container_version": null,
                                        "java_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "remote_debugging_enabled": false,
                                        "scm_use_main_ip_restriction": false,
                                        "use_32_bit_worker_process": null
                                    }
                                ],
                                "source_control": [
                                    {
                                        "branch": "master",
                                        "manual_integration": true,
                                        "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git",
                                        "use_mercurial": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.east_webapp.azurerm_app_service_plan.app_service_plan",
                            "mode": "managed",
                            "name": "app_service_plan",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "sku": [
                                    {}
                                ]
                            },
                            "type": "azurerm_app_service_plan",
                            "values": {
                                "app_service_environment_id": null,
                                "is_xenon": null,
                                "kind": "Windows",
                                "location": "eastus",
                                "name": "EastServicePlan-se3xhold",
                                "per_site_scaling": null,
                                "reserved": null,
                                "resource_group_name": "east_rg-se3xhold",
                                "sku": [
                                    {
                                        "size": "S1",
                                        "tier": "Standard"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "zone_redundant": null
                            }
                        },
                        {
                            "address": "module.east_webapp.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.traffic_manager",
                    "resources": [
                        {
                            "address": "module.traffic_manager.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "centralus",
                                "managed_by": null,
                                "name": "traffic_manager_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.primary_endpoint",
                            "mode": "managed",
                            "name": "primary_endpoint",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "custom_header": [],
                                "subnet": []
                            },
                            "type": "azurerm_traffic_manager_azure_endpoint",
                            "values": {
                                "always_serve_enabled": false,
                                "custom_header": [],
                                "enabled": true,
                                "geo_mappings": null,
                                "name": "primary-endpoint",
                                "priority": 1,
                                "subnet": [],
                                "timeouts": null,
                                "weight": 100
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
                            "mode": "managed",
                            "name": "secondary_endpoint",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "custom_header": [],
                                "subnet": []
                            },
                            "type": "azurerm_traffic_manager_azure_endpoint",
                            "values": {
                                "always_serve_enabled": false,
                                "custom_header": [],
                                "enabled": true,
                                "geo_mappings": null,
                                "name": "secondary-endpoint",
                                "priority": 2,
                                "subnet": [],
                                "timeouts": null,
                                "weight": 100
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile",
                            "mode": "managed",
                            "name": "traffic_profile",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "dns_config": [
                                    {}
                                ],
                                "monitor_config": [
                                    {
                                        "custom_header": []
                                    }
                                ]
                            },
                            "type": "azurerm_traffic_manager_profile",
                            "values": {
                                "dns_config": [
                                    {
                                        "relative_name": "traffic-profile1937-se3xhold",
                                        "ttl": 100
                                    }
                                ],
                                "max_return": null,
                                "monitor_config": [
                                    {
                                        "custom_header": [],
                                        "expected_status_code_ranges": null,
                                        "interval_in_seconds": 30,
                                        "path": "/",
                                        "port": 443,
                                        "protocol": "HTTPS",
                                        "timeout_in_seconds": 10,
                                        "tolerated_number_of_failures": 2
                                    }
                                ],
                                "name": "traffic-profile1937-se3xhold",
                                "resource_group_name": "traffic_manager_rg-se3xhold",
                                "tags": null,
                                "timeouts": null,
                                "traffic_routing_method": "Priority",
                                "traffic_view_enabled": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.west_app_gateway",
                    "resources": [
                        {
                            "address": "module.west_app_gateway.azurerm_application_gateway.app_gateway",
                            "mode": "managed",
                            "name": "app_gateway",
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
                                "waf_configuration": [
                                    {
                                        "disabled_rule_group": [],
                                        "exclusion": []
                                    }
                                ]
                            },
                            "type": "azurerm_application_gateway",
                            "values": {
                                "authentication_certificate": [],
                                "autoscale_configuration": [],
                                "backend_address_pool": [
                                    {
                                        "ip_addresses": [],
                                        "name": "AppService"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "http",
                                        "path": "",
                                        "pick_host_name_from_backend_address": true,
                                        "port": 80,
                                        "probe_name": "probe",
                                        "protocol": "Http",
                                        "request_timeout": 1,
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
                                        "name": "frontend",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "Http",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "subnet"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "frontend",
                                        "frontend_port_name": "http",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "http",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "westeurope",
                                "name": "app-gateway-westus-se3xhold",
                                "private_link_configuration": [],
                                "probe": [
                                    {
                                        "interval": 30,
                                        "match": [],
                                        "minimum_servers": 0,
                                        "name": "probe",
                                        "path": "/",
                                        "pick_host_name_from_backend_http_settings": false,
                                        "port": null,
                                        "protocol": "Http",
                                        "timeout": 30,
                                        "unhealthy_threshold": 3
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "AppService",
                                        "backend_http_settings_name": "http",
                                        "http_listener_name": "http",
                                        "name": "http",
                                        "priority": 100,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "west_rg-se3xhold",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": 2,
                                        "name": "WAF_v2",
                                        "tier": "WAF_v2"
                                    }
                                ],
                                "ssl_certificate": [],
                                "ssl_profile": [],
                                "tags": null,
                                "timeouts": null,
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
                                "waf_configuration": [
                                    {
                                        "disabled_rule_group": [],
                                        "enabled": true,
                                        "exclusion": [],
                                        "file_upload_limit_mb": 100,
                                        "firewall_mode": "Detection",
                                        "max_request_body_size_kb": 128,
                                        "request_body_check": true,
                                        "rule_set_type": "OWASP",
                                        "rule_set_version": "3.0"
                                    }
                                ],
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.west_network",
                    "resources": [
                        {
                            "address": "module.west_network.azurerm_public_ip.ip",
                            "mode": "managed",
                            "name": "ip",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_public_ip",
                            "values": {
                                "allocation_method": "Static",
                                "ddos_protection_mode": "VirtualNetworkInherited",
                                "ddos_protection_plan_id": null,
                                "domain_name_label": "ipwestusse3xhold",
                                "edge_zone": null,
                                "idle_timeout_in_minutes": 4,
                                "ip_tags": null,
                                "ip_version": "IPv4",
                                "location": "westeurope",
                                "name": "ip-westus-se3xhold",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "west_rg-se3xhold",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "westeurope",
                                "managed_by": null,
                                "name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_subnet.subnet",
                            "mode": "managed",
                            "name": "subnet",
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
                                "name": "default",
                                "resource_group_name": "west_rg-se3xhold",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "vnet-westus-se3xhold"
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_virtual_network.vnet",
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
                                "location": "westeurope",
                                "name": "vnet-westus-se3xhold",
                                "resource_group_name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.west_webapp",
                    "resources": [
                        {
                            "address": "module.west_webapp.azurerm_app_service.webapp",
                            "mode": "managed",
                            "name": "webapp",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "app_settings": {},
                                "auth_settings": [],
                                "backup": [],
                                "connection_string": [],
                                "identity": [],
                                "logs": [],
                                "outbound_ip_address_list": [],
                                "possible_outbound_ip_address_list": [],
                                "site_config": [
                                    {
                                        "cors": [],
                                        "ip_restriction": [],
                                        "scm_ip_restriction": []
                                    }
                                ],
                                "site_credential": [],
                                "source_control": [
                                    {}
                                ],
                                "storage_account": []
                            },
                            "type": "azurerm_app_service",
                            "values": {
                                "backup": [],
                                "client_affinity_enabled": false,
                                "client_cert_enabled": false,
                                "enabled": true,
                                "https_only": false,
                                "identity": [],
                                "location": "westeurope",
                                "name": "WestWebApp-se3xhold",
                                "resource_group_name": "west_rg-se3xhold",
                                "site_config": [
                                    {
                                        "acr_use_managed_identity_credentials": false,
                                        "acr_user_managed_identity_client_id": null,
                                        "always_on": false,
                                        "app_command_line": null,
                                        "auto_swap_slot_name": null,
                                        "default_documents": null,
                                        "dotnet_framework_version": "v6.0",
                                        "health_check_path": null,
                                        "http2_enabled": false,
                                        "java_container": null,
                                        "java_container_version": null,
                                        "java_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "remote_debugging_enabled": false,
                                        "scm_use_main_ip_restriction": false,
                                        "use_32_bit_worker_process": null
                                    }
                                ],
                                "source_control": [
                                    {
                                        "branch": "master",
                                        "manual_integration": true,
                                        "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git",
                                        "use_mercurial": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.west_webapp.azurerm_app_service_plan.app_service_plan",
                            "mode": "managed",
                            "name": "app_service_plan",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "sku": [
                                    {}
                                ]
                            },
                            "type": "azurerm_app_service_plan",
                            "values": {
                                "app_service_environment_id": null,
                                "is_xenon": null,
                                "kind": "Windows",
                                "location": "westeurope",
                                "name": "WestServicePlan-se3xhold",
                                "per_site_scaling": null,
                                "reserved": null,
                                "resource_group_name": "west_rg-se3xhold",
                                "sku": [
                                    {
                                        "size": "S1",
                                        "tier": "Standard"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "zone_redundant": null
                            }
                        },
                        {
                            "address": "module.west_webapp.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "westeurope",
                                "managed_by": null,
                                "name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "location"
            ],
            "resource": "module.west_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_network.azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_network.azurerm_public_ip.ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.east_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_network.azurerm_public_ip.ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_network.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.traffic_manager.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_network.azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_webapp.azurerm_app_service_plan.app_service_plan"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_network.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.east_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.west_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_webapp.azurerm_app_service_plan.app_service_plan"
        },
        {
            "attribute": [
                "default_site_hostname"
            ],
            "resource": "module.west_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "default_site_hostname"
            ],
            "resource": "module.east_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_network.azurerm_resource_group.rg"
        }
    ],
    "resource_changes": [
        {
            "address": "module.east_app_gateway.azurerm_application_gateway.app_gateway",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "ip_addresses": [],
                            "name": "AppService"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 80,
                            "probe_name": "probe",
                            "protocol": "Http",
                            "request_timeout": 1,
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
                            "name": "frontend",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "Http",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "subnet"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend",
                            "frontend_port_name": "http",
                            "host_name": "",
                            "host_names": [],
                            "name": "http",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "app-gateway-eastus-se3xhold",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AppService",
                            "backend_http_settings_name": "http",
                            "http_listener_name": "http",
                            "name": "http",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "east_rg-se3xhold",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "enabled": true,
                            "exclusion": [],
                            "file_upload_limit_mb": 100,
                            "firewall_mode": "Detection",
                            "max_request_body_size_kb": 128,
                            "request_body_check": true,
                            "rule_set_type": "OWASP",
                            "rule_set_version": "3.0"
                        }
                    ],
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
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
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
                            "host": true,
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
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.east_app_gateway",
            "name": "app_gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.east_network.azurerm_public_ip.ip",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "ipeastusse3xhold",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "eastus",
                    "name": "ip-eastus-se3xhold",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.east_network.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.east_network.azurerm_subnet.subnet",
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
                    "name": "default",
                    "resource_group_name": "east_rg-se3xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-eastus-se3xhold"
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
            "module_address": "module.east_network",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.east_network.azurerm_virtual_network.vnet",
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
                    "name": "vnet-eastus-se3xhold",
                    "resource_group_name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.east_webapp.azurerm_app_service.webapp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_cert_enabled": false,
                    "enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "eastus",
                    "name": "EastWebApp-se3xhold",
                    "resource_group_name": "east_rg-se3xhold",
                    "site_config": [
                        {
                            "acr_use_managed_identity_credentials": false,
                            "acr_user_managed_identity_client_id": null,
                            "always_on": false,
                            "app_command_line": null,
                            "auto_swap_slot_name": null,
                            "default_documents": null,
                            "dotnet_framework_version": "v6.0",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "java_container": null,
                            "java_container_version": null,
                            "java_version": null,
                            "php_version": null,
                            "python_version": null,
                            "remote_debugging_enabled": false,
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker_process": null
                        }
                    ],
                    "source_control": [
                        {
                            "branch": "master",
                            "manual_integration": true,
                            "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git",
                            "use_mercurial": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "backup": [],
                    "connection_string": [],
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "cors": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": [],
                    "source_control": [
                        {}
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_service_plan_id": true,
                    "app_settings": true,
                    "auth_settings": true,
                    "backup": [],
                    "client_cert_mode": true,
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "default_site_hostname": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "logs": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "cors": true,
                            "ftps_state": true,
                            "ip_restriction": true,
                            "linux_fx_version": true,
                            "local_mysql_enabled": true,
                            "managed_pipeline_mode": true,
                            "min_tls_version": true,
                            "number_of_workers": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": true,
                            "scm_type": true,
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true,
                            "windows_fx_version": true
                        }
                    ],
                    "site_credential": true,
                    "source_control": [
                        {
                            "rollback_enabled": true
                        }
                    ],
                    "storage_account": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.east_webapp",
            "name": "webapp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service"
        },
        {
            "address": "module.east_webapp.azurerm_app_service_plan.app_service_plan",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "is_xenon": null,
                    "kind": "Windows",
                    "location": "eastus",
                    "name": "EastServicePlan-se3xhold",
                    "per_site_scaling": null,
                    "reserved": null,
                    "resource_group_name": "east_rg-se3xhold",
                    "sku": [
                        {
                            "size": "S1",
                            "tier": "Standard"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "zone_redundant": null
                },
                "after_sensitive": {
                    "sku": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "maximum_elastic_worker_count": true,
                    "maximum_number_of_workers": true,
                    "sku": [
                        {
                            "capacity": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.east_webapp",
            "name": "app_service_plan",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_plan"
        },
        {
            "address": "module.east_webapp.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "east_rg-se3xhold",
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
            "module_address": "module.east_webapp",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.traffic_manager.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "managed_by": null,
                    "name": "traffic_manager_rg-se3xhold",
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
            "module_address": "module.traffic_manager",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.primary_endpoint",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "always_serve_enabled": false,
                    "custom_header": [],
                    "enabled": true,
                    "geo_mappings": null,
                    "name": "primary-endpoint",
                    "priority": 1,
                    "subnet": [],
                    "timeouts": null,
                    "weight": 100
                },
                "after_sensitive": {
                    "custom_header": [],
                    "subnet": []
                },
                "after_unknown": {
                    "custom_header": [],
                    "id": true,
                    "profile_id": true,
                    "subnet": [],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "primary_endpoint",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_azure_endpoint"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "always_serve_enabled": false,
                    "custom_header": [],
                    "enabled": true,
                    "geo_mappings": null,
                    "name": "secondary-endpoint",
                    "priority": 2,
                    "subnet": [],
                    "timeouts": null,
                    "weight": 100
                },
                "after_sensitive": {
                    "custom_header": [],
                    "subnet": []
                },
                "after_unknown": {
                    "custom_header": [],
                    "id": true,
                    "profile_id": true,
                    "subnet": [],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "secondary_endpoint",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_azure_endpoint"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dns_config": [
                        {
                            "relative_name": "traffic-profile1937-se3xhold",
                            "ttl": 100
                        }
                    ],
                    "max_return": null,
                    "monitor_config": [
                        {
                            "custom_header": [],
                            "expected_status_code_ranges": null,
                            "interval_in_seconds": 30,
                            "path": "/",
                            "port": 443,
                            "protocol": "HTTPS",
                            "timeout_in_seconds": 10,
                            "tolerated_number_of_failures": 2
                        }
                    ],
                    "name": "traffic-profile1937-se3xhold",
                    "resource_group_name": "traffic_manager_rg-se3xhold",
                    "tags": null,
                    "timeouts": null,
                    "traffic_routing_method": "Priority",
                    "traffic_view_enabled": null
                },
                "after_sensitive": {
                    "dns_config": [
                        {}
                    ],
                    "monitor_config": [
                        {
                            "custom_header": []
                        }
                    ]
                },
                "after_unknown": {
                    "dns_config": [
                        {}
                    ],
                    "fqdn": true,
                    "id": true,
                    "monitor_config": [
                        {
                            "custom_header": []
                        }
                    ],
                    "profile_status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "traffic_profile",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_profile"
        },
        {
            "address": "module.west_app_gateway.azurerm_application_gateway.app_gateway",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "ip_addresses": [],
                            "name": "AppService"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 80,
                            "probe_name": "probe",
                            "protocol": "Http",
                            "request_timeout": 1,
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
                            "name": "frontend",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "Http",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "subnet"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend",
                            "frontend_port_name": "http",
                            "host_name": "",
                            "host_names": [],
                            "name": "http",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "app-gateway-westus-se3xhold",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AppService",
                            "backend_http_settings_name": "http",
                            "http_listener_name": "http",
                            "name": "http",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "west_rg-se3xhold",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "enabled": true,
                            "exclusion": [],
                            "file_upload_limit_mb": 100,
                            "firewall_mode": "Detection",
                            "max_request_body_size_kb": 128,
                            "request_body_check": true,
                            "rule_set_type": "OWASP",
                            "rule_set_version": "3.0"
                        }
                    ],
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
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
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
                            "host": true,
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
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.west_app_gateway",
            "name": "app_gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.west_network.azurerm_public_ip.ip",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "ipwestusse3xhold",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "westeurope",
                    "name": "ip-westus-se3xhold",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.west_network.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.west_network.azurerm_subnet.subnet",
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
                    "name": "default",
                    "resource_group_name": "west_rg-se3xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-westus-se3xhold"
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
            "module_address": "module.west_network",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.west_network.azurerm_virtual_network.vnet",
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
                    "location": "westeurope",
                    "name": "vnet-westus-se3xhold",
                    "resource_group_name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.west_webapp.azurerm_app_service.webapp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_cert_enabled": false,
                    "enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "westeurope",
                    "name": "WestWebApp-se3xhold",
                    "resource_group_name": "west_rg-se3xhold",
                    "site_config": [
                        {
                            "acr_use_managed_identity_credentials": false,
                            "acr_user_managed_identity_client_id": null,
                            "always_on": false,
                            "app_command_line": null,
                            "auto_swap_slot_name": null,
                            "default_documents": null,
                            "dotnet_framework_version": "v6.0",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "java_container": null,
                            "java_container_version": null,
                            "java_version": null,
                            "php_version": null,
                            "python_version": null,
                            "remote_debugging_enabled": false,
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker_process": null
                        }
                    ],
                    "source_control": [
                        {
                            "branch": "master",
                            "manual_integration": true,
                            "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git",
                            "use_mercurial": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "backup": [],
                    "connection_string": [],
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "cors": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": [],
                    "source_control": [
                        {}
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_service_plan_id": true,
                    "app_settings": true,
                    "auth_settings": true,
                    "backup": [],
                    "client_cert_mode": true,
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "default_site_hostname": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "logs": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "cors": true,
                            "ftps_state": true,
                            "ip_restriction": true,
                            "linux_fx_version": true,
                            "local_mysql_enabled": true,
                            "managed_pipeline_mode": true,
                            "min_tls_version": true,
                            "number_of_workers": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": true,
                            "scm_type": true,
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true,
                            "windows_fx_version": true
                        }
                    ],
                    "site_credential": true,
                    "source_control": [
                        {
                            "rollback_enabled": true
                        }
                    ],
                    "storage_account": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.west_webapp",
            "name": "webapp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service"
        },
        {
            "address": "module.west_webapp.azurerm_app_service_plan.app_service_plan",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "is_xenon": null,
                    "kind": "Windows",
                    "location": "westeurope",
                    "name": "WestServicePlan-se3xhold",
                    "per_site_scaling": null,
                    "reserved": null,
                    "resource_group_name": "west_rg-se3xhold",
                    "sku": [
                        {
                            "size": "S1",
                            "tier": "Standard"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "zone_redundant": null
                },
                "after_sensitive": {
                    "sku": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "maximum_elastic_worker_count": true,
                    "maximum_number_of_workers": true,
                    "sku": [
                        {
                            "capacity": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.west_webapp",
            "name": "app_service_plan",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_plan"
        },
        {
            "address": "module.west_webapp.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "west_rg-se3xhold",
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
            "module_address": "module.west_webapp",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:21:09Z",
    "variables": {
        "environment": {
            "value": "se3xhold"
        }
    }
}