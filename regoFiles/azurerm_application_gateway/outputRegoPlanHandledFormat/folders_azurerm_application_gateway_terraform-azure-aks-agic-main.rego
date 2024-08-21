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
    "checks": [
        {
            "address": {
                "kind": "var",
                "module": "module.bootstrap",
                "name": "storage_account_name",
                "to_display": "module.bootstrap.var.storage_account_name"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.bootstrap",
                        "to_display": "module.bootstrap.var.storage_account_name"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.bootstrap",
                "name": "storage_share_name",
                "to_display": "module.bootstrap.var.storage_share_name"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.bootstrap",
                        "to_display": "module.bootstrap.var.storage_share_name"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "var",
                "name": "allow_inbound_mgmt_ips",
                "to_display": "var.allow_inbound_mgmt_ips"
            },
            "instances": [
                {
                    "address": {
                        "to_display": "var.allow_inbound_mgmt_ips"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        }
    ],
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
            "module_calls": {
                "bootstrap": {
                    "expressions": {
                        "files": {
                            "constant_value": {
                                "templates/bootstrap.xml": "config/bootstrap.xml",
                                "templates/init-cfg.txt": "config/init-cfg.txt"
                            }
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "storage_share_name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "primary_access_key": {
                                "description": "The primary access key for the Azure Storage Account.",
                                "expression": {
                                    "references": [
                                        "local.storage_account.primary_access_key",
                                        "local.storage_account"
                                    ]
                                },
                                "sensitive": true
                            },
                            "storage_account": {
                                "description": "The Azure Storage Account object used for the Bootstrap.",
                                "expression": {
                                    "references": [
                                        "local.storage_account"
                                    ]
                                }
                            },
                            "storage_share": {
                                "description": "The File Share object within Azure Storage used for the Bootstrap.",
                                "expression": {
                                    "references": [
                                        "azurerm_storage_share.this"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_storage_account.this",
                                "count_expression": {
                                    "references": [
                                        "var.create_storage_account"
                                    ]
                                },
                                "expressions": {
                                    "account_replication_type": {
                                        "constant_value": "LRS"
                                    },
                                    "account_tier": {
                                        "constant_value": "Standard"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "min_tls_version": {
                                        "references": [
                                            "var.min_tls_version"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.storage_account_name"
                                        ]
                                    },
                                    "resource_group_name": {
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
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 4,
                                "type": "azurerm_storage_account"
                            },
                            {
                                "address": "azurerm_storage_share.this",
                                "expressions": {
                                    "access_tier": {
                                        "references": [
                                            "var.storage_share_access_tier"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.storage_share_name"
                                        ]
                                    },
                                    "quota": {
                                        "references": [
                                            "var.storage_share_quota"
                                        ]
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "local.storage_account.name",
                                            "local.storage_account"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_storage_share"
                            },
                            {
                                "address": "azurerm_storage_share_directory.this",
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "each.key"
                                        ]
                                    },
                                    "share_name": {
                                        "references": [
                                            "azurerm_storage_share.this.name",
                                            "azurerm_storage_share.this"
                                        ]
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "local.storage_account.name",
                                            "local.storage_account"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_share_directory"
                            },
                            {
                                "address": "azurerm_storage_share_file.this",
                                "depends_on": [
                                    "azurerm_storage_share_directory.this"
                                ],
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "path": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "source": {
                                        "references": [
                                            "each.key",
                                            "random_id.this",
                                            "each.key",
                                            "random_id.this",
                                            "each.key"
                                        ]
                                    },
                                    "storage_share_id": {
                                        "references": [
                                            "azurerm_storage_share.this.id",
                                            "azurerm_storage_share.this"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.files"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_share_file"
                            },
                            {
                                "address": "random_id.this",
                                "expressions": {
                                    "byte_length": {
                                        "constant_value": 8
                                    },
                                    "keepers": {
                                        "references": [
                                            "var.files_md5",
                                            "each.key",
                                            "each.key"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.files"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "random",
                                "schema_version": 0,
                                "type": "random_id"
                            },
                            {
                                "address": "data.azurerm_storage_account.this",
                                "count_expression": {
                                    "references": [
                                        "var.create_storage_account"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.storage_account_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_storage_account"
                            }
                        ],
                        "variables": {
                            "create_storage_account": {
                                "default": true,
                                "description": "If `true`, create a Storage Account."
                            },
                            "files": {
                                "default": {},
                                "description": "Map of all files to copy to bucket. The keys are local paths, the values are remote paths.\nAlways use slash `/` as directory separator (unix-like), not the backslash `\\`.\nExample: \n```\nfiles = {\n  \"dir/my.txt\" = \"config/init-cfg.txt\"\n}\n```\n"
                            },
                            "files_md5": {
                                "default": {},
                                "description": "Optional map of MD5 hashes of file contents.\nNormally the map could be all empty, because all the files that exist before the `terraform apply` will have their hashes auto-calculated.\nThis input is necessary only for the selected files which are created/modified within the same Terraform run as this module.\nThe keys of the map should be identical with selected keys of the `files` input, while the values should be MD5 hashes of the contents of that file.\n\nExample:\n```\nfiles_md5 = {\n    \"dir/my.txt\" = \"6f7ce3191b50a58cc13e751a8f7ae3fd\"\n}\n```\n"
                            },
                            "location": {
                                "default": null,
                                "description": "Region to deploy bootstrap resources. Ignored when `create_storage_account` is set to `false`."
                            },
                            "min_tls_version": {
                                "default": "TLS1_2",
                                "description": "The minimum supported TLS version for the storage account."
                            },
                            "resource_group_name": {
                                "default": "svxfhold",
                                "description": "Name of the Resource Group to use."
                            },
                            "storage_account_name": {
                                "default": "guz8hold",
                                "description": "Name of the Storage Account, either a new or an existing one (depending on the value of `create_storage_account`).\n\nThe name you choose must be unique across Azure. The name also must be between 3 and 24 characters in length, and may include only numbers and lowercase letters.\n"
                            },
                            "storage_share_access_tier": {
                                "default": "Cool",
                                "description": "Access tier for the File Share."
                            },
                            "storage_share_name": {
                                "default": "nyexhold",
                                "description": "Name of a storage File Share to be created that will hold `files` used for bootstrapping.\nFor rules defining a valid name see [Microsoft documentation](https://docs.microsoft.com/en-us/rest/api/storageservices/Naming-and-Referencing-Shares--Directories--Files--and-Metadata#share-names).\n"
                            },
                            "storage_share_quota": {
                                "default": 50,
                                "description": "Maximum size of a File Share."
                            },
                            "tags": {
                                "default": {},
                                "description": "A map of tags to be associated with the resources created."
                            }
                        }
                    },
                    "source": "./modules/paloalto/bootstrap"
                },
                "paloalto_vmseries": {
                    "depends_on": [
                        "module.bootstrap"
                    ],
                    "expressions": {
                        "bootstrap_options": {
                            "references": [
                                "module.bootstrap.storage_account.name",
                                "module.bootstrap.storage_account",
                                "module.bootstrap",
                                "module.bootstrap.storage_account.primary_access_key",
                                "module.bootstrap.storage_account",
                                "module.bootstrap",
                                "module.bootstrap.storage_share.name",
                                "module.bootstrap.storage_share",
                                "module.bootstrap"
                            ]
                        },
                        "enable_zones": {
                            "references": [
                                "var.enable_zones"
                            ]
                        },
                        "img_sku": {
                            "references": [
                                "var.common_vmseries_sku"
                            ]
                        },
                        "img_version": {
                            "references": [
                                "var.common_vmseries_version"
                            ]
                        },
                        "interfaces": {
                            "references": [
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust"
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
                                "var.firewall_vm_name"
                            ]
                        },
                        "password": {
                            "references": [
                                "var.password"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "username": {
                            "references": [
                                "var.username"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "interfaces": {
                                "description": "List of VM-Series network interfaces. The elements of the list are `azurerm_network_interface` objects. The order is the same as `interfaces` input.",
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.this"
                                    ]
                                }
                            },
                            "metrics_instrumentation_key": {
                                "description": "The Instrumentation Key of the created instance of Azure Application Insights. The instance is unused by default, but is ready to receive custom PAN-OS metrics from the firewalls. To use it, paste this Instrumentation Key into PAN-OS -> Device -> VM-Series -> Azure.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_insights.this[0].instrumentation_key",
                                        "azurerm_application_insights.this[0]",
                                        "azurerm_application_insights.this"
                                    ]
                                },
                                "sensitive": true
                            },
                            "mgmt_ip_address": {
                                "description": "VM-Series management IP address. If `create_public_ip` was `true`, it is a public IP address, otherwise a private IP address.",
                                "expression": {
                                    "references": [
                                        "var.interfaces[0].create_public_ip",
                                        "var.interfaces[0]",
                                        "var.interfaces",
                                        "azurerm_public_ip.this[0].ip_address",
                                        "azurerm_public_ip.this[0]",
                                        "azurerm_public_ip.this",
                                        "azurerm_network_interface.this[0].ip_configuration[0].private_ip_address",
                                        "azurerm_network_interface.this[0].ip_configuration[0]",
                                        "azurerm_network_interface.this[0].ip_configuration",
                                        "azurerm_network_interface.this[0]",
                                        "azurerm_network_interface.this"
                                    ]
                                }
                            },
                            "principal_id": {
                                "description": "The oid of Azure Service Principal of the created VM-Series. Usable only if `identity_type` contains SystemAssigned.",
                                "expression": {
                                    "references": [
                                        "var.identity_type",
                                        "var.identity_type",
                                        "azurerm_virtual_machine.this.identity[0].principal_id",
                                        "azurerm_virtual_machine.this.identity[0]",
                                        "azurerm_virtual_machine.this.identity",
                                        "azurerm_virtual_machine.this"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_insights.this",
                                "count_expression": {
                                    "references": [
                                        "var.metrics_retention_in_days"
                                    ]
                                },
                                "expressions": {
                                    "application_type": {
                                        "constant_value": "other"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name_application_insights",
                                            "var.name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_in_days": {
                                        "references": [
                                            "var.metrics_retention_in_days"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_application_insights"
                            },
                            {
                                "address": "azurerm_network_interface.this",
                                "count_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "expressions": {
                                    "enable_accelerated_networking": {
                                        "references": [
                                            "count.index",
                                            "var.accelerated_networking"
                                        ]
                                    },
                                    "enable_ip_forwarding": {
                                        "references": [
                                            "var.interfaces",
                                            "count.index",
                                            "count.index"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "primary"
                                            },
                                            "private_ip_address": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "private_ip_address_allocation": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.this",
                                                    "count.index",
                                                    "var.interfaces",
                                                    "count.index"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.interfaces",
                                                    "count.index"
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
                                            "var.interfaces",
                                            "count.index"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.interfaces",
                                            "count.index",
                                            "var.tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface_backend_address_pool_association.this",
                                "expressions": {
                                    "backend_address_pool_id": {
                                        "references": [
                                            "each.value.lb_backend_pool_id",
                                            "each.value"
                                        ]
                                    },
                                    "ip_configuration_name": {
                                        "references": [
                                            "azurerm_network_interface.this",
                                            "each.key"
                                        ]
                                    },
                                    "network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.this",
                                            "each.key"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface_backend_address_pool_association"
                            },
                            {
                                "address": "azurerm_public_ip.this",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tags"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.enable_zones",
                                            "var.avzones"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.interfaces"
                                    ]
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_virtual_machine.this",
                                "expressions": {
                                    "availability_set_id": {
                                        "references": [
                                            "var.avset_id"
                                        ]
                                    },
                                    "delete_data_disks_on_termination": {
                                        "constant_value": true
                                    },
                                    "delete_os_disk_on_termination": {
                                        "constant_value": true
                                    },
                                    "identity": [
                                        {
                                            "identity_ids": {
                                                "references": [
                                                    "var.identity_ids"
                                                ]
                                            },
                                            "type": {
                                                "references": [
                                                    "var.identity_type"
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
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.this"
                                        ]
                                    },
                                    "os_profile": [
                                        {
                                            "admin_password": {
                                                "references": [
                                                    "var.password"
                                                ]
                                            },
                                            "admin_username": {
                                                "references": [
                                                    "var.username"
                                                ]
                                            },
                                            "computer_name": {
                                                "references": [
                                                    "var.name"
                                                ]
                                            },
                                            "custom_data": {
                                                "references": [
                                                    "var.bootstrap_options"
                                                ]
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
                                    "primary_network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.this[0].id",
                                            "azurerm_network_interface.this[0]",
                                            "azurerm_network_interface.this"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "storage_image_reference": [
                                        {
                                            "id": {
                                                "references": [
                                                    "var.custom_image_id"
                                                ]
                                            },
                                            "offer": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_offer"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_publisher"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_sku"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.custom_image_id",
                                                    "var.img_version"
                                                ]
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
                                                "references": [
                                                    "var.managed_disk_type"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.os_disk_name",
                                                    "var.name"
                                                ]
                                            },
                                            "os_type": {
                                                "constant_value": "Linux"
                                            }
                                        }
                                    ],
                                    "tags": {
                                        "references": [
                                            "var.tags"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "var.vm_size"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.enable_zones",
                                            "var.avzone",
                                            "var.avzone",
                                            "var.avzone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_machine"
                            }
                        ],
                        "variables": {
                            "accelerated_networking": {
                                "default": true,
                                "description": "Enable Azure accelerated networking (SR-IOV) for all network interfaces except the primary one (it is the PAN-OS management interface, which [does not support](https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-new-features/virtualization-features/support-for-azure-accelerated-networking-sriov) acceleration)."
                            },
                            "avset_id": {
                                "default": null,
                                "description": "The identifier of the Availability Set to use. When using this variable, set `avzone = null`."
                            },
                            "avzone": {
                                "default": "1",
                                "description": "The availability zone to use, for example \"1\", \"2\", \"3\". Ignored if `enable_zones` is false. Conflicts with `avset_id`, in which case use `avzone = null`."
                            },
                            "avzones": {
                                "default": [],
                                "description": "After provider version 3.x you need to specify in which availability zone(s) you want to place IP.\nie: for zone-redundant with 3 availability zone in current region value will be:\n```[\"1\",\"2\",\"3\"]```\n"
                            },
                            "bootstrap_options": {
                                "default": "",
                                "description": "Bootstrap options to pass to VM-Series instance.\n\nProper syntax is a string of semicolon separated properties.\nExample:\n  bootstrap_options = \"type=dhcp-client;panorama-server=1.2.3.4\"\n\nA list of available properties: type, ip-address, default-gateway, netmask, ipv6-address, ipv6-default-gateway, hostname, panorama-server, panorama-server-2, tplname, dgname, dns-primary, dns-secondary, vm-auth-key, op-command-modes, op-cmd-dpdk-pkt-io, plugin-op-commands, dhcp-send-hostname, dhcp-send-client-id, dhcp-accept-server-hostname, dhcp-accept-server-domain, auth-key.\n\nFor more details on bootstrapping see documentation: https://docs.paloaltonetworks.com/vm-series/10-2/vm-series-deployment/bootstrap-the-vm-series-firewall/create-the-init-cfgtxt-file/init-cfgtxt-file-components\n"
                            },
                            "custom_image_id": {
                                "default": null,
                                "description": "Absolute ID of your own Custom Image to be used for creating new VM-Series. If set, the `username`, `password`, `img_version`, `img_publisher`, `img_offer`, `img_sku` inputs are all ignored (these are used only for published images, not custom ones). The Custom Image is expected to contain PAN-OS software."
                            },
                            "diagnostics_storage_uri": {
                                "default": null,
                                "description": "The storage account's blob endpoint to hold diagnostic files."
                            },
                            "enable_plan": {
                                "default": true,
                                "description": "Enable usage of the Offer/Plan on Azure Marketplace. Even plan sku \"byol\", which means \"bring your own license\", still requires accepting on the Marketplace (as of 2021). Can be set to `false` when using a custom image."
                            },
                            "enable_zones": {
                                "default": true,
                                "description": "If false, the input `avzone` is ignored and also all created Public IP addresses default to not to use Availability Zones (the `No-Zone` setting). It is intended for the regions that do not yet support Availability Zones."
                            },
                            "identity_ids": {
                                "default": null,
                                "description": "See the [provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine#identity_ids)."
                            },
                            "identity_type": {
                                "default": "SystemAssigned",
                                "description": "See the [provider documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine#identity_type)."
                            },
                            "img_offer": {
                                "default": "vmseries-flex",
                                "description": "The Azure Offer identifier corresponding to a published image. For `img_version` 9.1.1 or above, use \"vmseries-flex\"; for 9.1.0 or below use \"vmseries1\"."
                            },
                            "img_publisher": {
                                "default": "paloaltonetworks",
                                "description": "The Azure Publisher identifier for a image which should be deployed."
                            },
                            "img_sku": {
                                "default": "bundle2",
                                "description": "VM-series SKU - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                            },
                            "img_version": {
                                "default": "10.1.0",
                                "description": "VM-series PAN-OS version - list available for a default `img_offer` with `az vm image list -o table --publisher paloaltonetworks --offer vmseries-flex --all`"
                            },
                            "interfaces": {
                                "default": [],
                                "description": "List of the network interface specifications.\nThe first should be the management interface, which does not participate in data filtering.\nThe remaining ones are the dataplane interfaces.\nOptions for an interface object:\n- `name`                 - (required|string) Interface name.\n- `subnet_id`            - (required|string) Identifier of an existing subnet to create interface in.\n- `private_ip_address`   - (optional|string) Static private IP to asssign to the interface. If null, dynamic one is allocated.\n- `public_ip_address_id` - (optional|string) Identifier of an existing public IP to associate.\n- `create_public_ip`     - (optional|bool) If true, create a public IP for the interface and ignore the `public_ip_address_id`. Default is false.\n- `availability_zone`    - (optional|string) Availability zone to create public IP in. If not specified, set based on `avzone` and `enable_zones`.\n- `enable_ip_forwarding` - (optional|bool) If true, the network interface will not discard packets sent to an IP address other than the one assigned. If false, the network interface only accepts traffic destined to its IP address.\n- `enable_backend_pool`  - (optional|bool) If true, associate interface with backend pool specified with `lb_backend_pool_id`. Default is false.\n- `lb_backend_pool_id`   - (optional|string) Identifier of an existing backend pool to associate interface with. Required if `enable_backend_pool` is true.\n- `tags`                 - (optional|map) Tags to assign to the interface and public IP (if created). Overrides contents of `tags` variable.\n\nExample:\n\n```\n[\n  {\n    name                 = \"fw-mgmt\"\n    subnet_id            = azurerm_subnet.my_mgmt_subnet.id\n    public_ip_address_id = azurerm_public_ip.my_mgmt_ip.id\n  },\n  {\n    name                = \"fw-public\"\n    subnet_id           = azurerm_subnet.my_pub_subnet.id\n    lb_backend_pool_id  = module.inbound_lb.backend_pool_id\n    enable_backend_pool = true\n  },\n]\n```\n\n"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Region where to deploy VM-Series and dependencies."
                            },
                            "managed_disk_type": {
                                "default": "StandardSSD_LRS",
                                "description": "Type of OS Managed Disk to create for the virtual machine. Possible values are `Standard_LRS`, `StandardSSD_LRS` or `Premium_LRS`. The `Premium_LRS` works only for selected `vm_size` values, details in Azure docs."
                            },
                            "metrics_retention_in_days": {
                                "default": null,
                                "description": "Specifies the retention period in days. Possible values are 0, 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90. A special value 0 disables creation of Application Insights altogether."
                            },
                            "name": {
                                "default": "fprohold",
                                "description": "VM-Series instance name."
                            },
                            "name_application_insights": {
                                "default": null,
                                "description": "Name of the Applications Insights instance to be created. Can be `null`, in which case a default name is auto-generated."
                            },
                            "os_disk_name": {
                                "default": null,
                                "description": "Optional name of the OS disk to create for the virtual machine. If empty, the name is auto-generated."
                            },
                            "password": {
                                "default": "hviohold",
                                "description": "Initial administrative password to use for VM-Series. Mind the [Azure-imposed restrictions](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/faq#what-are-the-password-requirements-when-creating-a-vm)."
                            },
                            "resource_group_name": {
                                "default": "pd48hold",
                                "description": "Name of the existing resource group where to place the resources created."
                            },
                            "tags": {
                                "default": {},
                                "description": "A map of tags to be associated with the resources created."
                            },
                            "username": {
                                "default": "yls0hold",
                                "description": "Initial administrative username to use for VM-Series. Mind the [Azure-imposed restrictions](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/faq#what-are-the-username-requirements-when-creating-a-vm)."
                            },
                            "vm_size": {
                                "default": "Standard_D3_v2",
                                "description": "Azure VM size (type) to be created. Consult the *VM-Series Deployment Guide* as only a few selected sizes are supported."
                            }
                        }
                    },
                    "source": "./modules/paloalto/vmseries"
                }
            },
            "outputs": {
                "application_ip_address": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.app-gw-pip01.ip_address",
                            "azurerm_public_ip.app-gw-pip01"
                        ]
                    }
                },
                "resource_group_name": {
                    "expression": {
                        "references": [
                            "azurerm_resource_group.rg.name",
                            "azurerm_resource_group.rg"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.application-gateway",
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
                                        "azurerm_public_ip.app-gw-pip01.id",
                                        "azurerm_public_ip.app-gw-pip01"
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
                            },
                            {
                                "name": {
                                    "constant_value": "httpsPort"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "app-gw-pip01"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.snet-appgw.id",
                                        "azurerm_subnet.snet-appgw"
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
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_gateway_name"
                            ]
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
                                    "constant_value": 1
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
                        "rewrite_rule_set": [
                            {
                                "name": {
                                    "constant_value": "add-default-header"
                                },
                                "rewrite_rule": [
                                    {
                                        "name": {
                                            "constant_value": "add-header-MyHeader"
                                        },
                                        "request_header_configuration": [
                                            {
                                                "header_name": {
                                                    "constant_value": "MyHeader"
                                                },
                                                "header_value": {
                                                    "constant_value": "Test"
                                                }
                                            }
                                        ],
                                        "rule_sequence": {
                                            "constant_value": 100
                                        }
                                    }
                                ]
                            }
                        ],
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "references": [
                                        "var.app_gateway_sku"
                                    ]
                                },
                                "tier": {
                                    "constant_value": "WAF_v2"
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
                    "name": "application-gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_kubernetes_cluster.k8s",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "constant_value": "agentpool"
                                },
                                "node_count": {
                                    "references": [
                                        "var.aks_agent_count"
                                    ]
                                },
                                "os_disk_size_gb": {
                                    "references": [
                                        "var.aks_agent_os_disk_size"
                                    ]
                                },
                                "vm_size": {
                                    "references": [
                                        "var.aks_agent_vm_size"
                                    ]
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "azurerm_subnet.snet-aks.id",
                                        "azurerm_subnet.snet-aks"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.aks_dns_prefix"
                            ]
                        },
                        "http_application_routing_enabled": {
                            "constant_value": false
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "ingress_application_gateway": [
                            {
                                "gateway_id": {
                                    "references": [
                                        "azurerm_application_gateway.application-gateway.id",
                                        "azurerm_application_gateway.application-gateway"
                                    ]
                                }
                            }
                        ],
                        "linux_profile": [
                            {
                                "admin_username": {
                                    "references": [
                                        "var.vm_user_name"
                                    ]
                                },
                                "ssh_key": [
                                    {
                                        "key_data": {
                                            "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                        }
                                    }
                                ]
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
                                "var.aks_name"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "references": [
                                        "var.aks_dns_service_ip"
                                    ]
                                },
                                "docker_bridge_cidr": {
                                    "references": [
                                        "var.aks_docker_bridge_cidr"
                                    ]
                                },
                                "network_plugin": {
                                    "constant_value": "azure"
                                },
                                "service_cidr": {
                                    "references": [
                                        "var.aks_service_cidr"
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
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "k8s",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "azurerm_network_security_group.nsg-mgmt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "sg-mgmt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_group.nsg-public",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "sg-public"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "azurerm_network_security_rule.mgmt",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "constant_value": "*"
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "vmseries-mgmt-allow-inbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "azurerm_network_security_group.nsg-mgmt.name",
                                "azurerm_network_security_group.nsg-mgmt"
                            ]
                        },
                        "priority": {
                            "constant_value": 1000
                        },
                        "protocol": {
                            "constant_value": "*"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "source_address_prefixes": {
                            "references": [
                                "var.allow_inbound_mgmt_ips"
                            ]
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "azurerm_public_ip.app-gw-pip01",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "domain_name_label": {
                            "constant_value": "akscluster"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "app-gw-pip01"
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
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app-gw-pip01",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.fw-mgmt",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "domain_name_label": {
                            "references": [
                                "var.firewall_vm_name"
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
                                "var.firewall_vm_name"
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
                    "name": "fw-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_public_ip.fw-public",
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
                                "var.firewall_vm_name"
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
                    "name": "fw-public",
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
                        }
                    },
                    "mode": "managed",
                    "name": "rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway[0]",
                                "azurerm_kubernetes_cluster.k8s.ingress_application_gateway",
                                "azurerm_kubernetes_cluster.k8s"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "azurerm_resource_group.rg.id",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-agic-id-rg-contrib",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_route.aks-route",
                    "expressions": {
                        "address_prefix": {
                            "references": [
                                "var.virtual_network_address_spoke_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "route-to-aks"
                        },
                        "next_hop_in_ip_address": {
                            "constant_value": "10.100.1.68"
                        },
                        "next_hop_type": {
                            "constant_value": "VirtualAppliance"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "route_table_name": {
                            "references": [
                                "azurerm_route_table.appgw-rt.name",
                                "azurerm_route_table.appgw-rt"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-route",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route"
                },
                {
                    "address": "azurerm_route.appgw-route",
                    "expressions": {
                        "address_prefix": {
                            "references": [
                                "var.virtual_network_address_hub_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "route-to-appgw"
                        },
                        "next_hop_in_ip_address": {
                            "constant_value": "10.100.1.4"
                        },
                        "next_hop_type": {
                            "constant_value": "VirtualAppliance"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "route_table_name": {
                            "references": [
                                "azurerm_route_table.aks-rt.name",
                                "azurerm_route_table.aks-rt"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-route",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route"
                },
                {
                    "address": "azurerm_route_table.aks-rt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "aks-rt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-rt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_route_table.appgw-rt",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-rt"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-rt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_subnet.snet-aks",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.aks_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.aks_subnet_name"
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
                                "azurerm_virtual_network.spoke.name",
                                "azurerm_virtual_network.spoke"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-aks",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-appgw",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.app_gateway_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.app_gateway_subnet_name"
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
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-management",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_management_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-management"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-management",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-trust",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_trust_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-trust"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-trust",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.snet-firewall-untrust",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "var.fw_untrust_subnet_address_prefix"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-firewall-untrust"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "snet-firewall-untrust",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-mgmt.id",
                                "azurerm_network_security_group.nsg-mgmt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "network_security_group_association-mgmt",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.nsg-public.id",
                                "azurerm_network_security_group.nsg-public"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "network_security_group_association_public",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.aks-rt-association",
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.aks-rt.id",
                                "azurerm_route_table.aks-rt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-aks.id",
                                "azurerm_subnet.snet-aks"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks-rt-association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.appgw-rt-association",
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.appgw-rt.id",
                                "azurerm_route_table.appgw-rt"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.snet-appgw.id",
                                "azurerm_subnet.snet-appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-rt-association",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_virtual_network.hub",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.virtual_network_address_hub_prefix"
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
                                "var.virtual_network_hub_name"
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
                    "name": "hub",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_virtual_network.spoke",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "var.virtual_network_address_spoke_prefix"
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
                                "var.virtual_network_spoke_name"
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
                    "name": "spoke",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_virtual_network_peering.hub-to-spoke",
                    "expressions": {
                        "name": {
                            "constant_value": "hub-to-spoke"
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.spoke.id",
                                "azurerm_virtual_network.spoke"
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
                                "azurerm_virtual_network.hub.name",
                                "azurerm_virtual_network.hub"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "hub-to-spoke",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "azurerm_virtual_network_peering.spoke-to-hub",
                    "expressions": {
                        "name": {
                            "constant_value": "spoke-to-hub"
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.hub.id",
                                "azurerm_virtual_network.hub"
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
                                "azurerm_virtual_network.spoke.name",
                                "azurerm_virtual_network.spoke"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "spoke-to-hub",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "random_integer.id",
                    "expressions": {
                        "max": {
                            "constant_value": 999
                        },
                        "min": {
                            "constant_value": 100
                        }
                    },
                    "mode": "managed",
                    "name": "id",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_integer"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_account.this",
                    "count_expression": {
                        "references": [
                            "var.create_storage_account"
                        ]
                    },
                    "expressions": {
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Standard"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "min_tls_version": {
                            "references": [
                                "var.min_tls_version"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
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
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share.this",
                    "expressions": {
                        "access_tier": {
                            "references": [
                                "var.storage_share_access_tier"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "quota": {
                            "references": [
                                "var.storage_share_quota"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "local.storage_account.name",
                                "local.storage_account"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_storage_share"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this",
                    "expressions": {
                        "name": {
                            "references": [
                                "each.key"
                            ]
                        },
                        "share_name": {
                            "references": [
                                "module.bootstrap.azurerm_storage_share.this.name",
                                "module.bootstrap.azurerm_storage_share.this"
                            ]
                        },
                        "storage_account_name": {
                            "references": [
                                "local.storage_account.name",
                                "local.storage_account"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_share_directory"
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this",
                    "depends_on": [
                        "module.bootstrap.azurerm_storage_share_directory.this"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "path": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "source": {
                            "references": [
                                "each.key",
                                "module.bootstrap.random_id.this",
                                "each.key",
                                "module.bootstrap.random_id.this",
                                "each.key"
                            ]
                        },
                        "storage_share_id": {
                            "references": [
                                "module.bootstrap.azurerm_storage_share.this.id",
                                "module.bootstrap.azurerm_storage_share.this"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "root.bootstrap.files"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_share_file"
                },
                {
                    "address": "module.bootstrap.random_id.this",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        },
                        "keepers": {
                            "references": [
                                "root.bootstrap.files_md5",
                                "each.key",
                                "each.key"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "root.bootstrap.files"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "module.bootstrap.data.azurerm_storage_account.this",
                    "count_expression": {
                        "references": [
                            "var.create_storage_account"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.firewall_vm_name",
                                "random_integer.id.result",
                                "random_integer.id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_application_insights.this",
                    "count_expression": {
                        "references": [
                            "var.metrics_retention_in_days"
                        ]
                    },
                    "expressions": {
                        "application_type": {
                            "constant_value": "other"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.paloalto_vmseries.name_application_insights",
                                "var.firewall_vm_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "retention_in_days": {
                            "references": [
                                "var.metrics_retention_in_days"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this",
                    "count_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "expressions": {
                        "enable_accelerated_networking": {
                            "references": [
                                "count.index",
                                "var.accelerated_networking"
                            ]
                        },
                        "enable_ip_forwarding": {
                            "references": [
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index",
                                "count.index"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "primary"
                                },
                                "private_ip_address": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.paloalto_vmseries.azurerm_public_ip.this",
                                        "count.index",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-management.id",
                                        "azurerm_subnet.snet-firewall-management",
                                        "azurerm_public_ip.fw-mgmt.id",
                                        "azurerm_public_ip.fw-mgmt",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-untrust.id",
                                        "azurerm_subnet.snet-firewall-untrust",
                                        "azurerm_public_ip.fw-public.id",
                                        "azurerm_public_ip.fw-public",
                                        "var.firewall_vm_name",
                                        "azurerm_subnet.snet-firewall-trust.id",
                                        "azurerm_subnet.snet-firewall-trust",
                                        "count.index"
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
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index"
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
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-management.id",
                                "azurerm_subnet.snet-firewall-management",
                                "azurerm_public_ip.fw-mgmt.id",
                                "azurerm_public_ip.fw-mgmt",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-untrust.id",
                                "azurerm_subnet.snet-firewall-untrust",
                                "azurerm_public_ip.fw-public.id",
                                "azurerm_public_ip.fw-public",
                                "var.firewall_vm_name",
                                "azurerm_subnet.snet-firewall-trust.id",
                                "azurerm_subnet.snet-firewall-trust",
                                "count.index",
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface_backend_address_pool_association.this",
                    "expressions": {
                        "backend_address_pool_id": {
                            "references": [
                                "each.value.lb_backend_pool_id",
                                "each.value"
                            ]
                        },
                        "ip_configuration_name": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this",
                                "each.key"
                            ]
                        },
                        "network_interface_id": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this",
                                "each.key"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_backend_address_pool_association"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_public_ip.this",
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
                                "each.value.name",
                                "each.value"
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
                                "each.value.tags",
                                "each.value",
                                "var.tags"
                            ]
                        },
                        "zones": {
                            "references": [
                                "root.paloalto_vmseries.enable_zones",
                                "var.avzones"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-management.id",
                            "azurerm_subnet.snet-firewall-management",
                            "azurerm_public_ip.fw-mgmt.id",
                            "azurerm_public_ip.fw-mgmt",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-untrust.id",
                            "azurerm_subnet.snet-firewall-untrust",
                            "azurerm_public_ip.fw-public.id",
                            "azurerm_public_ip.fw-public",
                            "var.firewall_vm_name",
                            "azurerm_subnet.snet-firewall-trust.id",
                            "azurerm_subnet.snet-firewall-trust"
                        ]
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                    "expressions": {
                        "availability_set_id": {
                            "references": [
                                "var.avset_id"
                            ]
                        },
                        "delete_data_disks_on_termination": {
                            "constant_value": true
                        },
                        "delete_os_disk_on_termination": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "var.identity_ids"
                                    ]
                                },
                                "type": {
                                    "references": [
                                        "var.identity_type"
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
                                "var.firewall_vm_name"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.paloalto_vmseries.azurerm_network_interface.this"
                            ]
                        },
                        "os_profile": [
                            {
                                "admin_password": {
                                    "references": [
                                        "root.paloalto_vmseries.password"
                                    ]
                                },
                                "admin_username": {
                                    "references": [
                                        "root.paloalto_vmseries.username"
                                    ]
                                },
                                "computer_name": {
                                    "references": [
                                        "var.firewall_vm_name"
                                    ]
                                },
                                "custom_data": {
                                    "references": [
                                        "module.bootstrap.storage_account.name",
                                        "module.bootstrap.storage_account",
                                        "module.bootstrap",
                                        "module.bootstrap.storage_account.primary_access_key",
                                        "module.bootstrap.storage_account",
                                        "module.bootstrap",
                                        "module.bootstrap.storage_share.name",
                                        "module.bootstrap.storage_share",
                                        "module.bootstrap"
                                    ]
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
                        "primary_network_interface_id": {
                            "references": [
                                "azurerm_network_interface.this[0].id",
                                "azurerm_network_interface.this[0]",
                                "module.paloalto_vmseries.azurerm_network_interface.this"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "storage_image_reference": [
                            {
                                "id": {
                                    "references": [
                                        "var.custom_image_id"
                                    ]
                                },
                                "offer": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.img_offer"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.img_publisher"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.common_vmseries_sku"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.custom_image_id",
                                        "var.common_vmseries_version"
                                    ]
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
                                    "references": [
                                        "var.managed_disk_type"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.os_disk_name",
                                        "var.firewall_vm_name"
                                    ]
                                },
                                "os_type": {
                                    "constant_value": "Linux"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "var.vm_size"
                            ]
                        },
                        "zones": {
                            "references": [
                                "root.paloalto_vmseries.enable_zones",
                                "var.avzone",
                                "var.avzone",
                                "var.avzone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_machine"
                }
            ],
            "variables": {
                "aks_agent_count": {
                    "default": 4,
                    "description": "The number of agent nodes for the cluster."
                },
                "aks_agent_os_disk_size": {
                    "default": 40,
                    "description": "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
                },
                "aks_agent_vm_size": {
                    "default": "Standard_D3_v2",
                    "description": "VM size"
                },
                "aks_dns_prefix": {
                    "default": "poc-aks",
                    "description": "Optional DNS prefix to use with hosted Kubernetes API server FQDN."
                },
                "aks_dns_service_ip": {
                    "default": "10.201.0.10",
                    "description": "DNS server IP address"
                },
                "aks_docker_bridge_cidr": {
                    "default": "172.17.0.1/16",
                    "description": "CIDR notation IP for Docker bridge."
                },
                "aks_enable_rbac": {
                    "default": "false",
                    "description": "Enable RBAC on the AKS cluster. Defaults to false."
                },
                "aks_name": {
                    "default": "aks-cluster1",
                    "description": "AKS cluster name"
                },
                "aks_service_cidr": {
                    "default": "10.201.0.0/16",
                    "description": "CIDR notation IP range from which to assign service cluster IPs"
                },
                "aks_subnet_address_prefix": {
                    "default": "10.200.0.0/16",
                    "description": "Subnet address prefix."
                },
                "aks_subnet_name": {
                    "default": "kubesubnet",
                    "description": "Subnet Name."
                },
                "allow_inbound_mgmt_ips": {
                    "default": [
                        "2.3.186.236"
                    ]
                },
                "app_gateway_name": {
                    "default": "app-gw1",
                    "description": "Name of the Application Gateway"
                },
                "app_gateway_sku": {
                    "default": "WAF_v2",
                    "description": "Name of the Application Gateway SKU"
                },
                "app_gateway_subnet_address_prefix": {
                    "default": "10.100.0.0/24",
                    "description": "Subnet server IP address."
                },
                "app_gateway_subnet_name": {
                    "default": "snet-applicationgateway",
                    "description": "Subnet name for Application Gateway"
                },
                "app_gateway_tier": {
                    "default": "Standard_v2",
                    "description": "Tier of the Application Gateway tier"
                },
                "avzones": {
                    "default": [
                        "1",
                        "2",
                        "3"
                    ]
                },
                "common_vmseries_sku": {
                    "default": "byol",
                    "description": "VM-Series SKU - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                },
                "common_vmseries_version": {
                    "default": "latest",
                    "description": "VM-Series PAN-OS version - list available with `az vm image list -o table --all --publisher paloaltonetworks`"
                },
                "common_vmseries_vm_size": {
                    "default": "Standard_D3_v2",
                    "description": "Azure VM size (type) to be created. Consult the *VM-Series Deployment Guide* as only a few selected sizes are supported."
                },
                "enable_zones": {
                    "default": true
                },
                "firewall_vm_name": {
                    "default": "firewall"
                },
                "fw_management_subnet_address_prefix": {
                    "default": "10.100.1.128/26",
                    "description": "Subnet server IP address."
                },
                "fw_trust_subnet_address_prefix": {
                    "default": "10.100.1.0/26",
                    "description": "Subnet server IP address."
                },
                "fw_untrust_subnet_address_prefix": {
                    "default": "10.100.1.64/26",
                    "description": "Subnet server IP address."
                },
                "kubernetes_version": {
                    "default": "1.11.5",
                    "description": "Kubernetes version"
                },
                "password": {
                    "default": "ARandomPassword=1",
                    "description": "Initial administrative password to use for all systems. Set to null for an auto-generated password."
                },
                "public_ssh_key_path": {
                    "default": "~/.ssh/id_rsa.pub",
                    "description": "Public key path for SSH."
                },
                "resource_group_location": {
                    "default": "northeurope",
                    "description": "Location of the resource group."
                },
                "resource_group_name": {
                    "default": "poc-appgw-aks-rg",
                    "description": "Ressource Group Name"
                },
                "tags": {
                    "default": {
                        "source": "terraform"
                    }
                },
                "username": {
                    "default": "panadmin",
                    "description": "Initial administrative username to use for all systems."
                },
                "virtual_network_address_hub_prefix": {
                    "default": "10.100.0.0/23",
                    "description": "Hub VNet address prefix"
                },
                "virtual_network_address_spoke_prefix": {
                    "default": "10.200.0.0/16",
                    "description": "Spoke VNet address prefix"
                },
                "virtual_network_hub_name": {
                    "default": "hubVirtualNetwork",
                    "description": "Virtual network name"
                },
                "virtual_network_spoke_name": {
                    "default": "aksVirtualNetwork",
                    "description": "Virtual network name"
                },
                "vm_user_name": {
                    "default": "vmuser1",
                    "description": "User name for the VM"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "application_ip_address": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "resource_group_name": {
            "actions": [
                "create"
            ],
            "after": "poc-appgw-aks-rg",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "application_ip_address": {
                "sensitive": false
            },
            "resource_group_name": {
                "sensitive": false,
                "type": "string",
                "value": "poc-appgw-aks-rg"
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.bootstrap",
                    "resources": [
                        {
                            "address": "module.bootstrap.azurerm_storage_account.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
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
                                "nfsv3_enabled": false,
                                "public_network_access_enabled": true,
                                "queue_encryption_key_type": "Service",
                                "resource_group_name": "poc-appgw-aks-rg",
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
                            "address": "module.bootstrap.azurerm_storage_share.this",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "acl": [],
                                "metadata": {}
                            },
                            "type": "azurerm_storage_share",
                            "values": {
                                "access_tier": "Cool",
                                "acl": [],
                                "enabled_protocol": "SMB",
                                "quota": 50,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
                            "index": "config",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
                            "index": "content",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "content",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
                            "index": "license",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "license",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
                            "index": "plugins",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "plugins",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
                            "index": "software",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_directory",
                            "values": {
                                "metadata": null,
                                "name": "software",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
                            "index": "templates/bootstrap.xml",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_file",
                            "values": {
                                "content_disposition": null,
                                "content_encoding": null,
                                "content_md5": null,
                                "content_type": "application/octet-stream",
                                "metadata": null,
                                "name": "bootstrap.xml",
                                "path": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
                            "index": "templates/init-cfg.txt",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_storage_share_file",
                            "values": {
                                "content_disposition": null,
                                "content_encoding": null,
                                "content_md5": null,
                                "content_type": "application/octet-stream",
                                "metadata": null,
                                "name": "init-cfg.txt",
                                "path": "config",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
                            "index": "templates/bootstrap.xml",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 0,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_id",
                            "values": {
                                "byte_length": 8,
                                "keepers": {
                                    "md5": "3623589ec35d8f23007d3828be8a5d2b"
                                },
                                "prefix": null
                            }
                        },
                        {
                            "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
                            "index": "templates/init-cfg.txt",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 0,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_id",
                            "values": {
                                "byte_length": 8,
                                "keepers": {
                                    "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
                                },
                                "prefix": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.paloalto_vmseries",
                    "resources": [
                        {
                            "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "connection_string": true,
                                "instrumentation_key": true
                            },
                            "type": "azurerm_application_insights",
                            "values": {
                                "application_type": "other",
                                "disable_ip_masking": false,
                                "force_customer_storage_for_profiler": false,
                                "internet_ingestion_enabled": true,
                                "internet_query_enabled": true,
                                "local_authentication_disabled": false,
                                "location": "northeurope",
                                "name": "firewall",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "retention_in_days": 90,
                                "sampling_percentage": 100,
                                "tags": null,
                                "timeouts": null,
                                "workspace_id": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "this",
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
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-mgmt",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "this",
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
                                "enable_accelerated_networking": true,
                                "enable_ip_forwarding": true,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-public",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
                            "index": 2,
                            "mode": "managed",
                            "name": "this",
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
                                "enable_accelerated_networking": true,
                                "enable_ip_forwarding": true,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "primary",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4",
                                        "public_ip_address_id": null
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall-private",
                                "resource_group_name": "poc-appgw-aks-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                            "mode": "managed",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "boot_diagnostics": [],
                                "identity": [
                                    {}
                                ],
                                "network_interface_ids": [],
                                "os_profile": true,
                                "os_profile_linux_config": [
                                    {
                                        "ssh_keys": []
                                    }
                                ],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [],
                                "plan": [
                                    {}
                                ],
                                "storage_data_disk": [],
                                "storage_image_reference": [
                                    {}
                                ],
                                "storage_os_disk": [
                                    {}
                                ],
                                "zones": [
                                    false
                                ]
                            },
                            "type": "azurerm_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "boot_diagnostics": [],
                                "delete_data_disks_on_termination": true,
                                "delete_os_disk_on_termination": true,
                                "identity": [
                                    {
                                        "identity_ids": null,
                                        "type": "SystemAssigned"
                                    }
                                ],
                                "location": "northeurope",
                                "name": "firewall",
                                "os_profile": [
                                    {
                                        "admin_password": "ARandomPassword=1",
                                        "admin_username": "panadmin",
                                        "computer_name": "firewall"
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
                                "plan": [
                                    {
                                        "name": "byol",
                                        "product": "vmseries-flex",
                                        "publisher": "paloaltonetworks"
                                    }
                                ],
                                "proximity_placement_group_id": null,
                                "resource_group_name": "poc-appgw-aks-rg",
                                "storage_image_reference": [
                                    {
                                        "id": "",
                                        "offer": "vmseries-flex",
                                        "publisher": "paloaltonetworks",
                                        "sku": "byol",
                                        "version": "latest"
                                    }
                                ],
                                "storage_os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "create_option": "FromImage",
                                        "image_uri": null,
                                        "managed_disk_type": "StandardSSD_LRS",
                                        "name": "firewall-vhd",
                                        "os_type": "Linux",
                                        "vhd_uri": null,
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "vm_size": "Standard_D3_v2",
                                "zones": [
                                    "1"
                                ]
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azurerm_application_gateway.application-gateway",
                    "mode": "managed",
                    "name": "application-gateway",
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
                        "rewrite_rule_set": [
                            {
                                "rewrite_rule": [
                                    {
                                        "condition": [],
                                        "request_header_configuration": [
                                            {}
                                        ],
                                        "response_header_configuration": [],
                                        "url": []
                                    }
                                ]
                            }
                        ],
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
                                "name": "aksVirtualNetwork-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "aksVirtualNetwork-be-htst",
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
                                "name": "aksVirtualNetwork-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "aksVirtualNetwork-feport",
                                "port": 80
                            },
                            {
                                "name": "httpsPort",
                                "port": 443
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "app-gw-pip01"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "aksVirtualNetwork-feip",
                                "frontend_port_name": "aksVirtualNetwork-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "aksVirtualNetwork-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "northeurope",
                        "name": "app-gw1",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "aksVirtualNetwork-beap",
                                "backend_http_settings_name": "aksVirtualNetwork-be-htst",
                                "http_listener_name": "aksVirtualNetwork-httplstn",
                                "name": "aksVirtualNetwork-rqrt",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "poc-appgw-aks-rg",
                        "rewrite_rule_set": [
                            {
                                "name": "add-default-header",
                                "rewrite_rule": [
                                    {
                                        "condition": [],
                                        "name": "add-header-MyHeader",
                                        "request_header_configuration": [
                                            {
                                                "header_name": "MyHeader",
                                                "header_value": "Test"
                                            }
                                        ],
                                        "response_header_configuration": [],
                                        "rule_sequence": 100,
                                        "url": []
                                    }
                                ]
                            }
                        ],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "WAF_v2",
                                "tier": "WAF_v2"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_profile": [],
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_kubernetes_cluster.k8s",
                    "mode": "managed",
                    "name": "k8s",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "aci_connector_linux": [],
                        "api_server_access_profile": [],
                        "api_server_authorized_ip_ranges": [],
                        "auto_scaler_profile": [],
                        "azure_active_directory_role_based_access_control": [],
                        "confidential_computing": [],
                        "default_node_pool": [
                            {
                                "kubelet_config": [],
                                "linux_os_config": [],
                                "node_labels": {},
                                "node_network_profile": [],
                                "upgrade_settings": []
                            }
                        ],
                        "http_proxy_config": [],
                        "identity": [
                            {}
                        ],
                        "ingress_application_gateway": [
                            {
                                "ingress_application_gateway_identity": []
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kube_admin_config": true,
                        "kube_admin_config_raw": true,
                        "kube_config": true,
                        "kube_config_raw": true,
                        "kubelet_identity": [],
                        "linux_profile": [
                            {
                                "ssh_key": [
                                    {}
                                ]
                            }
                        ],
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "network_profile": [
                            {
                                "ip_versions": [],
                                "load_balancer_profile": [],
                                "nat_gateway_profile": [],
                                "outbound_ip_address_ids": [],
                                "outbound_ip_prefix_ids": [],
                                "pod_cidrs": [],
                                "service_cidrs": []
                            }
                        ],
                        "oms_agent": [],
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "storage_profile": [],
                        "tags": {},
                        "web_app_routing": [],
                        "windows_profile": [],
                        "workload_autoscaler_profile": []
                    },
                    "type": "azurerm_kubernetes_cluster",
                    "values": {
                        "aci_connector_linux": [],
                        "automatic_channel_upgrade": null,
                        "azure_active_directory_role_based_access_control": [],
                        "azure_policy_enabled": null,
                        "confidential_computing": [],
                        "cost_analysis_enabled": null,
                        "custom_ca_trust_certificates_base64": null,
                        "default_node_pool": [
                            {
                                "capacity_reservation_group_id": null,
                                "custom_ca_trust_enabled": null,
                                "enable_auto_scaling": null,
                                "enable_host_encryption": null,
                                "enable_node_public_ip": null,
                                "fips_enabled": null,
                                "gpu_instance": null,
                                "host_group_id": null,
                                "kubelet_config": [],
                                "linux_os_config": [],
                                "max_count": null,
                                "message_of_the_day": null,
                                "min_count": null,
                                "name": "agentpool",
                                "node_count": 4,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_size_gb": 40,
                                "os_disk_type": "Managed",
                                "pod_subnet_id": null,
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": null,
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [],
                                "vm_size": "Standard_D3_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "poc-aks",
                        "dns_prefix_private_cluster": null,
                        "edge_zone": null,
                        "enable_pod_security_policy": null,
                        "http_application_routing_enabled": false,
                        "http_proxy_config": [],
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "image_cleaner_enabled": false,
                        "image_cleaner_interval_hours": 48,
                        "ingress_application_gateway": [
                            {
                                "gateway_name": null,
                                "subnet_cidr": null,
                                "subnet_id": null
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "linux_profile": [
                            {
                                "admin_username": "vmuser1",
                                "ssh_key": [
                                    {
                                        "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                    }
                                ]
                            }
                        ],
                        "local_account_disabled": null,
                        "location": "northeurope",
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "name": "aks-cluster1",
                        "network_profile": [
                            {
                                "dns_service_ip": "10.201.0.10",
                                "docker_bridge_cidr": "172.17.0.1/16",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.201.0.0/16"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": null,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "azurerm_network_security_group.nsg-mgmt",
                    "mode": "managed",
                    "name": "nsg-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "northeurope",
                        "name": "sg-mgmt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.nsg-public",
                    "mode": "managed",
                    "name": "nsg-public",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "northeurope",
                        "name": "sg-public",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_rule.mgmt",
                    "mode": "managed",
                    "name": "mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "source_address_prefixes": [
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": null,
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "*",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "vmseries-mgmt-allow-inbound",
                        "network_security_group_name": "sg-mgmt",
                        "priority": 1000,
                        "protocol": "*",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "source_address_prefix": null,
                        "source_address_prefixes": [
                            "2.3.186.236"
                        ],
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.app-gw-pip01",
                    "mode": "managed",
                    "name": "app-gw-pip01",
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
                        "domain_name_label": "akscluster",
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "northeurope",
                        "name": "app-gw-pip01",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.fw-mgmt",
                    "mode": "managed",
                    "name": "fw-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_public_ip",
                    "values": {
                        "allocation_method": "Static",
                        "ddos_protection_mode": "VirtualNetworkInherited",
                        "ddos_protection_plan_id": null,
                        "domain_name_label": "firewall-mgmt",
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 4,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "northeurope",
                        "name": "firewall-mgmt",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_public_ip.fw-public",
                    "mode": "managed",
                    "name": "fw-public",
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
                        "name": "firewall-public",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
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
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "northeurope",
                        "managed_by": null,
                        "name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
                    "mode": "managed",
                    "name": "aks-agic-id-rg-contrib",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route.aks-route",
                    "mode": "managed",
                    "name": "aks-route",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_route",
                    "values": {
                        "address_prefix": "10.200.0.0/16",
                        "name": "route-to-aks",
                        "next_hop_in_ip_address": "10.100.1.68",
                        "next_hop_type": "VirtualAppliance",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "route_table_name": "appgw-rt",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route.appgw-route",
                    "mode": "managed",
                    "name": "appgw-route",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_route",
                    "values": {
                        "address_prefix": "10.100.0.0/23",
                        "name": "route-to-appgw",
                        "next_hop_in_ip_address": "10.100.1.4",
                        "next_hop_type": "VirtualAppliance",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "route_table_name": "aks-rt",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.aks-rt",
                    "mode": "managed",
                    "name": "aks-rt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "location": "northeurope",
                        "name": "aks-rt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.appgw-rt",
                    "mode": "managed",
                    "name": "appgw-rt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "location": "northeurope",
                        "name": "appgw-rt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.snet-aks",
                    "mode": "managed",
                    "name": "snet-aks",
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
                            "10.200.0.0/16"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "kubesubnet",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "aksVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-appgw",
                    "mode": "managed",
                    "name": "snet-appgw",
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
                            "10.100.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-applicationgateway",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-management",
                    "mode": "managed",
                    "name": "snet-firewall-management",
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
                            "10.100.1.128/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-management",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-trust",
                    "mode": "managed",
                    "name": "snet-firewall-trust",
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
                            "10.100.1.0/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-trust",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet.snet-firewall-untrust",
                    "mode": "managed",
                    "name": "snet-firewall-untrust",
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
                            "10.100.1.64/26"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-firewall-untrust",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
                    "mode": "managed",
                    "name": "network_security_group_association-mgmt",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
                    "mode": "managed",
                    "name": "network_security_group_association_public",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.aks-rt-association",
                    "mode": "managed",
                    "name": "aks-rt-association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.appgw-rt-association",
                    "mode": "managed",
                    "name": "appgw-rt-association",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.hub",
                    "mode": "managed",
                    "name": "hub",
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
                            "10.100.0.0/23"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "northeurope",
                        "name": "hubVirtualNetwork",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.spoke",
                    "mode": "managed",
                    "name": "spoke",
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
                            "10.200.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "northeurope",
                        "name": "aksVirtualNetwork",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": {
                            "source": "terraform"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.hub-to-spoke",
                    "mode": "managed",
                    "name": "hub-to-spoke",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "hub-to-spoke",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "hubVirtualNetwork"
                    }
                },
                {
                    "address": "azurerm_virtual_network_peering.spoke-to-hub",
                    "mode": "managed",
                    "name": "spoke-to-hub",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "spoke-to-hub",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "aksVirtualNetwork"
                    }
                },
                {
                    "address": "random_integer.id",
                    "mode": "managed",
                    "name": "id",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_integer",
                    "values": {
                        "keepers": null,
                        "max": 999,
                        "min": 100,
                        "seed": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_account.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
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
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "poc-appgw-aks-rg",
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
                    "address": "module.bootstrap.azurerm_storage_share.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "acl": [],
                        "metadata": {}
                    },
                    "type": "azurerm_storage_share",
                    "values": {
                        "access_tier": "Cool",
                        "acl": [],
                        "enabled_protocol": "SMB",
                        "quota": 50,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
                    "index": "config",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
                    "index": "content",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "content",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
                    "index": "license",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "license",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
                    "index": "plugins",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "plugins",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
                    "index": "software",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_directory",
                    "values": {
                        "metadata": null,
                        "name": "software",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
                    "index": "templates/bootstrap.xml",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_file",
                    "values": {
                        "content_disposition": null,
                        "content_encoding": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "metadata": null,
                        "name": "bootstrap.xml",
                        "path": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
                    "index": "templates/init-cfg.txt",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_storage_share_file",
                    "values": {
                        "content_disposition": null,
                        "content_encoding": null,
                        "content_md5": null,
                        "content_type": "application/octet-stream",
                        "metadata": null,
                        "name": "init-cfg.txt",
                        "path": "config",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
                    "index": "templates/bootstrap.xml",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": {
                            "md5": "3623589ec35d8f23007d3828be8a5d2b"
                        },
                        "prefix": null
                    }
                },
                {
                    "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
                    "index": "templates/init-cfg.txt",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": {
                            "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
                        },
                        "prefix": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "other",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "firewall",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "retention_in_days": 90,
                        "sampling_percentage": 100,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "this",
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
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-mgmt",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "this",
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
                        "enable_accelerated_networking": true,
                        "enable_ip_forwarding": true,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-public",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
                    "index": 2,
                    "mode": "managed",
                    "name": "this",
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
                        "enable_accelerated_networking": true,
                        "enable_ip_forwarding": true,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "primary",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall-private",
                        "resource_group_name": "poc-appgw-aks-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
                    "mode": "managed",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "boot_diagnostics": [],
                        "identity": [
                            {}
                        ],
                        "network_interface_ids": [],
                        "os_profile": true,
                        "os_profile_linux_config": [
                            {
                                "ssh_keys": []
                            }
                        ],
                        "os_profile_secrets": [],
                        "os_profile_windows_config": [],
                        "plan": [
                            {}
                        ],
                        "storage_data_disk": [],
                        "storage_image_reference": [
                            {}
                        ],
                        "storage_os_disk": [
                            {}
                        ],
                        "zones": [
                            false
                        ]
                    },
                    "type": "azurerm_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "boot_diagnostics": [],
                        "delete_data_disks_on_termination": true,
                        "delete_os_disk_on_termination": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "name": "firewall",
                        "os_profile": [
                            {
                                "admin_password": "ARandomPassword=1",
                                "admin_username": "panadmin",
                                "computer_name": "firewall"
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
                        "plan": [
                            {
                                "name": "byol",
                                "product": "vmseries-flex",
                                "publisher": "paloaltonetworks"
                            }
                        ],
                        "proximity_placement_group_id": null,
                        "resource_group_name": "poc-appgw-aks-rg",
                        "storage_image_reference": [
                            {
                                "id": "",
                                "offer": "vmseries-flex",
                                "publisher": "paloaltonetworks",
                                "sku": "byol",
                                "version": "latest"
                            }
                        ],
                        "storage_os_disk": [
                            {
                                "caching": "ReadWrite",
                                "create_option": "FromImage",
                                "image_uri": null,
                                "managed_disk_type": "StandardSSD_LRS",
                                "name": "firewall-vhd",
                                "os_type": "Linux",
                                "vhd_uri": null,
                                "write_accelerator_enabled": false
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "vm_size": "Standard_D3_v2",
                        "zones": [
                            "1"
                        ]
                    }
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "outputs": {
                "resource_group_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "poc-appgw-aks-rg"
                }
            },
            "root_module": {}
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.spoke"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-public"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.paloalto_vmseries.azurerm_public_ip.this[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.fw-mgmt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_security_group.nsg-mgmt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.application-gateway"
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
            "resource": "azurerm_subnet.snet-aks"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "private_ip_address"
            ],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this[0]"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_integer.id"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.app-gw-pip01"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.random_id.this"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.app-gw-pip01"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.data.azurerm_storage_account.this[0]"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.hub"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.hub"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-firewall-management"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "identity",
                0,
                "principal_id"
            ],
            "resource": "module.paloalto_vmseries.azurerm_virtual_machine.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.fw-public"
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
            "resource": "azurerm_subnet.snet-firewall-trust"
        },
        {
            "attribute": [],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.paloalto_vmseries.azurerm_network_interface.this[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-firewall-untrust"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_route_table.aks-rt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.appgw-rt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.snet-appgw"
        },
        {
            "attribute": [],
            "resource": "module.paloalto_vmseries.azurerm_public_ip.this"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.azurerm_storage_share.this"
        },
        {
            "attribute": [
                "instrumentation_key"
            ],
            "resource": "module.paloalto_vmseries.azurerm_application_insights.this[0]"
        },
        {
            "attribute": [],
            "resource": "module.bootstrap.azurerm_storage_account.this[0]"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_network_security_group.nsg-mgmt"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_route_table.appgw-rt"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.spoke"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.aks-rt"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0,
                "ingress_application_gateway_identity",
                0,
                "object_id"
            ],
            "resource": "azurerm_kubernetes_cluster.k8s"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.application-gateway",
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
                            "name": "aksVirtualNetwork-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "aksVirtualNetwork-be-htst",
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
                            "name": "aksVirtualNetwork-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "aksVirtualNetwork-feport",
                            "port": 80
                        },
                        {
                            "name": "httpsPort",
                            "port": 443
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "app-gw-pip01"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "aksVirtualNetwork-feip",
                            "frontend_port_name": "aksVirtualNetwork-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "aksVirtualNetwork-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "northeurope",
                    "name": "app-gw1",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "aksVirtualNetwork-beap",
                            "backend_http_settings_name": "aksVirtualNetwork-be-htst",
                            "http_listener_name": "aksVirtualNetwork-httplstn",
                            "name": "aksVirtualNetwork-rqrt",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "poc-appgw-aks-rg",
                    "rewrite_rule_set": [
                        {
                            "name": "add-default-header",
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "name": "add-header-MyHeader",
                                    "request_header_configuration": [
                                        {
                                            "header_name": "MyHeader",
                                            "header_value": "Test"
                                        }
                                    ],
                                    "response_header_configuration": [],
                                    "rule_sequence": 100,
                                    "url": []
                                }
                            ]
                        }
                    ],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "source": "terraform"
                    },
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
                    "rewrite_rule_set": [
                        {
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "request_header_configuration": [
                                        {}
                                    ],
                                    "response_header_configuration": [],
                                    "url": []
                                }
                            ]
                        }
                    ],
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
                        },
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
                    "rewrite_rule_set": [
                        {
                            "id": true,
                            "rewrite_rule": [
                                {
                                    "condition": [],
                                    "request_header_configuration": [
                                        {}
                                    ],
                                    "response_header_configuration": [],
                                    "url": []
                                }
                            ]
                        }
                    ],
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
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "application-gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_kubernetes_cluster.k8s",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "aci_connector_linux": [],
                    "automatic_channel_upgrade": null,
                    "azure_active_directory_role_based_access_control": [],
                    "azure_policy_enabled": null,
                    "confidential_computing": [],
                    "cost_analysis_enabled": null,
                    "custom_ca_trust_certificates_base64": null,
                    "default_node_pool": [
                        {
                            "capacity_reservation_group_id": null,
                            "custom_ca_trust_enabled": null,
                            "enable_auto_scaling": null,
                            "enable_host_encryption": null,
                            "enable_node_public_ip": null,
                            "fips_enabled": null,
                            "gpu_instance": null,
                            "host_group_id": null,
                            "kubelet_config": [],
                            "linux_os_config": [],
                            "max_count": null,
                            "message_of_the_day": null,
                            "min_count": null,
                            "name": "agentpool",
                            "node_count": 4,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_size_gb": 40,
                            "os_disk_type": "Managed",
                            "pod_subnet_id": null,
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": null,
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [],
                            "vm_size": "Standard_D3_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "poc-aks",
                    "dns_prefix_private_cluster": null,
                    "edge_zone": null,
                    "enable_pod_security_policy": null,
                    "http_application_routing_enabled": false,
                    "http_proxy_config": [],
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "image_cleaner_enabled": false,
                    "image_cleaner_interval_hours": 48,
                    "ingress_application_gateway": [
                        {
                            "gateway_name": null,
                            "subnet_cidr": null,
                            "subnet_id": null
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "linux_profile": [
                        {
                            "admin_username": "vmuser1",
                            "ssh_key": [
                                {
                                    "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                                }
                            ]
                        }
                    ],
                    "local_account_disabled": null,
                    "location": "northeurope",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "aks-cluster1",
                    "network_profile": [
                        {
                            "dns_service_ip": "10.201.0.10",
                            "docker_bridge_cidr": "172.17.0.1/16",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.201.0.0/16"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "source": "terraform"
                    },
                    "timeouts": null,
                    "web_app_routing": [],
                    "workload_autoscaler_profile": [],
                    "workload_identity_enabled": false
                },
                "after_sensitive": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": [],
                    "api_server_authorized_ip_ranges": [],
                    "auto_scaler_profile": [],
                    "azure_active_directory_role_based_access_control": [],
                    "confidential_computing": [],
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "linux_os_config": [],
                            "node_labels": {},
                            "node_network_profile": [],
                            "upgrade_settings": []
                        }
                    ],
                    "http_proxy_config": [],
                    "identity": [
                        {}
                    ],
                    "ingress_application_gateway": [
                        {
                            "ingress_application_gateway_identity": []
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": [],
                    "linux_profile": [
                        {
                            "ssh_key": [
                                {}
                            ]
                        }
                    ],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "ip_versions": [],
                            "load_balancer_profile": [],
                            "nat_gateway_profile": [],
                            "outbound_ip_address_ids": [],
                            "outbound_ip_prefix_ids": [],
                            "pod_cidrs": [],
                            "service_cidrs": []
                        }
                    ],
                    "oms_agent": [],
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "storage_profile": [],
                    "tags": {},
                    "web_app_routing": [],
                    "windows_profile": [],
                    "workload_autoscaler_profile": []
                },
                "after_unknown": {
                    "aci_connector_linux": [],
                    "api_server_access_profile": true,
                    "api_server_authorized_ip_ranges": true,
                    "auto_scaler_profile": true,
                    "azure_active_directory_role_based_access_control": [],
                    "confidential_computing": [],
                    "current_kubernetes_version": true,
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "kubelet_disk_type": true,
                            "linux_os_config": [],
                            "max_pods": true,
                            "node_labels": true,
                            "node_network_profile": [],
                            "orchestrator_version": true,
                            "os_sku": true,
                            "upgrade_settings": [],
                            "vnet_subnet_id": true,
                            "workload_runtime": true
                        }
                    ],
                    "fqdn": true,
                    "http_application_routing_zone_name": true,
                    "http_proxy_config": [],
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "ingress_application_gateway": [
                        {
                            "effective_gateway_id": true,
                            "gateway_id": true,
                            "ingress_application_gateway_identity": true
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": true,
                    "kubernetes_version": true,
                    "linux_profile": [
                        {
                            "ssh_key": [
                                {}
                            ]
                        }
                    ],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "ebpf_data_plane": true,
                            "ip_versions": true,
                            "load_balancer_profile": true,
                            "nat_gateway_profile": true,
                            "network_data_plane": true,
                            "network_mode": true,
                            "network_policy": true,
                            "outbound_ip_address_ids": true,
                            "outbound_ip_prefix_ids": true,
                            "pod_cidr": true,
                            "pod_cidrs": true,
                            "service_cidrs": true
                        }
                    ],
                    "node_resource_group": true,
                    "node_resource_group_id": true,
                    "oidc_issuer_url": true,
                    "oms_agent": [],
                    "portal_fqdn": true,
                    "private_dns_zone_id": true,
                    "private_fqdn": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "storage_profile": [],
                    "tags": {},
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "k8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "azurerm_network_security_group.nsg-mgmt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "sg-mgmt",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "nsg-mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_group.nsg-public",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "sg-public",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "security_rule": []
                },
                "after_unknown": {
                    "id": true,
                    "security_rule": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "nsg-public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_network_security_rule.mgmt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": null,
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "*",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "vmseries-mgmt-allow-inbound",
                    "network_security_group_name": "sg-mgmt",
                    "priority": 1000,
                    "protocol": "*",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "source_address_prefix": null,
                    "source_address_prefixes": [
                        "2.3.186.236"
                    ],
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "source_address_prefixes": [
                        false
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "source_address_prefixes": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "azurerm_public_ip.app-gw-pip01",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "akscluster",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "northeurope",
                    "name": "app-gw-pip01",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "source": "terraform"
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
            "name": "app-gw-pip01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.fw-mgmt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "firewall-mgmt",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "northeurope",
                    "name": "firewall-mgmt",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "fw-mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_public_ip.fw-public",
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
                    "name": "firewall-public",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "name": "fw-public",
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
                    "location": "northeurope",
                    "managed_by": null,
                    "name": "poc-appgw-aks-rg",
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
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_role_assignment.aks-agic-id-rg-contrib",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Contributor",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks-agic-id-rg-contrib",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_route.aks-route",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefix": "10.200.0.0/16",
                    "name": "route-to-aks",
                    "next_hop_in_ip_address": "10.100.1.68",
                    "next_hop_type": "VirtualAppliance",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "route_table_name": "appgw-rt",
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
            "name": "aks-route",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route"
        },
        {
            "address": "azurerm_route.appgw-route",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefix": "10.100.0.0/23",
                    "name": "route-to-appgw",
                    "next_hop_in_ip_address": "10.100.1.4",
                    "next_hop_type": "VirtualAppliance",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "route_table_name": "aks-rt",
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
            "name": "appgw-route",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route"
        },
        {
            "address": "azurerm_route_table.aks-rt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "aks-rt",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "disable_bgp_route_propagation": true,
                    "id": true,
                    "route": true,
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks-rt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_route_table.appgw-rt",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "name": "appgw-rt",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "disable_bgp_route_propagation": true,
                    "id": true,
                    "route": true,
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw-rt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_subnet.snet-aks",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.200.0.0/16"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "kubesubnet",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "aksVirtualNetwork"
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
            "name": "snet-aks",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-applicationgateway",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-management",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.128/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-management",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-management",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-trust",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.0/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-trust",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-trust",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.snet-firewall-untrust",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.100.1.64/26"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-firewall-untrust",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "snet-firewall-untrust",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.network_security_group_association-mgmt",
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
            "name": "network_security_group_association-mgmt",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_network_security_group_association.network_security_group_association_public",
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
            "name": "network_security_group_association_public",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_subnet_route_table_association.aks-rt-association",
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
                    "route_table_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aks-rt-association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_subnet_route_table_association.appgw-rt-association",
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
                    "route_table_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw-rt-association",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_virtual_network.hub",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.100.0.0/23"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "northeurope",
                    "name": "hubVirtualNetwork",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": {
                        "source": "terraform"
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
            "name": "hub",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_virtual_network.spoke",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.200.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "northeurope",
                    "name": "aksVirtualNetwork",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "tags": {
                        "source": "terraform"
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
            "name": "spoke",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_virtual_network_peering.hub-to-spoke",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "hub-to-spoke",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "hubVirtualNetwork"
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
            "name": "hub-to-spoke",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "azurerm_virtual_network_peering.spoke-to-hub",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "spoke-to-hub",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "aksVirtualNetwork"
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
            "name": "spoke-to-hub",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "random_integer.id",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "max": 999,
                    "min": 100,
                    "seed": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "id",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_integer"
        },
        {
            "address": "module.bootstrap.azurerm_storage_account.this[0]",
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
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "poc-appgw-aks-rg",
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
                    "name": true,
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_tier": "Cool",
                    "acl": [],
                    "enabled_protocol": "SMB",
                    "quota": 50,
                    "timeouts": null
                },
                "after_sensitive": {
                    "acl": [],
                    "metadata": {}
                },
                "after_unknown": {
                    "acl": [],
                    "id": true,
                    "metadata": true,
                    "name": true,
                    "resource_manager_id": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"config\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "config",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"content\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "content",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "content",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"license\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "license",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "license",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"plugins\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "plugins",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "plugins",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_directory.this[\"software\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": null,
                    "name": "software",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "share_name": true,
                    "storage_account_name": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "software",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_directory"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/bootstrap.xml\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_disposition": null,
                    "content_encoding": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "metadata": null,
                    "name": "bootstrap.xml",
                    "path": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "content_length": true,
                    "id": true,
                    "source": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/bootstrap.xml",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_file"
        },
        {
            "address": "module.bootstrap.azurerm_storage_share_file.this[\"templates/init-cfg.txt\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_disposition": null,
                    "content_encoding": null,
                    "content_md5": null,
                    "content_type": "application/octet-stream",
                    "metadata": null,
                    "name": "init-cfg.txt",
                    "path": "config",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "content_length": true,
                    "id": true,
                    "source": true,
                    "storage_share_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": "templates/init-cfg.txt",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share_file"
        },
        {
            "address": "module.bootstrap.random_id.this[\"templates/bootstrap.xml\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": {
                        "md5": "3623589ec35d8f23007d3828be8a5d2b"
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
            "index": "templates/bootstrap.xml",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "module.bootstrap.random_id.this[\"templates/init-cfg.txt\"]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": {
                        "md5": "cd7e3a9a6b06ee37b6631b4de7cba4d8"
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
            "index": "templates/init-cfg.txt",
            "mode": "managed",
            "module_address": "module.bootstrap",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_application_insights.this[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "other",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "firewall",
                    "resource_group_name": "poc-appgw-aks-rg",
                    "retention_in_days": 90,
                    "sampling_percentage": 100,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": null
                },
                "after_sensitive": {
                    "connection_string": true,
                    "instrumentation_key": true
                },
                "after_unknown": {
                    "app_id": true,
                    "connection_string": true,
                    "daily_data_cap_in_gb": true,
                    "daily_data_cap_notifications_disabled": true,
                    "id": true,
                    "instrumentation_key": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[0]",
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
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-mgmt",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-public",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_network_interface.this[2]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": true,
                    "enable_ip_forwarding": true,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "primary",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall-private",
                    "resource_group_name": "poc-appgw-aks-rg",
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
            "index": 2,
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.paloalto_vmseries.azurerm_virtual_machine.this",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "boot_diagnostics": [],
                    "delete_data_disks_on_termination": true,
                    "delete_os_disk_on_termination": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "name": "firewall",
                    "os_profile": [
                        {
                            "admin_password": "ARandomPassword=1",
                            "admin_username": "panadmin",
                            "computer_name": "firewall"
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
                    "plan": [
                        {
                            "name": "byol",
                            "product": "vmseries-flex",
                            "publisher": "paloaltonetworks"
                        }
                    ],
                    "proximity_placement_group_id": null,
                    "resource_group_name": "poc-appgw-aks-rg",
                    "storage_image_reference": [
                        {
                            "id": "",
                            "offer": "vmseries-flex",
                            "publisher": "paloaltonetworks",
                            "sku": "byol",
                            "version": "latest"
                        }
                    ],
                    "storage_os_disk": [
                        {
                            "caching": "ReadWrite",
                            "create_option": "FromImage",
                            "image_uri": null,
                            "managed_disk_type": "StandardSSD_LRS",
                            "name": "firewall-vhd",
                            "os_type": "Linux",
                            "vhd_uri": null,
                            "write_accelerator_enabled": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "vm_size": "Standard_D3_v2",
                    "zones": [
                        "1"
                    ]
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "boot_diagnostics": [],
                    "identity": [
                        {}
                    ],
                    "network_interface_ids": [],
                    "os_profile": true,
                    "os_profile_linux_config": [
                        {
                            "ssh_keys": []
                        }
                    ],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [],
                    "plan": [
                        {}
                    ],
                    "storage_data_disk": [],
                    "storage_image_reference": [
                        {}
                    ],
                    "storage_os_disk": [
                        {}
                    ],
                    "zones": [
                        false
                    ]
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "availability_set_id": true,
                    "boot_diagnostics": [],
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
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
                    "plan": [
                        {}
                    ],
                    "primary_network_interface_id": true,
                    "storage_data_disk": true,
                    "storage_image_reference": [
                        {}
                    ],
                    "storage_os_disk": [
                        {
                            "disk_size_gb": true,
                            "managed_disk_id": true
                        }
                    ],
                    "zones": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.paloalto_vmseries",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:44:44Z",
    "variables": {
        "aks_agent_count": {
            "value": 4
        },
        "aks_agent_os_disk_size": {
            "value": 40
        },
        "aks_agent_vm_size": {
            "value": "Standard_D3_v2"
        },
        "aks_dns_prefix": {
            "value": "poc-aks"
        },
        "aks_dns_service_ip": {
            "value": "10.201.0.10"
        },
        "aks_docker_bridge_cidr": {
            "value": "172.17.0.1/16"
        },
        "aks_enable_rbac": {
            "value": "false"
        },
        "aks_name": {
            "value": "aks-cluster1"
        },
        "aks_service_cidr": {
            "value": "10.201.0.0/16"
        },
        "aks_subnet_address_prefix": {
            "value": "10.200.0.0/16"
        },
        "aks_subnet_name": {
            "value": "kubesubnet"
        },
        "allow_inbound_mgmt_ips": {
            "value": [
                "2.3.186.236"
            ]
        },
        "app_gateway_name": {
            "value": "app-gw1"
        },
        "app_gateway_sku": {
            "value": "WAF_v2"
        },
        "app_gateway_subnet_address_prefix": {
            "value": "10.100.0.0/24"
        },
        "app_gateway_subnet_name": {
            "value": "snet-applicationgateway"
        },
        "app_gateway_tier": {
            "value": "Standard_v2"
        },
        "avzones": {
            "value": [
                "1",
                "2",
                "3"
            ]
        },
        "common_vmseries_sku": {
            "value": "byol"
        },
        "common_vmseries_version": {
            "value": "latest"
        },
        "common_vmseries_vm_size": {
            "value": "Standard_D3_v2"
        },
        "enable_zones": {
            "value": true
        },
        "firewall_vm_name": {
            "value": "firewall"
        },
        "fw_management_subnet_address_prefix": {
            "value": "10.100.1.128/26"
        },
        "fw_trust_subnet_address_prefix": {
            "value": "10.100.1.0/26"
        },
        "fw_untrust_subnet_address_prefix": {
            "value": "10.100.1.64/26"
        },
        "kubernetes_version": {
            "value": "1.11.5"
        },
        "password": {
            "value": "ARandomPassword=1"
        },
        "public_ssh_key_path": {
            "value": "~/.ssh/id_rsa.pub"
        },
        "resource_group_location": {
            "value": "northeurope"
        },
        "resource_group_name": {
            "value": "poc-appgw-aks-rg"
        },
        "tags": {
            "value": {
                "source": "terraform"
            }
        },
        "username": {
            "value": "panadmin"
        },
        "virtual_network_address_hub_prefix": {
            "value": "10.100.0.0/23"
        },
        "virtual_network_address_spoke_prefix": {
            "value": "10.200.0.0/16"
        },
        "virtual_network_hub_name": {
            "value": "hubVirtualNetwork"
        },
        "virtual_network_spoke_name": {
            "value": "aksVirtualNetwork"
        },
        "vm_user_name": {
            "value": "vmuser1"
        }
    }
}