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
            },
            "template": {
                "full_name": "registry.terraform.io/hashicorp/template",
                "name": "template"
            }
        },
        "root_module": {
            "outputs": {
                "connection-details": {
                    "expression": {
                        "references": [
                            "azurerm_linux_virtual_machine.linux_vm.admin_username",
                            "azurerm_linux_virtual_machine.linux_vm",
                            "azurerm_public_ip.public_ip.ip_address",
                            "azurerm_public_ip.public_ip"
                        ]
                    }
                },
                "load-balancer-endpoints": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.alb-public-ip.ip_address",
                            "azurerm_public_ip.alb-public-ip"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.gw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_linux_virtual_machine.linux_vm.private_ip_address",
                                        "azurerm_linux_virtual_machine.linux_vm"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.be_address_pool"
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
                                        "local.be_http_settings"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/"
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
                                    "references": [
                                        "local.fe_ip_configuration"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.alb-public-ip.id",
                                        "azurerm_public_ip.alb-public-ip"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "local.fe_port_name"
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
                                    "references": [
                                        "local.gw_ip_configuration"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.gw_subnet.id",
                                        "azurerm_subnet.gw_subnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.fe_ip_configuration"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.fe_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.http_listener"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "local.be_address_pool"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.be_http_settings"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.http_listener"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule"
                                    ]
                                },
                                "priority": {
                                    "constant_value": 9
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
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
                    "name": "gw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_key_vault.kv",
                    "expressions": {
                        "enable_rbac_authorization": {
                            "constant_value": true
                        },
                        "enabled_for_deployment": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kv",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_linux_virtual_machine.linux_vm",
                    "expressions": {
                        "admin_ssh_key": [
                            {
                                "public_key": {
                                    "references": [
                                        "azurerm_ssh_public_key.sshkey.public_key",
                                        "azurerm_ssh_public_key.sshkey"
                                    ]
                                },
                                "username": {
                                    "constant_value": "azureuser"
                                }
                            }
                        ],
                        "admin_username": {
                            "constant_value": "azureuser"
                        },
                        "computer_name": {
                            "references": [
                                "local.vm_name"
                            ]
                        },
                        "custom_data": {
                            "references": [
                                "data.template_cloudinit_config.craftcms_config.rendered",
                                "data.template_cloudinit_config.craftcms_config"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "azurerm_user_assigned_identity.uai.id",
                                        "azurerm_user_assigned_identity.uai"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
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
                            "references": [
                                "local.vm_name"
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
                                    "constant_value": "ReadWrite"
                                },
                                "name": {
                                    "references": [
                                        "random_id.rnd.hex",
                                        "random_id.rnd"
                                    ]
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
                            "constant_value": "Standard_A1_v2"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "ubuntu-24_04-lts"
                                },
                                "publisher": {
                                    "constant_value": "Canonical"
                                },
                                "sku": {
                                    "constant_value": "server-gen1"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "local.l_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "linux_vm",
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
                                        "local.vm_name"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.public_ip.id",
                                        "azurerm_public_ip.public_ip"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.subnet_internal.id",
                                        "azurerm_subnet.subnet_internal"
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
                            "references": [
                                "local.vm_name"
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
                                "local.l_tags"
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
                    "address": "azurerm_network_security_group.gw_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                                    "destination_port_range": "80",
                                    "destination_port_ranges": null,
                                    "direction": "Inbound",
                                    "name": "HTTP",
                                    "priority": 310,
                                    "protocol": "Tcp",
                                    "source_address_prefix": null,
                                    "source_address_prefixes": [
                                        "0.0.0.0/0"
                                    ],
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
                                    "destination_port_range": "*",
                                    "destination_port_ranges": null,
                                    "direction": "Inbound",
                                    "name": "AllowMgmt",
                                    "priority": 100,
                                    "protocol": "*",
                                    "source_address_prefix": null,
                                    "source_address_prefixes": [
                                        "0.0.0.0/0"
                                    ],
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "65200-65535",
                                    "source_port_ranges": null
                                }
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.l_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "gw_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
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
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                                    "priority": 300,
                                    "protocol": "Tcp",
                                    "source_address_prefix": null,
                                    "source_address_prefixes": [
                                        "0.0.0.0/0"
                                    ],
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
                                    "name": "HTTP",
                                    "priority": 301,
                                    "protocol": "Tcp",
                                    "source_address_prefix": null,
                                    "source_address_prefixes": [
                                        "0.0.0.0/0"
                                    ],
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                }
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.l_tags"
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
                    "address": "azurerm_public_ip.alb-public-ip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
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
                    "name": "alb-public-ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.public_ip",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
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
                        },
                        "tags": {
                            "references": [
                                "local.l_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.resource_group_location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.l_tags"
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
                    "address": "azurerm_role_assignment.kv_certificate_user",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.uai.principal_id",
                                "azurerm_user_assigned_identity.uai"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Certificate User"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.training.id",
                                "data.azurerm_subscription.training"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kv_certificate_user",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.kv_secrets_user",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.uai.principal_id",
                                "azurerm_user_assigned_identity.uai"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Secrets User"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.training.id",
                                "data.azurerm_subscription.training"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kv_secrets_user",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_ssh_public_key.sshkey",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
                        },
                        "public_key": {
                            "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "sshkey",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_ssh_public_key"
                },
                {
                    "address": "azurerm_subnet.bastionsubnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.bastion_subnet"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureBastionSubnet"
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
                    "name": "bastionsubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.gw_subnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.gateway_subnet"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
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
                    "name": "gw_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.subnet_internal",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.internal_subnet_space"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
                            ]
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
                    "name": "subnet_internal",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.nsg-assoc",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg.id",
                                "azurerm_network_security_group.nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.subnet_internal.id",
                                "azurerm_subnet.subnet_internal"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-assoc",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_user_assigned_identity.uai",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
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
                    "name": "uai",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
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
                            "references": [
                                "random_pet.pet-name.id",
                                "random_pet.pet-name"
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
                                "local.l_tags"
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
                    "address": "random_id.rnd",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 4
                        },
                        "keepers": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "rnd",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "random_pet.pet-name",
                    "expressions": {
                        "keepers": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "pet-name",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_pet"
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
                    "address": "data.azurerm_subscription.training",
                    "mode": "data",
                    "name": "training",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subscription"
                },
                {
                    "address": "data.template_cloudinit_config.craftcms_config",
                    "expressions": {
                        "base64_encode": {
                            "constant_value": true
                        },
                        "gzip": {
                            "constant_value": true
                        },
                        "part": [
                            {
                                "content": {
                                    "constant_value": "packages: ['php', 'php-xml', 'npm', 'nginx']"
                                },
                                "content_type": {
                                    "constant_value": "text/cloud-config"
                                }
                            }
                        ]
                    },
                    "mode": "data",
                    "name": "craftcms_config",
                    "provider_config_key": "template",
                    "schema_version": 0,
                    "type": "template_cloudinit_config"
                }
            ],
            "variables": {
                "bastion_subnet": {
                    "default": [
                        "10.10.12.0/24"
                    ],
                    "description": "Subnet for bastion host"
                },
                "client_name": {
                    "default": "A new Client"
                },
                "gateway_subnet": {
                    "default": [
                        "10.10.11.0/24"
                    ],
                    "description": "Address space for gateways"
                },
                "internal_subnet_space": {
                    "default": [
                        "10.10.10.0/24"
                    ],
                    "description": "Address space for internal subnet space"
                },
                "resource_group_location": {
                    "default": "eastus"
                },
                "resource_group_name": {
                    "default": "colin-rg"
                },
                "tags": {
                    "default": {},
                    "description": "Tags"
                },
                "vnet_address_space": {
                    "default": [
                        "10.10.0.0/16"
                    ],
                    "description": "Address space for the virtual network"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "connection-details": {
            "actions": [
                "create"
            ],
            "after": {
                "username": "azureuser"
            },
            "after_sensitive": false,
            "after_unknown": {
                "public_ip": true
            },
            "before": null,
            "before_sensitive": false
        },
        "load-balancer-endpoints": {
            "actions": [
                "create"
            ],
            "after": {},
            "after_sensitive": false,
            "after_unknown": {
                "public_ip": true
            },
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "connection-details": {
                "sensitive": false
            },
            "load-balancer-endpoints": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.gw",
                    "mode": "managed",
                    "name": "gw",
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
                                "fqdns": []
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
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
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
                                "host_name": "",
                                "host_names": [],
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "colin-rg",
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
                    "address": "azurerm_key_vault.kv",
                    "mode": "managed",
                    "name": "kv",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": true,
                        "enabled_for_deployment": true,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "eastus",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "colin-rg",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 90,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_linux_virtual_machine.linux_vm",
                    "mode": "managed",
                    "name": "linux_vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "gallery_application": [],
                        "identity": [
                            {
                                "identity_ids": []
                            }
                        ],
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
                        "admin_password": null,
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "azureuser"
                            }
                        ],
                        "admin_username": "azureuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "H4sIAAAAAAAA/2SOv0vFMBCA90D+h/CWLp5PJyHi4I8ODlUQFUQc0uQaD5tLSFNI/3tpBym+6buDj/vuPnJBLvC6JNQqzGOhZHI5BqrorlUfZ3YmLzeH7rFr757fnh5uXz4OYt3gHfNEkbW6PL+QQgqAvSTF3+1seBowQ8s2OmKv1VVPZSds8YK1HO0YZwc28kBeio4CnmSSsT/G46TVZ5O+U3OmVkAN4zpyChs8cW2+/j8FIMVvAAAA//9PHdkl8wAAAA==",
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": true,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [
                            {
                                "type": "UserAssigned"
                            }
                        ],
                        "license_type": null,
                        "location": "eastus",
                        "max_bid_price": -1,
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
                        "resource_group_name": "colin-rg",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_A1_v2",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "ubuntu-24_04-lts",
                                "publisher": "Canonical",
                                "sku": "server-gen1",
                                "version": "latest"
                            }
                        ],
                        "tags": {
                            "client": "A new Client"
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
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "eastus",
                        "resource_group_name": "colin-rg",
                        "tags": {
                            "client": "A new Client"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.gw_nsg",
                    "mode": "managed",
                    "name": "gw_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": [
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            }
                        ],
                        "tags": {}
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "resource_group_name": "colin-rg",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "*",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "AllowMgmt",
                                "priority": 100,
                                "protocol": "*",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "0.0.0.0/0"
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_range": "65200-65535",
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
                                "priority": 310,
                                "protocol": "Tcp",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "0.0.0.0/0"
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            }
                        ],
                        "tags": {
                            "client": "A new Client"
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
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            },
                            {
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_ranges": [],
                                "source_address_prefixes": [
                                    false
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_ranges": []
                            }
                        ],
                        "tags": {}
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "eastus",
                        "resource_group_name": "colin-rg",
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
                                "priority": 300,
                                "protocol": "Tcp",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "0.0.0.0/0"
                                ],
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
                                "priority": 301,
                                "protocol": "Tcp",
                                "source_address_prefix": "",
                                "source_address_prefixes": [
                                    "0.0.0.0/0"
                                ],
                                "source_application_security_group_ids": [],
                                "source_port_range": "*",
                                "source_port_ranges": []
                            }
                        ],
                        "tags": {
                            "client": "A new Client"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.alb-public-ip",
                    "mode": "managed",
                    "name": "alb-public-ip",
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
                        "public_ip_prefix_id": null,
                        "resource_group_name": "colin-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.public_ip",
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
                        "location": "eastus",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "colin-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "client": "A new Client"
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
                        "location": "eastus",
                        "managed_by": null,
                        "name": "colin-rg",
                        "tags": {
                            "client": "A new Client"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.kv_certificate_user",
                    "mode": "managed",
                    "name": "kv_certificate_user",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Certificate User",
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.kv_secrets_user",
                    "mode": "managed",
                    "name": "kv_secrets_user",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Secrets User",
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_ssh_public_key.sshkey",
                    "mode": "managed",
                    "name": "sshkey",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_ssh_public_key",
                    "values": {
                        "location": "eastus",
                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                        "resource_group_name": "colin-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.bastionsubnet",
                    "mode": "managed",
                    "name": "bastionsubnet",
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
                            "10.10.12.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureBastionSubnet",
                        "resource_group_name": "colin-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.gw_subnet",
                    "mode": "managed",
                    "name": "gw_subnet",
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
                            "10.10.11.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "resource_group_name": "colin-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.subnet_internal",
                    "mode": "managed",
                    "name": "subnet_internal",
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
                            "10.10.10.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "resource_group_name": "colin-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.nsg-assoc",
                    "mode": "managed",
                    "name": "nsg-assoc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.uai",
                    "mode": "managed",
                    "name": "uai",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "eastus",
                        "resource_group_name": "colin-rg",
                        "tags": null,
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
                            "10.10.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "resource_group_name": "colin-rg",
                        "tags": {
                            "client": "A new Client"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "random_id.rnd",
                    "mode": "managed",
                    "name": "rnd",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_id",
                    "values": {
                        "byte_length": 4,
                        "keepers": {
                            "resource_group": "colin-rg"
                        },
                        "prefix": null
                    }
                },
                {
                    "address": "random_pet.pet-name",
                    "mode": "managed",
                    "name": "pet-name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_pet",
                    "values": {
                        "keepers": {
                            "resource_group": "colin-rg"
                        },
                        "length": 2,
                        "prefix": null,
                        "separator": "-"
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
                        "address": "data.azurerm_subscription.training",
                        "mode": "data",
                        "name": "training",
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
                    },
                    {
                        "address": "data.template_cloudinit_config.craftcms_config",
                        "mode": "data",
                        "name": "craftcms_config",
                        "provider_name": "registry.terraform.io/hashicorp/template",
                        "schema_version": 0,
                        "sensitive_values": {
                            "part": [
                                {}
                            ]
                        },
                        "type": "template_cloudinit_config",
                        "values": {
                            "base64_encode": true,
                            "gzip": true,
                            "id": "772903083",
                            "part": [
                                {
                                    "content": "packages: ['php', 'php-xml', 'npm', 'nginx']",
                                    "content_type": "text/cloud-config",
                                    "filename": "",
                                    "merge_type": ""
                                }
                            ],
                            "rendered": "H4sIAAAAAAAA/2SOv0vFMBCA90D+h/CWLp5PJyHi4I8ODlUQFUQc0uQaD5tLSFNI/3tpBym+6buDj/vuPnJBLvC6JNQqzGOhZHI5BqrorlUfZ3YmLzeH7rFr757fnh5uXz4OYt3gHfNEkbW6PL+QQgqAvSTF3+1seBowQ8s2OmKv1VVPZSds8YK1HO0YZwc28kBeio4CnmSSsT/G46TVZ5O+U3OmVkAN4zpyChs8cW2+/j8FIMVvAAAA//9PHdkl8wAAAA=="
                        }
                    }
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "rendered"
            ],
            "resource": "data.template_cloudinit_config.craftcms_config"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.alb-public-ip"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.public_ip"
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
            "resource": "azurerm_user_assigned_identity.uai"
        },
        {
            "attribute": [
                "public_key"
            ],
            "resource": "azurerm_ssh_public_key.sshkey"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "azurerm_linux_virtual_machine.linux_vm"
        },
        {
            "attribute": [
                "admin_username"
            ],
            "resource": "azurerm_linux_virtual_machine.linux_vm"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.gw_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "random_pet.pet-name"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
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
            "resource": "azurerm_subnet.subnet_internal"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "hex"
            ],
            "resource": "random_id.rnd"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "azurerm_user_assigned_identity.uai"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "data.azurerm_subscription.training"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.alb-public-ip"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.gw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": []
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
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
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
                            "host_name": "",
                            "host_names": [],
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "colin-rg",
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
                            "ip_addresses": true,
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
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": [
                        {
                            "id": true,
                            "name": true,
                            "private_ip_address": true,
                            "private_link_configuration_id": true,
                            "public_ip_address_id": true
                        }
                    ],
                    "frontend_port": [
                        {
                            "id": true,
                            "name": true
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
                            "frontend_ip_configuration_name": true,
                            "frontend_port_id": true,
                            "frontend_port_name": true,
                            "host_names": [],
                            "id": true,
                            "name": true,
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
                            "backend_address_pool_name": true,
                            "backend_http_settings_id": true,
                            "backend_http_settings_name": true,
                            "http_listener_id": true,
                            "http_listener_name": true,
                            "id": true,
                            "name": true,
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
            "name": "gw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_key_vault.kv",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": true,
                    "enabled_for_deployment": true,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "colin-rg",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 90,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": true,
                    "contact": true,
                    "id": true,
                    "name": true,
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_linux_virtual_machine.linux_vm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": null,
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "azureuser"
                        }
                    ],
                    "admin_username": "azureuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "H4sIAAAAAAAA/2SOv0vFMBCA90D+h/CWLp5PJyHi4I8ODlUQFUQc0uQaD5tLSFNI/3tpBym+6buDj/vuPnJBLvC6JNQqzGOhZHI5BqrorlUfZ3YmLzeH7rFr757fnh5uXz4OYt3gHfNEkbW6PL+QQgqAvSTF3+1seBowQ8s2OmKv1VVPZSds8YK1HO0YZwc28kBeio4CnmSSsT/G46TVZ5O+U3OmVkAN4zpyChs8cW2+/j8FIMVvAAAA//9PHdkl8wAAAA==",
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": true,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "license_type": null,
                    "location": "eastus",
                    "max_bid_price": -1,
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
                    "resource_group_name": "colin-rg",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_A1_v2",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "ubuntu-24_04-lts",
                            "publisher": "Canonical",
                            "sku": "server-gen1",
                            "version": "latest"
                        }
                    ],
                    "tags": {
                        "client": "A new Client"
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
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "gallery_application": [],
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
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
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "name": true,
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
                    "tags": {},
                    "termination_notification": true,
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "linux_vm",
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
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "eastus",
                    "resource_group_name": "colin-rg",
                    "tags": {
                        "client": "A new Client"
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
                            "name": true,
                            "primary": true,
                            "private_ip_address": true,
                            "public_ip_address_id": true,
                            "subnet_id": true
                        }
                    ],
                    "ip_forwarding_enabled": true,
                    "mac_address": true,
                    "name": true,
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
            "address": "azurerm_network_security_group.gw_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "resource_group_name": "colin-rg",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "*",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "AllowMgmt",
                            "priority": 100,
                            "protocol": "*",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "0.0.0.0/0"
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_range": "65200-65535",
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
                            "priority": 310,
                            "protocol": "Tcp",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "0.0.0.0/0"
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        }
                    ],
                    "tags": {
                        "client": "A new Client"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        }
                    ],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
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
            "name": "gw_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "resource_group_name": "colin-rg",
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
                            "priority": 300,
                            "protocol": "Tcp",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "0.0.0.0/0"
                            ],
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
                            "priority": 301,
                            "protocol": "Tcp",
                            "source_address_prefix": "",
                            "source_address_prefixes": [
                                "0.0.0.0/0"
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_range": "*",
                            "source_port_ranges": []
                        }
                    ],
                    "tags": {
                        "client": "A new Client"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        }
                    ],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "security_rule": [
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
                            "source_application_security_group_ids": [],
                            "source_port_ranges": []
                        },
                        {
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_ranges": [],
                            "source_address_prefixes": [
                                false
                            ],
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
            "address": "azurerm_public_ip.alb-public-ip",
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
                    "public_ip_prefix_id": null,
                    "resource_group_name": "colin-rg",
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
                    "ip_address": true,
                    "name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "alb-public-ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.public_ip",
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
                    "public_ip_prefix_id": null,
                    "resource_group_name": "colin-rg",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "client": "A new Client"
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
            "name": "public_ip",
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
                    "location": "eastus",
                    "managed_by": null,
                    "name": "colin-rg",
                    "tags": {
                        "client": "A new Client"
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
            "address": "azurerm_role_assignment.kv_certificate_user",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Certificate User",
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv_certificate_user",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.kv_secrets_user",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Secrets User",
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv_secrets_user",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_ssh_public_key.sshkey",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                    "resource_group_name": "colin-rg",
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
            "name": "sshkey",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_ssh_public_key"
        },
        {
            "address": "azurerm_subnet.bastionsubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.12.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "colin-rg",
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
            "name": "bastionsubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.gw_subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.11.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "resource_group_name": "colin-rg",
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
                    "name": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "gw_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.subnet_internal",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.10.10.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "resource_group_name": "colin-rg",
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
                    "name": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "subnet_internal",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.nsg-assoc",
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
            "name": "nsg-assoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_user_assigned_identity.uai",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "resource_group_name": "colin-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "uai",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_network.vnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.10.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
                    "resource_group_name": "colin-rg",
                    "tags": {
                        "client": "A new Client"
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
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "random_id.rnd",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 4,
                    "keepers": {
                        "resource_group": "colin-rg"
                    },
                    "prefix": null
                },
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true,
                    "keepers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "rnd",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "random_pet.pet-name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": {
                        "resource_group": "colin-rg"
                    },
                    "length": 2,
                    "prefix": null,
                    "separator": "-"
                },
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "id": true,
                    "keepers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "pet-name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_pet"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:06:34Z",
    "variables": {
        "bastion_subnet": {
            "value": [
                "10.10.12.0/24"
            ]
        },
        "client_name": {
            "value": "A new Client"
        },
        "gateway_subnet": {
            "value": [
                "10.10.11.0/24"
            ]
        },
        "internal_subnet_space": {
            "value": [
                "10.10.10.0/24"
            ]
        },
        "resource_group_location": {
            "value": "eastus"
        },
        "resource_group_name": {
            "value": "colin-rg"
        },
        "tags": {
            "value": {}
        },
        "vnet_address_space": {
            "value": [
                "10.10.0.0/16"
            ]
        }
    }
}