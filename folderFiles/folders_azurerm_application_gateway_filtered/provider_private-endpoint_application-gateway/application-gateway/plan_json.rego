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
          "address": "azurerm_application_gateway.example",
          "expressions": {
            "backend_address_pool": [
              {
                "name": {
                  "constant_value": "backend"
                }
              }
            ],
            "backend_http_settings": [
              {
                "cookie_based_affinity": {
                  "constant_value": "Disabled"
                },
                "name": {
                  "constant_value": "settings"
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
                  "constant_value": "public"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.example.id",
                    "azurerm_public_ip.example"
                  ]
                }
              },
              {
                "name": {
                  "references": [
                    "local.private_frontend_ip_configuration_name"
                  ]
                },
                "private_ip_address": {
                  "constant_value": "10.0.1.10"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Static"
                },
                "private_link_configuration_name": {
                  "references": [
                    "local.private_link_configuration_name"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.gateway.id",
                    "azurerm_subnet.gateway"
                  ]
                }
              }
            ],
            "frontend_port": [
              {
                "name": {
                  "constant_value": "frontend"
                },
                "port": {
                  "constant_value": 80
                }
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": {
                  "constant_value": "gateway"
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.gateway.id",
                    "azurerm_subnet.gateway"
                  ]
                }
              }
            ],
            "http_listener": [
              {
                "frontend_ip_configuration_name": {
                  "constant_value": "private"
                },
                "frontend_port_name": {
                  "constant_value": "frontend"
                },
                "name": {
                  "constant_value": "listener"
                },
                "protocol": {
                  "constant_value": "Http"
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "references": [
                "var.prefix"
              ]
            },
            "private_link_configuration": [
              {
                "ip_configuration": [
                  {
                    "name": {
                      "constant_value": "primary"
                    },
                    "primary": {
                      "constant_value": true
                    },
                    "private_ip_address_allocation": {
                      "constant_value": "Dynamic"
                    },
                    "subnet_id": {
                      "references": [
                        "azurerm_subnet.gateway.id",
                        "azurerm_subnet.gateway"
                      ]
                    }
                  }
                ],
                "name": {
                  "references": [
                    "local.private_link_configuration_name"
                  ]
                }
              }
            ],
            "request_routing_rule": [
              {
                "backend_address_pool_name": {
                  "constant_value": "backend"
                },
                "backend_http_settings_name": {
                  "constant_value": "settings"
                },
                "http_listener_name": {
                  "constant_value": "listener"
                },
                "name": {
                  "constant_value": "rule"
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
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
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
            ]
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_private_endpoint.example",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "references": [
                "var.prefix"
              ]
            },
            "private_service_connection": [
              {
                "is_manual_connection": {
                  "constant_value": false
                },
                "name": {
                  "constant_value": "tfex-appgateway-connection"
                },
                "private_connection_resource_id": {
                  "references": [
                    "azurerm_application_gateway.example.id",
                    "azurerm_application_gateway.example"
                  ]
                },
                "subresource_names": {
                  "references": [
                    "local.private_frontend_ip_configuration_name"
                  ]
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.endpoint.id",
                "azurerm_subnet.endpoint"
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_private_endpoint"
        },
        {
          "address": "azurerm_public_ip.example",
          "expressions": {
            "allocation_method": {
              "constant_value": "Static"
            },
            "location": {
              "references": [
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "references": [
                "var.prefix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "sku": {
              "constant_value": "Standard"
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.example",
          "expressions": {
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.prefix"
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_subnet.endpoint",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.2.0/24"
              ]
            },
            "name": {
              "constant_value": "endpoint"
            },
            "private_endpoint_network_policies_enabled": {
              "constant_value": false
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.example.name",
                "azurerm_virtual_network.example"
              ]
            }
          },
          "mode": "managed",
          "name": "endpoint",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.gateway",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.1.0/24"
              ]
            },
            "name": {
              "constant_value": "gateway"
            },
            "private_link_service_network_policies_enabled": {
              "constant_value": false
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.example.name",
                "azurerm_virtual_network.example"
              ]
            }
          },
          "mode": "managed",
          "name": "gateway",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_virtual_network.example",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.0.0.0/16"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "references": [
                "var.prefix"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        }
      ],
      "variables": {
        "location": {
          "default": "eastus",
          "description": "The Azure Region in which all resources in this example should be created."
        },
        "prefix": {
          "default": "zodiac",
          "description": "The Prefix used for all resources in this example"
        }
      }
    }
  },
  "format_version": "1.1",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "azurerm_application_gateway.example",
          "mode": "managed",
          "name": "example",
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
              {},
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
            "private_link_configuration": [
              {
                "ip_configuration": [
                  {}
                ]
              }
            ],
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
                "name": "backend"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "settings",
                "path": "",
                "pick_host_name_from_backend_address": false,
                "port": 80,
                "probe_name": "",
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
                "name": "public",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              },
              {
                "name": "private",
                "private_ip_address": "10.0.1.10",
                "private_ip_address_allocation": "Static",
                "private_link_configuration_name": "private_link",
                "public_ip_address_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "frontend",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "gateway"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "private",
                "frontend_port_name": "frontend",
                "host_name": "",
                "host_names": [],
                "name": "listener",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "eastus",
            "name": "zodiac-gateway",
            "private_link_configuration": [
              {
                "ip_configuration": [
                  {
                    "name": "primary",
                    "primary": true,
                    "private_ip_address_allocation": "Dynamic"
                  }
                ],
                "name": "private_link"
              }
            ],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "backend",
                "backend_http_settings_name": "settings",
                "http_listener_name": "listener",
                "name": "rule",
                "priority": 100,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "zodiac-resources",
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
        },
        {
          "address": "azurerm_private_endpoint.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "custom_dns_configs": [],
            "ip_configuration": [],
            "network_interface": [],
            "private_dns_zone_configs": [],
            "private_dns_zone_group": [],
            "private_service_connection": [
              {
                "subresource_names": [
                  false
                ]
              }
            ]
          },
          "type": "azurerm_private_endpoint",
          "values": {
            "custom_network_interface_name": null,
            "ip_configuration": [],
            "location": "eastus",
            "name": "zodiac-pe",
            "private_dns_zone_group": [],
            "private_service_connection": [
              {
                "is_manual_connection": false,
                "name": "tfex-appgateway-connection",
                "private_connection_resource_alias": null,
                "request_message": null,
                "subresource_names": [
                  "private"
                ]
              }
            ],
            "resource_group_name": "zodiac-resources",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_public_ip.example",
          "mode": "managed",
          "name": "example",
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
            "name": "zodiac-ip",
            "public_ip_prefix_id": null,
            "resource_group_name": "zodiac-resources",
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_resource_group.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "eastus",
            "managed_by": null,
            "name": "zodiac-resources",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.endpoint",
          "mode": "managed",
          "name": "endpoint",
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
            "delegation": [],
            "name": "endpoint",
            "private_endpoint_network_policies_enabled": false,
            "resource_group_name": "zodiac-resources",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "zodiac-vnet"
          }
        },
        {
          "address": "azurerm_subnet.gateway",
          "mode": "managed",
          "name": "gateway",
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
            "delegation": [],
            "name": "gateway",
            "private_link_service_network_policies_enabled": false,
            "resource_group_name": "zodiac-resources",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "zodiac-vnet"
          }
        },
        {
          "address": "azurerm_virtual_network.example",
          "mode": "managed",
          "name": "example",
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
            "name": "zodiac-vnet",
            "resource_group_name": "zodiac-resources",
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
        "name"
      ],
      "resource": "azurerm_resource_group.example"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.gateway"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.endpoint"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_application_gateway.example"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.example"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.example",
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
              "name": "backend"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "settings",
              "path": "",
              "pick_host_name_from_backend_address": false,
              "port": 80,
              "probe_name": "",
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
              "name": "public",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            },
            {
              "name": "private",
              "private_ip_address": "10.0.1.10",
              "private_ip_address_allocation": "Static",
              "private_link_configuration_name": "private_link",
              "public_ip_address_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "frontend",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "gateway"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "private",
              "frontend_port_name": "frontend",
              "host_name": "",
              "host_names": [],
              "name": "listener",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "eastus",
          "name": "zodiac-gateway",
          "private_link_configuration": [
            {
              "ip_configuration": [
                {
                  "name": "primary",
                  "primary": true,
                  "private_ip_address_allocation": "Dynamic"
                }
              ],
              "name": "private_link"
            }
          ],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "backend",
              "backend_http_settings_name": "settings",
              "http_listener_name": "listener",
              "name": "rule",
              "priority": 100,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "zodiac-resources",
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
            {},
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
          "private_link_configuration": [
            {
              "ip_configuration": [
                {}
              ]
            }
          ],
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
            },
            {
              "id": true,
              "private_link_configuration_id": true,
              "subnet_id": true
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
          "private_link_configuration": [
            {
              "id": true,
              "ip_configuration": [
                {
                  "private_ip_address": true,
                  "subnet_id": true
                }
              ]
            }
          ],
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
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_private_endpoint.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "custom_network_interface_name": null,
          "ip_configuration": [],
          "location": "eastus",
          "name": "zodiac-pe",
          "private_dns_zone_group": [],
          "private_service_connection": [
            {
              "is_manual_connection": false,
              "name": "tfex-appgateway-connection",
              "private_connection_resource_alias": null,
              "request_message": null,
              "subresource_names": [
                "private"
              ]
            }
          ],
          "resource_group_name": "zodiac-resources",
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "custom_dns_configs": [],
          "ip_configuration": [],
          "network_interface": [],
          "private_dns_zone_configs": [],
          "private_dns_zone_group": [],
          "private_service_connection": [
            {
              "subresource_names": [
                false
              ]
            }
          ]
        },
        "after_unknown": {
          "custom_dns_configs": true,
          "id": true,
          "ip_configuration": [],
          "network_interface": true,
          "private_dns_zone_configs": true,
          "private_dns_zone_group": [],
          "private_service_connection": [
            {
              "private_connection_resource_id": true,
              "private_ip_address": true,
              "subresource_names": [
                false
              ]
            }
          ],
          "subnet_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_private_endpoint"
    },
    {
      "address": "azurerm_public_ip.example",
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
          "name": "zodiac-ip",
          "public_ip_prefix_id": null,
          "resource_group_name": "zodiac-resources",
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
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_resource_group.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "managed_by": null,
          "name": "zodiac-resources",
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
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_subnet.endpoint",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.2.0/24"
          ],
          "delegation": [],
          "name": "endpoint",
          "private_endpoint_network_policies_enabled": false,
          "resource_group_name": "zodiac-resources",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "zodiac-vnet"
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
          "private_link_service_network_policies_enabled": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "endpoint",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.gateway",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.1.0/24"
          ],
          "delegation": [],
          "name": "gateway",
          "private_link_service_network_policies_enabled": false,
          "resource_group_name": "zodiac-resources",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "zodiac-vnet"
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
          "private_endpoint_network_policies_enabled": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "gateway",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_virtual_network.example",
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
          "name": "zodiac-vnet",
          "resource_group_name": "zodiac-resources",
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
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    }
  ],
  "terraform_version": "1.3.5",
  "variables": {
    "location": {
      "value": "eastus"
    },
    "prefix": {
      "value": "zodiac"
    }
  }
}

