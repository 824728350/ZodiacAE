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
      "resources": [
        {
          "address": "azurerm_network_interface.hub_vm_nic",
          "expressions": {
            "ip_configuration": [
              {
                "name": {
                  "constant_value": "internal"
                },
                "private_ip_address_allocation": {
                  "constant_value": "Dynamic"
                },
                "public_ip_address_id": {
                  "references": [
                    "azurerm_public_ip.hub_vm_public_ip.id",
                    "azurerm_public_ip.hub_vm_public_ip"
                  ]
                },
                "subnet_id": {
                  "references": [
                    "azurerm_subnet.hub_subnet.id",
                    "azurerm_subnet.hub_subnet"
                  ]
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.hub_rg.location",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "name": {
              "constant_value": "hubVMNic"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_vm_nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface.spoke_vm_nic",
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
                    "azurerm_subnet.spoke_vm_subnet.id",
                    "azurerm_subnet.spoke_vm_subnet"
                  ]
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeVMNic"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_vm_nic",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_interface.spoke_vm_nic1",
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
                    "azurerm_subnet.spoke_vm_subnet.id",
                    "azurerm_subnet.spoke_vm_subnet"
                  ]
                }
              }
            ],
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeVMNic1"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_vm_nic1",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_interface"
        },
        {
          "address": "azurerm_network_security_group.hub_subnet_nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.hub_rg.location",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "name": {
              "constant_value": "hubSubnetNSG"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
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
                  "destination_port_range": "22",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "SSH",
                  "priority": 100,
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
                  "destination_port_range": "9202",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "AllowAll9202",
                  "priority": 101,
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
                  "name": "AllowAll80",
                  "priority": 102,
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
          "name": "hub_subnet_nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_network_security_group.spoke_subnet_nsg",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeSubnetNSG"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
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
                  "destination_port_range": "22",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "SSH",
                  "priority": 100,
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
                  "destination_port_range": "3389",
                  "destination_port_ranges": null,
                  "direction": "Inbound",
                  "name": "AllowAll3389",
                  "priority": 101,
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
                  "name": "AllowAll80",
                  "priority": 102,
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
          "name": "spoke_subnet_nsg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_network_security_group"
        },
        {
          "address": "azurerm_public_ip.hub_vm_public_ip",
          "expressions": {
            "allocation_method": {
              "constant_value": "Dynamic"
            },
            "location": {
              "references": [
                "azurerm_resource_group.hub_rg.location",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "name": {
              "constant_value": "hubVMPublicIp"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_vm_public_ip",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_public_ip"
        },
        {
          "address": "azurerm_resource_group.hub_rg",
          "expressions": {
            "location": {
              "constant_value": "East US"
            },
            "name": {
              "constant_value": "hubResourceGroup"
            }
          },
          "mode": "managed",
          "name": "hub_rg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_resource_group.spoke_rg",
          "expressions": {
            "location": {
              "constant_value": "East US"
            },
            "name": {
              "constant_value": "spokeResourceGroup"
            }
          },
          "mode": "managed",
          "name": "spoke_rg",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_resource_group"
        },
        {
          "address": "azurerm_subnet.hub_subnet",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.0.1.0/24"
              ]
            },
            "name": {
              "constant_value": "hubSubnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.hub_vnet.name",
                "azurerm_virtual_network.hub_vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.spoke_postgres_subnet",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.1.2.0/24"
              ]
            },
            "delegation": [
              {
                "name": {
                  "constant_value": "fs"
                },
                "service_delegation": [
                  {
                    "actions": {
                      "constant_value": [
                        "Microsoft.Network/virtualNetworks/subnets/join/action"
                      ]
                    },
                    "name": {
                      "constant_value": "Microsoft.DBforPostgreSQL/flexibleServers"
                    }
                  }
                ]
              }
            ],
            "name": {
              "constant_value": "postgresSubnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "service_endpoints": {
              "constant_value": [
                "Microsoft.Storage"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.spoke_vnet.name",
                "azurerm_virtual_network.spoke_vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_postgres_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet.spoke_vm_subnet",
          "expressions": {
            "address_prefixes": {
              "constant_value": [
                "10.1.1.0/24"
              ]
            },
            "name": {
              "constant_value": "vmSubnet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.spoke_vnet.name",
                "azurerm_virtual_network.spoke_vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_vm_subnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.hub_subnet_nsg_association",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.hub_subnet_nsg.id",
                "azurerm_network_security_group.hub_subnet_nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.hub_subnet.id",
                "azurerm_subnet.hub_subnet"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_subnet_nsg_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
        },
        {
          "address": "azurerm_subnet_network_security_group_association.spoke_subnet_nsg_association",
          "expressions": {
            "network_security_group_id": {
              "references": [
                "azurerm_network_security_group.spoke_subnet_nsg.id",
                "azurerm_network_security_group.spoke_subnet_nsg"
              ]
            },
            "subnet_id": {
              "references": [
                "azurerm_subnet.spoke_vm_subnet.id",
                "azurerm_subnet.spoke_vm_subnet"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_subnet_nsg_association",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_subnet_network_security_group_association"
        },
        {
          "address": "azurerm_virtual_machine.hub_vm",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.hub_rg.location",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "name": {
              "constant_value": "hubVM"
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.hub_vm_nic.id",
                "azurerm_network_interface.hub_vm_nic"
              ]
            },
            "os_profile": [
              {
                "admin_password": {
                  "constant_value": "Password1234!"
                },
                "admin_username": {
                  "constant_value": "adminuser"
                },
                "computer_name": {
                  "constant_value": "hubvm"
                }
              }
            ],
            "os_profile_linux_config": [
              {
                "disable_password_authentication": {
                  "constant_value": false
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "storage_image_reference": [
              {
                "offer": {
                  "constant_value": "UbuntuServer"
                },
                "publisher": {
                  "constant_value": "Canonical"
                },
                "sku": {
                  "constant_value": "16.04-LTS"
                },
                "version": {
                  "constant_value": "latest"
                }
              }
            ],
            "storage_os_disk": [
              {
                "caching": {
                  "constant_value": "ReadWrite"
                },
                "create_option": {
                  "constant_value": "FromImage"
                },
                "managed_disk_type": {
                  "constant_value": "Standard_LRS"
                },
                "name": {
                  "constant_value": "myOsDisk1"
                }
              }
            ],
            "vm_size": {
              "constant_value": "Standard_DS1_v2"
            }
          },
          "mode": "managed",
          "name": "hub_vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_machine"
        },
        {
          "address": "azurerm_virtual_machine.spoke_ubuntu_vm",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeUbuntuVM"
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.spoke_vm_nic.id",
                "azurerm_network_interface.spoke_vm_nic"
              ]
            },
            "os_profile": [
              {
                "admin_password": {
                  "constant_value": "Password1234!"
                },
                "admin_username": {
                  "constant_value": "adminuser"
                },
                "computer_name": {
                  "constant_value": "spokeubuntuvm"
                }
              }
            ],
            "os_profile_linux_config": [
              {
                "disable_password_authentication": {
                  "constant_value": false
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "storage_image_reference": [
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
            "storage_os_disk": [
              {
                "caching": {
                  "constant_value": "ReadWrite"
                },
                "create_option": {
                  "constant_value": "FromImage"
                },
                "managed_disk_type": {
                  "constant_value": "Standard_LRS"
                },
                "name": {
                  "constant_value": "spokeOsDisk1"
                }
              }
            ],
            "vm_size": {
              "constant_value": "Standard_DS1_v2"
            }
          },
          "mode": "managed",
          "name": "spoke_ubuntu_vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_machine"
        },
        {
          "address": "azurerm_virtual_machine.spoke_windows_vm",
          "expressions": {
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeWindowsVM"
            },
            "network_interface_ids": {
              "references": [
                "azurerm_network_interface.spoke_vm_nic1.id",
                "azurerm_network_interface.spoke_vm_nic1"
              ]
            },
            "os_profile": [
              {
                "admin_password": {
                  "constant_value": "Password1234!"
                },
                "admin_username": {
                  "constant_value": "adminuser"
                },
                "computer_name": {
                  "constant_value": "spokewindowsvm"
                }
              }
            ],
            "os_profile_windows_config": [
              {
                "provision_vm_agent": {
                  "constant_value": true
                }
              }
            ],
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "storage_image_reference": [
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
            ],
            "storage_os_disk": [
              {
                "caching": {
                  "constant_value": "ReadWrite"
                },
                "create_option": {
                  "constant_value": "FromImage"
                },
                "managed_disk_type": {
                  "constant_value": "Standard_LRS"
                },
                "name": {
                  "constant_value": "spokeWindowsOsDisk"
                }
              }
            ],
            "vm_size": {
              "constant_value": "Standard_DS1_v2"
            }
          },
          "mode": "managed",
          "name": "spoke_windows_vm",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_machine"
        },
        {
          "address": "azurerm_virtual_network.hub_vnet",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.0.0.0/16"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.hub_rg.location",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "name": {
              "constant_value": "hubVNet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_vnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        },
        {
          "address": "azurerm_virtual_network.spoke_vnet",
          "expressions": {
            "address_space": {
              "constant_value": [
                "10.1.0.0/16"
              ]
            },
            "location": {
              "references": [
                "azurerm_resource_group.spoke_rg.location",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "name": {
              "constant_value": "spokeVNet"
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_vnet",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network"
        },
        {
          "address": "azurerm_virtual_network_peering.hub_to_spoke_peering",
          "expressions": {
            "allow_forwarded_traffic": {
              "constant_value": true
            },
            "allow_virtual_network_access": {
              "constant_value": true
            },
            "name": {
              "constant_value": "hubToSpokePeering"
            },
            "remote_virtual_network_id": {
              "references": [
                "azurerm_virtual_network.spoke_vnet.id",
                "azurerm_virtual_network.spoke_vnet"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.hub_rg.name",
                "azurerm_resource_group.hub_rg"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.hub_vnet.name",
                "azurerm_virtual_network.hub_vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "hub_to_spoke_peering",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network_peering"
        },
        {
          "address": "azurerm_virtual_network_peering.spoke_to_hub_peering",
          "expressions": {
            "allow_forwarded_traffic": {
              "constant_value": true
            },
            "allow_virtual_network_access": {
              "constant_value": true
            },
            "name": {
              "constant_value": "spokeToHubPeering"
            },
            "remote_virtual_network_id": {
              "references": [
                "azurerm_virtual_network.hub_vnet.id",
                "azurerm_virtual_network.hub_vnet"
              ]
            },
            "resource_group_name": {
              "references": [
                "azurerm_resource_group.spoke_rg.name",
                "azurerm_resource_group.spoke_rg"
              ]
            },
            "virtual_network_name": {
              "references": [
                "azurerm_virtual_network.spoke_vnet.name",
                "azurerm_virtual_network.spoke_vnet"
              ]
            }
          },
          "mode": "managed",
          "name": "spoke_to_hub_peering",
          "provider_config_key": "azurerm",
          "schema_version": 0,
          "type": "azurerm_virtual_network_peering"
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
          "address": "azurerm_network_interface.hub_vm_nic",
          "mode": "managed",
          "name": "hub_vm_nic",
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
                "private_ip_address_version": "IPv4"
              }
            ],
            "location": "eastus",
            "name": "hubVMNic",
            "resource_group_name": "hubResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface.spoke_vm_nic",
          "mode": "managed",
          "name": "spoke_vm_nic",
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
            "name": "spokeVMNic",
            "resource_group_name": "spokeResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_interface.spoke_vm_nic1",
          "mode": "managed",
          "name": "spoke_vm_nic1",
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
            "name": "spokeVMNic1",
            "resource_group_name": "spokeResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_network_security_group.hub_subnet_nsg",
          "mode": "managed",
          "name": "hub_subnet_nsg",
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
            "name": "hubSubnetNSG",
            "resource_group_name": "hubResourceGroup",
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
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "80",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowAll80",
                "priority": 102,
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
                "destination_port_range": "9202",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowAll9202",
                "priority": 101,
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
          "address": "azurerm_network_security_group.spoke_subnet_nsg",
          "mode": "managed",
          "name": "spoke_subnet_nsg",
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
            "name": "spokeSubnetNSG",
            "resource_group_name": "spokeResourceGroup",
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
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "3389",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowAll3389",
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
                "description": "",
                "destination_address_prefix": "*",
                "destination_address_prefixes": [],
                "destination_application_security_group_ids": [],
                "destination_port_range": "80",
                "destination_port_ranges": [],
                "direction": "Inbound",
                "name": "AllowAll80",
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
          "address": "azurerm_public_ip.hub_vm_public_ip",
          "mode": "managed",
          "name": "hub_vm_public_ip",
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
            "name": "hubVMPublicIp",
            "public_ip_prefix_id": null,
            "resource_group_name": "hubResourceGroup",
            "reverse_fqdn": null,
            "sku": "Basic",
            "sku_tier": "Regional",
            "tags": null,
            "timeouts": null,
            "zones": null
          }
        },
        {
          "address": "azurerm_resource_group.hub_rg",
          "mode": "managed",
          "name": "hub_rg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "eastus",
            "managed_by": null,
            "name": "hubResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_resource_group.spoke_rg",
          "mode": "managed",
          "name": "spoke_rg",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_resource_group",
          "values": {
            "location": "eastus",
            "managed_by": null,
            "name": "spokeResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet.hub_subnet",
          "mode": "managed",
          "name": "hub_subnet",
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
            "name": "hubSubnet",
            "resource_group_name": "hubResourceGroup",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "hubVNet"
          }
        },
        {
          "address": "azurerm_subnet.spoke_postgres_subnet",
          "mode": "managed",
          "name": "spoke_postgres_subnet",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "address_prefixes": [
              false
            ],
            "delegation": [
              {
                "service_delegation": [
                  {
                    "actions": [
                      false
                    ]
                  }
                ]
              }
            ],
            "service_endpoints": [
              false
            ]
          },
          "type": "azurerm_subnet",
          "values": {
            "address_prefixes": [
              "10.1.2.0/24"
            ],
            "default_outbound_access_enabled": true,
            "delegation": [
              {
                "name": "fs",
                "service_delegation": [
                  {
                    "actions": [
                      "Microsoft.Network/virtualNetworks/subnets/join/action"
                    ],
                    "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                  }
                ]
              }
            ],
            "name": "postgresSubnet",
            "resource_group_name": "spokeResourceGroup",
            "service_endpoint_policy_ids": null,
            "service_endpoints": [
              "Microsoft.Storage"
            ],
            "timeouts": null,
            "virtual_network_name": "spokeVNet"
          }
        },
        {
          "address": "azurerm_subnet.spoke_vm_subnet",
          "mode": "managed",
          "name": "spoke_vm_subnet",
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
            "name": "vmSubnet",
            "resource_group_name": "spokeResourceGroup",
            "service_endpoint_policy_ids": null,
            "service_endpoints": null,
            "timeouts": null,
            "virtual_network_name": "spokeVNet"
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.hub_subnet_nsg_association",
          "mode": "managed",
          "name": "hub_subnet_nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_subnet_network_security_group_association.spoke_subnet_nsg_association",
          "mode": "managed",
          "name": "spoke_subnet_nsg_association",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_subnet_network_security_group_association",
          "values": {
            "timeouts": null
          }
        },
        {
          "address": "azurerm_virtual_machine.hub_vm",
          "mode": "managed",
          "name": "hub_vm",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "identity": [],
            "network_interface_ids": [],
            "os_profile": true,
            "os_profile_linux_config": [
              {
                "ssh_keys": []
              }
            ],
            "os_profile_secrets": [],
            "os_profile_windows_config": [],
            "plan": [],
            "storage_data_disk": [],
            "storage_image_reference": [
              {}
            ],
            "storage_os_disk": [
              {}
            ]
          },
          "type": "azurerm_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "delete_data_disks_on_termination": false,
            "delete_os_disk_on_termination": false,
            "identity": [],
            "location": "eastus",
            "name": "hubVM",
            "os_profile": [
              {
                "admin_password": "Password1234!",
                "admin_username": "adminuser",
                "computer_name": "hubvm"
              }
            ],
            "os_profile_linux_config": [
              {
                "disable_password_authentication": false,
                "ssh_keys": []
              }
            ],
            "os_profile_secrets": [],
            "os_profile_windows_config": [],
            "plan": [],
            "primary_network_interface_id": null,
            "proximity_placement_group_id": null,
            "resource_group_name": "hubResourceGroup",
            "storage_image_reference": [
              {
                "id": "",
                "offer": "UbuntuServer",
                "publisher": "Canonical",
                "sku": "16.04-LTS",
                "version": "latest"
              }
            ],
            "storage_os_disk": [
              {
                "caching": "ReadWrite",
                "create_option": "FromImage",
                "image_uri": null,
                "managed_disk_type": "Standard_LRS",
                "name": "myOsDisk1",
                "vhd_uri": null,
                "write_accelerator_enabled": false
              }
            ],
            "tags": null,
            "timeouts": null,
            "vm_size": "Standard_DS1_v2",
            "zones": null
          }
        },
        {
          "address": "azurerm_virtual_machine.spoke_ubuntu_vm",
          "mode": "managed",
          "name": "spoke_ubuntu_vm",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "identity": [],
            "network_interface_ids": [],
            "os_profile": true,
            "os_profile_linux_config": [
              {
                "ssh_keys": []
              }
            ],
            "os_profile_secrets": [],
            "os_profile_windows_config": [],
            "plan": [],
            "storage_data_disk": [],
            "storage_image_reference": [
              {}
            ],
            "storage_os_disk": [
              {}
            ]
          },
          "type": "azurerm_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "delete_data_disks_on_termination": false,
            "delete_os_disk_on_termination": false,
            "identity": [],
            "location": "eastus",
            "name": "spokeUbuntuVM",
            "os_profile": [
              {
                "admin_password": "Password1234!",
                "admin_username": "adminuser",
                "computer_name": "spokeubuntuvm"
              }
            ],
            "os_profile_linux_config": [
              {
                "disable_password_authentication": false,
                "ssh_keys": []
              }
            ],
            "os_profile_secrets": [],
            "os_profile_windows_config": [],
            "plan": [],
            "primary_network_interface_id": null,
            "proximity_placement_group_id": null,
            "resource_group_name": "spokeResourceGroup",
            "storage_image_reference": [
              {
                "id": "",
                "offer": "UbuntuServer",
                "publisher": "Canonical",
                "sku": "18.04-LTS",
                "version": "latest"
              }
            ],
            "storage_os_disk": [
              {
                "caching": "ReadWrite",
                "create_option": "FromImage",
                "image_uri": null,
                "managed_disk_type": "Standard_LRS",
                "name": "spokeOsDisk1",
                "vhd_uri": null,
                "write_accelerator_enabled": false
              }
            ],
            "tags": null,
            "timeouts": null,
            "vm_size": "Standard_DS1_v2",
            "zones": null
          }
        },
        {
          "address": "azurerm_virtual_machine.spoke_windows_vm",
          "mode": "managed",
          "name": "spoke_windows_vm",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "identity": [],
            "network_interface_ids": [],
            "os_profile": true,
            "os_profile_linux_config": [],
            "os_profile_secrets": [],
            "os_profile_windows_config": [
              {
                "additional_unattend_config": [],
                "winrm": []
              }
            ],
            "plan": [],
            "storage_data_disk": [],
            "storage_image_reference": [
              {}
            ],
            "storage_os_disk": [
              {}
            ]
          },
          "type": "azurerm_virtual_machine",
          "values": {
            "additional_capabilities": [],
            "boot_diagnostics": [],
            "delete_data_disks_on_termination": false,
            "delete_os_disk_on_termination": false,
            "identity": [],
            "location": "eastus",
            "name": "spokeWindowsVM",
            "os_profile": [
              {
                "admin_password": "Password1234!",
                "admin_username": "adminuser",
                "computer_name": "spokewindowsvm"
              }
            ],
            "os_profile_linux_config": [],
            "os_profile_secrets": [],
            "os_profile_windows_config": [
              {
                "additional_unattend_config": [],
                "enable_automatic_upgrades": false,
                "provision_vm_agent": true,
                "timezone": "",
                "winrm": []
              }
            ],
            "plan": [],
            "primary_network_interface_id": null,
            "proximity_placement_group_id": null,
            "resource_group_name": "spokeResourceGroup",
            "storage_image_reference": [
              {
                "id": "",
                "offer": "WindowsServer",
                "publisher": "MicrosoftWindowsServer",
                "sku": "2019-Datacenter",
                "version": "latest"
              }
            ],
            "storage_os_disk": [
              {
                "caching": "ReadWrite",
                "create_option": "FromImage",
                "image_uri": null,
                "managed_disk_type": "Standard_LRS",
                "name": "spokeWindowsOsDisk",
                "vhd_uri": null,
                "write_accelerator_enabled": false
              }
            ],
            "tags": null,
            "timeouts": null,
            "vm_size": "Standard_DS1_v2",
            "zones": null
          }
        },
        {
          "address": "azurerm_virtual_network.hub_vnet",
          "mode": "managed",
          "name": "hub_vnet",
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
            "name": "hubVNet",
            "resource_group_name": "hubResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_virtual_network.spoke_vnet",
          "mode": "managed",
          "name": "spoke_vnet",
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
              "10.1.0.0/16"
            ],
            "bgp_community": null,
            "ddos_protection_plan": [],
            "edge_zone": null,
            "encryption": [],
            "flow_timeout_in_minutes": null,
            "location": "eastus",
            "name": "spokeVNet",
            "resource_group_name": "spokeResourceGroup",
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "azurerm_virtual_network_peering.hub_to_spoke_peering",
          "mode": "managed",
          "name": "hub_to_spoke_peering",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_virtual_network_peering",
          "values": {
            "allow_forwarded_traffic": true,
            "allow_gateway_transit": false,
            "allow_virtual_network_access": true,
            "local_subnet_names": null,
            "name": "hubToSpokePeering",
            "only_ipv6_peering_enabled": null,
            "peer_complete_virtual_networks_enabled": true,
            "remote_subnet_names": null,
            "resource_group_name": "hubResourceGroup",
            "timeouts": null,
            "triggers": null,
            "use_remote_gateways": false,
            "virtual_network_name": "hubVNet"
          }
        },
        {
          "address": "azurerm_virtual_network_peering.spoke_to_hub_peering",
          "mode": "managed",
          "name": "spoke_to_hub_peering",
          "provider_name": "registry.terraform.io/hashicorp/azurerm",
          "schema_version": 0,
          "sensitive_values": {},
          "type": "azurerm_virtual_network_peering",
          "values": {
            "allow_forwarded_traffic": true,
            "allow_gateway_transit": false,
            "allow_virtual_network_access": true,
            "local_subnet_names": null,
            "name": "spokeToHubPeering",
            "only_ipv6_peering_enabled": null,
            "peer_complete_virtual_networks_enabled": true,
            "remote_subnet_names": null,
            "resource_group_name": "spokeResourceGroup",
            "timeouts": null,
            "triggers": null,
            "use_remote_gateways": false,
            "virtual_network_name": "spokeVNet"
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
      "resource": "azurerm_resource_group.spoke_rg"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.spoke_rg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.hub_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_subnet.spoke_vm_subnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.hub_vm_nic"
    },
    {
      "attribute": [
        "location"
      ],
      "resource": "azurerm_resource_group.hub_rg"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.hub_vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_public_ip.hub_vm_public_ip"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.hub_subnet_nsg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.spoke_vm_nic1"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_interface.spoke_vm_nic"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_virtual_network.spoke_vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_virtual_network.spoke_vnet"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_network_security_group.spoke_subnet_nsg"
    },
    {
      "attribute": [
        "name"
      ],
      "resource": "azurerm_resource_group.hub_rg"
    },
    {
      "attribute": [
        "id"
      ],
      "resource": "azurerm_virtual_network.hub_vnet"
    }
  ],
  "resource_changes": [
    {
      "address": "azurerm_network_interface.hub_vm_nic",
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
              "private_ip_address_version": "IPv4"
            }
          ],
          "location": "eastus",
          "name": "hubVMNic",
          "resource_group_name": "hubResourceGroup",
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
      "name": "hub_vm_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface.spoke_vm_nic",
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
          "name": "spokeVMNic",
          "resource_group_name": "spokeResourceGroup",
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
      "mode": "managed",
      "name": "spoke_vm_nic",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_interface.spoke_vm_nic1",
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
          "name": "spokeVMNic1",
          "resource_group_name": "spokeResourceGroup",
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
      "mode": "managed",
      "name": "spoke_vm_nic1",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_interface"
    },
    {
      "address": "azurerm_network_security_group.hub_subnet_nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "name": "hubSubnetNSG",
          "resource_group_name": "hubResourceGroup",
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
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "80",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowAll80",
              "priority": 102,
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
              "destination_port_range": "9202",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowAll9202",
              "priority": 101,
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
      "name": "hub_subnet_nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_network_security_group.spoke_subnet_nsg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "name": "spokeSubnetNSG",
          "resource_group_name": "spokeResourceGroup",
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
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "3389",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowAll3389",
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
              "description": "",
              "destination_address_prefix": "*",
              "destination_address_prefixes": [],
              "destination_application_security_group_ids": [],
              "destination_port_range": "80",
              "destination_port_ranges": [],
              "direction": "Inbound",
              "name": "AllowAll80",
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
      "name": "spoke_subnet_nsg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_network_security_group"
    },
    {
      "address": "azurerm_public_ip.hub_vm_public_ip",
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
          "name": "hubVMPublicIp",
          "public_ip_prefix_id": null,
          "resource_group_name": "hubResourceGroup",
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
      "name": "hub_vm_public_ip",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_public_ip"
    },
    {
      "address": "azurerm_resource_group.hub_rg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "managed_by": null,
          "name": "hubResourceGroup",
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
      "name": "hub_rg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_resource_group.spoke_rg",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "location": "eastus",
          "managed_by": null,
          "name": "spokeResourceGroup",
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
      "name": "spoke_rg",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_resource_group"
    },
    {
      "address": "azurerm_subnet.hub_subnet",
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
          "name": "hubSubnet",
          "resource_group_name": "hubResourceGroup",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "hubVNet"
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
      "name": "hub_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.spoke_postgres_subnet",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "address_prefixes": [
            "10.1.2.0/24"
          ],
          "default_outbound_access_enabled": true,
          "delegation": [
            {
              "name": "fs",
              "service_delegation": [
                {
                  "actions": [
                    "Microsoft.Network/virtualNetworks/subnets/join/action"
                  ],
                  "name": "Microsoft.DBforPostgreSQL/flexibleServers"
                }
              ]
            }
          ],
          "name": "postgresSubnet",
          "resource_group_name": "spokeResourceGroup",
          "service_endpoint_policy_ids": null,
          "service_endpoints": [
            "Microsoft.Storage"
          ],
          "timeouts": null,
          "virtual_network_name": "spokeVNet"
        },
        "after_sensitive": {
          "address_prefixes": [
            false
          ],
          "delegation": [
            {
              "service_delegation": [
                {
                  "actions": [
                    false
                  ]
                }
              ]
            }
          ],
          "service_endpoints": [
            false
          ]
        },
        "after_unknown": {
          "address_prefixes": [
            false
          ],
          "delegation": [
            {
              "service_delegation": [
                {
                  "actions": [
                    false
                  ]
                }
              ]
            }
          ],
          "enforce_private_link_endpoint_network_policies": true,
          "enforce_private_link_service_network_policies": true,
          "id": true,
          "private_endpoint_network_policies": true,
          "private_endpoint_network_policies_enabled": true,
          "private_link_service_network_policies_enabled": true,
          "service_endpoints": [
            false
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "spoke_postgres_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet.spoke_vm_subnet",
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
          "name": "vmSubnet",
          "resource_group_name": "spokeResourceGroup",
          "service_endpoint_policy_ids": null,
          "service_endpoints": null,
          "timeouts": null,
          "virtual_network_name": "spokeVNet"
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
      "name": "spoke_vm_subnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.hub_subnet_nsg_association",
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
      "name": "hub_subnet_nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_subnet_network_security_group_association.spoke_subnet_nsg_association",
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
      "name": "spoke_subnet_nsg_association",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_subnet_network_security_group_association"
    },
    {
      "address": "azurerm_virtual_machine.hub_vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "delete_data_disks_on_termination": false,
          "delete_os_disk_on_termination": false,
          "identity": [],
          "location": "eastus",
          "name": "hubVM",
          "os_profile": [
            {
              "admin_password": "Password1234!",
              "admin_username": "adminuser",
              "computer_name": "hubvm"
            }
          ],
          "os_profile_linux_config": [
            {
              "disable_password_authentication": false,
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "primary_network_interface_id": null,
          "proximity_placement_group_id": null,
          "resource_group_name": "hubResourceGroup",
          "storage_image_reference": [
            {
              "id": "",
              "offer": "UbuntuServer",
              "publisher": "Canonical",
              "sku": "16.04-LTS",
              "version": "latest"
            }
          ],
          "storage_os_disk": [
            {
              "caching": "ReadWrite",
              "create_option": "FromImage",
              "image_uri": null,
              "managed_disk_type": "Standard_LRS",
              "name": "myOsDisk1",
              "vhd_uri": null,
              "write_accelerator_enabled": false
            }
          ],
          "tags": null,
          "timeouts": null,
          "vm_size": "Standard_DS1_v2",
          "zones": null
        },
        "after_sensitive": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "identity": [],
          "network_interface_ids": [],
          "os_profile": true,
          "os_profile_linux_config": [
            {
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "storage_data_disk": [],
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {}
          ]
        },
        "after_unknown": {
          "additional_capabilities": [],
          "availability_set_id": true,
          "boot_diagnostics": [],
          "id": true,
          "identity": [],
          "license_type": true,
          "network_interface_ids": true,
          "os_profile": [
            {
              "custom_data": true
            }
          ],
          "os_profile_linux_config": [
            {
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "storage_data_disk": true,
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {
              "disk_size_gb": true,
              "managed_disk_id": true,
              "os_type": true
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "hub_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_machine"
    },
    {
      "address": "azurerm_virtual_machine.spoke_ubuntu_vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "delete_data_disks_on_termination": false,
          "delete_os_disk_on_termination": false,
          "identity": [],
          "location": "eastus",
          "name": "spokeUbuntuVM",
          "os_profile": [
            {
              "admin_password": "Password1234!",
              "admin_username": "adminuser",
              "computer_name": "spokeubuntuvm"
            }
          ],
          "os_profile_linux_config": [
            {
              "disable_password_authentication": false,
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "primary_network_interface_id": null,
          "proximity_placement_group_id": null,
          "resource_group_name": "spokeResourceGroup",
          "storage_image_reference": [
            {
              "id": "",
              "offer": "UbuntuServer",
              "publisher": "Canonical",
              "sku": "18.04-LTS",
              "version": "latest"
            }
          ],
          "storage_os_disk": [
            {
              "caching": "ReadWrite",
              "create_option": "FromImage",
              "image_uri": null,
              "managed_disk_type": "Standard_LRS",
              "name": "spokeOsDisk1",
              "vhd_uri": null,
              "write_accelerator_enabled": false
            }
          ],
          "tags": null,
          "timeouts": null,
          "vm_size": "Standard_DS1_v2",
          "zones": null
        },
        "after_sensitive": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "identity": [],
          "network_interface_ids": [],
          "os_profile": true,
          "os_profile_linux_config": [
            {
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "storage_data_disk": [],
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {}
          ]
        },
        "after_unknown": {
          "additional_capabilities": [],
          "availability_set_id": true,
          "boot_diagnostics": [],
          "id": true,
          "identity": [],
          "license_type": true,
          "network_interface_ids": true,
          "os_profile": [
            {
              "custom_data": true
            }
          ],
          "os_profile_linux_config": [
            {
              "ssh_keys": []
            }
          ],
          "os_profile_secrets": [],
          "os_profile_windows_config": [],
          "plan": [],
          "storage_data_disk": true,
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {
              "disk_size_gb": true,
              "managed_disk_id": true,
              "os_type": true
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "spoke_ubuntu_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_machine"
    },
    {
      "address": "azurerm_virtual_machine.spoke_windows_vm",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "delete_data_disks_on_termination": false,
          "delete_os_disk_on_termination": false,
          "identity": [],
          "location": "eastus",
          "name": "spokeWindowsVM",
          "os_profile": [
            {
              "admin_password": "Password1234!",
              "admin_username": "adminuser",
              "computer_name": "spokewindowsvm"
            }
          ],
          "os_profile_linux_config": [],
          "os_profile_secrets": [],
          "os_profile_windows_config": [
            {
              "additional_unattend_config": [],
              "enable_automatic_upgrades": false,
              "provision_vm_agent": true,
              "timezone": "",
              "winrm": []
            }
          ],
          "plan": [],
          "primary_network_interface_id": null,
          "proximity_placement_group_id": null,
          "resource_group_name": "spokeResourceGroup",
          "storage_image_reference": [
            {
              "id": "",
              "offer": "WindowsServer",
              "publisher": "MicrosoftWindowsServer",
              "sku": "2019-Datacenter",
              "version": "latest"
            }
          ],
          "storage_os_disk": [
            {
              "caching": "ReadWrite",
              "create_option": "FromImage",
              "image_uri": null,
              "managed_disk_type": "Standard_LRS",
              "name": "spokeWindowsOsDisk",
              "vhd_uri": null,
              "write_accelerator_enabled": false
            }
          ],
          "tags": null,
          "timeouts": null,
          "vm_size": "Standard_DS1_v2",
          "zones": null
        },
        "after_sensitive": {
          "additional_capabilities": [],
          "boot_diagnostics": [],
          "identity": [],
          "network_interface_ids": [],
          "os_profile": true,
          "os_profile_linux_config": [],
          "os_profile_secrets": [],
          "os_profile_windows_config": [
            {
              "additional_unattend_config": [],
              "winrm": []
            }
          ],
          "plan": [],
          "storage_data_disk": [],
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {}
          ]
        },
        "after_unknown": {
          "additional_capabilities": [],
          "availability_set_id": true,
          "boot_diagnostics": [],
          "id": true,
          "identity": [],
          "license_type": true,
          "network_interface_ids": true,
          "os_profile": [
            {
              "custom_data": true
            }
          ],
          "os_profile_linux_config": [],
          "os_profile_secrets": [],
          "os_profile_windows_config": [
            {
              "additional_unattend_config": [],
              "winrm": []
            }
          ],
          "plan": [],
          "storage_data_disk": true,
          "storage_image_reference": [
            {}
          ],
          "storage_os_disk": [
            {
              "disk_size_gb": true,
              "managed_disk_id": true,
              "os_type": true
            }
          ]
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "spoke_windows_vm",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_machine"
    },
    {
      "address": "azurerm_virtual_network.hub_vnet",
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
          "name": "hubVNet",
          "resource_group_name": "hubResourceGroup",
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
      "name": "hub_vnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    },
    {
      "address": "azurerm_virtual_network.spoke_vnet",
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
          "name": "spokeVNet",
          "resource_group_name": "spokeResourceGroup",
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
      "name": "spoke_vnet",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network"
    },
    {
      "address": "azurerm_virtual_network_peering.hub_to_spoke_peering",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "allow_forwarded_traffic": true,
          "allow_gateway_transit": false,
          "allow_virtual_network_access": true,
          "local_subnet_names": null,
          "name": "hubToSpokePeering",
          "only_ipv6_peering_enabled": null,
          "peer_complete_virtual_networks_enabled": true,
          "remote_subnet_names": null,
          "resource_group_name": "hubResourceGroup",
          "timeouts": null,
          "triggers": null,
          "use_remote_gateways": false,
          "virtual_network_name": "hubVNet"
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "remote_virtual_network_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "hub_to_spoke_peering",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network_peering"
    },
    {
      "address": "azurerm_virtual_network_peering.spoke_to_hub_peering",
      "change": {
        "actions": [
          "create"
        ],
        "after": {
          "allow_forwarded_traffic": true,
          "allow_gateway_transit": false,
          "allow_virtual_network_access": true,
          "local_subnet_names": null,
          "name": "spokeToHubPeering",
          "only_ipv6_peering_enabled": null,
          "peer_complete_virtual_networks_enabled": true,
          "remote_subnet_names": null,
          "resource_group_name": "spokeResourceGroup",
          "timeouts": null,
          "triggers": null,
          "use_remote_gateways": false,
          "virtual_network_name": "spokeVNet"
        },
        "after_sensitive": {},
        "after_unknown": {
          "id": true,
          "remote_virtual_network_id": true
        },
        "before": null,
        "before_sensitive": false
      },
      "mode": "managed",
      "name": "spoke_to_hub_peering",
      "provider_name": "registry.terraform.io/hashicorp/azurerm",
      "type": "azurerm_virtual_network_peering"
    }
  ],
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-17T00:02:58Z"
}

