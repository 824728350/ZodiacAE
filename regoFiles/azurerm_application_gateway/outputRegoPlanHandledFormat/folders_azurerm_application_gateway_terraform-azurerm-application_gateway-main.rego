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
            "aws": {
                "expressions": {
                    "access_key": {
                        "constant_value": "mock_access_key"
                    },
                    "region": {
                        "constant_value": "us-east-1"
                    },
                    "secret_key": {
                        "constant_value": "mock_secret_key"
                    },
                    "skip_credentials_validation": {
                        "constant_value": true
                    },
                    "skip_metadata_api_check": {
                        "constant_value": true
                    },
                    "skip_requesting_account_id": {
                        "constant_value": true
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/aws",
                "name": "aws"
            },
            "azurerm": {
                "expressions": {
                    "features": [
                        {}
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "name": "azurerm",
                "version_constraint": "3.116.0"
            },
            "google": {
                "expressions": {
                    "project": {
                        "constant_value": "ZODIAC"
                    },
                    "region": {
                        "constant_value": "us-central1"
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/google",
                "name": "google"
            }
        },
        "root_module": {
            "outputs": {
                "application_gateway_output": {
                    "expression": {
                        "references": [
                            "azurerm_application_gateway.application_gateway"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.application_gateway",
                    "expressions": {
                        "autoscale_configuration": [
                            {
                                "max_capacity": {
                                    "references": [
                                        "each.value.autoscale_configuration.max_capacity",
                                        "each.value.autoscale_configuration",
                                        "each.value"
                                    ]
                                },
                                "min_capacity": {
                                    "references": [
                                        "each.value.autoscale_configuration.min_capacity",
                                        "each.value.autoscale_configuration",
                                        "each.value"
                                    ]
                                }
                            }
                        ],
                        "enable_http2": {
                            "references": [
                                "each.value.enable_http2",
                                "each.value"
                            ]
                        },
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "each.value.gateway_ip_configuration.name",
                                        "each.value.gateway_ip_configuration",
                                        "each.value"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "var.subnet_output",
                                        "each.value.gateway_ip_configuration.subnet_name",
                                        "each.value.gateway_ip_configuration",
                                        "each.value"
                                    ]
                                }
                            }
                        ],
                        "global": [
                            {
                                "request_buffering_enabled": {
                                    "references": [
                                        "each.value.global.request_buffering_enabled",
                                        "each.value.global",
                                        "each.value"
                                    ]
                                },
                                "response_buffering_enabled": {
                                    "references": [
                                        "each.value.global.response_buffering_enabled",
                                        "each.value.global",
                                        "each.value"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "each.value.location",
                                "each.value"
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
                                "var.resource_group_output",
                                "each.value.resource_group_name",
                                "each.value"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "references": [
                                        "each.value.sku.capacity",
                                        "each.value.sku",
                                        "each.value"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "each.value.sku.name",
                                        "each.value.sku",
                                        "each.value"
                                    ]
                                },
                                "tier": {
                                    "references": [
                                        "each.value.sku.tier",
                                        "each.value.sku",
                                        "each.value"
                                    ]
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "each.value.tags",
                                "each.value"
                            ]
                        },
                        "zones": {
                            "references": [
                                "each.value.zones",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.application_gateway"
                        ]
                    },
                    "mode": "managed",
                    "name": "application_gateway",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                }
            ],
            "variables": {
                "application_gateway_list": {
                    "default": [],
                    "description": "application_gateway list"
                },
                "public_ip_output": {
                    "default": {},
                    "description": "list of public ip objects"
                },
                "resource_group_output": {
                    "default": {},
                    "description": "resource group output"
                },
                "subnet_output": {
                    "default": {},
                    "description": "subnet output"
                },
                "user_assigned_identity_output": {
                    "default": {},
                    "description": "user identity output"
                },
                "web_application_firewall_output": {
                    "default": {},
                    "description": "web application firewall output"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "application_gateway_output": {
            "actions": [
                "create"
            ],
            "after": {},
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "application_gateway_output": {
                "sensitive": false,
                "type": [
                    "object",
                    {}
                ],
                "value": {}
            }
        },
        "root_module": {}
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "outputs": {
                "application_gateway_output": {
                    "sensitive": false,
                    "type": [
                        "object",
                        {}
                    ],
                    "value": {}
                }
            },
            "root_module": {}
        }
    },
    "relevant_attributes": [
        {
            "attribute": [],
            "resource": "azurerm_application_gateway.application_gateway"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:47:41Z",
    "variables": {
        "application_gateway_list": {
            "value": []
        },
        "public_ip_output": {
            "value": {}
        },
        "resource_group_output": {
            "value": {}
        },
        "subnet_output": {
            "value": {}
        },
        "user_assigned_identity_output": {
            "value": {}
        },
        "web_application_firewall_output": {
            "value": {}
        }
    }
}