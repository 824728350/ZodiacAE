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
      "outputs": {
        "vm_public_ip": {
          "expression": {
            "references": [
              "azurerm_public_ip.ip.ip_address",
              "azurerm_public_ip.ip"
            ]
          }
        }
      },
      "resources": [
        {
          "address": "azurerm_linux_virtual_machine.vm",
          "expressions": {
            "admin_password": {
              "constant_value": "P4ssW85D!!!"
            },
            "admin_username": {
              "constant_value": "lemoncode"
            },
            "computer_name": {
              "constant_value": "lemoncodevm"
            },
            "custom_data": {
              "constant_value": "IyEgL2Jpbi9iYXNoCiMgSW5zdGFsbCBuZ2lueCB1c2luZyB0aGUgZGVmYXVsdCByZXBvc2l0b3J5\nCnN1ZG8gYXB0IHVwZGF0ZQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15CiMgUmVwbGFjZSBkZWZh\ndWx0IGNvbnRlbnQKc3VkbyBybSAvdmFyL3d3dy9odG1sL2luZGV4Lm5naW54LWRlYmlhbi5odG1s\nCmVjaG8gJzxodG1sPjxoZWFkPjx0aXRsZT5DYW1wZXJvIFNlcnZlcjwvdGl0bGU+PC9oZWFkPjxi\nb2R5IHN0eWxlPVwiYmFja2dyb3VuZC1jb2xvcjojMUY3NzhEXCI+PHAgc3R5bGU9XCJ0ZXh0LWFs\naWduOiBjZW50ZXI7XCI+PHNwYW4gc3R5bGU9XCJjb2xvcjojRkZGRkZGO1wiPjxzcGFuIHN0eWxl\nPVwiZm9udC1zaXplOjI4cHg7XCI+RG9uZSEgSGF2ZSBhICYjMTI5Mzg2Ozwvc3Bhbj48L3NwYW4+\nPC9wPjwvYm9keT48L2h0bWw+JyB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbAo=\n"
            },
            "disable_password_authentication": {
              "constant_value": false
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "webVM"
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
                  "constant_value": "ReadWrite"
                },
                "name": {
                  "constant_value": "osDisk"
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
            "size": {
              "references": [
                "var.vm_size"
              ]
            },
            "source_image_reference": [
              {
                "offer": {
                  "constant_value": "UbuntuServer"
                },
                "publisher": {
                  "constant_value": "Canonical"
                },
                "sku": {
                  "constant_value": "18.04-LTS"
                },
                "version": {
                  "constant_value": "latest"
                }
              }
            ],
            "tags": {
              "references": [
                "local.comon_tags"
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
          "address": "azurerm_network_interface.nic",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "lcNicConf"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.ip.id",
                    "azurerm_public_ip.ip"
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
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "lcNIC"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "tags": {
              "references": [
                "local.comon_tags"
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
          "address": "azurerm_network_security_group.nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "lcSecurityGroup"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "security_rule": {
              "references": [
                "var.rule_priorities[0]",
                "var.rule_priorities",
                "var.rule_priorities[1]",
                "var.rule_priorities"
              ]
            },
            "tags": {
              "references": [
                "local.comon_tags"
              ]
            }
          },
          "mode": "managed",
          "name": "nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_public_ip.ip",
          "expressions": {
            "allocation_method": {
              "constant_value": "Dynamic"
            },
            "location": {
              "references": [
                "azurerm_resource_group.rg.location",
                "azurerm_resource_group.rg"
              ]
            },
            "name": {
              "constant_value": "lemoncodeIP"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "tags": {
              "references": [
                "local.comon_tags"
              ]
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
                "var.rg_location"
              ]
            },
            "name": {
              "references": [
                "var.rg_name"
              ]
            },
            "tags": {
              "references": [
                "local.comon_tags"
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
              "references": [
                "var.subnet_address_prefix"
              ]
            },
            "name": {
              "constant_value": "lcSubnet"
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
          "address": "azurerm_subnet_network_security_group_association.sga",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.nsg.id",
                "azurerm_network_security_group.nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.subnet.id",
                "azurerm_subnet.subnet"
              ]
            }
          },
          "mode": "managed",
          "name": "sga",
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
              "constant_value": "lcVnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.rg.name",
                "azurerm_resource_group.rg"
              ]
            },
            "tags": {
              "references": [
                "local.comon_tags"
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
        "billing_code": {
          "default": "BF-0000222",
          "description": "Company name"
        },
        "company": {
          "default": "Lemoncode",
          "description": "Company name"
        },
        "project": {
          "default": "sandwich",
          "description": "Company name"
        },
        "rg_location": {
          "default": "francecentral",
          "description": "Location for resource group"
        },
        "rg_name": {
          "default": "lemoncode",
          "description": "Name for resource group"
        },
        "rule_priorities": {
          "default": [
            1001,
            1000
          ],
          "description": "Priority of security groups"
        },
        "subnet_address_prefix": {
          "default": "10.0.1.0/24",
          "description": "VNet CIDR Block"
        },
        "vm_size": {
          "default": "Standard_DS1_v2",
          "description": "Size of VM"
        },
        "vnet_address_space": {
          "default": "10.0.0.0/16",
          "description": "VNet CIDR Block"
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "output_changes": {
    "vm_public_ip": {
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
      "vm_public_ip": {
        "sensitive": false
      }
    },
    "root_module": {
      "resources": [
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
            "tags": {},
            "termination_notification": []
          },
          "type": "azurerm_linux_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "admin_password": "P4ssW85D!!!",
            "admin_ssh_key": [],
            "admin_username": "lemoncode",
            "allow_extension_operations": true,
            "availability_set_id": null,
            "boot_diagnostics": [],
            "bypass_platform_safety_checks_on_user_schedule_enabled": false,
            "capacity_reservation_group_id": null,
            "computer_name": "lemoncodevm",
            "custom_data": "IyEgL2Jpbi9iYXNoCiMgSW5zdGFsbCBuZ2lueCB1c2luZyB0aGUgZGVmYXVsdCByZXBvc2l0b3J5\nCnN1ZG8gYXB0IHVwZGF0ZQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15CiMgUmVwbGFjZSBkZWZh\ndWx0IGNvbnRlbnQKc3VkbyBybSAvdmFyL3d3dy9odG1sL2luZGV4Lm5naW54LWRlYmlhbi5odG1s\nCmVjaG8gJzxodG1sPjxoZWFkPjx0aXRsZT5DYW1wZXJvIFNlcnZlcjwvdGl0bGU+PC9oZWFkPjxi\nb2R5IHN0eWxlPVwiYmFja2dyb3VuZC1jb2xvcjojMUY3NzhEXCI+PHAgc3R5bGU9XCJ0ZXh0LWFs\naWduOiBjZW50ZXI7XCI+PHNwYW4gc3R5bGU9XCJjb2xvcjojRkZGRkZGO1wiPjxzcGFuIHN0eWxl\nPVwiZm9udC1zaXplOjI4cHg7XCI+RG9uZSEgSGF2ZSBhICYjMTI5Mzg2Ozwvc3Bhbj48L3NwYW4+\nPC9wPjwvYm9keT48L2h0bWw+JyB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbAo=\n",
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
            "location": "francecentral",
            "max_bid_price": -1,
            "name": "webVM",
            "os_disk": [
              {
                "caching": "ReadWrite",
                "diff_disk_settings": [],
                "disk_encryption_set_id": null,
                "name": "osDisk",
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
            "resource_group_name": "lemoncode",
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
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
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
            "private_ip_addresses": [],
            "tags": {}
          },
          "type": "azurerm_network_interface",
          "values": {
            "auxiliary_mode": null,
            "auxiliary_sku": null,
            "edge_zone": null,
            "internal_dns_name_label": null,
            "ip_configuration": [
              {
                "name": "lcNicConf",
                "private_ip_address_allocation": "Dynamic",
                "private_ip_address_version": "IPv4"
              }
            ],
            "location": "francecentral",
            "name": "lcNIC",
            "resource_group_name": "lemoncode",
            "tags": {
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
            },
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.nsg",
          "mode": "managed",
          "name": "nsg",
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
            ],
            "tags": {}
          },
          "type": "azurerm_network_security_group",
          "values": {
            "location": "francecentral",
            "name": "lcSecurityGroup",
            "resource_group_name": "lemoncode",
            "security_rule": [
              {
                "access": "Allow",
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "22",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "SSH",
                "priority": 1001,
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
                "name": "HTTP",
                "priority": 1000,
                "protocol": "Tcp",
                "source_address_prefix": "*",
                "source_address_prefixes": [],
                "source_application_security_group_ids": [],
                "source_port_range": "*",
                "source_port_ranges": []
              }
            ],
            "tags": {
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
            },
            "timeouts": null
          }
        },
        {
          "address": "azurerm_public_ip.ip",
          "mode": "managed",
          "name": "ip",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "tags": {}
          },
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
            "location": "francecentral",
            "name": "lemoncodeIP",
            "public_ip_prefix_id": null,
            "resource_group_name": "lemoncode",
            "reverse_fqdn": null,
            "sku": "Basic",
            "sku_tier": "Regional",
            "tags": {
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
            },
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
            "location": "francecentral",
            "managed_by": null,
            "name": "lemoncode",
            "tags": {
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
            },
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
              "10.0.1.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [],
            "name": "lcSubnet",
            "resource_group_name": "lemoncode",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "lcVnet"
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.sga",
          "mode": "managed",
          "name": "sga",
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
              "10.0.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "francecentral",
            "name": "lcVnet",
            "resource_group_name": "lemoncode",
            "tags": {
              "billing_code": "BF-0000222",
              "company": "Lemoncode",
              "project": "Lemoncode-sandwich"
            },
            "timeouts": null
          }
        }
      ]
    }
  },
  "relevant_attributes": [
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.rg"
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
      "resource": "azurerm_virtual_network.vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.nsg"
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
      "resource": "azurerm_public_ip.ip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.nic"
    },
    {
      "attribute": [
        "ip_address"
      ],
      "resource": "azurerm_public_ip.ip"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_linux_virtual_machine.vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "admin_password": "P4ssW85D!!!",
          "admin_ssh_key": [],
          "admin_username": "lemoncode",
          "allow_extension_operations": true,
          "availability_set_id": null,
          "boot_diagnostics": [],
          "bypass_platform_safety_checks_on_user_schedule_enabled": false,
          "capacity_reservation_group_id": null,
          "computer_name": "lemoncodevm",
          "custom_data": "IyEgL2Jpbi9iYXNoCiMgSW5zdGFsbCBuZ2lueCB1c2luZyB0aGUgZGVmYXVsdCByZXBvc2l0b3J5\nCnN1ZG8gYXB0IHVwZGF0ZQpzdWRvIGFwdCBpbnN0YWxsIG5naW54IC15CiMgUmVwbGFjZSBkZWZh\ndWx0IGNvbnRlbnQKc3VkbyBybSAvdmFyL3d3dy9odG1sL2luZGV4Lm5naW54LWRlYmlhbi5odG1s\nCmVjaG8gJzxodG1sPjxoZWFkPjx0aXRsZT5DYW1wZXJvIFNlcnZlcjwvdGl0bGU+PC9oZWFkPjxi\nb2R5IHN0eWxlPVwiYmFja2dyb3VuZC1jb2xvcjojMUY3NzhEXCI+PHAgc3R5bGU9XCJ0ZXh0LWFs\naWduOiBjZW50ZXI7XCI+PHNwYW4gc3R5bGU9XCJjb2xvcjojRkZGRkZGO1wiPjxzcGFuIHN0eWxl\nPVwiZm9udC1zaXplOjI4cHg7XCI+RG9uZSEgSGF2ZSBhICYjMTI5Mzg2Ozwvc3Bhbj48L3NwYW4+\nPC9wPjwvYm9keT48L2h0bWw+JyB8IHN1ZG8gdGVlIC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbAo=\n",
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
          "location": "francecentral",
          "max_bid_price": -1,
          "name": "webVM",
          "os_disk": [
            {
              "caching": "ReadWrite",
              "diff_disk_settings": [],
              "disk_encryption_set_id": null,
              "name": "osDisk",
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
          "resource_group_name": "lemoncode",
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
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
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
          "tags": {},
          "termination_notification": []
        },
        "after_unknown": {
          "additional_capabilities": [],
          "admin_ssh_key": [],
          "boot_diagnostics": [],
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
              "name": "lcNicConf",
              "private_ip_address_allocation": "Dynamic",
              "private_ip_address_version": "IPv4"
            }
          ],
          "location": "francecentral",
          "name": "lcNIC",
          "resource_group_name": "lemoncode",
          "tags": {
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
          },
          "timeouts": null
        },
        "after_sensitive": {
          "applied_dns_servers": [],
          "dns_servers": [],
          "ip_configuration": [
            {}
          ],
          "private_ip_addresses": [],
          "tags": {}
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
          "tags": {},
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
      "address": "azurerm_network_security_group.nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "francecentral",
          "name": "lcSecurityGroup",
          "resource_group_name": "lemoncode",
          "security_rule": [
            {
              "access": "Allow",
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "22",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "SSH",
              "priority": 1001,
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
              "name": "HTTP",
              "priority": 1000,
              "protocol": "Tcp",
              "source_address_prefix": "*",
              "source_address_prefixes": [],
              "source_application_security_group_ids": [],
              "source_port_range": "*",
              "source_port_ranges": []
            }
          ],
          "tags": {
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
          },
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
          ],
          "tags": {}
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
          ],
          "tags": {}
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_public_ip.ip",
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
          "location": "francecentral",
          "name": "lemoncodeIP",
          "public_ip_prefix_id": null,
          "resource_group_name": "lemoncode",
          "reverse_fqdn": null,
          "sku": "Basic",
          "sku_tier": "Regional",
          "tags": {
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
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
          "tags": {}
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "ip",
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
          "location": "francecentral",
          "managed_by": null,
          "name": "lemoncode",
          "tags": {
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
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
      "address": "azurerm_subnet.subnet",
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
          "name": "lcSubnet",
          "resource_group_name": "lemoncode",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "lcVnet"
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
      "address": "azurerm_subnet_network_security_group_association.sga",
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
      "name": "sga",
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
            "10.0.0.0/16"
          ],
          "bgp_community": null,
          "ddos_protection_plan": [],
          "edge_zone": null,
          "encryption": [],
          "flow_timeout_in_minutes": null,
          "location": "francecentral",
          "name": "lcVnet",
          "resource_group_name": "lemoncode",
          "tags": {
            "billing_code": "BF-0000222",
            "company": "Lemoncode",
            "project": "Lemoncode-sandwich"
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
  "timestamp": "2024-08-17T00:04:04Z",
  "variables": {
    "billing_code": {
      "value": "BF-0000222"
    },
    "company": {
      "value": "Lemoncode"
    },
    "project": {
      "value": "sandwich"
    },
    "rg_location": {
      "value": "francecentral"
    },
    "rg_name": {
      "value": "lemoncode"
    },
    "rule_priorities": {
      "value": [
        1001,
        1000
      ]
    },
    "subnet_address_prefix": {
      "value": "10.0.1.0/24"
    },
    "vm_size": {
      "value": "Standard_DS1_v2"
    },
    "vnet_address_space": {
      "value": "10.0.0.0/16"
    }
  }
}

