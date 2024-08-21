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
        "temp": {
          "expression": {
            "references": [
              "azurerm_virtual_network.example"
            ]
          }
        },
        "url": {
          "description": "URL to the application gateway",
          "expression": {
            "references": [
              "azurerm_public_ip.example.ip_address",
              "azurerm_public_ip.example"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azurerm_application_gateway.example",
          "expressions": {
            "autoscale_configuration": [
              {
                "max_capacity": {
                  "constant_value": 3
                },
                "min_capacity": {
                  "constant_value": 2
                }
              }
            ],
            "backend_address_pool": [
              {
                "fqdns": {
                  "constant_value": []
                },
                "ip_addresses": {
                  "references": [
                    "azurerm_private_endpoint.example.private_service_connection[0].private_ip_address",
                    "azurerm_private_endpoint.example.private_service_connection[0]",
                    "azurerm_private_endpoint.example.private_service_connection",
                    "azurerm_private_endpoint.example"
                  ]
                },
                "name": {
                  "constant_value": "pool-app-service"
                }
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": {
                  "constant_value": null
                },
                "connection_draining": [
                  {
                    "drain_timeout_sec": {
                      "constant_value": "30"
                    },
                    "enabled": {
                      "constant_value": "false"
                    }
                  }
                ],
                "cookie_based_affinity": {
                  "constant_value": "Disabled"
                },
                "host_name": {
                  "references": [
                    "azurerm_linux_web_app.example.default_hostname",
                    "azurerm_linux_web_app.example"
                  ]
                },
                "name": {
                  "constant_value": "backendsetting-001"
                },
                "path": {
                  "constant_value": "/"
                },
                "port": {
                  "constant_value": "443"
                },
                "probe_name": {
                  "constant_value": "probe-001"
                },
                "protocol": {
                  "constant_value": "Https"
                },
                "request_timeout": {
                  "constant_value": "30"
                }
              }
            ],
            "enable_http2": {
              "constant_value": true
            },
            "fips_enabled": {
              "constant_value": false
            },
            "firewall_policy_id": {
              "references": [
                "azurerm_web_application_firewall_policy.example.id",
                "azurerm_web_application_firewall_policy.example"
              ]
            },
            "force_firewall_policy_association": {
              "constant_value": true
            },
            "frontend_ip_configuration": [
              {
                "name": {
                  "constant_value": "frontendipconfig-public"
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
                  "constant_value": "frontendipconfig-private"
                },
                "private_ip_address": {
                  "constant_value": "10.0.0.68"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Static"
                },
                "subnet_id": {
                  "references": [
                    "local.subnets[\"agw\"].id",
                    "local.subnets[\"agw\"]",
                    "local.subnets"
                  ]
                }
              }
            ],
            "frontend_port": [
              {
                "name": {
                  "constant_value": "port1"
                },
                "port": {
                  "constant_value": "80"
                }
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": {
                  "constant_value": "gatewayipconfig"
                },
                "subnet_id": {
                  "references": [
                    "local.subnets[\"agw\"].id",
                    "local.subnets[\"agw\"]",
                    "local.subnets"
                  ]
                }
              }
            ],
            "http_listener": [
              {
                "frontend_ip_configuration_name": {
                  "constant_value": "frontendipconfig-public"
                },
                "frontend_port_name": {
                  "constant_value": "port1"
                },
                "host_names": {
                  "constant_value": []
                },
                "name": {
                  "constant_value": "listener-001"
                },
                "protocol": {
                  "constant_value": "Http"
                },
                "require_sni": {
                  "constant_value": false
                }
              }
            ],
            "location": {
              "references": [
                "local.region"
              ]
            },
            "name": {
              "references": [
                "local.name"
              ]
            },
            "probe": [
              {
                "interval": {
                  "constant_value": 30
                },
                "match": [
                  {
                    "body": {
                      "constant_value": ""
                    },
                    "status_code": {
                      "constant_value": [
                        "200-399"
                      ]
                    }
                  }
                ],
                "minimum_servers": {
                  "constant_value": 0
                },
                "name": {
                  "constant_value": "probe-001"
                },
                "path": {
                  "constant_value": "/"
                },
                "pick_host_name_from_backend_http_settings": {
                  "constant_value": true
                },
                "port": {
                  "constant_value": 443
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
              }
            ],
            "request_routing_rule": [
              {
                "backend_address_pool_name": {
                  "constant_value": "pool-app-service"
                },
                "backend_http_settings_name": {
                  "constant_value": "backendsetting-001"
                },
                "http_listener_name": {
                  "constant_value": "listener-001"
                },
                "name": {
                  "constant_value": "rule-001"
                },
                "priority": {
                  "constant_value": 10
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
                "name": {
                  "constant_value": "WAF_v2"
                },
                "tier": {
                  "constant_value": "WAF_v2"
                }
              }
            ],
            "ssl_policy": [
              {
                "policy_name": {
                  "constant_value": "AppGwSslPolicy20170401S"
                },
                "policy_type": {
                  "constant_value": "Predefined"
                }
              }
            ],
            "zones": {
              "constant_value": [
                "1",
                "2",
                "3"
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_linux_web_app.example",
          "expressions": {
            "location": {
              "references": [
                "azurerm_service_plan.example.location",
                "azurerm_service_plan.example"
              ]
            },
            "name": {
              "references": [
                "local.name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "service_plan_id": {
              "references": [
                "azurerm_service_plan.example.id",
                "azurerm_service_plan.example"
              ]
            },
            "site_config": [
              {}
            ]
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_linux_web_app"
        },
        {
          "address": "azurerm_private_endpoint.example",
          "expressions": {
            "custom_network_interface_name": {
              "references": [
                "azurerm_linux_web_app.example.name",
                "azurerm_linux_web_app.example"
              ]
            },
            "location": {
              "references": [
                "local.region"
              ]
            },
            "name": {
              "references": [
                "azurerm_linux_web_app.example.name",
                "azurerm_linux_web_app.example"
              ]
            },
            "private_service_connection": [
              {
                "is_manual_connection": {
                  "constant_value": false
                },
                "name": {
                  "constant_value": "privateserviceconnection"
                },
                "private_connection_resource_id": {
                  "references": [
                    "azurerm_linux_web_app.example.id",
                    "azurerm_linux_web_app.example"
                  ]
                },
                "subresource_names": {
                  "constant_value": [
                    "sites"
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
                "local.subnets[\"workload\"].id",
                "local.subnets[\"workload\"]",
                "local.subnets"
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
                "local.region"
              ]
            },
            "name": {
              "references": [
                "local.name"
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
            },
            "zones": {
              "constant_value": [
                "1",
                "2",
                "3"
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
              "references": [
                "local.region"
              ]
            },
            "name": {
              "references": [
                "local.name"
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
          "address": "azurerm_service_plan.example",
          "expressions": {
            "location": {
              "references": [
                "local.region"
              ]
            },
            "name": {
              "references": [
                "local.name"
              ]
            },
            "os_type": {
              "constant_value": "Linux"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "sku_name": {
              "constant_value": "B1"
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_service_plan"
        },
        {
          "address": "azurerm_virtual_network.example",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.0.0.0/24"
              ]
            },
            "location": {
              "references": [
                "local.region"
              ]
            },
            "name": {
              "references": [
                "local.name"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.example.name",
                "azurerm_resource_group.example"
              ]
            },
            "subnet": {
              "constant_value": [
                {
                  "address_prefix": "10.0.0.0/26",
                  "id": null,
                  "name": "snet-workload",
                  "security_group": null
                },
                {
                  "address_prefix": "10.0.0.64/26",
                  "id": null,
                  "name": "snet-agw",
                  "security_group": null
                }
              ]
            }
          },
          "mode": "managed",
          "name": "example",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        },
        {
          "address": "azurerm_web_application_firewall_policy.example",
          "expressions": {
            "custom_rules": [
              {
                "action": {
                  "constant_value": "Allow"
                },
                "enabled": {
                  "constant_value": true
                },
                "match_conditions": [
                  {
                    "match_values": {
                      "constant_value": [
                        "bypass_owasp=1"
                      ]
                    },
                    "match_variables": [
                      {
                        "variable_name": {
                          "constant_value": "QueryString"
                        }
                      }
                    ],
                    "negation_condition": {
                      "constant_value": false
                    },
                    "operator": {
                      "constant_value": "Contains"
                    },
                    "transforms": {
                      "constant_value": []
                    }
                  }
                ],
                "name": {
                  "constant_value": "allowGary"
                },
                "priority": {
                  "constant_value": 100
                },
                "rule_type": {
                  "constant_value": "MatchRule"
                }
              }
            ],
            "location": {
              "references": [
                "local.region"
              ]
            },
            "managed_rules": [
              {
                "exclusion": [
                  {
                    "match_variable": {
                      "constant_value": "RequestHeaderNames"
                    },
                    "selector": {
                      "constant_value": "my-secret-header"
                    },
                    "selector_match_operator": {
                      "constant_value": "Equals"
                    }
                  },
                  {
                    "match_variable": {
                      "constant_value": "RequestCookieNames"
                    },
                    "selector": {
                      "constant_value": "my-sweet-cookie"
                    },
                    "selector_match_operator": {
                      "constant_value": "EndsWith"
                    }
                  }
                ],
                "managed_rule_set": [
                  {
                    "rule_group_override": [
                      {
                        "rule": [
                          {
                            "action": {
                              "constant_value": "Log"
                            },
                            "enabled": {
                              "constant_value": true
                            },
                            "id": {
                              "constant_value": "920300"
                            }
                          },
                          {
                            "action": {
                              "constant_value": "Block"
                            },
                            "enabled": {
                              "constant_value": true
                            },
                            "id": {
                              "constant_value": "920440"
                            }
                          }
                        ],
                        "rule_group_name": {
                          "constant_value": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                        }
                      }
                    ],
                    "type": {
                      "constant_value": "OWASP"
                    },
                    "version": {
                      "constant_value": "3.2"
                    }
                  }
                ]
              }
            ],
            "name": {
              "references": [
                "local.name"
              ]
            },
            "policy_settings": [
              {
                "enabled": {
                  "constant_value": true
                },
                "file_upload_limit_in_mb": {
                  "constant_value": 100
                },
                "max_request_body_size_in_kb": {
                  "constant_value": 128
                },
                "mode": {
                  "constant_value": "Prevention"
                },
                "request_body_check": {
                  "constant_value": true
                }
              }
            ],
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
          "schema_version": 1,
          "type": "azurerm_web_application_firewall_policy"
        },
        {
          "address": "random_pet.name",
          "mode": "managed",
          "name": "name",
          "provider_config_key": "random",
          "schema_version": 0,
          "type": "random_pet"
        }
      ]
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "temp": {
      "actions": [
        "create"
      ],
      "after": {
        "address_space": [
          "10.0.0.0/24"
        ],
        "bgp_community": null,
        "ddos_protection_plan": [],
        "edge_zone": null,
        "encryption": [],
        "flow_timeout_in_minutes": null,
        "location": "australiaeast",
        "subnet": [
          {
            "address_prefix": "10.0.0.0/26",
            "name": "snet-workload",
            "security_group": ""
          },
          {
            "address_prefix": "10.0.0.64/26",
            "name": "snet-agw",
            "security_group": ""
          }
        ],
        "tags": null,
        "timeouts": null
      },
      "after_sensitive": false,
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
        "resource_group_name": true,
        "subnet": [
          {
            "id": true
          },
          {
            "id": true
          }
        ]
      },
      "before": null,
      "before_sensitive": false
    },
    "url": {
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
      "temp": {
        "sensitive": false
      },
      "url": {
        "sensitive": false
      }
    },
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
                "connection_draining": [
                  {}
                ],
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
            "ssl_policy": [
              {}
            ],
            "ssl_profile": [],
            "trusted_client_certificate": [],
            "trusted_root_certificate": [],
            "url_path_map": [],
            "waf_configuration": [],
            "zones": [
              false,
              false,
              false
            ]
          },
          "type": "azurerm_application_gateway",
          "values": {
            "authentication_certificate": [],
            "autoscale_configuration": [
              {
                "max_capacity": 3,
                "min_capacity": 2
              }
            ],
            "backend_address_pool": [
              {
                "fqdns": [],
                "name": "pool-app-service"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [
                  {
                    "drain_timeout_sec": 30,
                    "enabled": false
                  }
                ],
                "cookie_based_affinity": "Disabled",
                "name": "backendsetting-001",
                "path": "/",
                "pick_host_name_from_backend_address": false,
                "port": 443,
                "probe_name": "probe-001",
                "protocol": "Https",
                "request_timeout": 30,
                "trusted_root_certificate_names": []
              }
            ],
            "custom_error_configuration": [],
            "enable_http2": true,
            "fips_enabled": false,
            "force_firewall_policy_association": true,
            "frontend_ip_configuration": [
              {
                "name": "frontendipconfig-public",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              },
              {
                "name": "frontendipconfig-private",
                "private_ip_address": "10.0.0.68",
                "private_ip_address_allocation": "Static",
                "private_link_configuration_name": null,
                "public_ip_address_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "port1",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "gatewayipconfig"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "frontendipconfig-public",
                "frontend_port_name": "port1",
                "host_name": "",
                "host_names": [],
                "name": "listener-001",
                "protocol": "Http",
                "require_sni": false,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "australiaeast",
            "private_link_configuration": [],
            "probe": [
              {
                "host": "",
                "interval": 30,
                "match": [
                  {
                    "body": "",
                    "status_code": [
                      "200-399"
                    ]
                  }
                ],
                "minimum_servers": 0,
                "name": "probe-001",
                "path": "/",
                "pick_host_name_from_backend_http_settings": true,
                "port": 443,
                "protocol": "Https",
                "timeout": 30,
                "unhealthy_threshold": 3
              }
            ],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "pool-app-service",
                "backend_http_settings_name": "backendsetting-001",
                "http_listener_name": "listener-001",
                "name": "rule-001",
                "priority": 10,
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
                "name": "WAF_v2",
                "tier": "WAF_v2"
              }
            ],
            "ssl_certificate": [],
            "ssl_policy": [
              {
                "cipher_suites": null,
                "disabled_protocols": null,
                "min_protocol_version": null,
                "policy_name": "AppGwSslPolicy20170401S",
                "policy_type": "Predefined"
              }
            ],
            "ssl_profile": [],
            "tags": null,
            "timeouts": null,
            "trusted_client_certificate": [],
            "trusted_root_certificate": [],
            "url_path_map": [],
            "waf_configuration": [],
            "zones": [
              "1",
              "2",
              "3"
            ]
          }
        },
        {
          "address": "azurerm_linux_web_app.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "auth_settings": [],
            "auth_settings_v2": [],
            "backup": [],
            "connection_string": [],
            "custom_domain_verification_id": true,
            "identity": [],
            "logs": [],
            "outbound_ip_address_list": [],
            "possible_outbound_ip_address_list": [],
            "site_config": [
              {
                "application_stack": [],
                "auto_heal_setting": [],
                "cors": [],
                "default_documents": [],
                "ip_restriction": [],
                "scm_ip_restriction": []
              }
            ],
            "site_credential": true,
            "sticky_settings": [],
            "storage_account": []
          },
          "type": "azurerm_linux_web_app",
          "values": {
            "app_settings": null,
            "auth_settings": [],
            "auth_settings_v2": [],
            "backup": [],
            "client_affinity_enabled": false,
            "client_certificate_enabled": false,
            "client_certificate_exclusion_paths": null,
            "client_certificate_mode": "Required",
            "connection_string": [],
            "enabled": true,
            "ftp_publish_basic_authentication_enabled": true,
            "https_only": false,
            "identity": [],
            "location": "australiaeast",
            "logs": [],
            "public_network_access_enabled": true,
            "site_config": [
              {
                "always_on": true,
                "api_definition_url": null,
                "api_management_api_id": null,
                "app_command_line": null,
                "auto_heal_enabled": null,
                "auto_heal_setting": [],
                "container_registry_managed_identity_client_id": null,
                "container_registry_use_managed_identity": false,
                "cors": [],
                "ftps_state": "Disabled",
                "health_check_path": null,
                "http2_enabled": false,
                "ip_restriction": [],
                "ip_restriction_default_action": "Allow",
                "load_balancing_mode": "LeastRequests",
                "local_mysql_enabled": false,
                "managed_pipeline_mode": "Integrated",
                "minimum_tls_version": "1.2",
                "remote_debugging_enabled": false,
                "scm_ip_restriction": [],
                "scm_ip_restriction_default_action": "Allow",
                "scm_minimum_tls_version": "1.2",
                "scm_use_main_ip_restriction": false,
                "use_32_bit_worker": true,
                "vnet_route_all_enabled": false,
                "websockets_enabled": false
              }
            ],
            "sticky_settings": [],
            "storage_account": [],
            "tags": null,
            "timeouts": null,
            "virtual_network_subnet_id": null,
            "webdeploy_publish_basic_authentication_enabled": true
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
            "ip_configuration": [],
            "location": "australiaeast",
            "private_dns_zone_group": [],
            "private_service_connection": [
              {
                "is_manual_connection": false,
                "name": "privateserviceconnection",
                "private_connection_resource_alias": null,
                "request_message": null,
                "subresource_names": [
                  "sites"
                ]
              }
            ],
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
          "sensitive_values": {
            "zones": [
              false,
              false,
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
            "location": "australiaeast",
            "public_ip_prefix_id": null,
            "reverse_fqdn": null,
            "sku": "Standard",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": [
              "1",
              "2",
              "3"
            ]
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
            "location": "australiaeast",
            "managed_by": null,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_service_plan.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {},
          "type": "azurerm_service_plan",
          "values": {
            "app_service_environment_id": null,
            "location": "australiaeast",
            "os_type": "Linux",
            "per_site_scaling_enabled": false,
            "sku_name": "B1",
            "tags": null,
            "timeouts": null,
            "zone_balancing_enabled": null
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
            "subnet": [
              {},
              {}
            ]
          },
          "type": "azurerm_virtual_network",
          "values": {
            "address_space": [
              "10.0.0.0/24"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "australiaeast",
            "subnet": [
              {
                "address_prefix": "10.0.0.0/26",
                "name": "snet-workload",
                "security_group": ""
              },
              {
                "address_prefix": "10.0.0.64/26",
                "name": "snet-agw",
                "security_group": ""
              }
            ],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_web_application_firewall_policy.example",
          "mode": "managed",
          "name": "example",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "custom_rules": [
              {
                "match_conditions": [
                  {
                    "match_values": [
                      false
                    ],
                    "match_variables": [
                      {}
                    ]
                  }
                ]
              }
            ],
            "http_listener_ids": [],
            "managed_rules": [
              {
                "exclusion": [
                  {
                    "excluded_rule_set": []
                  },
                  {
                    "excluded_rule_set": []
                  }
                ],
                "managed_rule_set": [
                  {
                    "rule_group_override": [
                      {
                        "disabled_rules": [],
                        "rule": [
                          {},
                          {}
                        ]
                      }
                    ]
                  }
                ]
              }
            ],
            "path_based_rule_ids": [],
            "policy_settings": [
              {
                "log_scrubbing": []
              }
            ]
          },
          "type": "azurerm_web_application_firewall_policy",
          "values": {
            "custom_rules": [
              {
                "action": "Allow",
                "enabled": true,
                "group_rate_limit_by": null,
                "match_conditions": [
                  {
                    "match_values": [
                      "bypass_owasp=1"
                    ],
                    "match_variables": [
                      {
                        "selector": null,
                        "variable_name": "QueryString"
                      }
                    ],
                    "negation_condition": false,
                    "operator": "Contains",
                    "transforms": null
                  }
                ],
                "name": "allowGary",
                "priority": 100,
                "rate_limit_duration": null,
                "rate_limit_threshold": null,
                "rule_type": "MatchRule"
              }
            ],
            "location": "australiaeast",
            "managed_rules": [
              {
                "exclusion": [
                  {
                    "excluded_rule_set": [],
                    "match_variable": "RequestHeaderNames",
                    "selector": "my-secret-header",
                    "selector_match_operator": "Equals"
                  },
                  {
                    "excluded_rule_set": [],
                    "match_variable": "RequestCookieNames",
                    "selector": "my-sweet-cookie",
                    "selector_match_operator": "EndsWith"
                  }
                ],
                "managed_rule_set": [
                  {
                    "rule_group_override": [
                      {
                        "rule": [
                          {
                            "action": "Log",
                            "enabled": true,
                            "id": "920300"
                          },
                          {
                            "action": "Block",
                            "enabled": true,
                            "id": "920440"
                          }
                        ],
                        "rule_group_name": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                      }
                    ],
                    "type": "OWASP",
                    "version": "3.2"
                  }
                ]
              }
            ],
            "policy_settings": [
              {
                "enabled": true,
                "file_upload_limit_in_mb": 100,
                "js_challenge_cookie_expiration_in_minutes": 30,
                "log_scrubbing": [],
                "max_request_body_size_in_kb": 128,
                "mode": "Prevention",
                "request_body_check": true,
                "request_body_inspect_limit_in_kb": 128
              }
            ],
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "random_pet.name",
          "mode": "managed",
          "name": "name",
          "provider_name": "registry.terraform.io/hashicorp/random",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "random_pet",
          "values": {
            "keepers": null,
            "length": 2,
            "prefix": null,
            "separator": "-"
          }
        }
      ]
    }
  },
  "relevant_attributes": [
    {
      "attribute": [
        "private_service_connection",
        0,
        "private_ip_address"
      ],
      "resource": "azurerm_private_endpoint.example"
    },
    {
      "attribute": [
        "default_hostname"
      ],
      "resource": "azurerm_linux_web_app.example"
    },
    {
      "attribute": [],
      "resource": "azurerm_virtual_network.example"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_service_plan.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_linux_web_app.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_web_application_firewall_policy.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.example"
    },
    {
      "attribute": [
        "subnet"
      ],
      "resource": "azurerm_virtual_network.example"
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
      "resource": "azurerm_service_plan.example"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_linux_web_app.example"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "random_pet.name"
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
          "autoscale_configuration": [
            {
              "max_capacity": 3,
              "min_capacity": 2
            }
          ],
          "backend_address_pool": [
            {
              "fqdns": [],
              "name": "pool-app-service"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [
                {
                  "drain_timeout_sec": 30,
                  "enabled": false
                }
              ],
              "cookie_based_affinity": "Disabled",
              "name": "backendsetting-001",
              "path": "/",
              "pick_host_name_from_backend_address": false,
              "port": 443,
              "probe_name": "probe-001",
              "protocol": "Https",
              "request_timeout": 30,
              "trusted_root_certificate_names": []
            }
          ],
          "custom_error_configuration": [],
          "enable_http2": true,
          "fips_enabled": false,
          "force_firewall_policy_association": true,
          "frontend_ip_configuration": [
            {
              "name": "frontendipconfig-public",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            },
            {
              "name": "frontendipconfig-private",
              "private_ip_address": "10.0.0.68",
              "private_ip_address_allocation": "Static",
              "private_link_configuration_name": null,
              "public_ip_address_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "port1",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "gatewayipconfig"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "frontendipconfig-public",
              "frontend_port_name": "port1",
              "host_name": "",
              "host_names": [],
              "name": "listener-001",
              "protocol": "Http",
              "require_sni": false,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "australiaeast",
          "private_link_configuration": [],
          "probe": [
            {
              "host": "",
              "interval": 30,
              "match": [
                {
                  "body": "",
                  "status_code": [
                    "200-399"
                  ]
                }
              ],
              "minimum_servers": 0,
              "name": "probe-001",
              "path": "/",
              "pick_host_name_from_backend_http_settings": true,
              "port": 443,
              "protocol": "Https",
              "timeout": 30,
              "unhealthy_threshold": 3
            }
          ],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "pool-app-service",
              "backend_http_settings_name": "backendsetting-001",
              "http_listener_name": "listener-001",
              "name": "rule-001",
              "priority": 10,
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
              "name": "WAF_v2",
              "tier": "WAF_v2"
            }
          ],
          "ssl_certificate": [],
          "ssl_policy": [
            {
              "cipher_suites": null,
              "disabled_protocols": null,
              "min_protocol_version": null,
              "policy_name": "AppGwSslPolicy20170401S",
              "policy_type": "Predefined"
            }
          ],
          "ssl_profile": [],
          "tags": null,
          "timeouts": null,
          "trusted_client_certificate": [],
          "trusted_root_certificate": [],
          "url_path_map": [],
          "waf_configuration": [],
          "zones": [
            "1",
            "2",
            "3"
          ]
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
              "connection_draining": [
                {}
              ],
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
          "ssl_policy": [
            {}
          ],
          "ssl_profile": [],
          "trusted_client_certificate": [],
          "trusted_root_certificate": [],
          "url_path_map": [],
          "waf_configuration": [],
          "zones": [
            false,
            false,
            false
          ]
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
              "ip_addresses": true
            }
          ],
          "backend_http_settings": [
            {
              "authentication_certificate": [],
              "connection_draining": [
                {}
              ],
              "host_name": true,
              "id": true,
              "probe_id": true,
              "trusted_root_certificate_names": []
            }
          ],
          "custom_error_configuration": [],
          "firewall_policy_id": true,
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
          "name": true,
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
          "ssl_policy": [
            {}
          ],
          "ssl_profile": [],
          "trusted_client_certificate": [],
          "trusted_root_certificate": [],
          "url_path_map": [],
          "waf_configuration": [],
          "zones": [
            false,
            false,
            false
          ]
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
      "address": "azurerm_linux_web_app.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "app_settings": null,
          "auth_settings": [],
          "auth_settings_v2": [],
          "backup": [],
          "client_affinity_enabled": false,
          "client_certificate_enabled": false,
          "client_certificate_exclusion_paths": null,
          "client_certificate_mode": "Required",
          "connection_string": [],
          "enabled": true,
          "ftp_publish_basic_authentication_enabled": true,
          "https_only": false,
          "identity": [],
          "location": "australiaeast",
          "logs": [],
          "public_network_access_enabled": true,
          "site_config": [
            {
              "always_on": true,
              "api_definition_url": null,
              "api_management_api_id": null,
              "app_command_line": null,
              "auto_heal_enabled": null,
              "auto_heal_setting": [],
              "container_registry_managed_identity_client_id": null,
              "container_registry_use_managed_identity": false,
              "cors": [],
              "ftps_state": "Disabled",
              "health_check_path": null,
              "http2_enabled": false,
              "ip_restriction": [],
              "ip_restriction_default_action": "Allow",
              "load_balancing_mode": "LeastRequests",
              "local_mysql_enabled": false,
              "managed_pipeline_mode": "Integrated",
              "minimum_tls_version": "1.2",
              "remote_debugging_enabled": false,
              "scm_ip_restriction": [],
              "scm_ip_restriction_default_action": "Allow",
              "scm_minimum_tls_version": "1.2",
              "scm_use_main_ip_restriction": false,
              "use_32_bit_worker": true,
              "vnet_route_all_enabled": false,
              "websockets_enabled": false
            }
          ],
          "sticky_settings": [],
          "storage_account": [],
          "tags": null,
          "timeouts": null,
          "virtual_network_subnet_id": null,
          "webdeploy_publish_basic_authentication_enabled": true
        },
        "after_sensitive": {
          "auth_settings": [],
          "auth_settings_v2": [],
          "backup": [],
          "connection_string": [],
          "custom_domain_verification_id": true,
          "identity": [],
          "logs": [],
          "outbound_ip_address_list": [],
          "possible_outbound_ip_address_list": [],
          "site_config": [
            {
              "application_stack": [],
              "auto_heal_setting": [],
              "cors": [],
              "default_documents": [],
              "ip_restriction": [],
              "scm_ip_restriction": []
            }
          ],
          "site_credential": true,
          "sticky_settings": [],
          "storage_account": []
        },
        "after_unknown": {
          "auth_settings": [],
          "auth_settings_v2": [],
          "backup": [],
          "connection_string": [],
          "custom_domain_verification_id": true,
          "default_hostname": true,
          "hosting_environment_id": true,
          "id": true,
          "identity": [],
          "key_vault_reference_identity_id": true,
          "kind": true,
          "logs": [],
          "name": true,
          "outbound_ip_address_list": true,
          "outbound_ip_addresses": true,
          "possible_outbound_ip_address_list": true,
          "possible_outbound_ip_addresses": true,
          "resource_group_name": true,
          "service_plan_id": true,
          "site_config": [
            {
              "application_stack": true,
              "auto_heal_setting": [],
              "cors": [],
              "default_documents": true,
              "detailed_error_logging_enabled": true,
              "health_check_eviction_time_in_min": true,
              "ip_restriction": [],
              "linux_fx_version": true,
              "remote_debugging_version": true,
              "scm_ip_restriction": [],
              "scm_type": true,
              "worker_count": true
            }
          ],
          "site_credential": true,
          "sticky_settings": [],
          "storage_account": [],
          "zip_deploy_file": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_linux_web_app"
    },
    {
      "address": "azurerm_private_endpoint.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration": [],
          "location": "australiaeast",
          "private_dns_zone_group": [],
          "private_service_connection": [
            {
              "is_manual_connection": false,
              "name": "privateserviceconnection",
              "private_connection_resource_alias": null,
              "request_message": null,
              "subresource_names": [
                "sites"
              ]
            }
          ],
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
          "custom_network_interface_name": true,
          "id": true,
          "ip_configuration": [],
          "name": true,
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
          "resource_group_name": true,
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
          "location": "australiaeast",
          "public_ip_prefix_id": null,
          "reverse_fqdn": null,
          "sku": "Standard",
          "sku_tier": "Regional",
          "tags": null,
          "timeouts": null,
          "zones": [
            "1",
            "2",
            "3"
          ]
        },
        "after_sensitive": {
          "zones": [
            false,
            false,
            false
          ]
        },
        "after_unknown": {
          "fqdn": true,
          "id": true,
          "ip_address": true,
          "name": true,
          "resource_group_name": true,
          "zones": [
            false,
            false,
            false
          ]
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
          "location": "australiaeast",
          "managed_by": null,
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "name": true
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
      "address": "azurerm_service_plan.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "app_service_environment_id": null,
          "location": "australiaeast",
          "os_type": "Linux",
          "per_site_scaling_enabled": false,
          "sku_name": "B1",
          "tags": null,
          "timeouts": null,
          "zone_balancing_enabled": null
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "kind": true,
          "maximum_elastic_worker_count": true,
          "name": true,
          "reserved": true,
          "resource_group_name": true,
          "worker_count": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_service_plan"
    },
    {
      "address": "azurerm_virtual_network.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_space": [
            "10.0.0.0/24"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "australiaeast",
          "subnet": [
            {
              "address_prefix": "10.0.0.0/26",
              "name": "snet-workload",
              "security_group": ""
            },
            {
              "address_prefix": "10.0.0.64/26",
              "name": "snet-agw",
              "security_group": ""
            }
          ],
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
          "subnet": [
            {},
            {}
          ]
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
          "resource_group_name": true,
          "subnet": [
            {
              "id": true
            },
            {
              "id": true
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    },
    {
      "address": "azurerm_web_application_firewall_policy.example",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "custom_rules": [
            {
              "action": "Allow",
              "enabled": true,
              "group_rate_limit_by": null,
              "match_conditions": [
                {
                  "match_values": [
                    "bypass_owasp=1"
                  ],
                  "match_variables": [
                    {
                      "selector": null,
                      "variable_name": "QueryString"
                    }
                  ],
                  "negation_condition": false,
                  "operator": "Contains",
                  "transforms": null
                }
              ],
              "name": "allowGary",
              "priority": 100,
              "rate_limit_duration": null,
              "rate_limit_threshold": null,
              "rule_type": "MatchRule"
            }
          ],
          "location": "australiaeast",
          "managed_rules": [
            {
              "exclusion": [
                {
                  "excluded_rule_set": [],
                  "match_variable": "RequestHeaderNames",
                  "selector": "my-secret-header",
                  "selector_match_operator": "Equals"
                },
                {
                  "excluded_rule_set": [],
                  "match_variable": "RequestCookieNames",
                  "selector": "my-sweet-cookie",
                  "selector_match_operator": "EndsWith"
                }
              ],
              "managed_rule_set": [
                {
                  "rule_group_override": [
                    {
                      "rule": [
                        {
                          "action": "Log",
                          "enabled": true,
                          "id": "920300"
                        },
                        {
                          "action": "Block",
                          "enabled": true,
                          "id": "920440"
                        }
                      ],
                      "rule_group_name": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                    }
                  ],
                  "type": "OWASP",
                  "version": "3.2"
                }
              ]
            }
          ],
          "policy_settings": [
            {
              "enabled": true,
              "file_upload_limit_in_mb": 100,
              "js_challenge_cookie_expiration_in_minutes": 30,
              "log_scrubbing": [],
              "max_request_body_size_in_kb": 128,
              "mode": "Prevention",
              "request_body_check": true,
              "request_body_inspect_limit_in_kb": 128
            }
          ],
          "tags": null,
          "timeouts": null
        },
        "after_sensitive": {
          "custom_rules": [
            {
              "match_conditions": [
                {
                  "match_values": [
                    false
                  ],
                  "match_variables": [
                    {}
                  ]
                }
              ]
            }
          ],
          "http_listener_ids": [],
          "managed_rules": [
            {
              "exclusion": [
                {
                  "excluded_rule_set": []
                },
                {
                  "excluded_rule_set": []
                }
              ],
              "managed_rule_set": [
                {
                  "rule_group_override": [
                    {
                      "disabled_rules": [],
                      "rule": [
                        {},
                        {}
                      ]
                    }
                  ]
                }
              ]
            }
          ],
          "path_based_rule_ids": [],
          "policy_settings": [
            {
              "log_scrubbing": []
            }
          ]
        },
        "after_unknown": {
          "custom_rules": [
            {
              "match_conditions": [
                {
                  "match_values": [
                    false
                  ],
                  "match_variables": [
                    {}
                  ]
                }
              ]
            }
          ],
          "http_listener_ids": true,
          "id": true,
          "managed_rules": [
            {
              "exclusion": [
                {
                  "excluded_rule_set": []
                },
                {
                  "excluded_rule_set": []
                }
              ],
              "managed_rule_set": [
                {
                  "rule_group_override": [
                    {
                      "disabled_rules": true,
                      "rule": [
                        {},
                        {}
                      ]
                    }
                  ]
                }
              ]
            }
          ],
          "name": true,
          "path_based_rule_ids": true,
          "policy_settings": [
            {
              "log_scrubbing": []
            }
          ],
          "resource_group_name": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "example",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_web_application_firewall_policy"
    },
    {
      "address": "random_pet.name",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "keepers": null,
          "length": 2,
          "prefix": null,
          "separator": "-"
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "name",
      "provider_name": "registry.terraform.io/hashicorp/random",
      "type": "random_pet"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:16:26Z"
}

