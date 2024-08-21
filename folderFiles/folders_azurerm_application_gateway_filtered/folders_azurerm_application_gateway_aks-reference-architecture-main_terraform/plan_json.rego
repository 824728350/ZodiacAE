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
  "applyable": false,
  "complete": true,
  "configuration": {
    "root_module": {
      "variables": {
        "aks-apps-subnet-addr": {
          "default": "10.1.1.0/24",
          "description": "Spring Cloud CIDR Subnet"
        },
        "aks-apps-subnet-name": {
          "default": "snet-aks02",
          "description": "Spring Cloud Service Subnet"
        },
        "aks-data-subnet-addr": {
          "default": "10.1.3.0/24",
          "description": "Spring Cloud Data Services Subnet"
        },
        "aks-data-subnet-name": {
          "default": "snet-data",
          "description": "Spring Cloud Data Services Subnet"
        },
        "aks-service-subnet-addr": {
          "default": "10.1.0.0/24",
          "description": "Spring Cloud CIDR Subnet"
        },
        "aks-service-subnet-name": {
          "default": "snet-aks01",
          "description": "Spring Cloud Service Subnet"
        },
        "aks-support-subnet-addr": {
          "default": "10.1.2.0/24",
          "description": "aks Cloud Private Link Subnet"
        },
        "aks-support-subnet-name": {
          "default": "snet-support",
          "description": "aks Cloud Private Link Subnet Name"
        },
        "aks_resource_group_name": {
          "default": "aks-rg",
          "description": "AKS RG"
        },
        "app_insights_prefix": {
          "default": "appi"
        },
        "appgw-subnet-addr": {
          "default": "10.0.3.0/24",
          "description": "Spring Cloud CIDR Subnet"
        },
        "appgw-subnet-name": {
          "default": "snet-agw",
          "description": "Spring Cloud Service Subnet"
        },
        "azurebastion_addr_prefix": {
          "default": "10.0.2.0/24",
          "description": "Azure Bastion Address Prefix"
        },
        "azurebastion_name": {
          "default": "corp-bastion-svc"
        },
        "azurefw_addr_prefix": {
          "default": "10.0.1.0/24",
          "description": "Azure Firewall VNET prefix"
        },
        "azurefw_name": {
          "default": "fwhub"
        },
        "hub_vnet_addr_prefix": {
          "default": "10.0.0.0/16",
          "description": "Hub VNET prefix"
        },
        "hub_vnet_name": {
          "default": "vnet-hub",
          "description": "Hub VNET name"
        },
        "jump_host_addr_prefix": {
          "default": "10.0.4.0/24",
          "description": "Azure Jump Host Address Prefix"
        },
        "jump_host_admin_username": {
          "description": "Azure Admin Username"
        },
        "jump_host_name": {
          "default": "jumphostvm"
        },
        "jump_host_password": {
          "sensitive": true
        },
        "jump_host_private_ip_addr": {
          "default": "10.0.4.5",
          "description": "Azure Jump Host Address"
        },
        "jump_host_vm_size": {
          "default": "Standard_DS3_v2",
          "description": "Azure Jump Host VM SKU"
        },
        "keyvault_prefix": {
          "default": "kv",
          "description": "Key Vault Prefix"
        },
        "law_prefix": {
          "default": "la"
        },
        "location": {
          "default": "eastus2"
        },
        "my_sql_admin": {},
        "my_sql_password": {
          "sensitive": true
        },
        "mysql_server_name_prefix": {
          "default": "mysql"
        },
        "resource_group_name": {
          "default": "aks-hub-rg",
          "description": "Core Infrastructure Resource Group"
        },
        "sc_cidr": {
          "default": [
            "10.3.0.0/16",
            "10.4.0.0/16",
            "10.5.0.1/16"
          ]
        },
        "sc_prefix": {
          "default": "spring",
          "description": "Spring Cloud Name"
        },
        "spoke_vnet_addr_prefix": {
          "default": "10.1.0.0/16",
          "description": "AKS VNET prefix"
        },
        "spoke_vnet_name": {
          "default": "vnet-spoke",
          "description": "Spoke VNET name"
        }
      }
    }
  },
  "errored": false,
  "format_version": "1.2",
  "planned_values": {
    "root_module": {}
  },
  "terraform_version": "1.9.4",
  "timestamp": "2024-08-16T23:57:44Z",
  "variables": {
    "aks-apps-subnet-addr": {
      "value": "10.1.1.0/24"
    },
    "aks-apps-subnet-name": {
      "value": "snet-aks02"
    },
    "aks-data-subnet-addr": {
      "value": "10.1.3.0/24"
    },
    "aks-data-subnet-name": {
      "value": "snet-data"
    },
    "aks-service-subnet-addr": {
      "value": "10.1.0.0/24"
    },
    "aks-service-subnet-name": {
      "value": "snet-aks01"
    },
    "aks-support-subnet-addr": {
      "value": "10.1.2.0/24"
    },
    "aks-support-subnet-name": {
      "value": "snet-support"
    },
    "aks_resource_group_name": {
      "value": "aks-rg"
    },
    "app_insights_prefix": {
      "value": "appi"
    },
    "appgw-subnet-addr": {
      "value": "10.0.3.0/24"
    },
    "appgw-subnet-name": {
      "value": "snet-agw"
    },
    "azurebastion_addr_prefix": {
      "value": "10.0.2.0/24"
    },
    "azurebastion_name": {
      "value": "corp-bastion-svc"
    },
    "azurefw_addr_prefix": {
      "value": "10.0.1.0/24"
    },
    "azurefw_name": {
      "value": "fwhub"
    },
    "hub_vnet_addr_prefix": {
      "value": "10.0.0.0/16"
    },
    "hub_vnet_name": {
      "value": "vnet-hub"
    },
    "jump_host_addr_prefix": {
      "value": "10.0.4.0/24"
    },
    "jump_host_admin_username": {
      "value": "azureuser"
    },
    "jump_host_name": {
      "value": "vmjumphost"
    },
    "jump_host_password": {
      "value": "1@g2Jbk7$P@ssw0rd"
    },
    "jump_host_private_ip_addr": {
      "value": "10.0.4.5"
    },
    "jump_host_vm_size": {
      "value": "Standard_DS3_v2"
    },
    "keyvault_prefix": {
      "value": "kv"
    },
    "law_prefix": {
      "value": "la"
    },
    "location": {
      "value": "East US 2"
    },
    "my_sql_admin": {
      "value": "mysqladminun"
    },
    "my_sql_password": {
      "value": "H@Sh1CoR3!"
    },
    "mysql_server_name_prefix": {
      "value": "mysql"
    },
    "resource_group_name": {
      "value": "aks-hub-rg"
    },
    "sc_cidr": {
      "value": [
        "10.3.0.0/16",
        "10.4.0.0/16",
        "10.5.0.1/16"
      ]
    },
    "sc_prefix": {
      "value": "spring"
    },
    "spoke_vnet_addr_prefix": {
      "value": "10.1.0.0/16"
    },
    "spoke_vnet_name": {
      "value": "vnet-spoke"
    }
  }
}

