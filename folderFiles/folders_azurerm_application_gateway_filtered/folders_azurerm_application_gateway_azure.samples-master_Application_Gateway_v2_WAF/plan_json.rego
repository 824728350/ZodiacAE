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
      "azuread": {
        "full_name": "registry.terraform.io/hashicorp/azuread",
        "name": "azuread"
      },
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
          "address": "azurerm_application_gateway.agw",
          "expressions": {
            "autoscale_configuration": [
              {
                "max_capacity": {
                  "references": [
                    "var.capacity-agw-max"
                  ]
                },
                "min_capacity": {
                  "references": [
                    "var.capacity-agw-min"
                  ]
                }
              }
            ],
            "backend_address_pool": [
              {
                "name": {
                  "references": [
                    "var.backend-address-pool-name-agw"
                  ]
                }
              }
            ],
            "backend_http_settings": [
              {
                "cookie_based_affinity": {
                  "references": [
                    "var.backend_http_settings-cookie-agw"
                  ]
                },
                "name": {
                  "references": [
                    "var.backend_http_settings-name-agw"
                  ]
                },
                "port": {
                  "references": [
                    "var.backend_http_settings-port-agw"
                  ]
                },
                "protocol": {
                  "references": [
                    "var.backend_http_settings-protocol-agw"
                  ]
                },
                "request_timeout": {
                  "references": [
                    "var.backend_http_settings-request_timeout-agw"
                  ]
                }
              }
            ],
            "enable_http2": {
              "references": [
                "var.http2-agw"
              ]
            },
            "frontend_ip_configuration": [
              {
                "name": {
                  "references": [
                    "var.frontend-ip-config-name-agw"
                  ]
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.publicip_agw.id",
                    "azurerm_public_ip.publicip_agw"
                  ]
                }
              }
            ],
            "frontend_port": [
              {
                "name": {
                  "references": [
                    "var.frontend-port-name-agw"
                  ]
                },
                "port": {
                  "references": [
                    "var.frontend-port-agw"
                  ]
                }
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": {
                  "references": [
                    "azurerm_virtual_network.vnet.name",
                    "azurerm_virtual_network.vnet"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.subnet.id",
                    "azurerm_subnet.subnet"
                  ]
                }
              }
            ],
            "http_listener": [
              {
                "frontend_ip_configuration_name": {
                  "references": [
                    "var.frontend-ip-config-name-agw"
                  ]
                },
                "frontend_port_name": {
                  "references": [
                    "var.frontend-port-name-agw"
                  ]
                },
                "name": {
                  "references": [
                    "var.name-http-listener-agw"
                  ]
                },
                "protocol": {
                  "references": [
                    "var.protocol-http-listener-agw"
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
                "var.name-agw"
              ]
            },
            "request_routing_rule": [
              {
                "backend_address_pool_name": {
                  "references": [
                    "var.backend-address-pool-name-agw"
                  ]
                },
                "backend_http_settings_name": {
                  "references": [
                    "var.backend_http_settings-name-agw"
                  ]
                },
                "http_listener_name": {
                  "references": [
                    "var.name-http-listener-agw"
                  ]
                },
                "name": {
                  "references": [
                    "var.name-request-routing-rule-agw"
                  ]
                },
                "rule_type": {
                  "references": [
                    "var.type-request-routing-rule-agw"
                  ]
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
                  "references": [
                    "var.sku-name-agw"
                  ]
                },
                "tier": {
                  "references": [
                    "var.sku-tier-agw"
                  ]
                }
              }
            ],
            "tags": {
              "references": [
                "var.tags"
              ]
            },
            "waf_configuration": [
              {
                "enabled": {
                  "references": [
                    "var.enabled-waf"
                  ]
                },
                "file_upload_limit_mb": {
                  "references": [
                    "var.file-upload-limit-mb-waf"
                  ]
                },
                "firewall_mode": {
                  "references": [
                    "var.firewall-mode-waf"
                  ]
                },
                "max_request_body_size_kb": {
                  "references": [
                    "var.max-request-body-size-kb-waf"
                  ]
                },
                "rule_set_type": {
                  "references": [
                    "var.rule-set-type-waf"
                  ]
                },
                "rule_set_version": {
                  "references": [
                    "var.rule-set-version-waf"
                  ]
                }
              }
            ]
          },
          "mode": "managed",
          "name": "agw",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_application_gateway"
        },
        {
          "address": "azurerm_linux_virtual_machine.vm",
          "expressions": {
            "admin_password": {
              "references": [
                "var.user-password-vm"
              ]
            },
            "admin_username": {
              "references": [
                "var.user-name-vm"
              ]
            },
            "boot_diagnostics": [
              {
                "storage_account_uri": {
                  "references": [
                    "azurerm_storage_account.sta.primary_blob_endpoint",
                    "azurerm_storage_account.sta"
                  ]
                }
              }
            ],
            "computer_name": {
              "references": [
                "var.name-vm"
              ]
            },
            "custom_data": {},
            "disable_password_authentication": {
              "references": [
                "var.password_authentication-vm"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-vm"
              ]
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.nic.id",
                "azurerm_network_interface.nic"
              ]
            },
            "os_disk": [
              {
                "caching": {
                  "references": [
                    "var.caching-disk-vm"
                  ]
                },
                "name": {
                  "references": [
                    "var.name-disk-vm"
                  ]
                },
                "storage_account_type": {
                  "references": [
                    "var.sta-disk-vm"
                  ]
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "size": {
              "references": [
                "var.sku-vm"
              ]
            },
            "source_image_reference": [
              {
                "offer": {
                  "references": [
                    "var.image-offer-vm"
                  ]
                },
                "publisher": {
                  "references": [
                    "var.image-publisher-vm"
                  ]
                },
                "sku": {
                  "references": [
                    "var.image-sku-vm"
                  ]
                },
                "version": {
                  "references": [
                    "var.image-version-vm"
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
          "name": "vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_linux_virtual_machine"
        },
        {
          "address": "azurerm_linux_virtual_machine.vm_2",
          "expressions": {
            "admin_password": {
              "references": [
                "var.user-password-vm"
              ]
            },
            "admin_username": {
              "references": [
                "var.user-name-vm"
              ]
            },
            "boot_diagnostics": [
              {
                "storage_account_uri": {
                  "references": [
                    "azurerm_storage_account.sta.primary_blob_endpoint",
                    "azurerm_storage_account.sta"
                  ]
                }
              }
            ],
            "computer_name": {
              "references": [
                "var.name-vm"
              ]
            },
            "custom_data": {},
            "disable_password_authentication": {
              "references": [
                "var.password_authentication-vm"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-vm-2"
              ]
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.nic_2.id",
                "azurerm_network_interface.nic_2"
              ]
            },
            "os_disk": [
              {
                "caching": {
                  "references": [
                    "var.caching-disk-vm"
                  ]
                },
                "name": {
                  "references": [
                    "var.name-disk-vm-2"
                  ]
                },
                "storage_account_type": {
                  "references": [
                    "var.sta-disk-vm"
                  ]
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "size": {
              "references": [
                "var.sku-vm"
              ]
            },
            "source_image_reference": [
              {
                "offer": {
                  "references": [
                    "var.image-offer-vm"
                  ]
                },
                "publisher": {
                  "references": [
                    "var.image-publisher-vm"
                  ]
                },
                "sku": {
                  "references": [
                    "var.image-sku-vm"
                  ]
                },
                "version": {
                  "references": [
                    "var.image-version-vm"
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
          "name": "vm_2",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_linux_virtual_machine"
        },
        {
          "address": "azurerm_network_interface.nic",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "references": [
                    "var.name-ipconfig-nic"
                  ]
                },
                "private_ip_address_allocation": {
                  "references": [
                    "var.private-ip-allocation-nic"
                  ]
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.publicip.id",
                    "azurerm_public_ip.publicip"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.subnet2.id",
                    "azurerm_subnet.subnet2"
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
                "var.name-nic"
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
          "name": "nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface.nic_2",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "references": [
                    "var.name-ipconfig-nic-2"
                  ]
                },
                "private_ip_address_allocation": {
                  "references": [
                    "var.private-ip-allocation-nic-2"
                  ]
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.publicip_2.id",
                    "azurerm_public_ip.publicip_2"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.subnet2.id",
                    "azurerm_subnet.subnet2"
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
                "var.name-nic-2"
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
          "name": "nic_2",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw",
          "expressions": {
            "backend_address_pool_id": {
              "references": [
                "azurerm_application_gateway.agw.backend_address_pool",
                "azurerm_application_gateway.agw"
              ]
            },
            "ip_configuration_name": {
              "references": [
                "var.name-ipconfig-nic"
              ]
            },
            "network_interface_id": {
              "references": [
                "azurerm_network_interface.nic.id",
                "azurerm_network_interface.nic"
              ]
            }
          },
          "mode": "managed",
          "name": "nicagw",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw2",
          "expressions": {
            "backend_address_pool_id": {
              "references": [
                "azurerm_application_gateway.agw.backend_address_pool",
                "azurerm_application_gateway.agw"
              ]
            },
            "ip_configuration_name": {
              "references": [
                "var.name-ipconfig-nic-2"
              ]
            },
            "network_interface_id": {
              "references": [
                "azurerm_network_interface.nic_2.id",
                "azurerm_network_interface.nic_2"
              ]
            }
          },
          "mode": "managed",
          "name": "nicagw2",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
          "address": "azurerm_public_ip.publicip",
          "expressions": {
            "allocation_method": {
              "references": [
                "var.allocation-method-publicip"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-publicip"
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
          "name": "publicip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_public_ip.publicip_2",
          "expressions": {
            "allocation_method": {
              "references": [
                "var.allocation-method-publicip"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-publicip_2"
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
          "name": "publicip_2",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_public_ip.publicip_agw",
          "expressions": {
            "allocation_method": {
              "references": [
                "var.allocation-method-publicipagw"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-publicipagw"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "sku": {
              "references": [
                "var.sku-publicipagw"
              ]
            }
          },
          "mode": "managed",
          "name": "publicip_agw",
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
                "var.resource_group_name"
              ]
            },
            "tags": {
              "references": [
                "var.tags"
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
          "address": "azurerm_storage_account.sta",
          "expressions": {
            "account_replication_type": {
              "references": [
                "var.replication-type-sta"
              ]
            },
            "account_tier": {
              "references": [
                "var.sku-sta"
              ]
            },
            "enable_https_traffic_only": {
              "references": [
                "var.http-traffic-only-sta"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-sta"
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
          "name": "sta",
          "provider_config_key": "azurerm",
          "schema_version": 4,
          "type": "azurerm_storage_account"
        },
        {
          "address": "azurerm_storage_container.sta_container",
          "expressions": {
            "container_access_type": {
              "references": [
                "var.access-type-sta-container"
              ]
            },
            "name": {
              "references": [
                "var.name-sta-container"
              ]
            },
            "storage_account_name": {
              "references": [
                "azurerm_storage_account.sta.name",
                "azurerm_storage_account.sta"
              ]
            }
          },
          "mode": "managed",
          "name": "sta_container",
          "provider_config_key": "azurerm",
          "schema_version": 1,
          "type": "azurerm_storage_container"
        },
        {
          "address": "azurerm_subnet.subnet",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.address_space_subnet_1"
              ]
            },
            "name": {
              "references": [
                "var.name_subnet_1"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "service_endpoints": {
              "constant_value": []
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
          "address": "azurerm_subnet.subnet2",
          "expressions": {
            "address_prefixes": {
              "references": [
                "var.address_space_subnet_2"
              ]
            },
            "name": {
              "references": [
                "var.name_subnet_2"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "service_endpoints": {
              "constant_value": []
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.vnet.name",
                "azurerm_virtual_network.vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "subnet2",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_virtual_network.vnet",
          "expressions": {
            "address_space": {
              "references": [
                "var.address_space"
              ]
            },
            "location": {
              "references": [
                "var.location"
              ]
            },
            "name": {
              "references": [
                "var.name-vnet"
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
                "var.tags"
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
          "address": "data.azuread_domains.aad_domains",
          "expressions": {
            "only_default": {
              "constant_value": true
            }
          },
          "mode": "data",
          "name": "aad_domains",
          "provider_config_key": "azuread",
          "schema_version": 0,
          "type": "azuread_domains"
        },
        {
          "address": "data.azurerm_client_config.current",
          "mode": "data",
          "name": "current",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_client_config"
        },
        {
          "address": "data.azurerm_subscription.current",
          "mode": "data",
          "name": "current",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subscription"
        }
      ],
      "variables": {
        "access-type-sta-container": {
          "default": "private",
          "description": "(Required) Access Type of Storage Account Container"
        },
        "address_space": {
          "default": [
            "10.254.0.0/16"
          ],
          "description": "(Required) The Address Spaces of the Virtual Network."
        },
        "address_space_subnet_1": {
          "default": [
            "10.254.0.0/28"
          ],
          "description": "(Required) Ip Address of subnets to create."
        },
        "address_space_subnet_2": {
          "default": [
            "10.254.2.0/24"
          ],
          "description": "(Required) Ip Address of subnets to create."
        },
        "allocation-method-publicip": {
          "default": "Dynamic",
          "description": "(Required) Allocation Method of Public IP"
        },
        "allocation-method-publicipagw": {
          "default": "Static",
          "description": "(Required) Allocation Method of Public IP"
        },
        "backend-address-pool-name-agw": {
          "default": "poolBE",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "backend_http_settings-cookie-agw": {
          "default": "Disabled",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "backend_http_settings-name-agw": {
          "default": "production-be-htst",
          "description": "(Required) Backend Http Settings Name of Application Gateway"
        },
        "backend_http_settings-path-agw": {
          "default": "/path1/",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "backend_http_settings-port-agw": {
          "default": "80",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "backend_http_settings-protocol-agw": {
          "default": "Http",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "backend_http_settings-request_timeout-agw": {
          "default": "60",
          "description": "(Required) Backend Address Pool Name of Application Gateway"
        },
        "caching-disk-vm": {
          "default": "ReadWrite",
          "description": "(Required) Caching of disk - Virtual Machine"
        },
        "capacity-agw-max": {
          "default": "10",
          "description": "Max capacity for auto scaling of Application Gateway"
        },
        "capacity-agw-min": {
          "default": "0",
          "description": "Min and max capacity for auto scaling of Application Gateway"
        },
        "enabled-waf": {
          "default": "true",
          "description": "(Required) WAF Configuration of Application Gateway"
        },
        "file-upload-limit-mb-waf": {
          "default": "100",
          "description": "(Required) Rule Set Type WAF of Application Gateway"
        },
        "firewall-mode-waf": {
          "default": "Prevention",
          "description": "(Required) Firewall Mode WAF of Application Gateway"
        },
        "frontend-ip-config-name-agw": {
          "default": "production-feip",
          "description": "(Required) Frontend Ip Configuration Name of Application Gateway"
        },
        "frontend-port-agw": {
          "default": "80",
          "description": "(Required) Frontend Port of Application Gateway"
        },
        "frontend-port-name-agw": {
          "default": "production-feport",
          "description": "(Required) Frontend Port Name of Application Gateway"
        },
        "http-traffic-only-sta": {
          "default": true,
          "description": "(Required) http-traffic-only-sta Storage Account"
        },
        "http2-agw": {
          "default": "false",
          "description": "(Required) Enabled Http2 of Application Gateway"
        },
        "image-offer-vm": {
          "default": "UbuntuServer",
          "description": "(Required) Image Publisher SO of Virtual Machine"
        },
        "image-publisher-vm": {
          "default": "Canonical",
          "description": "(Required) Image Publisher SO of Virtual Machine"
        },
        "image-sku-vm": {
          "default": "18.04-LTS",
          "description": "(Required) Image Publisher SO of Virtual Machine"
        },
        "image-version-vm": {
          "default": "latest",
          "description": "(Required) Image Publisher SO of Virtual Machine"
        },
        "ip-config-name-agw": {
          "default": "my-gateway-ip-configuration",
          "description": "(Required) IP Configuration of Application Gateway"
        },
        "location": {
          "default": "westeurope",
          "description": "(Required) Location of the all services to be created"
        },
        "max-request-body-size-kb-waf": {
          "default": "128",
          "description": "(Required) Rule Set Type WAF of Application Gateway"
        },
        "name-agw": {
          "default": "myAppGateway",
          "description": "(Required) Name of Application Gateway"
        },
        "name-disk-vm": {
          "default": "DemoDeviceDisk",
          "description": "(Required) Name of disk - Virtual Machine"
        },
        "name-disk-vm-2": {
          "default": "DemoDeviceDisk2",
          "description": "(Required) Name of disk - Virtual Machine"
        },
        "name-http-listener-agw": {
          "default": "listenagw",
          "description": "(Required) Http Listener Name of Application Gateway"
        },
        "name-ipconfig-nic": {
          "default": "testconfiguration1",
          "description": "(Required) Ip Configuration of Network Interface"
        },
        "name-ipconfig-nic-2": {
          "default": "testconfiguration2",
          "description": "(Required) Ip Configuration of Network Interface"
        },
        "name-nic": {
          "default": "edgedevicesim-nic",
          "description": "(Required) Name of Network Interface"
        },
        "name-nic-2": {
          "default": "edgedevicesim2-nic",
          "description": "(Required) Name of Network Interface"
        },
        "name-publicip": {
          "default": "myPublicIP",
          "description": "(Required) Name of Public IP"
        },
        "name-publicip_2": {
          "default": "myPublicIP2",
          "description": "(Required) Name of Public IP"
        },
        "name-publicipagw": {
          "default": "myPublicIPagw",
          "description": "(Required) Name of Public IP"
        },
        "name-request-routing-rule-agw": {
          "default": "reqroutingrule",
          "description": "(Required) Request Routing Rule Name of Application Gateway"
        },
        "name-sta": {
          "default": "demoagwssta23243",
          "description": "(Required) Name of Storage Account"
        },
        "name-sta-container": {
          "default": "tfstate",
          "description": "(Required) Name of Storage Account Container"
        },
        "name-vm": {
          "default": "demovm",
          "description": "(Required) Name of Virtual Machine"
        },
        "name-vm-2": {
          "default": "demovm2",
          "description": "(Required) Name of Virtual Machine"
        },
        "name-vnet": {
          "default": "Production",
          "description": "(Required) Name of the Virtual Network."
        },
        "name_subnet_1": {
          "default": "agw",
          "description": "(Required) Name of subnets to create."
        },
        "name_subnet_2": {
          "default": "frontend",
          "description": "(Required) Name of subnets to create."
        },
        "password_authentication-vm": {
          "default": false,
          "description": "(Required) Password Authentication of Virtual Machine"
        },
        "private-ip-allocation-nic": {
          "default": "Dynamic",
          "description": "(Required) Private Ip Address Allocation of Network Interface"
        },
        "private-ip-allocation-nic-2": {
          "default": "Dynamic",
          "description": "(Required) Private Ip Address Allocation of Network Interface"
        },
        "protocol-http-listener-agw": {
          "default": "Http",
          "description": "(Required) Http Listener Protocol of Application Gateway"
        },
        "replication-type-sta": {
          "default": "LRS",
          "description": "(Required) Replication type on Storage Account"
        },
        "resource_group_name": {
          "default": "DemoSEG",
          "description": "(Required) Resource group name of the all services to be created"
        },
        "rule-set-type-waf": {
          "default": "OWASP",
          "description": "(Required) Rule Set Type WAF of Application Gateway"
        },
        "rule-set-version-waf": {
          "default": "3.0",
          "description": "(Required) Rule Set Type WAF of Application Gateway"
        },
        "sku-name-agw": {
          "default": "WAF_v2",
          "description": "(Required) Sku Name of Application Gateway"
        },
        "sku-publicipagw": {
          "default": "Standard",
          "description": "(Required) Allocation Method of Public IP"
        },
        "sku-sta": {
          "default": "Standard",
          "description": "(Required) Sku Storage Account"
        },
        "sku-tier-agw": {
          "default": "WAF_v2",
          "description": "(Required) Sku Tier of Application Gateway"
        },
        "sku-vm": {
          "default": "Standard_DS1_v2",
          "description": "(Required) Name of Virtual Machine"
        },
        "sta-disk-vm": {
          "default": "Premium_LRS",
          "description": "(Required) Storage Account Type of disl - Virtual Machine"
        },
        "tags": {
          "default": {
            "Project": "AGW_v2"
          },
          "description": "(Required) Tags to be applied to the all services to be created"
        },
        "type-request-routing-rule-agw": {
          "default": "Basic",
          "description": "(Required) Request Routing Rule Type of Application Gateway"
        },
        "user-name-vm": {
          "default": "azureuser",
          "description": "(Required) User of Virtual Machine"
        },
        "user-password-vm": {
          "default": "Password1234!",
          "description": "(Required) Password of Virtual Machine"
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
          "address": "azurerm_application_gateway.agw",
          "mode": "managed",
          "name": "agw",
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
                "name": "poolBE"
              }
            ],
            "backend_http_settings": [
              {
                "affinity_cookie_name": "",
                "authentication_certificate": [],
                "connection_draining": [],
                "cookie_based_affinity": "Disabled",
                "host_name": "",
                "name": "production-be-htst",
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
            "enable_http2": false,
            "fips_enabled": null,
            "firewall_policy_id": null,
            "force_firewall_policy_association": null,
            "frontend_ip_configuration": [
              {
                "name": "production-feip",
                "private_ip_address_allocation": "Dynamic",
                "private_link_configuration_name": null,
                "subnet_id": null
              }
            ],
            "frontend_port": [
              {
                "name": "production-feport",
                "port": 80
              }
            ],
            "gateway_ip_configuration": [
              {
                "name": "Production"
              }
            ],
            "global": [],
            "http_listener": [
              {
                "custom_error_configuration": [],
                "firewall_policy_id": "",
                "frontend_ip_configuration_name": "production-feip",
                "frontend_port_name": "production-feport",
                "host_name": "",
                "host_names": [],
                "name": "listenagw",
                "protocol": "Http",
                "require_sni": null,
                "ssl_certificate_name": "",
                "ssl_profile_name": ""
              }
            ],
            "identity": [],
            "location": "westeurope",
            "name": "myAppGateway",
            "private_link_configuration": [],
            "probe": [],
            "redirect_configuration": [],
            "request_routing_rule": [
              {
                "backend_address_pool_name": "poolBE",
                "backend_http_settings_name": "production-be-htst",
                "http_listener_name": "listenagw",
                "name": "reqroutingrule",
                "priority": null,
                "redirect_configuration_name": "",
                "rewrite_rule_set_name": "",
                "rule_type": "Basic",
                "url_path_map_name": ""
              }
            ],
            "resource_group_name": "DemoSEG",
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
              "Project": "AGW_v2"
            },
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
                "firewall_mode": "Prevention",
                "max_request_body_size_kb": 128,
                "request_body_check": true,
                "rule_set_type": "OWASP",
                "rule_set_version": "3.0"
              }
            ],
            "zones": null
          }
        },
        {
          "address": "azurerm_linux_virtual_machine.vm",
          "mode": "managed",
          "name": "vm",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "additional_capabilities": [],
            "admin_password": true,
            "admin_ssh_key": [],
            "boot_diagnostics": [
              {}
            ],
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
            "tags": {},
            "termination_notification": []
          },
          "type": "azurerm_linux_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "admin_password": "Password1234!",
            "admin_ssh_key": [],
            "admin_username": "azureuser",
            "allow_extension_operations": true,
            "availability_set_id": null,
            "boot_diagnostics": [
              {}
            ],
            "bypass_platform_safety_checks_on_user_schedule_enabled": false,
            "capacity_reservation_group_id": null,
            "computer_name": "demovm",
            "custom_data": "IyEvYmluL2Jhc2gKCnN1ZG8gYXB0IHVwZGF0ZSAteQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15",
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
            "location": "westeurope",
            "max_bid_price": -1,
            "name": "demovm",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "name": "DemoDeviceDisk",
                "secure_vm_disk_encryption_set_id": null,
                "security_encryption_type": null,
                "storage_account_type": "Premium_LRS",
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
            "resource_group_name": "DemoSEG",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_DS1_v2",
            "source_image_id": null,
            "source_image_reference": [
              {
                "offer": "UbuntuServer",
                "publisher": "Canonical",
                "sku": "18.04-LTS",
                "version": "latest"
              }
            ],
            "tags": {
              "Project": "AGW_v2"
            },
            "timeouts": null,
            "user_data": null,
            "virtual_machine_scale_set_id": null,
            "vm_agent_platform_updates_enabled": false,
            "vtpm_enabled": null,
            "zone": null
          }
        },
        {
          "address": "azurerm_linux_virtual_machine.vm_2",
          "mode": "managed",
          "name": "vm_2",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "additional_capabilities": [],
            "admin_password": true,
            "admin_ssh_key": [],
            "boot_diagnostics": [
              {}
            ],
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
            "tags": {},
            "termination_notification": []
          },
          "type": "azurerm_linux_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "admin_password": "Password1234!",
            "admin_ssh_key": [],
            "admin_username": "azureuser",
            "allow_extension_operations": true,
            "availability_set_id": null,
            "boot_diagnostics": [
              {}
            ],
            "bypass_platform_safety_checks_on_user_schedule_enabled": false,
            "capacity_reservation_group_id": null,
            "computer_name": "demovm",
            "custom_data": "IyEvYmluL2Jhc2gKCnN1ZG8gYXB0IHVwZGF0ZSAteQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15",
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
            "location": "westeurope",
            "max_bid_price": -1,
            "name": "demovm2",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "name": "DemoDeviceDisk2",
                "secure_vm_disk_encryption_set_id": null,
                "security_encryption_type": null,
                "storage_account_type": "Premium_LRS",
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
            "resource_group_name": "DemoSEG",
            "secret": [],
            "secure_boot_enabled": null,
            "size": "Standard_DS1_v2",
            "source_image_id": null,
            "source_image_reference": [
              {
                "offer": "UbuntuServer",
                "publisher": "Canonical",
                "sku": "18.04-LTS",
                "version": "latest"
              }
            ],
            "tags": {
              "Project": "AGW_v2"
            },
            "timeouts": null,
            "user_data": null,
            "virtual_machine_scale_set_id": null,
            "vm_agent_platform_updates_enabled": false,
            "vtpm_enabled": null,
            "zone": null
          }
        },
        {
          "address": "azurerm_network_interface.nic",
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
                "name": "testconfiguration1",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4"
              }
            ],
            "location": "westeurope",
            "name": "edgedevicesim-nic",
            "resource_group_name": "DemoSEG",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface.nic_2",
          "mode": "managed",
          "name": "nic_2",
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
                "name": "testconfiguration2",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4"
              }
            ],
            "location": "westeurope",
            "name": "edgedevicesim2-nic",
            "resource_group_name": "DemoSEG",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw",
          "mode": "managed",
          "name": "nicagw",
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
          "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw2",
          "mode": "managed",
          "name": "nicagw2",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
          "values": {
            "ip_configuration_name": "testconfiguration2",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_public_ip.publicip",
          "mode": "managed",
          "name": "publicip",
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
            "name": "myPublicIP",
            "public_ip_prefix_id": null,
            "resource_group_name": "DemoSEG",
            "reverse_fqdn": null,
            "sku": "Basic",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_public_ip.publicip_2",
          "mode": "managed",
          "name": "publicip_2",
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
            "name": "myPublicIP2",
            "public_ip_prefix_id": null,
            "resource_group_name": "DemoSEG",
            "reverse_fqdn": null,
            "sku": "Basic",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_public_ip.publicip_agw",
          "mode": "managed",
          "name": "publicip_agw",
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
            "name": "myPublicIPagw",
            "public_ip_prefix_id": null,
            "resource_group_name": "DemoSEG",
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
            "location": "westeurope",
            "managed_by": null,
            "name": "DemoSEG",
            "tags": {
              "Project": "AGW_v2"
            },
            "timeouts": null
          }
        },
        {
          "address": "azurerm_storage_account.sta",
          "mode": "managed",
          "name": "sta",
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
            "enable_https_traffic_only": true,
            "identity": [],
            "immutability_policy": [],
            "infrastructure_encryption_enabled": false,
            "is_hns_enabled": false,
            "local_user_enabled": true,
            "location": "westeurope",
            "min_tls_version": "TLS1_2",
            "name": "demoagwssta23243",
            "nfsv3_enabled": false,
            "public_network_access_enabled": true,
            "queue_encryption_key_type": "Service",
            "resource_group_name": "DemoSEG",
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
          "address": "azurerm_storage_container.sta_container",
          "mode": "managed",
          "name": "sta_container",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 1,
          "sensitive_values": {
            "metadata": {}
          },
          "type": "azurerm_storage_container",
          "values": {
            "container_access_type": "private",
            "encryption_scope_override_enabled": true,
            "name": "tfstate",
            "storage_account_name": "demoagwssta23243",
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.subnet",
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
              "10.254.0.0/28"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "agw",
            "resource_group_name": "DemoSEG",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "Production"
          }
        },
        {
          "address": "azurerm_subnet.subnet2",
          "mode": "managed",
          "name": "subnet2",
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
              "10.254.2.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "frontend",
            "resource_group_name": "DemoSEG",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "Production"
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
              "10.254.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "westeurope",
            "name": "Production",
            "resource_group_name": "DemoSEG",
            "tags": {
              "Project": "AGW_v2"
            },
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
            "address": "data.azuread_domains.aad_domains",
            "mode": "data",
            "name": "aad_domains",
            "provider_name": "registry.terraform.io/hashicorp/azuread",
            "schema_version": 0,
            "sensitive_values": {
              "domains": [
                {
                  "supported_services": [
                    false,
                    false
                  ]
                }
              ],
              "supports_services": []
            },
            "type": "azuread_domains",
            "values": {
              "admin_managed": false,
              "domains": [
                {
                  "admin_managed": true,
                  "authentication_type": "Managed",
                  "default": true,
                  "domain_name": "umich.onmicrosoft.com",
                  "initial": true,
                  "root": true,
                  "supported_services": [
                    "Email",
                    "OfficeCommunicationsOnline"
                  ],
                  "verified": true
                }
              ],
              "id": "domains#e66e77b4-5724-44d7-8721-06df160450ce#h87xQYbbJzo7JME07xYKAbdKdqk=",
              "include_unverified": false,
              "only_default": true,
              "only_initial": false,
              "only_root": false,
              "supports_services": [],
              "timeouts": null
            }
          },
          {
            "address": "data.azurerm_client_config.current",
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
          },
          {
            "address": "data.azurerm_subscription.current",
            "mode": "data",
            "name": "current",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "schema_version": 0,
            "sensitive_values": {
              "tags": {}
            },
            "type": "azurerm_subscription",
            "values": {
              "display_name": "UM-Campus-secure-systems-01",
              "id": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
              "location_placement_id": "Public_2014-09-01",
              "quota_id": "EnterpriseAgreement_2014-09-01",
              "spending_limit": "Off",
              "state": "Enabled",
              "subscription_id": "1b7414a3-b034-4f7b-9708-357f1ddecd7a",
              "tags": {},
              "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
              "timeouts": null
            }
          }
        ]
      }
    }
  },
  "relevant_attributes": [
    {
      "attribute": [
        "backend_address_pool"
      ],
      "resource": "azurerm_application_gateway.agw"
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
      "resource": "azurerm_subnet.subnet2"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.publicip"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_storage_account.sta"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.nic_2"
    },
    {
      "attribute": [
        "primary_blob_endpoint"
      ],
      "resource": "azurerm_storage_account.sta"
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
      "resource": "azurerm_public_ip.publicip_2"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.publicip_agw"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.nic"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_application_gateway.agw",
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
              "name": "poolBE"
            }
          ],
          "backend_http_settings": [
            {
              "affinity_cookie_name": "",
              "authentication_certificate": [],
              "connection_draining": [],
              "cookie_based_affinity": "Disabled",
              "host_name": "",
              "name": "production-be-htst",
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
          "enable_http2": false,
          "fips_enabled": null,
          "firewall_policy_id": null,
          "force_firewall_policy_association": null,
          "frontend_ip_configuration": [
            {
              "name": "production-feip",
              "private_ip_address_allocation": "Dynamic",
              "private_link_configuration_name": null,
              "subnet_id": null
            }
          ],
          "frontend_port": [
            {
              "name": "production-feport",
              "port": 80
            }
          ],
          "gateway_ip_configuration": [
            {
              "name": "Production"
            }
          ],
          "global": [],
          "http_listener": [
            {
              "custom_error_configuration": [],
              "firewall_policy_id": "",
              "frontend_ip_configuration_name": "production-feip",
              "frontend_port_name": "production-feport",
              "host_name": "",
              "host_names": [],
              "name": "listenagw",
              "protocol": "Http",
              "require_sni": null,
              "ssl_certificate_name": "",
              "ssl_profile_name": ""
            }
          ],
          "identity": [],
          "location": "westeurope",
          "name": "myAppGateway",
          "private_link_configuration": [],
          "probe": [],
          "redirect_configuration": [],
          "request_routing_rule": [
            {
              "backend_address_pool_name": "poolBE",
              "backend_http_settings_name": "production-be-htst",
              "http_listener_name": "listenagw",
              "name": "reqroutingrule",
              "priority": null,
              "redirect_configuration_name": "",
              "rewrite_rule_set_name": "",
              "rule_type": "Basic",
              "url_path_map_name": ""
            }
          ],
          "resource_group_name": "DemoSEG",
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
            "Project": "AGW_v2"
          },
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
              "firewall_mode": "Prevention",
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
          "tags": {},
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
      "name": "agw",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_application_gateway"
    },
    {
      "address": "azurerm_linux_virtual_machine.vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "admin_password": "Password1234!",
          "admin_ssh_key": [],
          "admin_username": "azureuser",
          "allow_extension_operations": true,
          "availability_set_id": null,
          "boot_diagnostics": [
            {}
          ],
          "bypass_platform_safety_checks_on_user_schedule_enabled": false,
          "capacity_reservation_group_id": null,
          "computer_name": "demovm",
          "custom_data": "IyEvYmluL2Jhc2gKCnN1ZG8gYXB0IHVwZGF0ZSAteQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15",
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
          "location": "westeurope",
          "max_bid_price": -1,
          "name": "demovm",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "name": "DemoDeviceDisk",
              "secure_vm_disk_encryption_set_id": null,
              "security_encryption_type": null,
              "storage_account_type": "Premium_LRS",
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
          "resource_group_name": "DemoSEG",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_DS1_v2",
          "source_image_id": null,
          "source_image_reference": [
            {
              "offer": "UbuntuServer",
              "publisher": "Canonical",
              "sku": "18.04-LTS",
              "version": "latest"
            }
          ],
          "tags": {
            "Project": "AGW_v2"
          },
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
          "boot_diagnostics": [
            {}
          ],
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
          "tags": {},
          "termination_notification": []
        },
        "after_unknown": {
          "additional_capabilities": [],
          "admin_ssh_key": [],
          "boot_diagnostics": [
            {
              "storage_account_uri": true
            }
          ],
          "disk_controller_type": true,
          "gallery_application": [],
          "id": true,
          "identity": [],
          "network_interface_ids": true,
          "os_disk": [
            {
              "diff_disk_settings": [],
              "disk_size_gb": true
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
          "tags": {},
          "termination_notification": true,
          "virtual_machine_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_linux_virtual_machine"
    },
    {
      "address": "azurerm_linux_virtual_machine.vm_2",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "admin_password": "Password1234!",
          "admin_ssh_key": [],
          "admin_username": "azureuser",
          "allow_extension_operations": true,
          "availability_set_id": null,
          "boot_diagnostics": [
            {}
          ],
          "bypass_platform_safety_checks_on_user_schedule_enabled": false,
          "capacity_reservation_group_id": null,
          "computer_name": "demovm",
          "custom_data": "IyEvYmluL2Jhc2gKCnN1ZG8gYXB0IHVwZGF0ZSAteQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15",
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
          "location": "westeurope",
          "max_bid_price": -1,
          "name": "demovm2",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "name": "DemoDeviceDisk2",
              "secure_vm_disk_encryption_set_id": null,
              "security_encryption_type": null,
              "storage_account_type": "Premium_LRS",
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
          "resource_group_name": "DemoSEG",
          "secret": [],
          "secure_boot_enabled": null,
          "size": "Standard_DS1_v2",
          "source_image_id": null,
          "source_image_reference": [
            {
              "offer": "UbuntuServer",
              "publisher": "Canonical",
              "sku": "18.04-LTS",
              "version": "latest"
            }
          ],
          "tags": {
            "Project": "AGW_v2"
          },
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
          "boot_diagnostics": [
            {}
          ],
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
          "tags": {},
          "termination_notification": []
        },
        "after_unknown": {
          "additional_capabilities": [],
          "admin_ssh_key": [],
          "boot_diagnostics": [
            {
              "storage_account_uri": true
            }
          ],
          "disk_controller_type": true,
          "gallery_application": [],
          "id": true,
          "identity": [],
          "network_interface_ids": true,
          "os_disk": [
            {
              "diff_disk_settings": [],
              "disk_size_gb": true
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
          "tags": {},
          "termination_notification": true,
          "virtual_machine_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "vm_2",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_linux_virtual_machine"
    },
    {
      "address": "azurerm_network_interface.nic",
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
              "name": "testconfiguration1",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4"
            }
          ],
          "location": "westeurope",
          "name": "edgedevicesim-nic",
          "resource_group_name": "DemoSEG",
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
              "public_ip_address_id": true,
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
      "mode": "managed",
      "name": "nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface.nic_2",
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
              "name": "testconfiguration2",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4"
            }
          ],
          "location": "westeurope",
          "name": "edgedevicesim2-nic",
          "resource_group_name": "DemoSEG",
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
              "public_ip_address_id": true,
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
      "mode": "managed",
      "name": "nic_2",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw",
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
      "name": "nicagw",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
    },
    {
      "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nicagw2",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "ip_configuration_name": "testconfiguration2",
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
      "name": "nicagw2",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
    },
    {
      "address": "azurerm_public_ip.publicip",
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
          "name": "myPublicIP",
          "public_ip_prefix_id": null,
          "resource_group_name": "DemoSEG",
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
      "name": "publicip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_public_ip.publicip_2",
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
          "name": "myPublicIP2",
          "public_ip_prefix_id": null,
          "resource_group_name": "DemoSEG",
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
      "name": "publicip_2",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_public_ip.publicip_agw",
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
          "name": "myPublicIPagw",
          "public_ip_prefix_id": null,
          "resource_group_name": "DemoSEG",
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
      "name": "publicip_agw",
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
          "location": "westeurope",
          "managed_by": null,
          "name": "DemoSEG",
          "tags": {
            "Project": "AGW_v2"
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
      "name": "rg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_storage_account.sta",
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
          "enable_https_traffic_only": true,
          "identity": [],
          "immutability_policy": [],
          "infrastructure_encryption_enabled": false,
          "is_hns_enabled": false,
          "local_user_enabled": true,
          "location": "westeurope",
          "min_tls_version": "TLS1_2",
          "name": "demoagwssta23243",
          "nfsv3_enabled": false,
          "public_network_access_enabled": true,
          "queue_encryption_key_type": "Service",
          "resource_group_name": "DemoSEG",
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
      "name": "sta",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_storage_account"
    },
    {
      "address": "azurerm_storage_container.sta_container",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "container_access_type": "private",
          "encryption_scope_override_enabled": true,
          "name": "tfstate",
          "storage_account_name": "demoagwssta23243",
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
      "name": "sta_container",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_storage_container"
    },
    {
      "address": "azurerm_subnet.subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.254.0.0/28"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "agw",
          "resource_group_name": "DemoSEG",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "Production"
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
      "name": "subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.subnet2",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.254.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [],
          "name": "frontend",
          "resource_group_name": "DemoSEG",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "Production"
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
      "name": "subnet2",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_virtual_network.vnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_space": [
            "10.254.0.0/16"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "westeurope",
          "name": "Production",
          "resource_group_name": "DemoSEG",
          "tags": {
            "Project": "AGW_v2"
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
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-16T23:54:12Z",
  "variables": {
    "access-type-sta-container": {
      "value": "private"
    },
    "address_space": {
      "value": [
        "10.254.0.0/16"
      ]
    },
    "address_space_subnet_1": {
      "value": [
        "10.254.0.0/28"
      ]
    },
    "address_space_subnet_2": {
      "value": [
        "10.254.2.0/24"
      ]
    },
    "allocation-method-publicip": {
      "value": "Dynamic"
    },
    "allocation-method-publicipagw": {
      "value": "Static"
    },
    "backend-address-pool-name-agw": {
      "value": "poolBE"
    },
    "backend_http_settings-cookie-agw": {
      "value": "Disabled"
    },
    "backend_http_settings-name-agw": {
      "value": "production-be-htst"
    },
    "backend_http_settings-path-agw": {
      "value": "/path1/"
    },
    "backend_http_settings-port-agw": {
      "value": "80"
    },
    "backend_http_settings-protocol-agw": {
      "value": "Http"
    },
    "backend_http_settings-request_timeout-agw": {
      "value": "60"
    },
    "caching-disk-vm": {
      "value": "ReadWrite"
    },
    "capacity-agw-max": {
      "value": "10"
    },
    "capacity-agw-min": {
      "value": "0"
    },
    "enabled-waf": {
      "value": "true"
    },
    "file-upload-limit-mb-waf": {
      "value": "100"
    },
    "firewall-mode-waf": {
      "value": "Prevention"
    },
    "frontend-ip-config-name-agw": {
      "value": "production-feip"
    },
    "frontend-port-agw": {
      "value": "80"
    },
    "frontend-port-name-agw": {
      "value": "production-feport"
    },
    "http-traffic-only-sta": {
      "value": true
    },
    "http2-agw": {
      "value": "false"
    },
    "image-offer-vm": {
      "value": "UbuntuServer"
    },
    "image-publisher-vm": {
      "value": "Canonical"
    },
    "image-sku-vm": {
      "value": "18.04-LTS"
    },
    "image-version-vm": {
      "value": "latest"
    },
    "ip-config-name-agw": {
      "value": "my-gateway-ip-configuration"
    },
    "location": {
      "value": "westeurope"
    },
    "max-request-body-size-kb-waf": {
      "value": "128"
    },
    "name-agw": {
      "value": "myAppGateway"
    },
    "name-disk-vm": {
      "value": "DemoDeviceDisk"
    },
    "name-disk-vm-2": {
      "value": "DemoDeviceDisk2"
    },
    "name-http-listener-agw": {
      "value": "listenagw"
    },
    "name-ipconfig-nic": {
      "value": "testconfiguration1"
    },
    "name-ipconfig-nic-2": {
      "value": "testconfiguration2"
    },
    "name-nic": {
      "value": "edgedevicesim-nic"
    },
    "name-nic-2": {
      "value": "edgedevicesim2-nic"
    },
    "name-publicip": {
      "value": "myPublicIP"
    },
    "name-publicip_2": {
      "value": "myPublicIP2"
    },
    "name-publicipagw": {
      "value": "myPublicIPagw"
    },
    "name-request-routing-rule-agw": {
      "value": "reqroutingrule"
    },
    "name-sta": {
      "value": "demoagwssta23243"
    },
    "name-sta-container": {
      "value": "tfstate"
    },
    "name-vm": {
      "value": "demovm"
    },
    "name-vm-2": {
      "value": "demovm2"
    },
    "name-vnet": {
      "value": "Production"
    },
    "name_subnet_1": {
      "value": "agw"
    },
    "name_subnet_2": {
      "value": "frontend"
    },
    "password_authentication-vm": {
      "value": false
    },
    "private-ip-allocation-nic": {
      "value": "Dynamic"
    },
    "private-ip-allocation-nic-2": {
      "value": "Dynamic"
    },
    "protocol-http-listener-agw": {
      "value": "Http"
    },
    "replication-type-sta": {
      "value": "LRS"
    },
    "resource_group_name": {
      "value": "DemoSEG"
    },
    "rule-set-type-waf": {
      "value": "OWASP"
    },
    "rule-set-version-waf": {
      "value": "3.0"
    },
    "sku-name-agw": {
      "value": "WAF_v2"
    },
    "sku-publicipagw": {
      "value": "Standard"
    },
    "sku-sta": {
      "value": "Standard"
    },
    "sku-tier-agw": {
      "value": "WAF_v2"
    },
    "sku-vm": {
      "value": "Standard_DS1_v2"
    },
    "sta-disk-vm": {
      "value": "Premium_LRS"
    },
    "tags": {
      "value": {
        "Project": "AGW_v2"
      }
    },
    "type-request-routing-rule-agw": {
      "value": "Basic"
    },
    "user-name-vm": {
      "value": "azureuser"
    },
    "user-password-vm": {
      "value": "Password1234!"
    }
  }
}

