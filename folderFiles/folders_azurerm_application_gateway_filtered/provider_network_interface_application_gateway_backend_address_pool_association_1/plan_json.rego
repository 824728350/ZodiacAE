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
          "address": "azurerm_application_gateway.network",
          "expressions": {
            "backend_address_pool": [
              {
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
                  "references": [
                    "local.frontend_ip_configuration_name"
                  ]
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.example.id",
                    "azurerm_public_ip.example"
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
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "constant_value": "example-appgateway"
            },
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
                "priority": {
                  "constant_value": 25
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
          "address": "azurerm_network_interface.example",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "testconfiguration1"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.frontend.id",
                    "azurerm_subnet.frontend"
                  ]
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
              "constant_value": "example-nic"
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
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.example",
          "expressions": {
            "backend_address_pool_id": {
              "references": [
                "azurerm_application_gateway.network.backend_address_pool",
                "azurerm_application_gateway.network"
              ]
            },
            "ip_configuration_name": {
              "constant_value": "testconfiguration1"
            },
            "network_interface_id": {
              "references": [
                "azurerm_network_interface.example.id",
                "azurerm_network_interface.example"
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
          "address": "azurerm_public_ip.example",
          "expressions": {
            "allocation_method": {
              "constant_value": "Dynamic"
            },
            "location": {
              "references": [
                "azurerm_resource_group.example.location",
                "azurerm_resource_group.example"
              ]
            },
            "name": {
              "constant_value": "example-pip"
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
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.example",
          "expressions": {
            "location": {
              "constant_value": "West Europe"
            },
            "name": {
              "constant_value": "example-resources"
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_subnet.backend",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.2.0/24"
              ]
            },
            "name": {
              "constant_value": "backend"
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
          "name": "backend",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.frontend",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.1.0/24"
              ]
            },
            "name": {
              "constant_value": "frontend"
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
          "name": "frontend",
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
              "constant_value": "example-network"
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
      ]
    }
  },
  "format_version": "1.1",
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
                "name": "example-network-beap"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "example-network-be-htst",
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
                "name": "example-network-feip",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "example-network-feport",
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
                "frontend_ip_configuration_name": "example-network-feip",
                "frontend_port_name": "example-network-feport",
                "host_name": "",
                "host_names": [],
                "name": "example-network-httplstn",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "westeurope",
            "name": "example-appgateway",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "example-network-beap",
                "backend_http_settings_name": "example-network-be-htst",
                "http_listener_name": "example-network-httplstn",
                "name": "example-network-rqrt",
                "priority": 25,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "example-resources",
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
          "address": "azurerm_network_interface.example",
          "mode": "managed",
          "name": "example",
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
            "enable_accelerated_networking": false,
            "enable_ip_forwarding": false,
            "ip_configuration": [
              {
                "name": "testconfiguration1",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4",
                "public_ip_address_id": null
              }
            ],
            "location": "westeurope",
            "name": "example-nic",
            "resource_group_name": "example-resources",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "testconfiguration1",
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
            "allocation_method": "Dynamic",
            "ddos_protection_mode": "VirtualNetworkInherited",
            "ddos_protection_plan_id": null,
            "domain_name_label": null,
            "edge_zone": null,
            "idle_timeout_in_minutes": 4,
            "ip_tags": null,
            "ip_version": "IPv4",
            "location": "westeurope",
            "name": "example-pip",
            "public_ip_prefix_id": null,
            "resource_group_name": "example-resources",
            "reverse_fqdn": null,
            "sku": "Basic",
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
            "location": "westeurope",
            "managed_by": null,
            "name": "example-resources",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.backend",
          "mode": "managed",
          "name": "backend",
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
            "name": "backend",
            "resource_group_name": "example-resources",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "example-network"
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
              "10.0.1.0/24"
            ],
            "delegation": [],
            "name": "frontend",
            "resource_group_name": "example-resources",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "example-network"
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
            "location": "westeurope",
            "name": "example-network",
            "resource_group_name": "example-resources",
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
      "resource": "azurerm_network_interface.example"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.example"
    },
    {
      "attribute": [
        "location"
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
      "resource": "azurerm_subnet.frontend"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.example"
    },
    {
      "attribute": [
        "backend_address_pool"
      ],
      "resource": "azurerm_application_gateway.network"
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
              "ip_addresses": [],
              "name": "example-network-beap"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "example-network-be-htst",
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
              "name": "example-network-feip",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "example-network-feport",
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
              "frontend_ip_configuration_name": "example-network-feip",
              "frontend_port_name": "example-network-feport",
              "host_name": "",
              "host_names": [],
              "name": "example-network-httplstn",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "westeurope",
          "name": "example-appgateway",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "example-network-beap",
              "backend_http_settings_name": "example-network-be-htst",
              "http_listener_name": "example-network-httplstn",
              "name": "example-network-rqrt",
              "priority": 25,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "example-resources",
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
      "name": "network",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_network_interface.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "auxiliary_mode": null,
          "auxiliary_sku": null,
          "edge_zone": null,
          "enable_accelerated_networking": false,
          "enable_ip_forwarding": false,
          "ip_configuration": [
            {
              "name": "testconfiguration1",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4",
              "public_ip_address_id": null
            }
          ],
          "location": "westeurope",
          "name": "example-nic",
          "resource_group_name": "example-resources",
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
          "applied_dns_servers": true,
          "dns_servers": true,
          "id": true,
          "internal_dns_name_label": true,
          "internal_domain_name_suffix": true,
          "ip_configuration": [
            {
              "gateway_load_balancer_frontend_ip_configuration_id": true,
              "primary": true,
              "private_ip_address": true,
              "subnet_id": true
            }
          ],
          "mac_address": true,
          "private_ip_address": true,
          "private_ip_addresses": true,
          "virtual_machine_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "testconfiguration1",
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "backend_address_pool_id": true,
          "id": true,
          "network_interface_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
    },
    {
      "address": "azurerm_public_ip.example",
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
          "location": "westeurope",
          "name": "example-pip",
          "public_ip_prefix_id": null,
          "resource_group_name": "example-resources",
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
          "location": "westeurope",
          "managed_by": null,
          "name": "example-resources",
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
      "address": "azurerm_subnet.backend",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.2.0/24"
          ],
          "delegation": [],
          "name": "backend",
          "resource_group_name": "example-resources",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "example-network"
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
          "private_endpoint_network_policies_enabled": true,
          "private_link_service_network_policies_enabled": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "backend",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.frontend",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.0.1.0/24"
          ],
          "delegation": [],
          "name": "frontend",
          "resource_group_name": "example-resources",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "example-network"
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
          "location": "westeurope",
          "name": "example-network",
          "resource_group_name": "example-resources",
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
  "terraform_version": "1.3.5"
}

