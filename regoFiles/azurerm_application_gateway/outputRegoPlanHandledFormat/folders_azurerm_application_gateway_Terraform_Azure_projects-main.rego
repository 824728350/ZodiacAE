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
                "name": "azurerm",
                "version_constraint": "3.116.0"
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.network",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_network_interface.app_interface.private_ip_addresses",
                                        "azurerm_network_interface.app_interface"
                                    ]
                                },
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
                                "path": {
                                    "constant_value": "/path1/"
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
                            },
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "constant_value": "httpssetting"
                                },
                                "path": {
                                    "constant_value": "/path1/"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "protocol": {
                                    "constant_value": "Https"
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
                            },
                            {
                                "name": {
                                    "constant_value": "https-port"
                                },
                                "port": {
                                    "constant_value": 443
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
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "constant_value": "https-port"
                                },
                                "name": {
                                    "constant_value": "httpslistner"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "generated-cert"
                                }
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": {
                                    "references": [
                                        "azurerm_user_assigned_identity.user_managed_identity.id",
                                        "azurerm_user_assigned_identity.user_managed_identity"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
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
                            "constant_value": "example-applicationgw"
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
                                    "constant_value": 9
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
                        ],
                        "ssl_certificate": [
                            {
                                "key_vault_secret_id": {
                                    "references": [
                                        "azurerm_key_vault_certificate.example.secret_id",
                                        "azurerm_key_vault_certificate.example"
                                    ]
                                },
                                "name": {
                                    "constant_value": "generated-cert"
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
                    "address": "azurerm_key_vault.example",
                    "expressions": {
                        "access_policy": {
                            "references": [
                                "data.azurerm_client_config.current.object_id",
                                "data.azurerm_client_config.current",
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "keyvault1324567"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "soft_delete_retention_days": {
                            "constant_value": 7
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_key_vault_access_policy.appag_key_vault_access_policy",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "azurerm_user_assigned_identity.user_managed_identity.principal_id",
                                "azurerm_user_assigned_identity.user_managed_identity"
                            ]
                        },
                        "secret_permissions": {
                            "constant_value": [
                                "Get"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appag_key_vault_access_policy",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_access_policy"
                },
                {
                    "address": "azurerm_key_vault_certificate.example",
                    "expressions": {
                        "certificate_policy": [
                            {
                                "issuer_parameters": [
                                    {
                                        "name": {
                                            "constant_value": "Self"
                                        }
                                    }
                                ],
                                "key_properties": [
                                    {
                                        "exportable": {
                                            "constant_value": true
                                        },
                                        "key_size": {
                                            "constant_value": 2048
                                        },
                                        "key_type": {
                                            "constant_value": "RSA"
                                        },
                                        "reuse_key": {
                                            "constant_value": true
                                        }
                                    }
                                ],
                                "lifetime_action": [
                                    {
                                        "action": [
                                            {
                                                "action_type": {
                                                    "constant_value": "AutoRenew"
                                                }
                                            }
                                        ],
                                        "trigger": [
                                            {
                                                "days_before_expiry": {
                                                    "constant_value": 3
                                                }
                                            }
                                        ]
                                    }
                                ],
                                "secret_properties": [
                                    {
                                        "content_type": {
                                            "constant_value": "application/x-pkcs12"
                                        }
                                    }
                                ],
                                "x509_certificate_properties": [
                                    {
                                        "extended_key_usage": {
                                            "constant_value": [
                                                "1.3.6.1.5.5.7.3.1"
                                            ]
                                        },
                                        "key_usage": {
                                            "constant_value": [
                                                "cRLSign",
                                                "dataEncipherment",
                                                "digitalSignature",
                                                "keyAgreement",
                                                "keyCertSign",
                                                "keyEncipherment"
                                            ]
                                        },
                                        "subject": {
                                            "constant_value": "CN=hello-world"
                                        },
                                        "subject_alternative_names": [
                                            {
                                                "dns_names": {
                                                    "constant_value": [
                                                        "internal.contoso.com",
                                                        "domain.hello.world"
                                                    ]
                                                }
                                            }
                                        ],
                                        "validity_in_months": {
                                            "constant_value": 1
                                        }
                                    }
                                ]
                            }
                        ],
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        },
                        "name": {
                            "constant_value": "gen-cert"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_certificate"
                },
                {
                    "address": "azurerm_network_interface.app_interface",
                    "depends_on": [
                        "azurerm_virtual_network.example",
                        "azurerm_public_ip.app_public_ip",
                        "azurerm_subnet.backend"
                    ],
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
                                        "azurerm_public_ip.app_public_ip.id",
                                        "azurerm_public_ip.app_public_ip"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.backend.id",
                                        "azurerm_subnet.backend"
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
                            "constant_value": "app-interface"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app_interface",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_public_ip.app_public_ip",
                    "depends_on": [
                        "azurerm_resource_group.example"
                    ],
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
                            "constant_value": "app-public-ip"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "app_public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
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
                            "constant_value": "example-publicip"
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
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "AGV1999"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_role_assignment.assigned",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "azurerm_user_assigned_identity.user_managed_identity.principal_id",
                                "azurerm_user_assigned_identity.user_managed_identity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "assigned",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.example",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_client_config.example.object_id",
                                "data.azurerm_client_config.example"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_subscription.primary.id",
                                "data.azurerm_subscription.primary"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_role_assignment.kv_user_assigned",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_client_config.example.object_id",
                                "data.azurerm_client_config.example"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Key Vault Administrator"
                        },
                        "scope": {
                            "references": [
                                "azurerm_key_vault.example.id",
                                "azurerm_key_vault.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kv_user_assigned",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.254.1.0/24"
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
                                "10.254.0.0/24"
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
                    "address": "azurerm_user_assigned_identity.user_managed_identity",
                    "depends_on": [
                        "azurerm_resource_group.example"
                    ],
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "user_managed_identity"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "user_managed_identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.254.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "example-nw"
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
                },
                {
                    "address": "azurerm_windows_virtual_machine.app_vm",
                    "depends_on": [
                        "azurerm_network_interface.app_interface"
                    ],
                    "expressions": {
                        "admin_password": {
                            "constant_value": "Azure@123"
                        },
                        "admin_username": {
                            "constant_value": "demousr"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "appvm"
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.app_interface.id",
                                "azurerm_network_interface.app_interface"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Standard_LRS"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "size": {
                            "constant_value": "Standard_D2s_v3"
                        },
                        "source_image_reference": [
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
                        ]
                    },
                    "mode": "managed",
                    "name": "app_vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine"
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
                    "address": "data.azurerm_client_config.example",
                    "mode": "data",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "data.azurerm_subscription.primary",
                    "mode": "data",
                    "name": "primary",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subscription"
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
                            },
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
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": []
                            }
                        ],
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
                        "ssl_certificate": true,
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
                                "name": "example-nw-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "example-nw-be-htst",
                                "path": "/path1/",
                                "pick_host_name_from_backend_address": false,
                                "port": 80,
                                "probe_name": "",
                                "protocol": "Http",
                                "request_timeout": 60,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "httpssetting",
                                "path": "/path1/",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "",
                                "protocol": "Https",
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
                                "name": "example-nw-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "example-nw-feport",
                                "port": 80
                            },
                            {
                                "name": "https-port",
                                "port": 443
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
                                "frontend_ip_configuration_name": "example-nw-feip",
                                "frontend_port_name": "example-nw-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "example-nw-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "example-nw-feip",
                                "frontend_port_name": "https-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "httpslistner",
                                "protocol": "Https",
                                "require_sni": null,
                                "ssl_certificate_name": "generated-cert",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [
                            {
                                "type": "UserAssigned"
                            }
                        ],
                        "location": "westeurope",
                        "name": "example-applicationgw",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "example-nw-beap",
                                "backend_http_settings_name": "example-nw-be-htst",
                                "http_listener_name": "example-nw-httplstn",
                                "name": "example-nw-rqrt",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "AGV1999",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 2,
                                "name": "Standard_v2",
                                "tier": "Standard_v2"
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": "",
                                "name": "generated-cert",
                                "password": ""
                            }
                        ],
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
                    "address": "azurerm_key_vault.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [
                            {
                                "certificate_permissions": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "key_permissions": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ],
                                "secret_permissions": [
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false,
                                    false
                                ]
                            }
                        ],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "access_policy": [
                            {
                                "application_id": null,
                                "certificate_permissions": [
                                    "Create",
                                    "Delete",
                                    "DeleteIssuers",
                                    "Get",
                                    "GetIssuers",
                                    "Import",
                                    "List",
                                    "ListIssuers",
                                    "ManageContacts",
                                    "ManageIssuers",
                                    "Purge",
                                    "SetIssuers",
                                    "Update"
                                ],
                                "key_permissions": [
                                    "Backup",
                                    "Create",
                                    "Decrypt",
                                    "Delete",
                                    "Encrypt",
                                    "Get",
                                    "Import",
                                    "List",
                                    "Purge",
                                    "Recover",
                                    "Restore",
                                    "Sign",
                                    "UnwrapKey",
                                    "Update",
                                    "Verify",
                                    "WrapKey"
                                ],
                                "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                "secret_permissions": [
                                    "Backup",
                                    "Delete",
                                    "Get",
                                    "List",
                                    "Purge",
                                    "Recover",
                                    "Restore",
                                    "Set"
                                ],
                                "storage_permissions": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                            }
                        ],
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "westeurope",
                        "name": "keyvault1324567",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": null,
                        "resource_group_name": "AGV1999",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault_access_policy.appag_key_vault_access_policy",
                    "mode": "managed",
                    "name": "appag_key_vault_access_policy",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "secret_permissions": [
                            false
                        ]
                    },
                    "type": "azurerm_key_vault_access_policy",
                    "values": {
                        "application_id": null,
                        "certificate_permissions": null,
                        "key_permissions": null,
                        "secret_permissions": [
                            "Get"
                        ],
                        "storage_permissions": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_key_vault_certificate.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "certificate": [],
                        "certificate_attribute": [],
                        "certificate_policy": [
                            {
                                "issuer_parameters": [
                                    {}
                                ],
                                "key_properties": [
                                    {}
                                ],
                                "lifetime_action": [
                                    {
                                        "action": [
                                            {}
                                        ],
                                        "trigger": [
                                            {}
                                        ]
                                    }
                                ],
                                "secret_properties": [
                                    {}
                                ],
                                "x509_certificate_properties": [
                                    {
                                        "extended_key_usage": [
                                            false
                                        ],
                                        "key_usage": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ],
                                        "subject_alternative_names": [
                                            {
                                                "dns_names": [
                                                    false,
                                                    false
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_key_vault_certificate",
                    "values": {
                        "certificate": [],
                        "certificate_policy": [
                            {
                                "issuer_parameters": [
                                    {
                                        "name": "Self"
                                    }
                                ],
                                "key_properties": [
                                    {
                                        "exportable": true,
                                        "key_size": 2048,
                                        "key_type": "RSA",
                                        "reuse_key": true
                                    }
                                ],
                                "lifetime_action": [
                                    {
                                        "action": [
                                            {
                                                "action_type": "AutoRenew"
                                            }
                                        ],
                                        "trigger": [
                                            {
                                                "days_before_expiry": 3,
                                                "lifetime_percentage": null
                                            }
                                        ]
                                    }
                                ],
                                "secret_properties": [
                                    {
                                        "content_type": "application/x-pkcs12"
                                    }
                                ],
                                "x509_certificate_properties": [
                                    {
                                        "extended_key_usage": [
                                            "1.3.6.1.5.5.7.3.1"
                                        ],
                                        "key_usage": [
                                            "cRLSign",
                                            "dataEncipherment",
                                            "digitalSignature",
                                            "keyAgreement",
                                            "keyCertSign",
                                            "keyEncipherment"
                                        ],
                                        "subject": "CN=hello-world",
                                        "subject_alternative_names": [
                                            {
                                                "dns_names": [
                                                    "domain.hello.world",
                                                    "internal.contoso.com"
                                                ],
                                                "emails": null,
                                                "upns": null
                                            }
                                        ],
                                        "validity_in_months": 1
                                    }
                                ]
                            }
                        ],
                        "name": "gen-cert",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.app_interface",
                    "mode": "managed",
                    "name": "app_interface",
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
                        "location": "westeurope",
                        "name": "app-interface",
                        "resource_group_name": "AGV1999",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.app_public_ip",
                    "mode": "managed",
                    "name": "app_public_ip",
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
                        "name": "app-public-ip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "AGV1999",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
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
                        "location": "westeurope",
                        "name": "example-publicip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "AGV1999",
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
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "AGV1999",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.assigned",
                    "mode": "managed",
                    "name": "assigned",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Key Vault Administrator",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                        "role_definition_name": "Key Vault Administrator",
                        "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_role_assignment.kv_user_assigned",
                    "mode": "managed",
                    "name": "kv_user_assigned",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                        "role_definition_name": "Key Vault Administrator",
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
                            "10.254.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "backend",
                        "resource_group_name": "AGV1999",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-nw"
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
                            "10.254.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "frontend",
                        "resource_group_name": "AGV1999",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "example-nw"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.user_managed_identity",
                    "mode": "managed",
                    "name": "user_managed_identity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "westeurope",
                        "name": "user_managed_identity",
                        "resource_group_name": "AGV1999",
                        "tags": null,
                        "timeouts": null
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
                            "10.254.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "westeurope",
                        "name": "example-nw",
                        "resource_group_name": "AGV1999",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_windows_virtual_machine.app_vm",
                    "mode": "managed",
                    "name": "app_vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
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
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": "Azure@123",
                        "admin_username": "demousr",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "hotpatching_enabled": false,
                        "identity": [],
                        "license_type": null,
                        "location": "westeurope",
                        "max_bid_price": -1,
                        "name": "appvm",
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
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "AGV1999",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_D2s_v3",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "WindowsServer",
                                "publisher": "MicrosoftWindowsServer",
                                "sku": "2019-Datacenter",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone": null
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
                        "address": "data.azurerm_client_config.example",
                        "mode": "data",
                        "name": "example",
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
                        "address": "data.azurerm_subscription.primary",
                        "mode": "data",
                        "name": "primary",
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
            "resource": "azurerm_user_assigned_identity.user_managed_identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.app_public_ip"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "azurerm_user_assigned_identity.user_managed_identity"
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
            "resource": "azurerm_key_vault.example"
        },
        {
            "attribute": [
                "private_ip_addresses"
            ],
            "resource": "azurerm_network_interface.app_interface"
        },
        {
            "attribute": [
                "secret_id"
            ],
            "resource": "azurerm_key_vault_certificate.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "data.azurerm_subscription.primary"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.backend"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_network_interface.app_interface"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
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
                            "name": "example-nw-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "example-nw-be-htst",
                            "path": "/path1/",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 60,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "httpssetting",
                            "path": "/path1/",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
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
                            "name": "example-nw-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "example-nw-feport",
                            "port": 80
                        },
                        {
                            "name": "https-port",
                            "port": 443
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
                            "frontend_ip_configuration_name": "example-nw-feip",
                            "frontend_port_name": "example-nw-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "example-nw-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "example-nw-feip",
                            "frontend_port_name": "https-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "httpslistner",
                            "protocol": "Https",
                            "require_sni": null,
                            "ssl_certificate_name": "generated-cert",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [
                        {
                            "type": "UserAssigned"
                        }
                    ],
                    "location": "westeurope",
                    "name": "example-applicationgw",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "example-nw-beap",
                            "backend_http_settings_name": "example-nw-be-htst",
                            "http_listener_name": "example-nw-httplstn",
                            "name": "example-nw-rqrt",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "AGV1999",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "Standard_v2",
                            "tier": "Standard_v2"
                        }
                    ],
                    "ssl_certificate": [
                        {
                            "data": "",
                            "name": "generated-cert",
                            "password": ""
                        }
                    ],
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
                        },
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
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        }
                    ],
                    "identity": [
                        {
                            "identity_ids": []
                        }
                    ],
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
                    "ssl_certificate": true,
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
                            "ip_addresses": true
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        },
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
                        },
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
                    "identity": [
                        {
                            "identity_ids": true,
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
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
                    "ssl_certificate": [
                        {
                            "id": true,
                            "key_vault_secret_id": true,
                            "public_cert_data": true
                        }
                    ],
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
            "address": "azurerm_key_vault.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Create",
                                "Delete",
                                "DeleteIssuers",
                                "Get",
                                "GetIssuers",
                                "Import",
                                "List",
                                "ListIssuers",
                                "ManageContacts",
                                "ManageIssuers",
                                "Purge",
                                "SetIssuers",
                                "Update"
                            ],
                            "key_permissions": [
                                "Backup",
                                "Create",
                                "Decrypt",
                                "Delete",
                                "Encrypt",
                                "Get",
                                "Import",
                                "List",
                                "Purge",
                                "Recover",
                                "Restore",
                                "Sign",
                                "UnwrapKey",
                                "Update",
                                "Verify",
                                "WrapKey"
                            ],
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "secret_permissions": [
                                "Backup",
                                "Delete",
                                "Get",
                                "List",
                                "Purge",
                                "Recover",
                                "Restore",
                                "Set"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "westeurope",
                    "name": "keyvault1324567",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "AGV1999",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [
                        {
                            "certificate_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": [
                        {
                            "certificate_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "key_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "contact": true,
                    "id": true,
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_key_vault_access_policy.appag_key_vault_access_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_id": null,
                    "certificate_permissions": null,
                    "key_permissions": null,
                    "secret_permissions": [
                        "Get"
                    ],
                    "storage_permissions": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "secret_permissions": [
                        false
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "object_id": true,
                    "secret_permissions": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appag_key_vault_access_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_access_policy"
        },
        {
            "address": "azurerm_key_vault_certificate.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "certificate": [],
                    "certificate_policy": [
                        {
                            "issuer_parameters": [
                                {
                                    "name": "Self"
                                }
                            ],
                            "key_properties": [
                                {
                                    "exportable": true,
                                    "key_size": 2048,
                                    "key_type": "RSA",
                                    "reuse_key": true
                                }
                            ],
                            "lifetime_action": [
                                {
                                    "action": [
                                        {
                                            "action_type": "AutoRenew"
                                        }
                                    ],
                                    "trigger": [
                                        {
                                            "days_before_expiry": 3,
                                            "lifetime_percentage": null
                                        }
                                    ]
                                }
                            ],
                            "secret_properties": [
                                {
                                    "content_type": "application/x-pkcs12"
                                }
                            ],
                            "x509_certificate_properties": [
                                {
                                    "extended_key_usage": [
                                        "1.3.6.1.5.5.7.3.1"
                                    ],
                                    "key_usage": [
                                        "cRLSign",
                                        "dataEncipherment",
                                        "digitalSignature",
                                        "keyAgreement",
                                        "keyCertSign",
                                        "keyEncipherment"
                                    ],
                                    "subject": "CN=hello-world",
                                    "subject_alternative_names": [
                                        {
                                            "dns_names": [
                                                "domain.hello.world",
                                                "internal.contoso.com"
                                            ],
                                            "emails": null,
                                            "upns": null
                                        }
                                    ],
                                    "validity_in_months": 1
                                }
                            ]
                        }
                    ],
                    "name": "gen-cert",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "certificate": [],
                    "certificate_attribute": [],
                    "certificate_policy": [
                        {
                            "issuer_parameters": [
                                {}
                            ],
                            "key_properties": [
                                {}
                            ],
                            "lifetime_action": [
                                {
                                    "action": [
                                        {}
                                    ],
                                    "trigger": [
                                        {}
                                    ]
                                }
                            ],
                            "secret_properties": [
                                {}
                            ],
                            "x509_certificate_properties": [
                                {
                                    "extended_key_usage": [
                                        false
                                    ],
                                    "key_usage": [
                                        false,
                                        false,
                                        false,
                                        false,
                                        false,
                                        false
                                    ],
                                    "subject_alternative_names": [
                                        {
                                            "dns_names": [
                                                false,
                                                false
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "certificate": [],
                    "certificate_attribute": true,
                    "certificate_data": true,
                    "certificate_data_base64": true,
                    "certificate_policy": [
                        {
                            "issuer_parameters": [
                                {}
                            ],
                            "key_properties": [
                                {
                                    "curve": true
                                }
                            ],
                            "lifetime_action": [
                                {
                                    "action": [
                                        {}
                                    ],
                                    "trigger": [
                                        {}
                                    ]
                                }
                            ],
                            "secret_properties": [
                                {}
                            ],
                            "x509_certificate_properties": [
                                {
                                    "extended_key_usage": [
                                        false
                                    ],
                                    "key_usage": [
                                        false,
                                        false,
                                        false,
                                        false,
                                        false,
                                        false
                                    ],
                                    "subject_alternative_names": [
                                        {
                                            "dns_names": [
                                                false,
                                                false
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "id": true,
                    "key_vault_id": true,
                    "resource_manager_id": true,
                    "resource_manager_versionless_id": true,
                    "secret_id": true,
                    "thumbprint": true,
                    "version": true,
                    "versionless_id": true,
                    "versionless_secret_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_certificate"
        },
        {
            "address": "azurerm_network_interface.app_interface",
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
                    "location": "westeurope",
                    "name": "app-interface",
                    "resource_group_name": "AGV1999",
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
            "name": "app_interface",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_public_ip.app_public_ip",
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
                    "name": "app-public-ip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "AGV1999",
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
            "name": "app_public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
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
                    "location": "westeurope",
                    "name": "example-publicip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "AGV1999",
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
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "AGV1999",
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
            "address": "azurerm_role_assignment.assigned",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Key Vault Administrator",
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
            "name": "assigned",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                    "role_definition_name": "Key Vault Administrator",
                    "scope": "/subscriptions/1b7414a3-b034-4f7b-9708-357f1ddecd7a",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_role_assignment.kv_user_assigned",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "principal_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                    "role_definition_name": "Key Vault Administrator",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "kv_user_assigned",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "azurerm_subnet.backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "backend",
                    "resource_group_name": "AGV1999",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-nw"
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
                        "10.254.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "frontend",
                    "resource_group_name": "AGV1999",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "example-nw"
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
            "name": "frontend",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_user_assigned_identity.user_managed_identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "name": "user_managed_identity",
                    "resource_group_name": "AGV1999",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "principal_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "user_managed_identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_network.example",
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
                    "name": "example-nw",
                    "resource_group_name": "AGV1999",
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
        },
        {
            "address": "azurerm_windows_virtual_machine.app_vm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Azure@123",
                    "admin_username": "demousr",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "hotpatching_enabled": false,
                    "identity": [],
                    "license_type": null,
                    "location": "westeurope",
                    "max_bid_price": -1,
                    "name": "appvm",
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
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "AGV1999",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "WindowsServer",
                            "publisher": "MicrosoftWindowsServer",
                            "sku": "2019-Datacenter",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": null,
                    "user_data": null,
                    "virtual_machine_scale_set_id": null,
                    "vm_agent_platform_updates_enabled": false,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
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
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "boot_diagnostics": [],
                    "computer_name": true,
                    "disk_controller_type": true,
                    "gallery_application": [],
                    "id": true,
                    "identity": [],
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
                    "termination_notification": true,
                    "virtual_machine_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "app_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:10:12Z"
}