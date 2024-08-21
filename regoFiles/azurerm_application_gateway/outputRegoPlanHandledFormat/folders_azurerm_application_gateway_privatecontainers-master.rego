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
            "module.sampleapp:azurerm": {
                "expressions": {
                    "features": [
                        {}
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "module_address": "module.sampleapp",
                "name": "azurerm"
            },
            "module.sampleapp:random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "module_address": "module.sampleapp",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "sampleapp": {
                    "expressions": {
                        "common_tags": {
                            "references": [
                                "var.common_tags"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "constant_value": "appl-test-containerapp-westeurope"
                        },
                        "subscription_id": {
                            "constant_value": "4900d9ad-3740-49ee-8e3f-75dba81a55d6"
                        }
                    },
                    "module": {
                        "module_calls": {
                            "application_gateway": {
                                "expressions": {
                                    "autoscale_configuration": {
                                        "constant_value": {
                                            "max_capacity": 2,
                                            "min_capacity": 1
                                        }
                                    },
                                    "backend_address_pools": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "backend_http_settings": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service"
                                        ]
                                    },
                                    "frontend_ip_configuration": {
                                        "references": [
                                            "module.public_ip_application_gateway.id",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "http_listeners": {
                                        "constant_value": [
                                            {
                                                "frontend_ip_configuration": "Public",
                                                "name": "allure-http-listener",
                                                "port": 80,
                                                "protocol": "Http"
                                            }
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "request_routing_rules": {
                                        "constant_value": [
                                            {
                                                "http_listener_name": "allure-http-listener",
                                                "name": "allure-request-routing-rule",
                                                "priority": 10,
                                                "url_path_map_name": "allure-request-routing-rules"
                                            }
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": {
                                            "size": "WAF_v2",
                                            "tier": "WAF_v2"
                                        }
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "module.subnet_applicationgateway.id",
                                            "module.subnet_applicationgateway"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "url_path_map_path_rules": {
                                        "references": [
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service"
                                        ]
                                    },
                                    "url_path_maps": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service"
                                        ]
                                    },
                                    "waf_configuration": {
                                        "constant_value": {
                                            "enabled": true,
                                            "firewall_mode": "Detection",
                                            "rule_set_version": "3.0"
                                        }
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "backend_address_pools": {
                                            "description": "Blocks containing configuration of each backend address pool.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.backend_address_pool",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "backend_http_settings": {
                                            "description": "Blocks containing configuration of each backend http settings.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.backend_http_settings",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "http_listeners": {
                                            "description": "Blocks containing configuration of each http listener.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.http_listener",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "id": {
                                            "description": "The application gateway configuration ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.id",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "location": {
                                            "description": "The location/region where the application gateway is created.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.location",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The name of the application gateway.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.name",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "request_routing_rules": {
                                            "description": "Blocks containing configuration of each request routing rule.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.request_routing_rule",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "resource_group_name": {
                                            "description": "The name of the resource group in which to create the application gateway.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.resource_group_name",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "ssl_certificates": {
                                            "description": "Blocks containing configuration of each ssl certificate.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.ssl_certificate",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "tags": {
                                            "description": "The tags assigned to the resource.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.tags",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_application_gateway.appgw",
                                            "expressions": {
                                                "frontend_port": [
                                                    {
                                                        "name": {
                                                            "constant_value": "80"
                                                        },
                                                        "port": {
                                                            "constant_value": 80
                                                        }
                                                    },
                                                    {
                                                        "name": {
                                                            "constant_value": "443"
                                                        },
                                                        "port": {
                                                            "constant_value": 443
                                                        }
                                                    }
                                                ],
                                                "gateway_ip_configuration": [
                                                    {
                                                        "name": {
                                                            "references": [
                                                                "var.name"
                                                            ]
                                                        },
                                                        "subnet_id": {
                                                            "references": [
                                                                "var.subnet_id"
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
                                                        "var.name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "sku": [
                                                    {
                                                        "capacity": {
                                                            "references": [
                                                                "var.sku"
                                                            ]
                                                        },
                                                        "name": {
                                                            "references": [
                                                                "var.sku.size",
                                                                "var.sku"
                                                            ]
                                                        },
                                                        "tier": {
                                                            "references": [
                                                                "var.sku.tier",
                                                                "var.sku"
                                                            ]
                                                        }
                                                    }
                                                ],
                                                "tags": {
                                                    "references": [
                                                        "var.tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "appgw",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_application_gateway"
                                        }
                                    ],
                                    "variables": {
                                        "autoscale_configuration": {
                                            "default": {}
                                        },
                                        "backend_address_pools": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend address pool."
                                        },
                                        "backend_http_settings": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend http settings."
                                        },
                                        "frontend_ip_configuration": {
                                            "default": {},
                                            "description": "A mapping the front ip configuration."
                                        },
                                        "http_listeners": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each http listener."
                                        },
                                        "identity_id": {
                                            "default": null,
                                            "description": "Specifies a user managed identity id to be assigned to the Application Gateway."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location/region where the Application Gateway is created."
                                        },
                                        "name": {
                                            "default": "hp4vhold",
                                            "description": "The name of the Application Gateway."
                                        },
                                        "probes": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each probe."
                                        },
                                        "request_routing_rules": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend request routing rule."
                                        },
                                        "resource_group_name": {
                                            "default": "qek5hold",
                                            "description": "The name of the resource group in which to create the Application Gateway."
                                        },
                                        "sku": {
                                            "default": {},
                                            "description": "A mapping with the sku configuration of the application gateway."
                                        },
                                        "ssl_certificates": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each ssl certificate."
                                        },
                                        "subnet_id": {
                                            "default": "cgzehold",
                                            "description": "The ID of the Subnet which the Application Gateway should be connected to."
                                        },
                                        "tags": {
                                            "default": {},
                                            "description": "A mapping of tags to assign to the resource."
                                        },
                                        "url_path_map_path_rules": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each url_path_map."
                                        },
                                        "url_path_maps": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each url_path_map."
                                        },
                                        "waf_configuration": {
                                            "default": {}
                                        }
                                    }
                                },
                                "source": "../../../public/terraform-azurerm-application-gateway/v1.2.1"
                            },
                            "log_analytics_workspace": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "log_analytics_workspace_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.id",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        },
                                        "primary_shared_key": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.primary_shared_key",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        },
                                        "workspace_id": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.workspace_id",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_log_analytics_workspace.log_analytics_workspace",
                                            "expressions": {
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.log_analytics_workspace_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "retention_in_days": {
                                                    "references": [
                                                        "var.log_analytics_workspace_retention_in_days"
                                                    ]
                                                },
                                                "sku": {
                                                    "references": [
                                                        "var.log_analytics_workspace_sku"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "log_analytics_workspace",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 3,
                                            "type": "azurerm_log_analytics_workspace"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "log_analytics_workspace_name": {
                                            "default": "p013hold",
                                            "description": "The log analytics name to deploy."
                                        },
                                        "log_analytics_workspace_retention_in_days": {
                                            "default": 30,
                                            "description": "The log analytics retension."
                                        },
                                        "log_analytics_workspace_sku": {
                                            "default": "PerGB2018",
                                            "description": "The log analytics sku."
                                        },
                                        "resource_group_name": {
                                            "default": "9tphhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_log_analytics_workspace/v1.0.0"
                            },
                            "managed_app_allure_docker_service": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "container_app_envs": {
                                        "references": [
                                            "module.public_ip_application_gateway.ip_address",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "container_app_image": {
                                        "constant_value": "docker.io/frankescobar/allure-docker-service:latest"
                                    },
                                    "container_app_managed_environment_id": {
                                        "references": [
                                            "module.managed_environment.id",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_static_ip_address": {
                                        "references": [
                                            "module.managed_environment.static_ip_address",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_zone_name": {
                                        "references": [
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "container_app_port": {
                                        "constant_value": 5050
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The managed app ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.id",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The managed app name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.name",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app.app",
                                            "expressions": {
                                                "container_app_environment_id": {
                                                    "references": [
                                                        "var.container_app_managed_environment_id"
                                                    ]
                                                },
                                                "ingress": [
                                                    {
                                                        "external_enabled": {
                                                            "constant_value": true
                                                        },
                                                        "target_port": {
                                                            "references": [
                                                                "var.container_app_port"
                                                            ]
                                                        },
                                                        "traffic_weight": [
                                                            {
                                                                "latest_revision": {
                                                                    "constant_value": true
                                                                },
                                                                "percentage": {
                                                                    "constant_value": 100
                                                                }
                                                            }
                                                        ]
                                                    }
                                                ],
                                                "name": {
                                                    "references": [
                                                        "var.container_app_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "revision_mode": {
                                                    "constant_value": "Single"
                                                },
                                                "template": [
                                                    {
                                                        "container": [
                                                            {
                                                                "cpu": {
                                                                    "constant_value": 0.25
                                                                },
                                                                "image": {
                                                                    "references": [
                                                                        "var.container_app_image"
                                                                    ]
                                                                },
                                                                "memory": {
                                                                    "constant_value": "0.5Gi"
                                                                },
                                                                "name": {
                                                                    "references": [
                                                                        "var.container_app_name"
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "max_replicas": {
                                                            "constant_value": 1
                                                        },
                                                        "min_replicas": {
                                                            "constant_value": 1
                                                        }
                                                    }
                                                ]
                                            },
                                            "mode": "managed",
                                            "name": "app",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app"
                                        },
                                        {
                                            "address": "azurerm_private_dns_a_record.containerapp_record",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app.app.name",
                                                        "azurerm_container_app.app"
                                                    ]
                                                },
                                                "records": {
                                                    "references": [
                                                        "var.container_app_managed_environment_static_ip_address"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "ttl": {
                                                    "constant_value": 300
                                                },
                                                "zone_name": {
                                                    "references": [
                                                        "var.container_app_managed_environment_zone_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "containerapp_record",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_a_record"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "container_app_envs": {
                                            "default": [],
                                            "description": "List of objects that represent the container app environment values."
                                        },
                                        "container_app_image": {
                                            "default": "ie8bhold",
                                            "description": "The managed app image url to deploy."
                                        },
                                        "container_app_managed_environment_id": {
                                            "default": "a3zehold",
                                            "description": "The managed app environment id to connect."
                                        },
                                        "container_app_managed_environment_static_ip_address": {
                                            "default": "10.0.0.0/16",
                                            "description": "The managed app environment satic ip address."
                                        },
                                        "container_app_managed_environment_zone_name": {
                                            "default": "1wsnhold",
                                            "description": "The managed app environment dns zone name."
                                        },
                                        "container_app_name": {
                                            "default": "q3srhold",
                                            "description": "The managed app name to deploy."
                                        },
                                        "container_app_port": {
                                            "default": null,
                                            "description": "The managed app port."
                                        },
                                        "resource_group_name": {
                                            "default": "x0xhhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app/v1.0.0"
                            },
                            "managed_app_allure_docker_ui_service": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "container_app_envs": {
                                        "references": [
                                            "module.public_ip_application_gateway.ip_address",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "container_app_image": {
                                        "constant_value": "docker.io/frankescobar/allure-docker-service-ui:latest"
                                    },
                                    "container_app_managed_environment_id": {
                                        "references": [
                                            "module.managed_environment.id",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_static_ip_address": {
                                        "references": [
                                            "module.managed_environment.static_ip_address",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_zone_name": {
                                        "references": [
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "container_app_port": {
                                        "constant_value": 5252
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The managed app ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.id",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The managed app name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.name",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app.app",
                                            "expressions": {
                                                "container_app_environment_id": {
                                                    "references": [
                                                        "var.container_app_managed_environment_id"
                                                    ]
                                                },
                                                "ingress": [
                                                    {
                                                        "external_enabled": {
                                                            "constant_value": true
                                                        },
                                                        "target_port": {
                                                            "references": [
                                                                "var.container_app_port"
                                                            ]
                                                        },
                                                        "traffic_weight": [
                                                            {
                                                                "latest_revision": {
                                                                    "constant_value": true
                                                                },
                                                                "percentage": {
                                                                    "constant_value": 100
                                                                }
                                                            }
                                                        ]
                                                    }
                                                ],
                                                "name": {
                                                    "references": [
                                                        "var.container_app_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "revision_mode": {
                                                    "constant_value": "Single"
                                                },
                                                "template": [
                                                    {
                                                        "container": [
                                                            {
                                                                "cpu": {
                                                                    "constant_value": 0.25
                                                                },
                                                                "image": {
                                                                    "references": [
                                                                        "var.container_app_image"
                                                                    ]
                                                                },
                                                                "memory": {
                                                                    "constant_value": "0.5Gi"
                                                                },
                                                                "name": {
                                                                    "references": [
                                                                        "var.container_app_name"
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "max_replicas": {
                                                            "constant_value": 1
                                                        },
                                                        "min_replicas": {
                                                            "constant_value": 1
                                                        }
                                                    }
                                                ]
                                            },
                                            "mode": "managed",
                                            "name": "app",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app"
                                        },
                                        {
                                            "address": "azurerm_private_dns_a_record.containerapp_record",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app.app.name",
                                                        "azurerm_container_app.app"
                                                    ]
                                                },
                                                "records": {
                                                    "references": [
                                                        "var.container_app_managed_environment_static_ip_address"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "ttl": {
                                                    "constant_value": 300
                                                },
                                                "zone_name": {
                                                    "references": [
                                                        "var.container_app_managed_environment_zone_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "containerapp_record",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_a_record"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "container_app_envs": {
                                            "default": [],
                                            "description": "List of objects that represent the container app environment values."
                                        },
                                        "container_app_image": {
                                            "default": "ie8bhold",
                                            "description": "The managed app image url to deploy."
                                        },
                                        "container_app_managed_environment_id": {
                                            "default": "a3zehold",
                                            "description": "The managed app environment id to connect."
                                        },
                                        "container_app_managed_environment_static_ip_address": {
                                            "default": "10.0.0.0/16",
                                            "description": "The managed app environment satic ip address."
                                        },
                                        "container_app_managed_environment_zone_name": {
                                            "default": "1wsnhold",
                                            "description": "The managed app environment dns zone name."
                                        },
                                        "container_app_name": {
                                            "default": "q3srhold",
                                            "description": "The managed app name to deploy."
                                        },
                                        "container_app_port": {
                                            "default": null,
                                            "description": "The managed app port."
                                        },
                                        "resource_group_name": {
                                            "default": "x0xhhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app/v1.0.0"
                            },
                            "managed_environment": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "log_analytics_workspace_id": {
                                        "references": [
                                            "module.log_analytics_workspace.id",
                                            "module.log_analytics_workspace"
                                        ]
                                    },
                                    "managed_environments_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "resource_group_id": {
                                        "references": [
                                            "module.resource_group.id",
                                            "module.resource_group"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "module.subnet_containerapps.id",
                                            "module.subnet_containerapps"
                                        ]
                                    },
                                    "vnet_id": {
                                        "references": [
                                            "module.virtual_network.id",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The managed environment ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app_environment.container_app_environment.id",
                                                    "azurerm_container_app_environment.container_app_environment"
                                                ]
                                            }
                                        },
                                        "private_dns_zone_name": {
                                            "expression": {
                                                "references": [
                                                    "azurerm_private_dns_zone.private_dns_zone.name",
                                                    "azurerm_private_dns_zone.private_dns_zone"
                                                ]
                                            }
                                        },
                                        "static_ip_address": {
                                            "description": "The managed environment static ip address.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app_environment.container_app_environment.static_ip_address",
                                                    "azurerm_container_app_environment.container_app_environment"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app_environment.container_app_environment",
                                            "expressions": {
                                                "infrastructure_subnet_id": {
                                                    "references": [
                                                        "var.subnet_id"
                                                    ]
                                                },
                                                "internal_load_balancer_enabled": {
                                                    "constant_value": true
                                                },
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "log_analytics_workspace_id": {
                                                    "references": [
                                                        "var.log_analytics_workspace_id"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.managed_environments_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                },
                                                "timeouts": {
                                                    "create": {
                                                        "constant_value": "4h"
                                                    }
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "container_app_environment",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app_environment"
                                        },
                                        {
                                            "address": "azurerm_private_dns_zone.private_dns_zone",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app_environment.container_app_environment.default_domain",
                                                        "azurerm_container_app_environment.container_app_environment"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "private_dns_zone",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_zone"
                                        },
                                        {
                                            "address": "azurerm_private_dns_zone_virtual_network_link.vnet_link",
                                            "expressions": {
                                                "name": {
                                                    "constant_value": "containerapplink"
                                                },
                                                "private_dns_zone_name": {
                                                    "references": [
                                                        "azurerm_private_dns_zone.private_dns_zone.name",
                                                        "azurerm_private_dns_zone.private_dns_zone"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                },
                                                "virtual_network_id": {
                                                    "references": [
                                                        "var.vnet_id"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "vnet_link",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_zone_virtual_network_link"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "log_analytics_workspace_id": {
                                            "default": "owwnhold",
                                            "description": "The log analytics workspace id to connect."
                                        },
                                        "managed_environments_name": {
                                            "default": "c93ihold",
                                            "description": "The managed environment name to deploy."
                                        },
                                        "resource_group_id": {
                                            "default": "apcehold",
                                            "description": "The resource group id to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "aq5chold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_id": {
                                            "default": "nqazhold",
                                            "description": "The subnet id to connect."
                                        },
                                        "vnet_id": {
                                            "default": "hkw2hold",
                                            "description": "The vnet id to connect."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app_environment/v1.0.0"
                            },
                            "public_ip_application_gateway": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "public_ip_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The public IP ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_public_ip.public_ip.id",
                                                    "azurerm_public_ip.public_ip"
                                                ]
                                            }
                                        },
                                        "ip_address": {
                                            "description": "The public IP address.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_public_ip.public_ip.ip_address",
                                                    "azurerm_public_ip.public_ip"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_public_ip.public_ip",
                                            "expressions": {
                                                "allocation_method": {
                                                    "references": [
                                                        "var.public_ip_allocation_method"
                                                    ]
                                                },
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.public_ip_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "sku": {
                                                    "references": [
                                                        "var.public_ip_sku"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "public_ip",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_public_ip"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "public_ip_allocation_method": {
                                            "default": "Static",
                                            "description": "The public ip allocation method."
                                        },
                                        "public_ip_name": {
                                            "default": "10.0.0.0/16",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "public_ip_sku": {
                                            "default": "Standard",
                                            "description": "The public ip sku."
                                        },
                                        "resource_group_name": {
                                            "default": "34i1hold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_public_ip/v1.0.0"
                            },
                            "resource_group": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The resource group ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_resource_group.resource_group.id",
                                                    "azurerm_resource_group.resource_group"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The resource group name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_resource_group.resource_group.name",
                                                    "azurerm_resource_group.resource_group"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_resource_group.resource_group",
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
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "resource_group",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_resource_group"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "l03shold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_resource_group/v1.0.0"
                            },
                            "subnet_applicationgateway": {
                                "expressions": {
                                    "resource_group_name": {
                                        "references": [
                                            "module.virtual_network.resource_group_name",
                                            "module.virtual_network"
                                        ]
                                    },
                                    "subnet_address_prefixes": {
                                        "constant_value": [
                                            "10.0.8.0/24"
                                        ]
                                    },
                                    "subnet_name": {
                                        "constant_value": "applicationgateway"
                                    },
                                    "subnet_virtual_network_name": {
                                        "references": [
                                            "module.virtual_network.name",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The subnet ID.",
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
                                            "address": "azurerm_subnet.subnet",
                                            "expressions": {
                                                "address_prefixes": {
                                                    "references": [
                                                        "var.subnet_address_prefixes"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.subnet_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "virtual_network_name": {
                                                    "references": [
                                                        "var.subnet_virtual_network_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "subnet",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_subnet"
                                        }
                                    ],
                                    "variables": {
                                        "resource_group_name": {
                                            "default": "0nnthold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_address_prefixes": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "subnet_name": {
                                            "default": "m7euhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_virtual_network_name": {
                                            "default": "muydhold",
                                            "description": "The virtual network name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_subnet/v1.0.0"
                            },
                            "subnet_containerapps": {
                                "depends_on": [
                                    "module.subnet_applicationgateway"
                                ],
                                "expressions": {
                                    "resource_group_name": {
                                        "references": [
                                            "module.virtual_network.resource_group_name",
                                            "module.virtual_network"
                                        ]
                                    },
                                    "subnet_address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/21"
                                        ]
                                    },
                                    "subnet_name": {
                                        "constant_value": "containerapps"
                                    },
                                    "subnet_virtual_network_name": {
                                        "references": [
                                            "module.virtual_network.name",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The subnet ID.",
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
                                            "address": "azurerm_subnet.subnet",
                                            "expressions": {
                                                "address_prefixes": {
                                                    "references": [
                                                        "var.subnet_address_prefixes"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.subnet_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "virtual_network_name": {
                                                    "references": [
                                                        "var.subnet_virtual_network_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "subnet",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_subnet"
                                        }
                                    ],
                                    "variables": {
                                        "resource_group_name": {
                                            "default": "0nnthold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_address_prefixes": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "subnet_name": {
                                            "default": "m7euhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_virtual_network_name": {
                                            "default": "muydhold",
                                            "description": "The virtual network name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_subnet/v1.0.0"
                            },
                            "virtual_network": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    },
                                    "virtual_network_address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The vrirtual network ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.id",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The vrirtual network name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.name",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        },
                                        "resource_group_name": {
                                            "description": "The vrirtual network resource group.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.resource_group_name",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_virtual_network.virtual_network",
                                            "expressions": {
                                                "address_space": {
                                                    "references": [
                                                        "var.virtual_network_address_space"
                                                    ]
                                                },
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.virtual_network_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "virtual_network",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_virtual_network"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "8urvhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "virtual_network_address_space": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "virtual_network_name": {
                                            "default": "tj3uhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_virtual_network/v1.0.0"
                            }
                        },
                        "resources": [
                            {
                                "address": "random_string.deployment_string",
                                "expressions": {
                                    "keepers": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "length": {
                                        "constant_value": 13
                                    },
                                    "lower": {
                                        "constant_value": true
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
                                "name": "deployment_string",
                                "provider_config_key": "module.sampleapp:random",
                                "schema_version": 2,
                                "type": "random_string"
                            },
                            {
                                "address": "data.azurerm_client_config.current",
                                "mode": "data",
                                "name": "current",
                                "provider_config_key": "module.sampleapp:azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            }
                        ],
                        "variables": {
                            "common_tags": {
                                "default": null,
                                "description": "The tags to be added to all resources."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location to deploy to."
                            },
                            "resource_group_name": {
                                "default": "y0rehold",
                                "description": "The resource group name to deploy to."
                            },
                            "subscription_id": {
                                "default": "10.0.0.0/16",
                                "description": "The subscription id to deploy to."
                            }
                        }
                    },
                    "source": "./modules/custom/containerinfrastructure/v1.0.0"
                }
            },
            "variables": {
                "common_tags": {
                    "default": {
                        "deployedby": "Terraform IaC"
                    },
                    "description": "The tags to be added to all resources."
                },
                "location": {
                    "default": "westeurope",
                    "description": "Deployment location"
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
                    "address": "module.sampleapp",
                    "child_modules": [
                        {
                            "address": "module.sampleapp.module.resource_group",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group",
                                    "mode": "managed",
                                    "name": "resource_group",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "tags": {}
                                    },
                                    "type": "azurerm_resource_group",
                                    "values": {
                                        "location": "westeurope",
                                        "managed_by": null,
                                        "name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.virtual_network",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network",
                                    "mode": "managed",
                                    "name": "virtual_network",
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
                                        "location": "westeurope",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.public_ip_application_gateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip",
                                    "mode": "managed",
                                    "name": "public_ip",
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
                                        "location": "westeurope",
                                        "public_ip_prefix_id": null,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "reverse_fqdn": null,
                                        "sku": "Standard",
                                        "sku_tier": "Regional",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null,
                                        "zones": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.subnet_applicationgateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet",
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
                                            "10.0.8.0/24"
                                        ],
                                        "default_outbound_access_enabled": true,
                                        "delegation": [],
                                        "name": "applicationgateway",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "service_endpoint_policy_ids": null,
                                        "service_endpoints": null,
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.subnet_containerapps",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet",
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
                                            "10.0.0.0/21"
                                        ],
                                        "default_outbound_access_enabled": true,
                                        "delegation": [],
                                        "name": "containerapps",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "service_endpoint_policy_ids": null,
                                        "service_endpoints": null,
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.log_analytics_workspace",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace",
                                    "mode": "managed",
                                    "name": "log_analytics_workspace",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 3,
                                    "sensitive_values": {
                                        "identity": [],
                                        "primary_shared_key": true,
                                        "secondary_shared_key": true,
                                        "tags": {}
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
                                        "reservation_capacity_in_gb_per_day": null,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "retention_in_days": 30,
                                        "sku": "PerGB2018",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_environment",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment",
                                    "mode": "managed",
                                    "name": "container_app_environment",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "dapr_application_insights_connection_string": true,
                                        "tags": {},
                                        "timeouts": {},
                                        "workload_profile": []
                                    },
                                    "type": "azurerm_container_app_environment",
                                    "values": {
                                        "dapr_application_insights_connection_string": null,
                                        "infrastructure_resource_group_name": null,
                                        "internal_load_balancer_enabled": true,
                                        "location": "westeurope",
                                        "mutual_tls_enabled": false,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": {
                                            "create": "4h",
                                            "delete": null,
                                            "read": null,
                                            "update": null
                                        },
                                        "workload_profile": [],
                                        "zone_redundancy_enabled": false
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone",
                                    "mode": "managed",
                                    "name": "private_dns_zone",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "soa_record": [],
                                        "tags": {}
                                    },
                                    "type": "azurerm_private_dns_zone",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone_virtual_network_link.vnet_link",
                                    "mode": "managed",
                                    "name": "vnet_link",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "tags": {}
                                    },
                                    "type": "azurerm_private_dns_zone_virtual_network_link",
                                    "values": {
                                        "name": "containerapplink",
                                        "registration_enabled": false,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app",
                                    "mode": "managed",
                                    "name": "app",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "custom_domain_verification_id": true,
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "custom_domain": [],
                                                "ip_security_restriction": [],
                                                "traffic_weight": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "outbound_ip_addresses": [],
                                        "registry": [],
                                        "secret": [],
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "env": [
                                                            {},
                                                            {}
                                                        ],
                                                        "liveness_probe": [],
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ]
                                    },
                                    "type": "azurerm_container_app",
                                    "values": {
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "allow_insecure_connections": false,
                                                "exposed_port": null,
                                                "external_enabled": true,
                                                "ip_security_restriction": [],
                                                "target_port": 5252,
                                                "traffic_weight": [
                                                    {
                                                        "label": null,
                                                        "latest_revision": true,
                                                        "percentage": 100,
                                                        "revision_suffix": null
                                                    }
                                                ],
                                                "transport": "auto"
                                            }
                                        ],
                                        "registry": [],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "revision_mode": "Single",
                                        "secret": [],
                                        "tags": null,
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "args": null,
                                                        "command": null,
                                                        "cpu": 0.25,
                                                        "env": [
                                                            {
                                                                "name": "ALLURE_DOCKER_PUBLIC_API_URL",
                                                                "secret_name": null
                                                            },
                                                            {
                                                                "name": "ALLURE_DOCKER_PUBLIC_API_URL_PREFIX",
                                                                "secret_name": null,
                                                                "value": "/api"
                                                            }
                                                        ],
                                                        "image": "docker.io/frankescobar/allure-docker-service-ui:latest",
                                                        "liveness_probe": [],
                                                        "memory": "0.5Gi",
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "max_replicas": 1,
                                                "min_replicas": 1,
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ],
                                        "timeouts": null,
                                        "workload_profile_name": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_private_dns_a_record.containerapp_record",
                                    "mode": "managed",
                                    "name": "containerapp_record",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "records": []
                                    },
                                    "type": "azurerm_private_dns_a_record",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": null,
                                        "timeouts": null,
                                        "ttl": 300
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_app_allure_docker_service",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app",
                                    "mode": "managed",
                                    "name": "app",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "custom_domain_verification_id": true,
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "custom_domain": [],
                                                "ip_security_restriction": [],
                                                "traffic_weight": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "outbound_ip_addresses": [],
                                        "registry": [],
                                        "secret": [],
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "env": [
                                                            {},
                                                            {},
                                                            {},
                                                            {},
                                                            {},
                                                            {},
                                                            {},
                                                            {},
                                                            {}
                                                        ],
                                                        "liveness_probe": [],
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ]
                                    },
                                    "type": "azurerm_container_app",
                                    "values": {
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "allow_insecure_connections": false,
                                                "exposed_port": null,
                                                "external_enabled": true,
                                                "ip_security_restriction": [],
                                                "target_port": 5050,
                                                "traffic_weight": [
                                                    {
                                                        "label": null,
                                                        "latest_revision": true,
                                                        "percentage": 100,
                                                        "revision_suffix": null
                                                    }
                                                ],
                                                "transport": "auto"
                                            }
                                        ],
                                        "registry": [],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "revision_mode": "Single",
                                        "secret": [],
                                        "tags": null,
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "args": null,
                                                        "command": null,
                                                        "cpu": 0.25,
                                                        "env": [
                                                            {
                                                                "name": "CHECK_RESULTS_EVERY_SECONDS",
                                                                "secret_name": null,
                                                                "value": "NONE"
                                                            },
                                                            {
                                                                "name": "KEEP_HISTORY",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "KEEP_HISTORY_LATEST",
                                                                "secret_name": null,
                                                                "value": "25"
                                                            },
                                                            {
                                                                "name": "SECURITY_USER",
                                                                "secret_name": null,
                                                                "value": "admin"
                                                            },
                                                            {
                                                                "name": "SECURITY_PASS",
                                                                "secret_name": null,
                                                                "value": "password"
                                                            },
                                                            {
                                                                "name": "SECURITY_ENABLED",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "MAKE_VIEWER_ENDPOINTS_PUBLIC",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "URL_PREFIX",
                                                                "secret_name": null,
                                                                "value": "/api"
                                                            },
                                                            {
                                                                "name": "SERVER_URL",
                                                                "secret_name": null
                                                            }
                                                        ],
                                                        "image": "docker.io/frankescobar/allure-docker-service:latest",
                                                        "liveness_probe": [],
                                                        "memory": "0.5Gi",
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "max_replicas": 1,
                                                "min_replicas": 1,
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ],
                                        "timeouts": null,
                                        "workload_profile_name": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_private_dns_a_record.containerapp_record",
                                    "mode": "managed",
                                    "name": "containerapp_record",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "records": []
                                    },
                                    "type": "azurerm_private_dns_a_record",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": null,
                                        "timeouts": null,
                                        "ttl": 300
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.application_gateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw",
                                    "mode": "managed",
                                    "name": "appgw",
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
                                            },
                                            {
                                                "authentication_certificate": [],
                                                "connection_draining": [],
                                                "trusted_root_certificate_names": []
                                            }
                                        ],
                                        "custom_error_configuration": [],
                                        "frontend_ip_configuration": [],
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
                                        "tags": {},
                                        "trusted_client_certificate": [],
                                        "trusted_root_certificate": [],
                                        "url_path_map": [
                                            {
                                                "path_rule": [
                                                    {
                                                        "paths": [
                                                            false
                                                        ]
                                                    }
                                                ]
                                            }
                                        ],
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
                                        "autoscale_configuration": [
                                            {
                                                "max_capacity": 2,
                                                "min_capacity": 1
                                            }
                                        ],
                                        "backend_address_pool": [
                                            {
                                                "ip_addresses": []
                                            },
                                            {
                                                "ip_addresses": []
                                            }
                                        ],
                                        "backend_http_settings": [
                                            {
                                                "affinity_cookie_name": "",
                                                "authentication_certificate": [],
                                                "connection_draining": [],
                                                "cookie_based_affinity": "Disabled",
                                                "host_name": "",
                                                "path": "/",
                                                "pick_host_name_from_backend_address": true,
                                                "port": 443,
                                                "probe_name": "",
                                                "protocol": "Https",
                                                "request_timeout": 20,
                                                "trusted_root_certificate_names": []
                                            },
                                            {
                                                "affinity_cookie_name": "",
                                                "authentication_certificate": [],
                                                "connection_draining": [],
                                                "cookie_based_affinity": "Disabled",
                                                "host_name": "",
                                                "path": "/",
                                                "pick_host_name_from_backend_address": true,
                                                "port": 443,
                                                "probe_name": "",
                                                "protocol": "Https",
                                                "request_timeout": 20,
                                                "trusted_root_certificate_names": []
                                            }
                                        ],
                                        "custom_error_configuration": [],
                                        "enable_http2": null,
                                        "fips_enabled": null,
                                        "firewall_policy_id": null,
                                        "force_firewall_policy_association": null,
                                        "frontend_port": [
                                            {
                                                "name": "443",
                                                "port": 443
                                            },
                                            {
                                                "name": "80",
                                                "port": 80
                                            }
                                        ],
                                        "gateway_ip_configuration": [
                                            {}
                                        ],
                                        "global": [],
                                        "http_listener": [
                                            {
                                                "custom_error_configuration": [],
                                                "firewall_policy_id": "",
                                                "frontend_ip_configuration_name": "Public-frontend-ip-configuration",
                                                "frontend_port_name": "80",
                                                "host_name": "",
                                                "host_names": [],
                                                "name": "allure-http-listener",
                                                "protocol": "Http",
                                                "require_sni": null,
                                                "ssl_certificate_name": "",
                                                "ssl_profile_name": ""
                                            }
                                        ],
                                        "identity": [],
                                        "location": "westeurope",
                                        "private_link_configuration": [],
                                        "probe": [],
                                        "redirect_configuration": [],
                                        "request_routing_rule": [
                                            {
                                                "backend_address_pool_name": "",
                                                "backend_http_settings_name": "",
                                                "http_listener_name": "allure-http-listener",
                                                "name": "allure-request-routing-rule",
                                                "priority": 10,
                                                "redirect_configuration_name": "",
                                                "rewrite_rule_set_name": "",
                                                "rule_type": "PathBasedRouting",
                                                "url_path_map_name": "allure-request-routing-rules"
                                            }
                                        ],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "rewrite_rule_set": [],
                                        "sku": [
                                            {
                                                "capacity": null,
                                                "name": "WAF_v2",
                                                "tier": "WAF_v2"
                                            }
                                        ],
                                        "ssl_certificate": [],
                                        "ssl_profile": [],
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null,
                                        "trusted_client_certificate": [],
                                        "trusted_root_certificate": [],
                                        "url_path_map": [
                                            {
                                                "default_redirect_configuration_name": null,
                                                "default_rewrite_rule_set_name": null,
                                                "name": "allure-request-routing-rules",
                                                "path_rule": [
                                                    {
                                                        "firewall_policy_id": null,
                                                        "paths": [
                                                            "/api*"
                                                        ],
                                                        "redirect_configuration_name": null,
                                                        "rewrite_rule_set_name": null
                                                    }
                                                ]
                                            }
                                        ],
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
                        }
                    ],
                    "resources": [
                        {
                            "address": "module.sampleapp.random_string.deployment_string",
                            "mode": "managed",
                            "name": "deployment_string",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 2,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_string",
                            "values": {
                                "keepers": {
                                    "resource_group": "appl-test-containerapp-westeurope"
                                },
                                "length": 13,
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
                        "address": "module.sampleapp",
                        "resources": [
                            {
                                "address": "module.sampleapp.data.azurerm_client_config.current",
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
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "http_listener"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "request_routing_rule"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "ssl_certificate"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "default_domain"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "workspace_id"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "backend_http_settings"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "static_ip_address"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "tags"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "module.sampleapp.random_string.deployment_string"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "primary_shared_key"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app"
        }
    ],
    "resource_changes": [
        {
            "address": "module.sampleapp.random_string.deployment_string",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": {
                        "resource_group": "appl-test-containerapp-westeurope"
                    },
                    "length": 13,
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
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "id": true,
                    "keepers": {},
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp",
            "name": "deployment_string",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        },
        {
            "address": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {
                            "max_capacity": 2,
                            "min_capacity": 1
                        }
                    ],
                    "backend_address_pool": [
                        {
                            "ip_addresses": []
                        },
                        {
                            "ip_addresses": []
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "path": "/",
                            "pick_host_name_from_backend_address": true,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "path": "/",
                            "pick_host_name_from_backend_address": true,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": null,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_port": [
                        {
                            "name": "443",
                            "port": 443
                        },
                        {
                            "name": "80",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {}
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "Public-frontend-ip-configuration",
                            "frontend_port_name": "80",
                            "host_name": "",
                            "host_names": [],
                            "name": "allure-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "allure-http-listener",
                            "name": "allure-request-routing-rule",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "allure-request-routing-rules"
                        }
                    ],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": null,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "allure-request-routing-rules",
                            "path_rule": [
                                {
                                    "firewall_policy_id": null,
                                    "paths": [
                                        "/api*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        }
                    ],
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
                    "autoscale_configuration": [
                        {}
                    ],
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
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": [],
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "path_rule": [
                                {
                                    "paths": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {}
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": [],
                            "name": true
                        },
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": [],
                            "name": true
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "name": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "name": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": true,
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
                            "name": true,
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
                    "name": true,
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_address_pool_name": true,
                            "default_backend_http_settings_id": true,
                            "default_backend_http_settings_name": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_address_pool_name": true,
                                    "backend_http_settings_id": true,
                                    "backend_http_settings_name": true,
                                    "id": true,
                                    "name": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        }
                    ],
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
            "module_address": "module.sampleapp.module.application_gateway",
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace",
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
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "retention_in_days": 30,
                    "sku": "PerGB2018",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "identity": [],
                    "name": true,
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "tags": {},
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.log_analytics_workspace",
            "name": "log_analytics_workspace",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": false,
                            "exposed_port": null,
                            "external_enabled": true,
                            "ip_security_restriction": [],
                            "target_port": 5050,
                            "traffic_weight": [
                                {
                                    "label": null,
                                    "latest_revision": true,
                                    "percentage": 100,
                                    "revision_suffix": null
                                }
                            ],
                            "transport": "auto"
                        }
                    ],
                    "registry": [],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": null,
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [
                                        {
                                            "name": "CHECK_RESULTS_EVERY_SECONDS",
                                            "secret_name": null,
                                            "value": "NONE"
                                        },
                                        {
                                            "name": "KEEP_HISTORY",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "KEEP_HISTORY_LATEST",
                                            "secret_name": null,
                                            "value": "25"
                                        },
                                        {
                                            "name": "SECURITY_USER",
                                            "secret_name": null,
                                            "value": "admin"
                                        },
                                        {
                                            "name": "SECURITY_PASS",
                                            "secret_name": null,
                                            "value": "password"
                                        },
                                        {
                                            "name": "SECURITY_ENABLED",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "MAKE_VIEWER_ENDPOINTS_PUBLIC",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "URL_PREFIX",
                                            "secret_name": null,
                                            "value": "/api"
                                        },
                                        {
                                            "name": "SERVER_URL",
                                            "secret_name": null
                                        }
                                    ],
                                    "image": "docker.io/frankescobar/allure-docker-service:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 1,
                            "min_replicas": 1,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ],
                    "timeouts": null,
                    "workload_profile_name": null
                },
                "after_sensitive": {
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": [],
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "outbound_ip_addresses": [],
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {}
                                    ],
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "container_app_environment_id": true,
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "id": true,
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": true,
                            "fqdn": true,
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "latest_revision_fqdn": true,
                    "latest_revision_name": true,
                    "location": true,
                    "name": true,
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {
                                            "value": true
                                        }
                                    ],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
                                    "name": true,
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "revision_suffix": true,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_service",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_private_dns_a_record.containerapp_record",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "name": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_service",
            "name": "containerapp_record",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": false,
                            "exposed_port": null,
                            "external_enabled": true,
                            "ip_security_restriction": [],
                            "target_port": 5252,
                            "traffic_weight": [
                                {
                                    "label": null,
                                    "latest_revision": true,
                                    "percentage": 100,
                                    "revision_suffix": null
                                }
                            ],
                            "transport": "auto"
                        }
                    ],
                    "registry": [],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": null,
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [
                                        {
                                            "name": "ALLURE_DOCKER_PUBLIC_API_URL",
                                            "secret_name": null
                                        },
                                        {
                                            "name": "ALLURE_DOCKER_PUBLIC_API_URL_PREFIX",
                                            "secret_name": null,
                                            "value": "/api"
                                        }
                                    ],
                                    "image": "docker.io/frankescobar/allure-docker-service-ui:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 1,
                            "min_replicas": 1,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ],
                    "timeouts": null,
                    "workload_profile_name": null
                },
                "after_sensitive": {
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": [],
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "outbound_ip_addresses": [],
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {},
                                        {}
                                    ],
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "container_app_environment_id": true,
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "id": true,
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": true,
                            "fqdn": true,
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "latest_revision_fqdn": true,
                    "latest_revision_name": true,
                    "location": true,
                    "name": true,
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {
                                            "value": true
                                        },
                                        {}
                                    ],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
                                    "name": true,
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "revision_suffix": true,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_private_dns_a_record.containerapp_record",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "name": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
            "name": "containerapp_record",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr_application_insights_connection_string": null,
                    "infrastructure_resource_group_name": null,
                    "internal_load_balancer_enabled": true,
                    "location": "westeurope",
                    "mutual_tls_enabled": false,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": {
                        "create": "4h",
                        "delete": null,
                        "read": null,
                        "update": null
                    },
                    "workload_profile": [],
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "dapr_application_insights_connection_string": true,
                    "tags": {},
                    "timeouts": {},
                    "workload_profile": []
                },
                "after_unknown": {
                    "custom_domain_verification_id": true,
                    "default_domain": true,
                    "docker_bridge_cidr": true,
                    "id": true,
                    "infrastructure_subnet_id": true,
                    "log_analytics_workspace_id": true,
                    "name": true,
                    "platform_reserved_cidr": true,
                    "platform_reserved_dns_ip_address": true,
                    "static_ip_address": true,
                    "tags": {},
                    "timeouts": {},
                    "workload_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "container_app_environment",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app_environment"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": [],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "name": true,
                    "number_of_record_sets": true,
                    "soa_record": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "private_dns_zone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone_virtual_network_link.vnet_link",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "containerapplink",
                    "registration_enabled": false,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "private_dns_zone_name": true,
                    "tags": {},
                    "virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "vnet_link",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip",
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
                    "public_ip_prefix_id": null,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
                    "name": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.public_ip_application_gateway",
            "name": "public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
            "module_address": "module.sampleapp.module.resource_group",
            "name": "resource_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.8.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "applicationgateway",
                    "resource_group_name": "appl-test-containerapp-westeurope",
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
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.subnet_applicationgateway",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/21"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "containerapps",
                    "resource_group_name": "appl-test-containerapp-westeurope",
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
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.subnet_containerapps",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network",
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
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
                    "name": true,
                    "subnet": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.virtual_network",
            "name": "virtual_network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:47:45Z",
    "variables": {
        "common_tags": {
            "value": {
                "deployedby": "Terraform IaC"
            }
        },
        "location": {
            "value": "westeurope"
        }
    }
}