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
                    "address": "azurerm_app_service_certificate.azmmclientrg-365",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "key_vault_secret_id": {
                            "constant_value": "https://azmmkv01.vault.azure.net/secrets/MMWildcardKV2024/e1fac60ef8e54c1bba8d835bd1fb0d52"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMKV01-MMWildcardKV2024"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-365",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-br2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-br2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-create-online2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-create-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-ir2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-ir2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pioneer-online2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-pioneer-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pp2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-pp2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-rs2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-rs2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-se2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-se2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-smile-online2",
                    "expressions": {
                        "certificate_id": {
                            "references": [
                                "azurerm_app_service_certificate.azmmclientrg-365.id",
                                "azurerm_app_service_certificate.azmmclientrg-365"
                            ]
                        },
                        "hostname_binding_id": {
                            "references": [
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2.id",
                                "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2"
                            ]
                        },
                        "ssl_state": {
                            "constant_value": "SniEnabled"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-smile-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_certificate_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-187",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-182"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "dt-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "dt-matchmakersoftware.azurewebsites.net"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-187",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-188",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-182"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "dt-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "dt.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-188",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-371",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-366"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "lta-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "lta-matchmakersoftware.azurewebsites.net"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-371",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-372",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-366"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "lta-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "lta.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-372",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-6",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-1"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "applehealth-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "applehealth-matchmakersoftware.azurewebsites.net"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-6",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-7",
                    "depends_on": [
                        "azurerm_windows_web_app.azmmclientrg-1"
                    ],
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "applehealth-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "applehealth.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-7",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "br-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "br.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-br2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "create-online-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "create-online.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-create-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "ir-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "ir.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-ir2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "pioneer-online-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "pioneer-online.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-pioneer-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "pp-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "pp.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-pp2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "rs-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "rs.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-rs2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "se-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "se.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-se2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2",
                    "expressions": {
                        "app_service_name": {
                            "constant_value": "smile-online-matchmakersoftware"
                        },
                        "hostname": {
                            "constant_value": "smile-online.matchmakersoftware.com"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-smile-online2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_app_service_custom_hostname_binding"
                },
                {
                    "address": "azurerm_application_gateway.res-4",
                    "depends_on": [
                        "azurerm_user_assigned_identity.res-3",
                        "azurerm_public_ip.res-8",
                        "azurerm_subnet.res-10"
                    ],
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "applehealth-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "applehealth-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "dt-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "dt-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "lta-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "lta-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "ir-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "ir-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "rs-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "rs-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "se-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "se-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "smile-online-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "smile-online-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "create-online-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "create-online-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "br-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "br-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "pp-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "pp-backendpool"
                                }
                            },
                            {
                                "fqdns": {
                                    "constant_value": [
                                        "pioneer-online-matchmakersoftware.azurewebsites.net"
                                    ]
                                },
                                "name": {
                                    "constant_value": "pioneer-online-backendpool"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "applehealth-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "applehealth-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "dt-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "dt-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "lta-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "lta-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "ir-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "ir-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "rs-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "rs-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "se-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "se-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "smile-online-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "smile-online-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "create-online-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "create-online-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "br-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "br-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "pp-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "pp-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            },
                            {
                                "affinity_cookie_name": {
                                    "constant_value": "ApplicationGatewayAffinity"
                                },
                                "cookie_based_affinity": {
                                    "constant_value": "Enabled"
                                },
                                "name": {
                                    "constant_value": "pioneer-online-backendsetting"
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "probe_name": {
                                    "constant_value": "pioneer-online-healthprobe"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
                                }
                            }
                        ],
                        "enable_http2": {
                            "constant_value": true
                        },
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "public_ip_address_id": {
                                    "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/publicIPAddresses/AZMMAGW01PIP"
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "port_443"
                                },
                                "port": {
                                    "constant_value": 443
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "port_80"
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "appGatewayIpConfig"
                                },
                                "subnet_id": {
                                    "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AGWSNET01"
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "applehealth.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "applehealth-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "dt.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "dt-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "lta.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "lta-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "ir.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "ir-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "rs.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "rs-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "se.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "se-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "smile-online.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "smile-online-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "create-online.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "create-online-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "br.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "br-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "pp.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "pp-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            },
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "appGwPublicFrontendIpIPv4"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port_443"
                                },
                                "host_name": {
                                    "constant_value": "pioneer-online.matchmakersoftware.com"
                                },
                                "name": {
                                    "constant_value": "pioneer-online-listenerhttps"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "require_sni": {
                                    "constant_value": true
                                },
                                "ssl_certificate_name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AppGWManagedID"
                                    ]
                                },
                                "type": {
                                    "constant_value": "UserAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMAGW01"
                        },
                        "probe": [
                            {
                                "host": {
                                    "constant_value": "applehealth-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "applehealth-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "dt-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "dt-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "lta-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "lta-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "ir-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "ir-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "rs-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "rs-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "se-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "se-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "smile-online-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "smile-online-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "create-online-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "create-online-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "br-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "br-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "pp-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "pp-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                            },
                            {
                                "host": {
                                    "constant_value": "pioneer-online-matchmakersoftware.azurewebsites.net"
                                },
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "status_code": {
                                            "constant_value": [
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "pioneer-online-healthprobe"
                                },
                                "path": {
                                    "constant_value": "/"
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
                                    "constant_value": "applehealth-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "applehealth-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "applehealth-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "applehealth-routingrule"
                                },
                                "priority": {
                                    "constant_value": 3
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "dt-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "dt-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "dt-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "dt-routingrule"
                                },
                                "priority": {
                                    "constant_value": 2
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "lta-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "lta-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "lta-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "lta-routingrule"
                                },
                                "priority": {
                                    "constant_value": 1
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "ir-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "ir-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "ir-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "ir-routingrule"
                                },
                                "priority": {
                                    "constant_value": 4
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "rs-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "rs-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "rs-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "rs-routingrule"
                                },
                                "priority": {
                                    "constant_value": 5
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "se-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "se-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "se-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "se-routingrule"
                                },
                                "priority": {
                                    "constant_value": 7
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "smile-online-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "smile-online-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "smile-online-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "smile-online-routingrule"
                                },
                                "priority": {
                                    "constant_value": 6
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "create-online-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "create-online-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "create-online-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "create-online-routingrule"
                                },
                                "priority": {
                                    "constant_value": 8
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "br-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "br-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "br-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "br-routingrule"
                                },
                                "priority": {
                                    "constant_value": 10
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "pp-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "pp-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "pp-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "pp-routingrule"
                                },
                                "priority": {
                                    "constant_value": 11
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "constant_value": "pioneer-online-backendpool"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "pioneer-online-backendsetting"
                                },
                                "http_listener_name": {
                                    "constant_value": "pioneer-online-listenerhttps"
                                },
                                "name": {
                                    "constant_value": "pioneer-online-routingrule"
                                },
                                "priority": {
                                    "constant_value": 12
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 1
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
                                        "data.azurerm_key_vault_certificate.res-2.secret_id",
                                        "data.azurerm_key_vault_certificate.res-2"
                                    ]
                                },
                                "name": {
                                    "constant_value": "MMWildcard2024"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "res-4",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-364",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "lta-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-364",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-br",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "br-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-br",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-create-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "create-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-create-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-ir",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "ir-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-ir",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pioneer-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "pioneer-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-pioneer-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pp",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "pp-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-pp",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-rs",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "rs-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-rs",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-se",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "se-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-se",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-smile-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "smile-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-smile-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_application_insights.res-16",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "application_type": {
                            "constant_value": "web"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMApp01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sampling_percentage": {
                            "constant_value": 0
                        },
                        "workspace_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                        }
                    },
                    "mode": "managed",
                    "name": "res-16",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_application_insights"
                },
                {
                    "address": "azurerm_key_vault.res-1",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMKV01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "standard"
                        },
                        "tenant_id": {
                            "constant_value": "3a243d17-3d9f-43e2-96a9-222d4b6fada1"
                        }
                    },
                    "mode": "managed",
                    "name": "res-1",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_key_vault"
                },
                {
                    "address": "azurerm_monitor_action_group.res-15",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "arm_role_receiver": [
                            {
                                "name": {
                                    "constant_value": "Monitoring Contributor"
                                },
                                "role_id": {
                                    "constant_value": "749f88d5-cbae-40b8-bcfc-e573ddc772fa"
                                },
                                "use_common_alert_schema": {
                                    "constant_value": true
                                }
                            },
                            {
                                "name": {
                                    "constant_value": "Monitoring Reader"
                                },
                                "role_id": {
                                    "constant_value": "43d0d8ad-25c7-4714-9337-8ba259a9fe05"
                                },
                                "use_common_alert_schema": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "Application Insights Smart Detection"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "short_name": {
                            "constant_value": "SmartDetect"
                        }
                    },
                    "mode": "managed",
                    "name": "res-15",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_action_group"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-363",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - lta-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/lta-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-363",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-br",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - br-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/br-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-br",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-create-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - create-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/create-online-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-create-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-ir",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - ir-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/ir-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-ir",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pioneer-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - pioneer-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pioneer-online-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-pioneer-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pp",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - pp-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pp-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-pp",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-rs",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - rs-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/rs-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-rs",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-se",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - se-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/se-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-se",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-smile-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - smile-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/smile-online-matchmakersoftware"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-smile-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.res-14",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "action_group": [
                            {
                                "ids": {
                                    "constant_value": [
                                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                    ]
                                }
                            }
                        ],
                        "description": {
                            "constant_value": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls."
                        },
                        "detector_type": {
                            "constant_value": "FailureAnomaliesDetector"
                        },
                        "frequency": {
                            "constant_value": "PT1M"
                        },
                        "name": {
                            "constant_value": "Failure Anomalies - AZMMApp01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "scope_resource_ids": {
                            "constant_value": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmcorerg01/providers/microsoft.insights/components/azmmapp01"
                            ]
                        },
                        "severity": {
                            "constant_value": "Sev3"
                        }
                    },
                    "mode": "managed",
                    "name": "res-14",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_monitor_smart_detector_alert_rule"
                },
                {
                    "address": "azurerm_private_dns_a_record.res-17",
                    "depends_on": [
                        "azurerm_private_dns_zone.res-5"
                    ],
                    "expressions": {
                        "name": {
                            "constant_value": "azmmsql01"
                        },
                        "records": {
                            "constant_value": [
                                "10.191.2.4"
                            ]
                        },
                        "resource_group_name": {
                            "constant_value": "azmmcorerg01"
                        },
                        "ttl": {
                            "constant_value": 3600
                        },
                        "zone_name": {
                            "constant_value": "privatelink.database.windows.net"
                        }
                    },
                    "mode": "managed",
                    "name": "res-17",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_a_record"
                },
                {
                    "address": "azurerm_private_dns_zone.res-5",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "name": {
                            "constant_value": "privatelink.database.windows.net"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-5",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.res-6",
                    "depends_on": [
                        "azurerm_private_dns_zone.res-5",
                        "azurerm_virtual_network.res-9"
                    ],
                    "expressions": {
                        "name": {
                            "constant_value": "mp2zoxnjsbkyw"
                        },
                        "private_dns_zone_name": {
                            "constant_value": "privatelink.database.windows.net"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "virtual_network_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-6",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone_virtual_network_link"
                },
                {
                    "address": "azurerm_private_endpoint.res-7",
                    "depends_on": [
                        "azurerm_subnet.res-12"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMSQL01PEP01"
                        },
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "AZMMSQL01PEP01"
                                },
                                "private_connection_resource_id": {
                                    "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG02/providers/Microsoft.Sql/servers/azmmsql01"
                                },
                                "subresource_names": {
                                    "constant_value": [
                                        "SqlServer"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/SQLSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-7",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_endpoint"
                },
                {
                    "address": "azurerm_public_ip.res-8",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMAGW01PIP"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "mode": "managed",
                    "name": "res-8",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.azmmclientrg-0",
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMClientApps"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-0",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_resource_group.res-0",
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMCoreRG01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-0",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_service_plan.res-13",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMASP01"
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "S1"
                        }
                    },
                    "mode": "managed",
                    "name": "res-13",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_service_plan.webappsp2",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMASP02"
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "P0v3"
                        }
                    },
                    "mode": "managed",
                    "name": "webappsp2",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_service_plan.webappsp3",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMASP03"
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "S1"
                        }
                    },
                    "mode": "managed",
                    "name": "webappsp3",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_service_plan.webappsp4",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMASP04"
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "P0v3"
                        }
                    },
                    "mode": "managed",
                    "name": "webappsp4",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_service_plan.webappsp5",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMASP05"
                        },
                        "os_type": {
                            "constant_value": "Windows"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "sku_name": {
                            "constant_value": "S1"
                        }
                    },
                    "mode": "managed",
                    "name": "webappsp5",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_subnet.res-10",
                    "depends_on": [
                        "azurerm_virtual_network.res-9"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.191.3.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AGWSNET01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "virtual_network_name": {
                            "constant_value": "AZMMVNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-10",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.res-11",
                    "depends_on": [
                        "azurerm_virtual_network.res-9"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.191.1.0/24"
                            ]
                        },
                        "delegation": [
                            {
                                "name": {
                                    "constant_value": "delegation"
                                },
                                "service_delegation": [
                                    {
                                        "actions": {
                                            "constant_value": [
                                                "Microsoft.Network/virtualNetworks/subnets/action"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "Microsoft.Web/serverFarms"
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "constant_value": "AppSNET01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "service_endpoints": {
                            "constant_value": [
                                "Microsoft.Storage"
                            ]
                        },
                        "virtual_network_name": {
                            "constant_value": "AZMMVNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-11",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.res-12",
                    "depends_on": [
                        "azurerm_virtual_network.res-9"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.191.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "SQLSNET01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        },
                        "virtual_network_name": {
                            "constant_value": "AZMMVNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-12",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_user_assigned_identity.res-3",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "location": {
                            "constant_value": "uksouth"
                        },
                        "name": {
                            "constant_value": "AppGWManagedID"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-3",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "azurerm_virtual_network.res-9",
                    "depends_on": [
                        "azurerm_resource_group.res-0"
                    ],
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.191.0.0/16"
                            ]
                        },
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "name": {
                            "constant_value": "AZMMVNET01"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMCoreRG01"
                        }
                    },
                    "mode": "managed",
                    "name": "res-9",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-1",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "MM_DEFAULT_VERSION": "mmakerah",
                                "MM_EXTENSION_VERSION": "&_#;|,N,FTX{SQs\\i*{n(c(x\\Z|A1qS,^VVjX#[20{Z7)7;$f6",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17008;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "applehealth-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-1",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-182",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "MM_DEFAULT_VERSION": "mmakerdt",
                                "MM_EXTENSION_VERSION": "&)ku4\\92MxA_j|>*V,YS(@(#3=Ivs4<*0k^mwzpiS7JWe4QjC(",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17009;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "dt-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "AZMMClientApps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-182",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-366",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerlta",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "lta-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-366",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-br",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerbr",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "br-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-br",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-create-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakercreate-online",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "create-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-create-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-ir",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerir",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "ir-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-ir",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pioneer-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerpioneer-online",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "pioneer-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP05"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-pioneer-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pp",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerpp",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "pp-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-pp",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-rs",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerrs",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "rs-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-rs",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-se",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakerse",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "se-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP04"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-se",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-smile-online",
                    "depends_on": [
                        "azurerm_resource_group.azmmclientrg-0"
                    ],
                    "expressions": {
                        "app_settings": {
                            "constant_value": {
                                "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                                "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                                "MM_DEFAULT_VERSION": "mmakersmile-online",
                                "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                                "WEBSITE_TIME_ZONE": "GMT Standard Time",
                                "XDT_MicrosoftApplicationInsights_Mode": "default"
                            }
                        },
                        "client_affinity_enabled": {
                            "constant_value": true
                        },
                        "connection_string": [
                            {
                                "name": {
                                    "constant_value": "mmakerConnString"
                                },
                                "type": {
                                    "constant_value": "SQLAzure"
                                },
                                "value": {
                                    "constant_value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                                }
                            }
                        ],
                        "https_only": {
                            "constant_value": true
                        },
                        "identity": [
                            {
                                "type": {
                                    "constant_value": "SystemAssigned"
                                }
                            }
                        ],
                        "location": {
                            "constant_value": "northeurope"
                        },
                        "logs": [
                            {
                                "detailed_error_messages": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "name": {
                            "constant_value": "smile-online-matchmakersoftware"
                        },
                        "resource_group_name": {
                            "constant_value": "azmmclientapps"
                        },
                        "service_plan_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03"
                        },
                        "site_config": [
                            {
                                "ftps_state": {
                                    "constant_value": "FtpsOnly"
                                },
                                "ip_restriction": [
                                    {
                                        "description": {
                                            "constant_value": "AccessFromAppGateway"
                                        },
                                        "priority": {
                                            "constant_value": 200
                                        },
                                        "service_tag": {
                                            "constant_value": "GatewayManager"
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "Applicaiton Gateway FrontEnd"
                                        },
                                        "ip_address": {
                                            "constant_value": "98.71.72.6/32"
                                        },
                                        "priority": {
                                            "constant_value": 300
                                        }
                                    },
                                    {
                                        "description": {
                                            "constant_value": "MatchMaker Office"
                                        },
                                        "ip_address": {
                                            "constant_value": "217.37.57.250/32"
                                        },
                                        "priority": {
                                            "constant_value": 400
                                        }
                                    }
                                ],
                                "ip_restriction_default_action": {
                                    "constant_value": "Deny"
                                },
                                "use_32_bit_worker": {
                                    "constant_value": false
                                },
                                "vnet_route_all_enabled": {
                                    "constant_value": true
                                },
                                "websockets_enabled": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": {
                                    "constant_value": [
                                        "WEBSITE_TIME_ZONE"
                                    ]
                                }
                            }
                        ],
                        "virtual_network_subnet_id": {
                            "constant_value": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01"
                        }
                    },
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-smile-online",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_windows_web_app"
                },
                {
                    "address": "data.azurerm_key_vault_certificate.res-2",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "azurerm_key_vault.res-1.id",
                                "azurerm_key_vault.res-1"
                            ]
                        },
                        "name": {
                            "constant_value": "AZMMKV01-MMWildcardKV2024"
                        }
                    },
                    "mode": "data",
                    "name": "res-2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_certificate"
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
                    "address": "azurerm_app_service_certificate.azmmclientrg-365",
                    "mode": "managed",
                    "name": "azmmclientrg-365",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "host_names": [],
                        "password": true,
                        "pfx_blob": true
                    },
                    "type": "azurerm_app_service_certificate",
                    "values": {
                        "app_service_plan_id": null,
                        "key_vault_id": null,
                        "key_vault_secret_id": "https://azmmkv01.vault.azure.net/secrets/MMWildcardKV2024/e1fac60ef8e54c1bba8d835bd1fb0d52",
                        "location": "northeurope",
                        "name": "AZMMKV01-MMWildcardKV2024",
                        "password": null,
                        "pfx_blob": null,
                        "resource_group_name": "azmmclientapps",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-br2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-br2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-create-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-create-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-ir2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-ir2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pioneer-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-pioneer-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pp2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-pp2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-rs2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-rs2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-se2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-se2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-smile-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-cert-webapp-smile-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_certificate_binding",
                    "values": {
                        "ssl_state": "SniEnabled",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-187",
                    "mode": "managed",
                    "name": "azmmclientrg-187",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "dt-matchmakersoftware",
                        "hostname": "dt-matchmakersoftware.azurewebsites.net",
                        "resource_group_name": "AZMMClientApps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-188",
                    "mode": "managed",
                    "name": "azmmclientrg-188",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "dt-matchmakersoftware",
                        "hostname": "dt.matchmakersoftware.com",
                        "resource_group_name": "AZMMClientApps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-371",
                    "mode": "managed",
                    "name": "azmmclientrg-371",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "lta-matchmakersoftware",
                        "hostname": "lta-matchmakersoftware.azurewebsites.net",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-372",
                    "mode": "managed",
                    "name": "azmmclientrg-372",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "lta-matchmakersoftware",
                        "hostname": "lta.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-6",
                    "mode": "managed",
                    "name": "azmmclientrg-6",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "applehealth-matchmakersoftware",
                        "hostname": "applehealth-matchmakersoftware.azurewebsites.net",
                        "resource_group_name": "AZMMClientApps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-7",
                    "mode": "managed",
                    "name": "azmmclientrg-7",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "applehealth-matchmakersoftware",
                        "hostname": "applehealth.matchmakersoftware.com",
                        "resource_group_name": "AZMMClientApps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-br2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "br-matchmakersoftware",
                        "hostname": "br.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-create-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "create-online-matchmakersoftware",
                        "hostname": "create-online.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-ir2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "ir-matchmakersoftware",
                        "hostname": "ir.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-pioneer-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "pioneer-online-matchmakersoftware",
                        "hostname": "pioneer-online.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-pp2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "pp-matchmakersoftware",
                        "hostname": "pp.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-rs2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "rs-matchmakersoftware",
                        "hostname": "rs.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-se2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "se-matchmakersoftware",
                        "hostname": "se.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2",
                    "mode": "managed",
                    "name": "azmmclientrg-custombinding-webapp-smile-online2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_app_service_custom_hostname_binding",
                    "values": {
                        "app_service_name": "smile-online-matchmakersoftware",
                        "hostname": "smile-online.matchmakersoftware.com",
                        "resource_group_name": "azmmclientapps",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_application_gateway.res-4",
                    "mode": "managed",
                    "name": "res-4",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
                                "ip_addresses": []
                            },
                            {
                                "fqdns": [
                                    false
                                ],
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
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
                            {
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "trusted_root_certificate_names": []
                            },
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
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
                            {
                                "custom_error_configuration": [],
                                "host_names": []
                            },
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
                                "identity_ids": [
                                    false
                                ]
                            }
                        ],
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
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
                            {
                                "match": [
                                    {
                                        "status_code": [
                                            false
                                        ]
                                    }
                                ]
                            },
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
                            {},
                            {},
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
                                "fqdns": [
                                    "applehealth-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "applehealth-backendpool"
                            },
                            {
                                "fqdns": [
                                    "br-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "br-backendpool"
                            },
                            {
                                "fqdns": [
                                    "create-online-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "create-online-backendpool"
                            },
                            {
                                "fqdns": [
                                    "dt-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "dt-backendpool"
                            },
                            {
                                "fqdns": [
                                    "ir-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "ir-backendpool"
                            },
                            {
                                "fqdns": [
                                    "lta-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "lta-backendpool"
                            },
                            {
                                "fqdns": [
                                    "pioneer-online-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "pioneer-online-backendpool"
                            },
                            {
                                "fqdns": [
                                    "pp-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "pp-backendpool"
                            },
                            {
                                "fqdns": [
                                    "rs-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "rs-backendpool"
                            },
                            {
                                "fqdns": [
                                    "se-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "se-backendpool"
                            },
                            {
                                "fqdns": [
                                    "smile-online-matchmakersoftware.azurewebsites.net"
                                ],
                                "ip_addresses": [],
                                "name": "smile-online-backendpool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "applehealth-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "applehealth-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "br-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "br-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "create-online-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "create-online-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "dt-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "dt-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "ir-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "ir-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "lta-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "lta-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "pioneer-online-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "pioneer-online-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "pp-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "pp-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "rs-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "rs-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "se-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "se-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "ApplicationGatewayAffinity",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "smile-online-backendsetting",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "smile-online-healthprobe",
                                "protocol": "Https",
                                "request_timeout": 20,
                                "trusted_root_certificate_names": []
                            }
                        ],
                        "custom_error_configuration": [],
                        "enable_http2": true,
                        "fips_enabled": null,
                        "firewall_policy_id": null,
                        "force_firewall_policy_association": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "appGwPublicFrontendIpIPv4",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "public_ip_address_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/publicIPAddresses/AZMMAGW01PIP",
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "port_443",
                                "port": 443
                            },
                            {
                                "name": "port_80",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "appGatewayIpConfig",
                                "subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AGWSNET01"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "applehealth.matchmakersoftware.com",
                                "host_names": [],
                                "name": "applehealth-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "br.matchmakersoftware.com",
                                "host_names": [],
                                "name": "br-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "create-online.matchmakersoftware.com",
                                "host_names": [],
                                "name": "create-online-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "dt.matchmakersoftware.com",
                                "host_names": [],
                                "name": "dt-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "ir.matchmakersoftware.com",
                                "host_names": [],
                                "name": "ir-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "lta.matchmakersoftware.com",
                                "host_names": [],
                                "name": "lta-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "pioneer-online.matchmakersoftware.com",
                                "host_names": [],
                                "name": "pioneer-online-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "pp.matchmakersoftware.com",
                                "host_names": [],
                                "name": "pp-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "rs.matchmakersoftware.com",
                                "host_names": [],
                                "name": "rs-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "se.matchmakersoftware.com",
                                "host_names": [],
                                "name": "se-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                                "frontend_port_name": "port_443",
                                "host_name": "smile-online.matchmakersoftware.com",
                                "host_names": [],
                                "name": "smile-online-listenerhttps",
                                "protocol": "Https",
                                "require_sni": true,
                                "ssl_certificate_name": "MMWildcard2024",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [
                            {
                                "identity_ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AppGWManagedID"
                                ],
                                "type": "UserAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "name": "AZMMAGW01",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "applehealth-matchmakersoftware.azurewebsites.net",
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
                                "name": "applehealth-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "br-matchmakersoftware.azurewebsites.net",
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
                                "name": "br-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "create-online-matchmakersoftware.azurewebsites.net",
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
                                "name": "create-online-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "dt-matchmakersoftware.azurewebsites.net",
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
                                "name": "dt-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "ir-matchmakersoftware.azurewebsites.net",
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
                                "name": "ir-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "lta-matchmakersoftware.azurewebsites.net",
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
                                "name": "lta-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "pioneer-online-matchmakersoftware.azurewebsites.net",
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
                                "name": "pioneer-online-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "pp-matchmakersoftware.azurewebsites.net",
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
                                "name": "pp-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "rs-matchmakersoftware.azurewebsites.net",
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
                                "name": "rs-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "se-matchmakersoftware.azurewebsites.net",
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
                                "name": "se-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            },
                            {
                                "host": "smile-online-matchmakersoftware.azurewebsites.net",
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
                                "name": "smile-online-healthprobe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": false,
                                "port": null,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "applehealth-backendpool",
                                "backend_http_settings_name": "applehealth-backendsetting",
                                "http_listener_name": "applehealth-listenerhttps",
                                "name": "applehealth-routingrule",
                                "priority": 3,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "br-backendpool",
                                "backend_http_settings_name": "br-backendsetting",
                                "http_listener_name": "br-listenerhttps",
                                "name": "br-routingrule",
                                "priority": 10,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "create-online-backendpool",
                                "backend_http_settings_name": "create-online-backendsetting",
                                "http_listener_name": "create-online-listenerhttps",
                                "name": "create-online-routingrule",
                                "priority": 8,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "dt-backendpool",
                                "backend_http_settings_name": "dt-backendsetting",
                                "http_listener_name": "dt-listenerhttps",
                                "name": "dt-routingrule",
                                "priority": 2,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "ir-backendpool",
                                "backend_http_settings_name": "ir-backendsetting",
                                "http_listener_name": "ir-listenerhttps",
                                "name": "ir-routingrule",
                                "priority": 4,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "lta-backendpool",
                                "backend_http_settings_name": "lta-backendsetting",
                                "http_listener_name": "lta-listenerhttps",
                                "name": "lta-routingrule",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "pioneer-online-backendpool",
                                "backend_http_settings_name": "pioneer-online-backendsetting",
                                "http_listener_name": "pioneer-online-listenerhttps",
                                "name": "pioneer-online-routingrule",
                                "priority": 12,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "pp-backendpool",
                                "backend_http_settings_name": "pp-backendsetting",
                                "http_listener_name": "pp-listenerhttps",
                                "name": "pp-routingrule",
                                "priority": 11,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "rs-backendpool",
                                "backend_http_settings_name": "rs-backendsetting",
                                "http_listener_name": "rs-listenerhttps",
                                "name": "rs-routingrule",
                                "priority": 5,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "se-backendpool",
                                "backend_http_settings_name": "se-backendsetting",
                                "http_listener_name": "se-listenerhttps",
                                "name": "se-routingrule",
                                "priority": 7,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "smile-online-backendpool",
                                "backend_http_settings_name": "smile-online-backendsetting",
                                "http_listener_name": "smile-online-listenerhttps",
                                "name": "smile-online-routingrule",
                                "priority": 6,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "AZMMCoreRG01",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 1,
                                "name": "Standard_v2",
                                "tier": "Standard_v2"
                            }
                        ],
                        "ssl_certificate": [
                            {
                                "data": "",
                                "name": "MMWildcard2024",
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
                    "address": "azurerm_application_insights.azmmclientrg-364",
                    "mode": "managed",
                    "name": "azmmclientrg-364",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "lta-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-br",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-br",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "br-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-create-online",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-create-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "create-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-ir",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-ir",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "ir-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pioneer-online",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-pioneer-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "pioneer-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pp",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-pp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "pp-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-rs",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-rs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "rs-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-se",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-se",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "se-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-smile-online",
                    "mode": "managed",
                    "name": "azmmclientrg-appinsight-webapp-smile-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "smile-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_application_insights.res-16",
                    "mode": "managed",
                    "name": "res-16",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "connection_string": true,
                        "instrumentation_key": true
                    },
                    "type": "azurerm_application_insights",
                    "values": {
                        "application_type": "web",
                        "disable_ip_masking": false,
                        "force_customer_storage_for_profiler": false,
                        "internet_ingestion_enabled": true,
                        "internet_query_enabled": true,
                        "local_authentication_disabled": false,
                        "location": "northeurope",
                        "name": "AZMMApp01",
                        "resource_group_name": "AZMMCoreRG01",
                        "retention_in_days": 90,
                        "sampling_percentage": 0,
                        "tags": null,
                        "timeouts": null,
                        "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
                    }
                },
                {
                    "address": "azurerm_key_vault.res-1",
                    "mode": "managed",
                    "name": "res-1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": null,
                        "enabled_for_template_deployment": null,
                        "location": "northeurope",
                        "name": "AZMMKV01",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": null,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 90,
                        "tags": null,
                        "tenant_id": "3a243d17-3d9f-43e2-96a9-222d4b6fada1",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_action_group.res-15",
                    "mode": "managed",
                    "name": "res-15",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "arm_role_receiver": [
                            {},
                            {}
                        ],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [],
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "logic_app_receiver": [],
                        "sms_receiver": [],
                        "voice_receiver": [],
                        "webhook_receiver": []
                    },
                    "type": "azurerm_monitor_action_group",
                    "values": {
                        "arm_role_receiver": [
                            {
                                "name": "Monitoring Contributor",
                                "role_id": "749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                                "use_common_alert_schema": true
                            },
                            {
                                "name": "Monitoring Reader",
                                "role_id": "43d0d8ad-25c7-4714-9337-8ba259a9fe05",
                                "use_common_alert_schema": true
                            }
                        ],
                        "automation_runbook_receiver": [],
                        "azure_app_push_receiver": [],
                        "azure_function_receiver": [],
                        "email_receiver": [],
                        "enabled": true,
                        "event_hub_receiver": [],
                        "itsm_receiver": [],
                        "location": "global",
                        "logic_app_receiver": [],
                        "name": "Application Insights Smart Detection",
                        "resource_group_name": "AZMMCoreRG01",
                        "short_name": "SmartDetect",
                        "sms_receiver": [],
                        "tags": null,
                        "timeouts": null,
                        "voice_receiver": [],
                        "webhook_receiver": []
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-363",
                    "mode": "managed",
                    "name": "azmmclientrg-363",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - lta-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/lta-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-br",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-br",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - br-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/br-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-create-online",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-create-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - create-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/create-online-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-ir",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-ir",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - ir-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/ir-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pioneer-online",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-pioneer-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - pioneer-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pioneer-online-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pp",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-pp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - pp-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pp-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-rs",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-rs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - rs-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/rs-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-se",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-se",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - se-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/se-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-smile-online",
                    "mode": "managed",
                    "name": "azmmclientrg-smartalert-webapp-smile-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - smile-online-matchmakersoftware",
                        "resource_group_name": "AZMMClientApps",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/smile-online-matchmakersoftware"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_monitor_smart_detector_alert_rule.res-14",
                    "mode": "managed",
                    "name": "res-14",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "action_group": [
                            {
                                "ids": [
                                    false
                                ]
                            }
                        ],
                        "scope_resource_ids": [
                            false
                        ]
                    },
                    "type": "azurerm_monitor_smart_detector_alert_rule",
                    "values": {
                        "action_group": [
                            {
                                "email_subject": null,
                                "ids": [
                                    "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                                ],
                                "webhook_payload": null
                            }
                        ],
                        "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                        "detector_type": "FailureAnomaliesDetector",
                        "enabled": true,
                        "frequency": "PT1M",
                        "name": "Failure Anomalies - AZMMApp01",
                        "resource_group_name": "AZMMCoreRG01",
                        "scope_resource_ids": [
                            "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmcorerg01/providers/microsoft.insights/components/azmmapp01"
                        ],
                        "severity": "Sev3",
                        "tags": null,
                        "throttling_duration": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_a_record.res-17",
                    "mode": "managed",
                    "name": "res-17",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "records": [
                            false
                        ]
                    },
                    "type": "azurerm_private_dns_a_record",
                    "values": {
                        "name": "azmmsql01",
                        "records": [
                            "10.191.2.4"
                        ],
                        "resource_group_name": "azmmcorerg01",
                        "tags": null,
                        "timeouts": null,
                        "ttl": 3600,
                        "zone_name": "privatelink.database.windows.net"
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.res-5",
                    "mode": "managed",
                    "name": "res-5",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": []
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "name": "privatelink.database.windows.net",
                        "resource_group_name": "AZMMCoreRG01",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.res-6",
                    "mode": "managed",
                    "name": "res-6",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_private_dns_zone_virtual_network_link",
                    "values": {
                        "name": "mp2zoxnjsbkyw",
                        "private_dns_zone_name": "privatelink.database.windows.net",
                        "registration_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01"
                    }
                },
                {
                    "address": "azurerm_private_endpoint.res-7",
                    "mode": "managed",
                    "name": "res-7",
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
                        "location": "northeurope",
                        "name": "AZMMSQL01PEP01",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "AZMMSQL01PEP01",
                                "private_connection_resource_alias": null,
                                "private_connection_resource_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG02/providers/Microsoft.Sql/servers/azmmsql01",
                                "request_message": null,
                                "subresource_names": [
                                    "SqlServer"
                                ]
                            }
                        ],
                        "resource_group_name": "AZMMCoreRG01",
                        "subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/SQLSNET01",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.res-8",
                    "mode": "managed",
                    "name": "res-8",
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
                        "name": "AZMMAGW01PIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "AZMMCoreRG01",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.azmmclientrg-0",
                    "mode": "managed",
                    "name": "azmmclientrg-0",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "northeurope",
                        "managed_by": null,
                        "name": "AZMMClientApps",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_resource_group.res-0",
                    "mode": "managed",
                    "name": "res-0",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "northeurope",
                        "managed_by": null,
                        "name": "AZMMCoreRG01",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_service_plan.res-13",
                    "mode": "managed",
                    "name": "res-13",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "northeurope",
                        "name": "AZMMASP01",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "S1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webappsp2",
                    "mode": "managed",
                    "name": "webappsp2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "northeurope",
                        "name": "AZMMASP02",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "P0v3",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webappsp3",
                    "mode": "managed",
                    "name": "webappsp3",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "northeurope",
                        "name": "AZMMASP03",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "S1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webappsp4",
                    "mode": "managed",
                    "name": "webappsp4",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "northeurope",
                        "name": "AZMMASP04",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "P0v3",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_service_plan.webappsp5",
                    "mode": "managed",
                    "name": "webappsp5",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "northeurope",
                        "name": "AZMMASP05",
                        "os_type": "Windows",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "AZMMCoreRG01",
                        "sku_name": "S1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
                    }
                },
                {
                    "address": "azurerm_subnet.res-10",
                    "mode": "managed",
                    "name": "res-10",
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
                            "10.191.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AGWSNET01",
                        "resource_group_name": "AZMMCoreRG01",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "AZMMVNET01"
                    }
                },
                {
                    "address": "azurerm_subnet.res-11",
                    "mode": "managed",
                    "name": "res-11",
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
                            "10.191.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [
                            {
                                "name": "delegation",
                                "service_delegation": [
                                    {
                                        "actions": [
                                            "Microsoft.Network/virtualNetworks/subnets/action"
                                        ],
                                        "name": "Microsoft.Web/serverFarms"
                                    }
                                ]
                            }
                        ],
                        "name": "AppSNET01",
                        "resource_group_name": "AZMMCoreRG01",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": [
                            "Microsoft.Storage"
                        ],
                        "timeouts": null,
                        "virtual_network_name": "AZMMVNET01"
                    }
                },
                {
                    "address": "azurerm_subnet.res-12",
                    "mode": "managed",
                    "name": "res-12",
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
                            "10.191.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "SQLSNET01",
                        "resource_group_name": "AZMMCoreRG01",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "AZMMVNET01"
                    }
                },
                {
                    "address": "azurerm_user_assigned_identity.res-3",
                    "mode": "managed",
                    "name": "res-3",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "uksouth",
                        "name": "AppGWManagedID",
                        "resource_group_name": "AZMMCoreRG01",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.res-9",
                    "mode": "managed",
                    "name": "res-9",
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
                            "10.191.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "northeurope",
                        "name": "AZMMVNET01",
                        "resource_group_name": "AZMMCoreRG01",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-1",
                    "mode": "managed",
                    "name": "azmmclientrg-1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "MM_DEFAULT_VERSION": "mmakerah",
                            "MM_EXTENSION_VERSION": "&_#;|,N,FTX{SQs\\i*{n(c(x\\Z|A1qS,^VVjX#[20{Z7)7;$f6",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17008;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "applehealth-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "AZMMClientApps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-182",
                    "mode": "managed",
                    "name": "azmmclientrg-182",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "MM_DEFAULT_VERSION": "mmakerdt",
                            "MM_EXTENSION_VERSION": "&)ku4\\92MxA_j|>*V,YS(@(#3=Ivs4<*0k^mwzpiS7JWe4QjC(",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17009;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "dt-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "AZMMClientApps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-366",
                    "mode": "managed",
                    "name": "azmmclientrg-366",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerlta",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "lta-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-br",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-br",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerbr",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "br-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-create-online",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-create-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakercreate-online",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "create-online-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-ir",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-ir",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerir",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "ir-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pioneer-online",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-pioneer-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerpioneer-online",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "pioneer-online-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP05",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pp",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-pp",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerpp",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "pp-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-rs",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-rs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerrs",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "rs-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-se",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-se",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakerse",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "se-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP04",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_windows_web_app.azmmclientrg-webbapp-smile-online",
                    "mode": "managed",
                    "name": "azmmclientrg-webbapp-smile-online",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "app_settings": {},
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": true,
                        "custom_domain_verification_id": true,
                        "identity": [
                            {}
                        ],
                        "logs": [
                            {
                                "application_logs": [],
                                "http_logs": []
                            }
                        ],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "handler_mapping": [],
                                "ip_restriction": [
                                    {},
                                    {},
                                    {}
                                ],
                                "scm_ip_restriction": [],
                                "virtual_application": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    false
                                ]
                            }
                        ],
                        "storage_account": []
                    },
                    "type": "azurerm_windows_web_app",
                    "values": {
                        "app_settings": {
                            "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                            "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                            "MM_DEFAULT_VERSION": "mmakersmile-online",
                            "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                            "WEBSITE_TIME_ZONE": "GMT Standard Time",
                            "XDT_MicrosoftApplicationInsights_Mode": "default"
                        },
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": true,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [
                            {
                                "name": "mmakerConnString",
                                "type": "SQLAzure",
                                "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                            }
                        ],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": true,
                        "identity": [
                            {
                                "identity_ids": null,
                                "type": "SystemAssigned"
                            }
                        ],
                        "location": "northeurope",
                        "logs": [
                            {
                                "application_logs": [],
                                "detailed_error_messages": true,
                                "failed_request_tracing": false,
                                "http_logs": []
                            }
                        ],
                        "name": "smile-online-matchmakersoftware",
                        "public_network_access_enabled": true,
                        "resource_group_name": "azmmclientapps",
                        "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "auto_heal_enabled": false,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "FtpsOnly",
                                "handler_mapping": [],
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [
                                    {
                                        "action": "Allow",
                                        "description": "AccessFromAppGateway",
                                        "headers": null,
                                        "ip_address": null,
                                        "priority": 200,
                                        "service_tag": "GatewayManager",
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "Applicaiton Gateway FrontEnd",
                                        "headers": null,
                                        "ip_address": "98.71.72.6/32",
                                        "priority": 300,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    },
                                    {
                                        "action": "Allow",
                                        "description": "MatchMaker Office",
                                        "headers": null,
                                        "ip_address": "217.37.57.250/32",
                                        "priority": 400,
                                        "service_tag": null,
                                        "virtual_network_subnet_id": null
                                    }
                                ],
                                "ip_restriction_default_action": "Deny",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": false,
                                "virtual_application": [],
                                "vnet_route_all_enabled": true,
                                "websockets_enabled": true
                            }
                        ],
                        "sticky_settings": [
                            {
                                "app_setting_names": [
                                    "WEBSITE_TIME_ZONE"
                                ],
                                "connection_string_names": null
                            }
                        ],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "data.azurerm_key_vault_certificate.res-2",
                    "mode": "data",
                    "name": "res-2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "certificate_policy": [],
                        "tags": {}
                    },
                    "type": "azurerm_key_vault_certificate",
                    "values": {
                        "name": "AZMMKV01-MMWildcardKV2024",
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
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_key_vault.res-1"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2"
        },
        {
            "attribute": [
                "secret_id"
            ],
            "resource": "data.azurerm_key_vault_certificate.res-2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_certificate.azmmclientrg-365"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_key_vault_certificate.res-2",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "name": "AZMMKV01-MMWildcardKV2024",
                    "timeouts": null
                },
                "after_sensitive": {
                    "certificate_policy": [],
                    "tags": {}
                },
                "after_unknown": {
                    "certificate_data": true,
                    "certificate_data_base64": true,
                    "certificate_policy": true,
                    "expires": true,
                    "id": true,
                    "key_vault_id": true,
                    "not_before": true,
                    "resource_manager_id": true,
                    "resource_manager_versionless_id": true,
                    "secret_id": true,
                    "tags": true,
                    "thumbprint": true,
                    "version": true,
                    "versionless_id": true,
                    "versionless_secret_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "res-2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_certificate"
        },
        {
            "address": "azurerm_app_service_certificate.azmmclientrg-365",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_plan_id": null,
                    "key_vault_id": null,
                    "key_vault_secret_id": "https://azmmkv01.vault.azure.net/secrets/MMWildcardKV2024/e1fac60ef8e54c1bba8d835bd1fb0d52",
                    "location": "northeurope",
                    "name": "AZMMKV01-MMWildcardKV2024",
                    "password": null,
                    "pfx_blob": null,
                    "resource_group_name": "azmmclientapps",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "host_names": [],
                    "password": true,
                    "pfx_blob": true
                },
                "after_unknown": {
                    "expiration_date": true,
                    "friendly_name": true,
                    "host_names": true,
                    "hosting_environment_profile_id": true,
                    "id": true,
                    "issue_date": true,
                    "issuer": true,
                    "subject_name": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-365",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-br2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-br2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-create-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-create-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-ir2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-ir2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pioneer-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-pioneer-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-pp2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-pp2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-rs2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-rs2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-se2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-se2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_certificate_binding.azmmclientrg-custombinding-cert-webapp-smile-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ssl_state": "SniEnabled",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "app_service_name": true,
                    "certificate_id": true,
                    "hostname": true,
                    "hostname_binding_id": true,
                    "id": true,
                    "thumbprint": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-cert-webapp-smile-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_certificate_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-187",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "dt-matchmakersoftware",
                    "hostname": "dt-matchmakersoftware.azurewebsites.net",
                    "resource_group_name": "AZMMClientApps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-187",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-188",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "dt-matchmakersoftware",
                    "hostname": "dt.matchmakersoftware.com",
                    "resource_group_name": "AZMMClientApps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-188",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-371",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "lta-matchmakersoftware",
                    "hostname": "lta-matchmakersoftware.azurewebsites.net",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-371",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-372",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "lta-matchmakersoftware",
                    "hostname": "lta.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-372",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-6",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "applehealth-matchmakersoftware",
                    "hostname": "applehealth-matchmakersoftware.azurewebsites.net",
                    "resource_group_name": "AZMMClientApps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-6",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-7",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "applehealth-matchmakersoftware",
                    "hostname": "applehealth.matchmakersoftware.com",
                    "resource_group_name": "AZMMClientApps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-7",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-br2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "br-matchmakersoftware",
                    "hostname": "br.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-br2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-create-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "create-online-matchmakersoftware",
                    "hostname": "create-online.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-create-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-ir2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "ir-matchmakersoftware",
                    "hostname": "ir.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-ir2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pioneer-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "pioneer-online-matchmakersoftware",
                    "hostname": "pioneer-online.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-pioneer-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-pp2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "pp-matchmakersoftware",
                    "hostname": "pp.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-pp2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-rs2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "rs-matchmakersoftware",
                    "hostname": "rs.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-rs2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-se2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "se-matchmakersoftware",
                    "hostname": "se.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-se2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_app_service_custom_hostname_binding.azmmclientrg-custombinding-webapp-smile-online2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_name": "smile-online-matchmakersoftware",
                    "hostname": "smile-online.matchmakersoftware.com",
                    "resource_group_name": "azmmclientapps",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "ssl_state": true,
                    "thumbprint": true,
                    "virtual_ip": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-custombinding-webapp-smile-online2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_custom_hostname_binding"
        },
        {
            "address": "azurerm_application_gateway.res-4",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": [
                                "applehealth-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "applehealth-backendpool"
                        },
                        {
                            "fqdns": [
                                "br-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "br-backendpool"
                        },
                        {
                            "fqdns": [
                                "create-online-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "create-online-backendpool"
                        },
                        {
                            "fqdns": [
                                "dt-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "dt-backendpool"
                        },
                        {
                            "fqdns": [
                                "ir-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "ir-backendpool"
                        },
                        {
                            "fqdns": [
                                "lta-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "lta-backendpool"
                        },
                        {
                            "fqdns": [
                                "pioneer-online-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "pioneer-online-backendpool"
                        },
                        {
                            "fqdns": [
                                "pp-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "pp-backendpool"
                        },
                        {
                            "fqdns": [
                                "rs-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "rs-backendpool"
                        },
                        {
                            "fqdns": [
                                "se-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "se-backendpool"
                        },
                        {
                            "fqdns": [
                                "smile-online-matchmakersoftware.azurewebsites.net"
                            ],
                            "ip_addresses": [],
                            "name": "smile-online-backendpool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "applehealth-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "applehealth-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "br-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "br-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "create-online-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "create-online-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "dt-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "dt-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "ir-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "ir-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "lta-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "lta-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "pioneer-online-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "pioneer-online-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "pp-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "pp-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "rs-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "rs-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "se-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "se-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "ApplicationGatewayAffinity",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "smile-online-backendsetting",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "smile-online-healthprobe",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": true,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "appGwPublicFrontendIpIPv4",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "public_ip_address_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/publicIPAddresses/AZMMAGW01PIP",
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "port_443",
                            "port": 443
                        },
                        {
                            "name": "port_80",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appGatewayIpConfig",
                            "subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AGWSNET01"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "applehealth.matchmakersoftware.com",
                            "host_names": [],
                            "name": "applehealth-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "br.matchmakersoftware.com",
                            "host_names": [],
                            "name": "br-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "create-online.matchmakersoftware.com",
                            "host_names": [],
                            "name": "create-online-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "dt.matchmakersoftware.com",
                            "host_names": [],
                            "name": "dt-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "ir.matchmakersoftware.com",
                            "host_names": [],
                            "name": "ir-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "lta.matchmakersoftware.com",
                            "host_names": [],
                            "name": "lta-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "pioneer-online.matchmakersoftware.com",
                            "host_names": [],
                            "name": "pioneer-online-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "pp.matchmakersoftware.com",
                            "host_names": [],
                            "name": "pp-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "rs.matchmakersoftware.com",
                            "host_names": [],
                            "name": "rs-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "se.matchmakersoftware.com",
                            "host_names": [],
                            "name": "se-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appGwPublicFrontendIpIPv4",
                            "frontend_port_name": "port_443",
                            "host_name": "smile-online.matchmakersoftware.com",
                            "host_names": [],
                            "name": "smile-online-listenerhttps",
                            "protocol": "Https",
                            "require_sni": true,
                            "ssl_certificate_name": "MMWildcard2024",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [
                        {
                            "identity_ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AppGWManagedID"
                            ],
                            "type": "UserAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "name": "AZMMAGW01",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "applehealth-matchmakersoftware.azurewebsites.net",
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
                            "name": "applehealth-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "br-matchmakersoftware.azurewebsites.net",
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
                            "name": "br-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "create-online-matchmakersoftware.azurewebsites.net",
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
                            "name": "create-online-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "dt-matchmakersoftware.azurewebsites.net",
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
                            "name": "dt-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "ir-matchmakersoftware.azurewebsites.net",
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
                            "name": "ir-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "lta-matchmakersoftware.azurewebsites.net",
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
                            "name": "lta-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "pioneer-online-matchmakersoftware.azurewebsites.net",
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
                            "name": "pioneer-online-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "pp-matchmakersoftware.azurewebsites.net",
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
                            "name": "pp-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "rs-matchmakersoftware.azurewebsites.net",
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
                            "name": "rs-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "se-matchmakersoftware.azurewebsites.net",
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
                            "name": "se-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        },
                        {
                            "host": "smile-online-matchmakersoftware.azurewebsites.net",
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
                            "name": "smile-online-healthprobe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "applehealth-backendpool",
                            "backend_http_settings_name": "applehealth-backendsetting",
                            "http_listener_name": "applehealth-listenerhttps",
                            "name": "applehealth-routingrule",
                            "priority": 3,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "br-backendpool",
                            "backend_http_settings_name": "br-backendsetting",
                            "http_listener_name": "br-listenerhttps",
                            "name": "br-routingrule",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "create-online-backendpool",
                            "backend_http_settings_name": "create-online-backendsetting",
                            "http_listener_name": "create-online-listenerhttps",
                            "name": "create-online-routingrule",
                            "priority": 8,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "dt-backendpool",
                            "backend_http_settings_name": "dt-backendsetting",
                            "http_listener_name": "dt-listenerhttps",
                            "name": "dt-routingrule",
                            "priority": 2,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "ir-backendpool",
                            "backend_http_settings_name": "ir-backendsetting",
                            "http_listener_name": "ir-listenerhttps",
                            "name": "ir-routingrule",
                            "priority": 4,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "lta-backendpool",
                            "backend_http_settings_name": "lta-backendsetting",
                            "http_listener_name": "lta-listenerhttps",
                            "name": "lta-routingrule",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "pioneer-online-backendpool",
                            "backend_http_settings_name": "pioneer-online-backendsetting",
                            "http_listener_name": "pioneer-online-listenerhttps",
                            "name": "pioneer-online-routingrule",
                            "priority": 12,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "pp-backendpool",
                            "backend_http_settings_name": "pp-backendsetting",
                            "http_listener_name": "pp-listenerhttps",
                            "name": "pp-routingrule",
                            "priority": 11,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "rs-backendpool",
                            "backend_http_settings_name": "rs-backendsetting",
                            "http_listener_name": "rs-listenerhttps",
                            "name": "rs-routingrule",
                            "priority": 5,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "se-backendpool",
                            "backend_http_settings_name": "se-backendsetting",
                            "http_listener_name": "se-listenerhttps",
                            "name": "se-routingrule",
                            "priority": 7,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "smile-online-backendpool",
                            "backend_http_settings_name": "smile-online-backendsetting",
                            "http_listener_name": "smile-online-listenerhttps",
                            "name": "smile-online-routingrule",
                            "priority": 6,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "AZMMCoreRG01",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 1,
                            "name": "Standard_v2",
                            "tier": "Standard_v2"
                        }
                    ],
                    "ssl_certificate": [
                        {
                            "data": "",
                            "name": "MMWildcard2024",
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
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
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
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
                        {
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "trusted_root_certificate_names": []
                        },
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
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
                        {
                            "custom_error_configuration": [],
                            "host_names": []
                        },
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
                            "identity_ids": [
                                false
                            ]
                        }
                    ],
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
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
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
                        {},
                        {},
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
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": [
                                false
                            ],
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
                        },
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
                        },
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
                        },
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
                        },
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
                        },
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
                            "private_link_configuration_id": true
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
                            "id": true
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
                        },
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
                        },
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
                        },
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
                        },
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
                            "identity_ids": [
                                false
                            ],
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
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
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
                        {
                            "id": true,
                            "match": [
                                {
                                    "status_code": [
                                        false
                                    ]
                                }
                            ]
                        },
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
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
                        {
                            "backend_address_pool_id": true,
                            "backend_http_settings_id": true,
                            "http_listener_id": true,
                            "id": true,
                            "redirect_configuration_id": true,
                            "rewrite_rule_set_id": true,
                            "url_path_map_id": true
                        },
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
            "name": "res-4",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-364",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "lta-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-364",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-br",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "br-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-br",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-create-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "create-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-create-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-ir",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "ir-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-ir",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pioneer-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "pioneer-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-pioneer-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-pp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "pp-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-pp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-rs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "rs-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-rs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-se",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "se-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-se",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.azmmclientrg-appinsight-webapp-smile-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "smile-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "azmmclientrg-appinsight-webapp-smile-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_application_insights.res-16",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_type": "web",
                    "disable_ip_masking": false,
                    "force_customer_storage_for_profiler": false,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "northeurope",
                    "name": "AZMMApp01",
                    "resource_group_name": "AZMMCoreRG01",
                    "retention_in_days": 90,
                    "sampling_percentage": 0,
                    "tags": null,
                    "timeouts": null,
                    "workspace_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/DefaultResourceGroup-NEU/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-2bd29ed6-34a6-42d7-8235-293e8ee67447-NEU"
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
            "mode": "managed",
            "name": "res-16",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_insights"
        },
        {
            "address": "azurerm_key_vault.res-1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "northeurope",
                    "name": "AZMMKV01",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 90,
                    "tags": null,
                    "tenant_id": "3a243d17-3d9f-43e2-96a9-222d4b6fada1",
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
                    "network_acls": true,
                    "vault_uri": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "azurerm_monitor_action_group.res-15",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "arm_role_receiver": [
                        {
                            "name": "Monitoring Contributor",
                            "role_id": "749f88d5-cbae-40b8-bcfc-e573ddc772fa",
                            "use_common_alert_schema": true
                        },
                        {
                            "name": "Monitoring Reader",
                            "role_id": "43d0d8ad-25c7-4714-9337-8ba259a9fe05",
                            "use_common_alert_schema": true
                        }
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "enabled": true,
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "location": "global",
                    "logic_app_receiver": [],
                    "name": "Application Insights Smart Detection",
                    "resource_group_name": "AZMMCoreRG01",
                    "short_name": "SmartDetect",
                    "sms_receiver": [],
                    "tags": null,
                    "timeouts": null,
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_sensitive": {
                    "arm_role_receiver": [
                        {},
                        {}
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "event_hub_receiver": [],
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "after_unknown": {
                    "arm_role_receiver": [
                        {},
                        {}
                    ],
                    "automation_runbook_receiver": [],
                    "azure_app_push_receiver": [],
                    "azure_function_receiver": [],
                    "email_receiver": [],
                    "event_hub_receiver": [],
                    "id": true,
                    "itsm_receiver": [],
                    "logic_app_receiver": [],
                    "sms_receiver": [],
                    "voice_receiver": [],
                    "webhook_receiver": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-15",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_action_group"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-363",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - lta-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/lta-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-363",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-br",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - br-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/br-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-br",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-create-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - create-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/create-online-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-create-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-ir",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - ir-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/ir-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-ir",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pioneer-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - pioneer-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pioneer-online-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-pioneer-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-pp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - pp-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/pp-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-pp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-rs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - rs-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/rs-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-rs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-se",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - se-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/se-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-se",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.azmmclientrg-smartalert-webapp-smile-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - smile-online-matchmakersoftware",
                    "resource_group_name": "AZMMClientApps",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmclientapps/providers/microsoft.insights/components/smile-online-matchmakersoftware"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-smartalert-webapp-smile-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_monitor_smart_detector_alert_rule.res-14",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "action_group": [
                        {
                            "email_subject": null,
                            "ids": [
                                "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/azmmcorerg01/providers/Microsoft.Insights/actionGroups/application insights smart detection"
                            ],
                            "webhook_payload": null
                        }
                    ],
                    "description": "Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.",
                    "detector_type": "FailureAnomaliesDetector",
                    "enabled": true,
                    "frequency": "PT1M",
                    "name": "Failure Anomalies - AZMMApp01",
                    "resource_group_name": "AZMMCoreRG01",
                    "scope_resource_ids": [
                        "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourcegroups/azmmcorerg01/providers/microsoft.insights/components/azmmapp01"
                    ],
                    "severity": "Sev3",
                    "tags": null,
                    "throttling_duration": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "scope_resource_ids": [
                        false
                    ]
                },
                "after_unknown": {
                    "action_group": [
                        {
                            "ids": [
                                false
                            ]
                        }
                    ],
                    "id": true,
                    "scope_resource_ids": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-14",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_smart_detector_alert_rule"
        },
        {
            "address": "azurerm_private_dns_a_record.res-17",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "azmmsql01",
                    "records": [
                        "10.191.2.4"
                    ],
                    "resource_group_name": "azmmcorerg01",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 3600,
                    "zone_name": "privatelink.database.windows.net"
                },
                "after_sensitive": {
                    "records": [
                        false
                    ]
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "records": [
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-17",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "azurerm_private_dns_zone.res-5",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "privatelink.database.windows.net",
                    "resource_group_name": "AZMMCoreRG01",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": []
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "number_of_record_sets": true,
                    "soa_record": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-5",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "azurerm_private_dns_zone_virtual_network_link.res-6",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "mp2zoxnjsbkyw",
                    "private_dns_zone_name": "privatelink.database.windows.net",
                    "registration_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01"
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-6",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "azurerm_private_endpoint.res-7",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "northeurope",
                    "name": "AZMMSQL01PEP01",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "AZMMSQL01PEP01",
                            "private_connection_resource_alias": null,
                            "private_connection_resource_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG02/providers/Microsoft.Sql/servers/azmmsql01",
                            "request_message": null,
                            "subresource_names": [
                                "SqlServer"
                            ]
                        }
                    ],
                    "resource_group_name": "AZMMCoreRG01",
                    "subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/SQLSNET01",
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
                            "private_ip_address": true,
                            "subresource_names": [
                                false
                            ]
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-7",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_endpoint"
        },
        {
            "address": "azurerm_public_ip.res-8",
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
                    "name": "AZMMAGW01PIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "AZMMCoreRG01",
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
            "name": "res-8",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.azmmclientrg-0",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "managed_by": null,
                    "name": "AZMMClientApps",
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
            "name": "azmmclientrg-0",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_resource_group.res-0",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "northeurope",
                    "managed_by": null,
                    "name": "AZMMCoreRG01",
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
            "name": "res-0",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_service_plan.res-13",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "northeurope",
                    "name": "AZMMASP01",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "S1",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "res-13",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_service_plan.webappsp2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "northeurope",
                    "name": "AZMMASP02",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "P0v3",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webappsp2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_service_plan.webappsp3",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "northeurope",
                    "name": "AZMMASP03",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "S1",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webappsp3",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_service_plan.webappsp4",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "northeurope",
                    "name": "AZMMASP04",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "P0v3",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webappsp4",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_service_plan.webappsp5",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "northeurope",
                    "name": "AZMMASP05",
                    "os_type": "Windows",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "AZMMCoreRG01",
                    "sku_name": "S1",
                    "tags": null,
                    "timeouts": null,
                    "zone_balancing_enabled": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "kind": true,
                    "maximum_elastic_worker_count": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "webappsp5",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_subnet.res-10",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.191.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AGWSNET01",
                    "resource_group_name": "AZMMCoreRG01",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "AZMMVNET01"
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
            "name": "res-10",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.res-11",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.191.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [
                        {
                            "name": "delegation",
                            "service_delegation": [
                                {
                                    "actions": [
                                        "Microsoft.Network/virtualNetworks/subnets/action"
                                    ],
                                    "name": "Microsoft.Web/serverFarms"
                                }
                            ]
                        }
                    ],
                    "name": "AppSNET01",
                    "resource_group_name": "AZMMCoreRG01",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": [
                        "Microsoft.Storage"
                    ],
                    "timeouts": null,
                    "virtual_network_name": "AZMMVNET01"
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
            "name": "res-11",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.res-12",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.191.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "SQLSNET01",
                    "resource_group_name": "AZMMCoreRG01",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "AZMMVNET01"
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
            "name": "res-12",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_user_assigned_identity.res-3",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "uksouth",
                    "name": "AppGWManagedID",
                    "resource_group_name": "AZMMCoreRG01",
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
            "name": "res-3",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "azurerm_virtual_network.res-9",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.191.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "northeurope",
                    "name": "AZMMVNET01",
                    "resource_group_name": "AZMMCoreRG01",
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
            "name": "res-9",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "MM_DEFAULT_VERSION": "mmakerah",
                        "MM_EXTENSION_VERSION": "&_#;|,N,FTX{SQs\\i*{n(c(x\\Z|A1qS,^VVjX#[20{Z7)7;$f6",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17008;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "applehealth-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "AZMMClientApps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
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
            "name": "azmmclientrg-1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-182",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "MM_DEFAULT_VERSION": "mmakerdt",
                        "MM_EXTENSION_VERSION": "&)ku4\\92MxA_j|>*V,YS(@(#3=Ivs4<*0k^mwzpiS7JWe4QjC(",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=17009;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "dt-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "AZMMClientApps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
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
            "name": "azmmclientrg-182",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-366",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerlta",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "lta-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP01",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-366",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-br",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerbr",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "br-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-br",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-create-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakercreate-online",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "create-online-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-create-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-ir",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerir",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "ir-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-ir",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pioneer-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerpioneer-online",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "pioneer-online-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP05",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-pioneer-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-pp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerpp",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "pp-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-pp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-rs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerrs",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "rs-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP02",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-rs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-se",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakerse",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "se-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP04",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-se",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        },
        {
            "address": "azurerm_windows_web_app.azmmclientrg-webbapp-smile-online",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": {
                        "APPLICATIONINSIGHTS_CONNECTION_STRING": "InstrumentationKey=e62501d5-31c1-45f2-a54e-8ea998494ed0;IngestionEndpoint=https://northeurope-2.in.applicationinsights.azure.com/;LiveEndpoint=https://northeurope.livediagnostics.monitor.azure.com/",
                        "ApplicationInsightsAgent_EXTENSION_VERSION": "~2",
                        "MM_DEFAULT_VERSION": "mmakersmile-online",
                        "MM_EXTENSION_VERSION": "n4-UL:g5aHw%et+Wt!r}i%$Hm6q4T%CupX2B8M)ftbco]*!?g%",
                        "WEBSITE_TIME_ZONE": "GMT Standard Time",
                        "XDT_MicrosoftApplicationInsights_Mode": "default"
                    },
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": true,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [
                        {
                            "name": "mmakerConnString",
                            "type": "SQLAzure",
                            "value": "data source=tcp:azmmsql01.database.windows.net;initial catalog=2179;persist security info=True;App=EntityFramework;Connection Timeout=60"
                        }
                    ],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": true,
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "location": "northeurope",
                    "logs": [
                        {
                            "application_logs": [],
                            "detailed_error_messages": true,
                            "failed_request_tracing": false,
                            "http_logs": []
                        }
                    ],
                    "name": "smile-online-matchmakersoftware",
                    "public_network_access_enabled": true,
                    "resource_group_name": "azmmclientapps",
                    "service_plan_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Web/serverFarms/AZMMASP03",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "auto_heal_enabled": false,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "FtpsOnly",
                            "handler_mapping": [],
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [
                                {
                                    "action": "Allow",
                                    "description": "AccessFromAppGateway",
                                    "headers": null,
                                    "ip_address": null,
                                    "priority": 200,
                                    "service_tag": "GatewayManager",
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "Applicaiton Gateway FrontEnd",
                                    "headers": null,
                                    "ip_address": "98.71.72.6/32",
                                    "priority": 300,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                },
                                {
                                    "action": "Allow",
                                    "description": "MatchMaker Office",
                                    "headers": null,
                                    "ip_address": "217.37.57.250/32",
                                    "priority": 400,
                                    "service_tag": null,
                                    "virtual_network_subnet_id": null
                                }
                            ],
                            "ip_restriction_default_action": "Deny",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": false,
                            "virtual_application": [],
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true
                        }
                    ],
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                "WEBSITE_TIME_ZONE"
                            ],
                            "connection_string_names": null
                        }
                    ],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": "/subscriptions/2bd29ed6-34a6-42d7-8235-293e8ee67447/resourceGroups/AZMMCoreRG01/providers/Microsoft.Network/virtualNetworks/AZMMVNET01/subnets/AppSNET01",
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "identity": [
                        {}
                    ],
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "handler_mapping": [],
                            "ip_restriction": [
                                {},
                                {},
                                {}
                            ],
                            "scm_ip_restriction": [],
                            "virtual_application": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_settings": {},
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [
                        {}
                    ],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [
                        {
                            "principal_id": true,
                            "tenant_id": true
                        }
                    ],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [
                        {
                            "application_logs": [],
                            "http_logs": []
                        }
                    ],
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "application_stack": true,
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "handler_mapping": [],
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                },
                                {
                                    "name": true
                                }
                            ],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
                            "virtual_application": [],
                            "windows_fx_version": true,
                            "worker_count": true
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [
                        {
                            "app_setting_names": [
                                false
                            ]
                        }
                    ],
                    "storage_account": [],
                    "zip_deploy_file": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azmmclientrg-webbapp-smile-online",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_web_app"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:20:44Z"
}