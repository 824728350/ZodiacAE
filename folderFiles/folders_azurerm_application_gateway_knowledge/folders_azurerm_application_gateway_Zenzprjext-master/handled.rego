
package assemble
import data.fugue.resource_view.resource_view_input
import future.keywords.in
resourceTypeLabel := "azurerm_application_gateway"
repoViewTop := {
    "azurerm_application_gateway": {
        "backend_http_settings.cookie_based_affinity": [
            "Disabled",
            "Enabled"
        ],
        "backend_http_settings.protocol": [
            "Http",
            "Https"
        ],
        "frontend_ip_configuration.private_ip_address_allocation": [
            "Dynamic",
            "Static"
        ],
        "http_listener.custom_error_configuration.status_code": [
            "HttpStatus502",
            "HttpStatus403"
        ],
        "http_listener.protocol": [
            "Http",
            "Https"
        ],
        "location": [
            "westeurope",
            "centralus",
            "westus",
            "uaenorth",
            "westus2",
            "uksouth",
            "eastus",
            "northeurope",
            "centralindia",
            "japaneast",
            "norwayeast",
            "eastus2",
            "southeastasia",
            "canadacentral",
            "southafricanorth",
            "australiaeast",
            "westus3"
        ],
        "probe.match.body": [
            "Welcome",
            "App1",
            "App2"
        ],
        "probe.match.status_code": [
            "200",
            "399",
            "200-400",
            "200-399"
        ],
        "probe.protocol": [
            "Http",
            "Https"
        ],
        "redirect_configuration.include_path": [
            true,
            false
        ],
        "redirect_configuration.include_query_string": [
            true,
            false
        ],
        "request_routing_rule.rule_type": [
            "Basic",
            "PathBasedRouting"
        ],
        "rewrite_rule_set.rewrite_rule.condition.ignore_case": [
            true,
            false
        ],
        "rewrite_rule_set.rewrite_rule.condition.negate": [
            false,
            true
        ],
        "rewrite_rule_set.rewrite_rule.condition.variable": [
            "http_req_X-Forwarded-For",
            "var_uri_path"
        ],
        "rewrite_rule_set.rewrite_rule.url.components": [
            "query_string_only",
            "path_only"
        ],
        "rewrite_rule_set.rewrite_rule.url.path": [
            null
        ],
        "rewrite_rule_set.rewrite_rule.url.query_string": [
            null
        ],
        "sku.name": [
            "Standard_v2",
            "Standard_Small",
            "WAF_v2",
            "Standard_Medium"
        ],
        "sku.tier": [
            "Standard_v2",
            "Standard",
            "WAF_v2"
        ],
        "ssl_certificate.password": [
            "export",
            "bukhari",
            "kalyan"
        ],
        "waf_configuration.enabled": [
            true,
            false
        ],
        "waf_configuration.firewall_mode": [
            "Detection",
            "Prevention"
        ],
        "zones": [
            null,
            "1",
            "2",
            "3"
        ]
    },
    "azurerm_bastion_host": {
        "file_copy_enabled": [
            false,
            true
        ],
        "ip_connect_enabled": [
            false,
            true
        ],
        "location": [
            "westeurope",
            "eastus",
            "centralus",
            "uksouth",
            "centralindia",
            "eastus2",
            "australiaeast",
            "westus3",
            "northeurope",
            "southeastasia"
        ],
        "name": [
            "AzureBastionHost"
        ],
        "shareable_link_enabled": [
            false,
            true
        ],
        "sku": [
            "Basic",
            "Standard"
        ],
        "tunneling_enabled": [
            false,
            true
        ]
    },
    "azurerm_express_route_circuit": {
        "location": [
            "westeurope",
            "eastus2"
        ],
        "peering_location": [
            null,
            "Silicon Valley"
        ]
    },
    "azurerm_firewall": {
        "dns_servers": [
            null
        ],
        "location": [
            "eastus2",
            "westeurope",
            "northeurope",
            "eastus",
            "uksouth",
            "eastasia",
            "centralus",
            "australiacentral",
            "japaneast",
            "southcentralus",
            "japanwest"
        ],
        "name": [
            "ContosoFirewall"
        ],
        "sku_tier": [
            "Standard",
            "Basic",
            "Premium"
        ],
        "threat_intel_mode": [
            "Off",
            "Alert"
        ],
        "zones": [
            null,
            "1",
            "2",
            "3"
        ]
    },
    "azurerm_firewall_network_rule_collection": {
        "rule.destination_fqdns": [
            null
        ],
        "rule.protocols": [
            "TCP",
            "UDP",
            "Any"
        ]
    },
    "azurerm_lb": {
        "frontend_ip_configuration.private_ip_address_allocation": [
            "Dynamic",
            "Static"
        ],
        "location": [
            "uksouth",
            "eastus",
            "westus3",
            "westeurope",
            "canadacentral",
            "northeurope",
            "westus",
            "southindia",
            "southcentralus",
            "westus2",
            "koreacentral",
            "norwayeast",
            "eastus2"
        ],
        "sku": [
            "Standard",
            "Basic"
        ],
        "sku_tier": [
            "Regional",
            "Global"
        ]
    },
    "azurerm_lb_backend_address_pool": {},
    "azurerm_lb_nat_pool": {},
    "azurerm_lb_nat_rule": {},
    "azurerm_lb_outbound_rule": {
        "protocol": [
            "All",
            "Tcp"
        ]
    },
    "azurerm_lb_probe": {
        "protocol": [
            "Tcp",
            "Http"
        ],
        "request_path": [
            null
        ]
    },
    "azurerm_lb_rule": {
        "disable_outbound_snat": [
            true,
            false
        ],
        "enable_floating_ip": [
            false,
            true
        ],
        "protocol": [
            "Tcp",
            "All",
            "Udp"
        ]
    },
    "azurerm_linux_virtual_machine": {
        "admin_password": [
            null
        ],
        "allow_extension_operations": [
            true,
            false
        ],
        "custom_data": [
            null
        ],
        "disable_password_authentication": [
            true,
            false
        ],
        "eviction_policy": [
            null,
            "Deallocate"
        ],
        "location": [
            "brazilsouth",
            "eastus",
            "northeurope",
            "westeurope",
            "uksouth",
            "centralus",
            "koreacentral",
            "norwayeast",
            "japanwest",
            "japaneast",
            "canadaeast",
            "australiaeast",
            "eastus2",
            "westus2",
            "canadacentral",
            "westus",
            "southeastasia",
            "southcentralus",
            "germanywestcentral",
            "southindia",
            "northcentralus",
            "centralindia",
            "francecentral",
            "westus3"
        ],
        "os_disk.caching": [
            "ReadWrite",
            "None",
            "ReadOnly"
        ],
        "os_disk.storage_account_type": [
            "Premium_LRS",
            "Standard_LRS",
            "StandardSSD_LRS"
        ],
        "patch_mode": [
            "ImageDefault",
            "AutomaticByPlatform"
        ],
        "plan.product": [
            "centos-8-stream-free",
            "cm_k170v",
            "qualys-virtual-scanner",
            "waf",
            "avi-vantage-adc"
        ],
        "plan.publisher": [
            "cognosys",
            "qualysguard",
            "barracudanetworks",
            "avi-networks"
        ],
        "priority": [
            "Regular",
            "Spot"
        ],
        "provision_vm_agent": [
            true,
            false
        ],
        "size": [
            "Standard_B2ms",
            "Standard_D2s_v3",
            "Standard_B2s",
            "Standard_B1s",
            "Standard_F2",
            "Standard_DS1_v2",
            "Standard_D4as_v5",
            "Standard_D2as_v4",
            "Standard_A2_v2",
            "Standard_DS2_v2",
            "Standard_F2s_v2",
            "Standard_F1s",
            "Standard_D2_v3",
            "Standard_B1ls",
            "Standard_L8s_v2",
            "standard_b2ms",
            "Standard_B4ms",
            "Standard_F4s_v2",
            "Standard_D2s_v4",
            "Standard_D2ps_v5",
            "Standard_E4s_v3",
            "Standard_B1ms",
            "Standard_A8m_v2",
            "Standard_B16ms",
            "Standard_D2ds_v4",
            "Standard_DC2s_v3",
            "Standard_D2as_v5",
            "Standard_D4s_v3",
            "Standard_D2ads_v5",
            "Standard_DS3_v2",
            "Standard_D4ds_v4",
            "Standard_D48s_v3",
            "Standard_D4_v4",
            "Standard_DC1s_v2",
            "Standard_F1",
            "Standard D2s v3",
            "Standard_D1_v2",
            "Standard_A4_v2",
            "Standard_A1_v2",
            "Standard_DS1",
            "Standard_D2s_v5",
            "Standard_D2_v2",
            "Standard_D2ds_v5",
            "Standard_L8s_v3",
            "Standard_E2s_v3",
            "Standard_B2MS",
            "Standard_D8s_v3"
        ],
        "source_image_reference.offer": [
            "CentOS",
            "UbuntuServer",
            "0001-com-ubuntu-server-jammy",
            "0001-com-ubuntu-server-focal",
            "centos-8-stream-free"
        ],
        "source_image_reference.publisher": [
            "OpenLogic",
            "Canonical",
            "canonical",
            "cognosys",
            "Debian"
        ],
        "source_image_reference.sku": [
            "7_9",
            "18.04-LTS",
            "22_04-lts",
            "20_04-lts-gen2",
            "16.04-LTS",
            "22_04-lts-gen2",
            "20_04-lts",
            "8-lvm-gen2",
            "centos-8-stream-free",
            "8_2-gen2",
            "7.5",
            "19.04",
            "8_2",
            "ciphertrust_manager",
            "qvsa",
            "10",
            "16.04.0-LTS",
            "gen2",
            "18_04-lts-gen2",
            "11",
            "20_04-lts-arm64",
            "22.04-LTS",
            "8_5",
            "GitHub-Enterprise",
            "minimal-22_04-lts-gen2",
            "11-gen2",
            "83-gen2",
            "7_9-gen2",
            "18.04-lts",
            "minimal-21_10-daily-gen2",
            "8.0",
            "7_7-gen2",
            "77-gen2",
            "byol",
            "7.7",
            "8-LVM",
            "8_5-gen2",
            "nsx-alb-controller-2001"
        ],
        "source_image_reference.version": [
            "latest",
            "1.2019.0810",
            "8.2.2020062400",
            "20.04.202209200"
        ],
        "user_data": [
            null,
            "SGVsbG8gV29ybGQh"
        ],
        "zone": [
            null,
            "1",
            "2",
            "3"
        ]
    },
    "azurerm_local_network_gateway": {
        "address_space": [
            null
        ],
        "location": [
            "westeurope",
            "northeurope",
            "japaneast",
            "centralindia",
            "eastus",
            "westus"
        ]
    },
    "azurerm_managed_disk": {
        "create_option": [
            "Empty",
            "Copy"
        ],
        "location": [
            "eastus",
            "westeurope",
            "westus2",
            "swedencentral",
            "northeurope",
            "canadacentral",
            "japaneast",
            "uksouth",
            "southcentralus",
            "germanywestcentral",
            "koreacentral",
            "centralus",
            "westus",
            "southeastasia"
        ],
        "network_access_policy": [
            null,
            "AllowPrivate"
        ],
        "storage_account_type": [
            "Premium_LRS",
            "Standard_LRS",
            "StandardSSD_LRS",
            "UltraSSD_LRS"
        ],
        "zone": [
            null,
            "1"
        ]
    },
    "azurerm_nat_gateway": {
        "location": [
            "westeurope",
            "eastus",
            "centralus",
            "eastus2",
            "eastasia",
            "australiaeast"
        ],
        "zones": [
            null,
            "1"
        ]
    },
    "azurerm_nat_gateway_public_ip_association": {},
    "azurerm_network_interface": {
        "enable_accelerated_networking": [
            false,
            true
        ],
        "enable_ip_forwarding": [
            false,
            true
        ],
        "ip_configuration.primary": [
            true,
            false
        ],
        "ip_configuration.private_ip_address_allocation": [
            "Dynamic",
            "dynamic",
            "Static"
        ],
        "ip_configuration.private_ip_address_version": [
            "IPv4",
            "IPv6"
        ],
        "location": [
            "eastus",
            "uksouth",
            "centralus",
            "westus",
            "westus2",
            "japaneast",
            "northeurope",
            "westeurope",
            "australiaeast",
            "centralindia",
            "switzerlandnorth",
            "francecentral",
            "eastus2",
            "germanywestcentral",
            "canadaeast",
            "eastasia",
            "northcentralus",
            "southeastasia",
            "norwayeast",
            "canadacentral",
            "southindia",
            "koreacentral",
            "brazilsouth",
            "southcentralus"
        ]
    },
    "azurerm_network_interface_nat_rule_association": {},
    "azurerm_network_interface_security_group_association": {},
    "azurerm_network_security_group": {
        "location": [
            "westeurope",
            "eastus",
            "westus",
            "eastus2",
            "swedencentral",
            "brazilsouth",
            "northeurope",
            "germanywestcentral",
            "uksouth",
            "westus2",
            "canadacentral",
            "francecentral",
            "australiaeast",
            "canadaeast",
            "southindia",
            "southcentralus",
            "westus3",
            "centralus",
            "southeastasia",
            "centralindia",
            "australiacentral",
            "australiasoutheast",
            "norwayeast",
            "eastasia"
        ],
        "security_rule.access": [
            "Allow",
            "Deny"
        ],
        "security_rule.direction": [
            "Inbound",
            "Outbound"
        ],
        "security_rule.protocol": [
            "Tcp",
            "Icmp",
            "Udp"
        ]
    },
    "azurerm_network_security_rule": {
        "access": [
            "Allow",
            "Deny"
        ],
        "description": [
            null
        ],
        "destination_address_prefix": [
            null
        ],
        "direction": [
            "Inbound",
            "Outbound"
        ],
        "protocol": [
            "Tcp",
            "Udp",
            "Icmp"
        ],
        "source_address_prefix": [
            null
        ],
        "source_address_prefixes": [
            null
        ]
    },
    "azurerm_private_dns_resolver": {
        "location": [
            "westeurope",
            "uksouth"
        ]
    },
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": {
        "location": [
            "australiaeast",
            "westeurope",
            "southcentralus"
        ]
    },
    "azurerm_private_dns_resolver_inbound_endpoint": {},
    "azurerm_private_dns_resolver_outbound_endpoint": {
        "location": [
            "australiaeast",
            "westeurope",
            "southcentralus"
        ]
    },
    "azurerm_private_dns_resolver_virtual_network_link": {},
    "azurerm_private_endpoint": {
        "location": [
            "westeurope",
            "northeurope",
            "eastus",
            "australiaeast",
            "uksouth",
            "canadacentral",
            "japaneast",
            "eastus2",
            "francecentral",
            "australiasoutheast",
            "westus",
            "swedencentral"
        ]
    },
    "azurerm_private_link_service": {
        "location": [
            "eastus",
            "japaneast",
            "westeurope",
            "westus"
        ],
        "nat_ip_configuration.primary": [
            true,
            false
        ]
    },
    "azurerm_public_ip": {
        "allocation_method": [
            "Static",
            "Dynamic"
        ],
        "ip_version": [
            "IPv4",
            "IPv6"
        ],
        "location": [
            "westeurope",
            "eastus",
            "uksouth",
            "australiaeast",
            "japaneast",
            "eastus2",
            "canadaeast",
            "northeurope",
            "francecentral",
            "centralus",
            "eastasia",
            "canadacentral",
            "westus2",
            "westus",
            "southcentralus",
            "southeastasia",
            "switzerlandnorth",
            "westus3",
            "norwayeast",
            "centralindia",
            "southindia"
        ],
        "name": [
            "PublicIp0"
        ],
        "sku": [
            "Standard",
            "Basic"
        ],
        "sku_tier": [
            "Regional",
            "Global"
        ],
        "zones": [
            null,
            "1",
            "2",
            "3"
        ]
    },
    "azurerm_resource_group": {
        "location": [
            "eastus",
            "westeurope",
            "eastus2",
            "uksouth",
            "canadaeast",
            "northeurope",
            "westus2",
            "westus",
            "eastasia",
            "southcentralus",
            "francecentral",
            "centralus",
            "japanwest",
            "japaneast",
            "swedencentral",
            "southindia",
            "southeastasia",
            "australiaeast"
        ],
        "name": [
            "FrontDoorExampleResourceGroup"
        ]
    },
    "azurerm_route": {
        "next_hop_type": [
            "VirtualAppliance",
            "VnetLocal",
            "Internet",
            "None"
        ]
    },
    "azurerm_route_server": {
        "location": [
            "westeurope",
            "japaneast"
        ]
    },
    "azurerm_route_table": {
        "disable_bgp_route_propagation": [
            false,
            true
        ],
        "location": [
            "eastus2",
            "westeurope",
            "canadacentral",
            "japaneast",
            "eastus",
            "northeurope",
            "centralus",
            "southeastasia",
            "eastasia",
            "uksouth",
            "francecentral",
            "westus2",
            "australiasoutheast",
            "australiaeast"
        ],
        "route.next_hop_type": [
            "VirtualAppliance",
            "Internet",
            "None",
            "VnetLocal"
        ]
    },
    "azurerm_storage_account": {
        "access_tier": [
            "Hot",
            "Cool"
        ],
        "account_kind": [
            "StorageV2",
            "BlobStorage",
            "FileStorage",
            "Storage"
        ],
        "account_replication_type": [
            "LRS",
            "GRS",
            "ZRS",
            "RAGRS",
            "RAGZRS",
            "GZRS"
        ],
        "account_tier": [
            "Standard",
            "Premium"
        ],
        "allow_nested_items_to_be_public": [
            true,
            false
        ],
        "blob_properties.change_feed_enabled": [
            false,
            true
        ],
        "blob_properties.cors_rule.allowed_methods": [
            "GET",
            "POST",
            "PUT",
            "DELETE",
            "HEAD",
            "OPTIONS"
        ],
        "blob_properties.cors_rule.exposed_headers": [
            "ETag"
        ],
        "blob_properties.versioning_enabled": [
            false,
            true
        ],
        "cross_tenant_replication_enabled": [
            true,
            false
        ],
        "default_to_oauth_authentication": [
            false,
            true
        ],
        "enable_https_traffic_only": [
            true,
            false
        ],
        "infrastructure_encryption_enabled": [
            false,
            true
        ],
        "is_hns_enabled": [
            false,
            true
        ],
        "location": [
            "eastus2",
            "eastus",
            "westeurope",
            "northeurope",
            "uksouth",
            "australiaeast",
            "southcentralus",
            "centralus",
            "centralindia",
            "southeastasia",
            "westcentralus",
            "japaneast",
            "brazilsouth",
            "westus",
            "canadaeast",
            "norwayeast",
            "westus3",
            "koreacentral",
            "westus2",
            "canadacentral",
            "francecentral"
        ],
        "min_tls_version": [
            "TLS1_2",
            null,
            "TLS1_0"
        ],
        "network_rules.bypass": [
            "AzureServices",
            "Logging",
            "Metrics"
        ],
        "network_rules.default_action": [
            "Deny",
            "Allow"
        ],
        "public_network_access_enabled": [
            true,
            false
        ],
        "static_website.error_404_document": [
            null
        ]
    },
    "azurerm_storage_account_network_rules": {
        "bypass": [
            "AzureServices",
            "Logging",
            "Metrics",
            "None"
        ],
        "default_action": [
            "Allow",
            "Deny"
        ]
    },
    "azurerm_subnet": {
        "delegation.service_delegation.actions": [
            null
        ],
        "enforce_private_link_service_network_policies": [
            true,
            false
        ],
        "name": [
            "WebServicesSubnet",
            "DefaultSubnet",
            "RouteServerSubnet",
            "AzureFirewallSubnet",
            "AzureBastionSubnet",
            "ApplicationGatewaySubnet",
            "AzureFirewallManagementSubnet",
            "GatewaySubnet"
        ],
        "private_endpoint_network_policies_enabled": [
            true,
            false
        ],
        "private_link_service_network_policies_enabled": [
            false,
            true
        ],
        "service_endpoints": [
            null
        ]
    },
    "azurerm_subnet_nat_gateway_association": {},
    "azurerm_subnet_network_security_group_association": {},
    "azurerm_subnet_route_table_association": {},
    "azurerm_virtual_hub": {
        "address_prefix": [
            null
        ],
        "location": [
            "eastus",
            "westeurope",
            "australiaeast",
            "japaneast",
            "japanwest",
            "eastasia",
            "uksouth",
            "westus"
        ],
        "sku": [
            null,
            "Standard"
        ]
    },
    "azurerm_virtual_hub_connection": {
        "internet_security_enabled": [
            false,
            true
        ]
    },
    "azurerm_virtual_machine": {
        "delete_data_disks_on_termination": [
            false,
            true
        ],
        "delete_os_disk_on_termination": [
            false,
            true
        ],
        "location": [
            "westeurope",
            "eastus",
            "westus2",
            "centralindia",
            "northeurope",
            "eastus2",
            "westus",
            "japaneast",
            "canadaeast",
            "southcentralus",
            "centralus",
            "westus3",
            "northcentralus"
        ],
        "os_profile_linux_config.disable_password_authentication": [
            true,
            false
        ],
        "os_profile_windows_config.enable_automatic_upgrades": [
            false,
            true
        ],
        "os_profile_windows_config.provision_vm_agent": [
            true,
            false
        ],
        "os_profile_windows_config.timezone": [
            "Pacific Standard Time",
            "Central Standard Time",
            "Tokyo Standard Time"
        ],
        "plan.product": [
            "fortinet_fortigate-vm_v5",
            "fortinet-fortiproxy"
        ],
        "storage_data_disk.create_option": [
            "Empty",
            "Attach"
        ],
        "storage_data_disk.managed_disk_type": [
            "Standard_LRS",
            "Premium_LRS"
        ],
        "storage_image_reference.sku": [
            "2019-Datacenter-Core",
            "22_04-lts",
            "16.04-LTS",
            "2019-Datacenter",
            "11.1",
            "18.04-LTS",
            "SQLDEV",
            "2016-Datacenter",
            "20_04-lts-cvm",
            "7.5",
            "16.04.0-LTS",
            "fortinet_fg-vm_payg_2022",
            "20_04-lts",
            "20_04-lts-gen2",
            "2019-datacenter-gensecond",
            "22_04-lts-gen2",
            "minimal-20_04-lts",
            "fpx-vm-byol"
        ],
        "storage_os_disk.caching": [
            "ReadWrite",
            "ReadOnly"
        ],
        "storage_os_disk.create_option": [
            "FromImage"
        ],
        "storage_os_disk.managed_disk_type": [
            "Standard_LRS",
            "Premium_LRS",
            "StandardSSD_LRS"
        ],
        "storage_os_disk.os_type": [
            "Linux",
            "Windows"
        ],
        "vm_size": [
            "Standard_DS2_v2",
            "Standard_B1ms",
            "Standard_DS1_v2",
            "Standard_B2s",
            "Standard_D1_v2",
            "Standard_A1_v2",
            "Standard_D2s_v3",
            "Standard_F2",
            "Standard_B1s",
            "Standard_DS14_v2",
            "Standard_F4",
            "BANANARAMA",
            "Standard_D8_v4",
            "Standard_D8s_v4",
            "Standard_D2_v2",
            "Standard_B2ms"
        ],
        "zones": [
            null,
            "1",
            "2"
        ]
    },
    "azurerm_virtual_machine_data_disk_attachment": {
        "caching": [
            "ReadWrite",
            "None",
            "ReadOnly"
        ]
    },
    "azurerm_virtual_network": {
        "location": [
            "eastus",
            "canadaeast",
            "westeurope",
            "uksouth",
            "westus2",
            "northeurope",
            "eastus2",
            "westus",
            "southcentralus",
            "norwayeast",
            "westus3",
            "centralus",
            "australiaeast",
            "northcentralus",
            "southeastasia",
            "francecentral",
            "canadacentral",
            "japaneast",
            "southindia"
        ]
    },
    "azurerm_virtual_network_gateway": {
        "active_active": [
            false,
            true
        ],
        "enable_bgp": [
            false,
            true
        ],
        "location": [
            "eastus",
            "westeurope",
            "eastus2",
            "japaneast",
            "uksouth",
            "swedencentral",
            "westus",
            "northeurope",
            "centralindia"
        ],
        "name": [
            "VirtualNetworkGateway"
        ],
        "sku": [
            "Basic",
            "Standard",
            "ErGw3AZ",
            "VpnGw1",
            "VpnGw1AZ"
        ],
        "type": [
            "Vpn",
            "ExpressRoute"
        ],
        "vpn_client_configuration.aad_audience": [
            null
        ],
        "vpn_client_configuration.aad_issuer": [
            null
        ],
        "vpn_client_configuration.aad_tenant": [
            null
        ],
        "vpn_client_configuration.vpn_auth_types": [
            "AAD",
            "Certificate"
        ],
        "vpn_type": [
            "RouteBased",
            "PolicyBased"
        ]
    },
    "azurerm_virtual_network_gateway_connection": {
        "enable_bgp": [
            true,
            false
        ],
        "location": [
            "eastus",
            "centralindia",
            "westeurope",
            "eastus2",
            "japaneast",
            "northeurope",
            "westus"
        ],
        "type": [
            "Vnet2Vnet",
            "IPsec",
            "ExpressRoute"
        ]
    },
    "azurerm_virtual_network_peering": {
        "allow_forwarded_traffic": [
            false,
            true
        ],
        "allow_gateway_transit": [
            false,
            true
        ],
        "use_remote_gateways": [
            false,
            true
        ]
    },
    "azurerm_virtual_wan": {
        "location": [
            "westus",
            "uksouth",
            "westeurope",
            "japaneast",
            "eastasia",
            "eastus",
            "australiaeast"
        ],
        "office365_local_breakout_category": [
            "None",
            "OptimizeAndAllow"
        ]
    },
    "azurerm_windows_virtual_machine": {
        "additional_unattend_content.content": [
            "FILENAME PLACEHOLDER"
        ],
        "additional_unattend_content.setting": [
            "FirstLogonCommands",
            "AutoLogon"
        ],
        "custom_data": [
            null,
            "SGVsbG8gV29ybGQh"
        ],
        "enable_automatic_updates": [
            true,
            false
        ],
        "eviction_policy": [
            null,
            "Delete",
            "Deallocate"
        ],
        "hotpatching_enabled": [
            false,
            true
        ],
        "license_type": [
            null,
            "Windows_Server",
            "Windows_Client"
        ],
        "location": [
            "japaneast",
            "eastasia",
            "japanwest",
            "eastus",
            "northeurope",
            "westeurope",
            "uksouth",
            "australiaeast",
            "westus2",
            "eastus2",
            "canadaeast",
            "southeastasia",
            "northcentralus",
            "westus",
            "centralus",
            "germanywestcentral",
            "brazilsouth",
            "qatarcentral",
            "koreacentral",
            "centralindia",
            "westus3",
            "canadacentral"
        ],
        "os_disk.caching": [
            "ReadWrite",
            "ReadOnly"
        ],
        "os_disk.security_encryption_type": [
            null,
            "VMGuestStateOnly"
        ],
        "os_disk.storage_account_type": [
            "Premium_LRS",
            "StandardSSD_LRS",
            "Standard_LRS"
        ],
        "patch_mode": [
            "AutomaticByOS",
            "AutomaticByPlatform"
        ],
        "priority": [
            "Regular",
            "Spot"
        ],
        "size": [
            "Standard_B4ms",
            "Standard_D2s_v5",
            "Standard_DS1_v2",
            "Standard_F2",
            "Standard_B2MS",
            "Standard_B2s",
            "Standard_B1s",
            "Standard_B2ms",
            "Standard_D2s_v4",
            "Standard_F4",
            "Standard_E2s_v3",
            "Standard_D2ds_v5",
            "Standard_D2s_v3",
            "Standard_F2s_v2",
            "Standard_DS3_v2",
            "Standard_F1s",
            "Standard_D2_v4",
            "Standard_NV6_Promo",
            "Standard_D2S_v3",
            "Standard_B1ms",
            "Standard_B1ls",
            "Standard_D2as_v4",
            "Standard_DS2_v2",
            "standard_f2",
            "Standard_D4s_v3",
            "Standard_D2_v3",
            "Standard_DC2as_v5",
            "Standard_D48s_v3",
            "Standard_DS1_V2"
        ],
        "source_image_reference.offer": [
            "WindowsServer",
            "Windows-10"
        ],
        "source_image_reference.publisher": [
            "MicrosoftWindowsServer",
            "MicrosoftWindowsDesktop"
        ],
        "source_image_reference.sku": [
            "2022-Datacenter",
            "2019-Datacenter",
            "2022-datacenter-azure-edition",
            "win11-21h2-avd",
            "2016-Datacenter",
            "2019-Datacenter-smalldisk",
            "20h2-pro-g2",
            "server-2019",
            "win11-22h2-ent",
            "2022-datacenter",
            "2022-datacenter-smalldisk",
            "20h2-pro",
            "2019-datacenter-gensecond",
            "2012-R2-Datacenter",
            "20h1-pro-g2",
            "win10-21h2-ent-g2",
            "2016-datacenter",
            "win11-22h2-avd-m365",
            "sqldev-gen2",
            "2019-Datacenter-smalldisk-g2",
            "19h2-pro-g2",
            "win11-21h2-pro",
            "SQLDEV"
        ],
        "source_image_reference.version": [
            "latest"
        ],
        "timezone": [
            null,
            "New Zealand Standard Time",
            "GMT Standard Time",
            "UTC"
        ],
        "user_data": [
            null,
            "SGVsbG8gV29ybGQh"
        ],
        "zone": [
            null,
            "1",
            "2",
            "3"
        ]
    }
}

plan := object.get(mock_config.planned_values.root_module, "resources", [])
config := object.get(mock_config.configuration.root_module, "resources", [])

# childPlannedModules :=  object.get(mock_config.planned_values.root_module, "child_modules", [])
# rootPlan := object.get(mock_config.planned_values.root_module, "resources", [])
# childPlan := [item |
#    item := childPlannedModules[_].resources[_]
# ]
# plan := array.concat(rootPlan, childPlan)
# childConfigedModules :=  object.get(mock_config.configuration.root_module, "child_modules", [])
# rootConfig := object.get(mock_config.configuration.root_module, "resources", [])
# childConfig := [item |
#    item := childConfigedModules[_].resources[_]
# ]
# config := array.concat(rootConfig, childConfig)

dependencyDeprecatedList := [[address1, address2, idAttr1] |
    walk(config[id1], [path1, value1])
    address1 := config[id1]["address"]
    address2 := config[id2]["address"]
    id1 != id2
    "references" == path1[count(path1)-1]
    address2 in value1
    attr1 := [elem |
        elem := path1[n]
        n > 0; n < count(path1)-1
        is_string(elem)
    ]
    idAttr1 := concat(".", attr1)
]

dependencyList := [[address1, address2, idAttr1, idAttr2, idAttrSlice1, idAttrSlice2] |
    address1 := config[id1]["address"]
    type1 := config[id1]["type"]
    type1 in object.keys(repoViewTop)
    #any([type1 in globalAncestorDict[resourceTypeLabel], type1 == resourceTypeLabel])
    walk(config[id1], [path1, value1])
    address2 := config[id2]["address"]
    type2 := config[id2]["type"]
    type2 in object.keys(repoViewTop)
    #any([type2 in globalAncestorDict[resourceTypeLabel], type2 == resourceTypeLabel])
    id1 != id2
    "references" == path1[count(path1)-2]
    address2 != value1
    idAddr2 := concat(".", [address2, ""])
    startswith(value1, idAddr2)
    attr1 := [elemStr |
        elem := path1[n]
        n > 0; n < count(path1)-2
        elemStr := sprintf("%v", [elem])
    ]
    idAttr1 := concat(".", attr1)
    idAttrListSlice1 := array.slice(attr1, 0, count(attr1)-1)
    idAttrSlice1 := concat(".", idAttrListSlice1)
    idAttr2 := trim_prefix(value1, idAddr2)
    any([idAttr2 == "name", idAttr2 == "id"])
    any([contains(idAttr1, "_name"), contains(idAttr1, "_id")])
    idAttrList2 := split(idAttr2, ".")
    idAttrListSlice2 := array.slice(idAttrList2, 0, count(idAttrList2)-1)
    idAttrSlice2 := concat(".", idAttrListSlice2)
]

inclusiveDependencyList := [[address1, address2, idAttr1, idAttr2, idAttrSlice1, idAttrSlice2] |
    address1 := config[id1]["address"]
    type1 := config[id1]["type"]
    #type1 in object.keys(repoViewTop)
    #any([type1 in globalAncestorDict[resourceTypeLabel], type1 == resourceTypeLabel])
    walk(config[id1], [path1, value1])
    address2 := config[id2]["address"]
    type2 := config[id2]["type"]
    #type2 in object.keys(repoViewTop)
    #any([type2 in globalAncestorDict[resourceTypeLabel], type2 == resourceTypeLabel])
    id1 != id2
    "references" == path1[count(path1)-2]
    address2 != value1
    idAddr2 := concat(".", [address2, ""])
    startswith(value1, idAddr2)
    attr1 := [elemStr |
        elem := path1[n]
        n > 0; n < count(path1)-2
        elemStr := sprintf("%v", [elem])
    ]
    idAttr1 := concat(".", attr1)
    idAttrListSlice1 := array.slice(attr1, 0, count(attr1)-1)
    idAttrSlice1 := concat(".", idAttrListSlice1)
    idAttr2 := trim_prefix(value1, idAddr2)
    #any([idAttr2 == "name", idAttr2 == "id"])
    #any([contains(idAttr1, "_name"), contains(idAttr1, "_id")])
    idAttrList2 := split(idAttr2, ".")
    idAttrListSlice2 := array.slice(idAttrList2, 0, count(idAttrList2)-1)
    idAttrSlice2 := concat(".", idAttrListSlice2)
]

artificialDependencyList := [[address1, address2] |
    address1 := config[id1]["address"]
    address2 := config[id2]["address"]
    id1 != id2
    depends_on := config[id1]["depends_on"]
    address2 in depends_on
]

artificialPredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | artificialDependencyList[e][0] == address; neighbor := artificialDependencyList[e][1]}
}

artificialAncestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(artificialPredDict, [address])
}

referencesPredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | dependencyList[e][0] == address; neighbor := dependencyList[e][1]}
}

combinedPredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | neighbor := artificialPredDict[address][_]} | {neighbor | neighbor := referencesPredDict[address][_]}
}

inclusivePredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | inclusiveDependencyList[e][0] == address; neighbor := inclusiveDependencyList[e][1]}
}

referencesSuccDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | dependencyList[e][1] == address; neighbor := dependencyList[e][0]}
}

ancestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(combinedPredDict, [address])
}

inclusiveAncestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(inclusivePredDict, [address])
}

naiveAncestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(referencesPredDict, [address])
}

offspringDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    #any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(referencesSuccDict, [address])
}

resourceDict[address] := [address_config, address_plan] {
    address := config[a]["address"]
    address == plan[b]["address"]
    address_config := config[a]
    address_plan := plan[b]
}


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
            "module_calls": {
                "appgw_subnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.3.0/24"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "subnet_name": {
                            "constant_value": "appgw-subnet"
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtualnetwork.vnet_name",
                                "module.virtualnetwork"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "address_prefixes": {
                                "description": "The address prefixes of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.address_prefixes",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_id": {
                                "description": "The ID of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.id",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_name": {
                                "description": "The name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.name",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_subnet.web",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "description": "The address prefixes for the subnet"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the subnet will be created"
                            },
                            "subnet_name": {
                                "description": "The name of the subnet"
                            },
                            "virtual_network_name": {
                                "description": "The name of the virtual network to which the subnet belongs"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "applicationgateway": {
                    "expressions": {
                        "appgw_capacity": {
                            "constant_value": 2
                        },
                        "appgw_name": {
                            "constant_value": "zenpay-appgw"
                        },
                        "appgw_pip_name": {
                            "constant_value": "appgw-pip"
                        },
                        "appgw_subnet_id": {
                            "references": [
                                "module.appgw_subnet.subnet_id",
                                "module.appgw_subnet"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "appgw_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.zenpay_appgw.id",
                                        "azurerm_application_gateway.zenpay_appgw"
                                    ]
                                }
                            },
                            "appgw_public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.appgw_pip.id",
                                        "azurerm_public_ip.appgw_pip"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.zenpay_appgw",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-backend-pool"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "appgw-backend-http-settings"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-frontend-ip"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.appgw_pip.id",
                                                    "azurerm_public_ip.appgw_pip"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-http-port"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "appgw-ip-configuration"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.appgw_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "constant_value": "appgw-frontend-ip"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "appgw-http-port"
                                            },
                                            "name": {
                                                "constant_value": "appgw-http-listener"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
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
                                            "var.appgw_name"
                                        ]
                                    },
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "appgw-backend-pool"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "appgw-backend-http-settings"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "appgw-http-listener"
                                            },
                                            "name": {
                                                "constant_value": "appgw-routing-rule"
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
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "capacity": {
                                                "references": [
                                                    "var.appgw_capacity"
                                                ]
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
                                "name": "zenpay_appgw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            },
                            {
                                "address": "azurerm_public_ip.appgw_pip",
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
                                            "var.appgw_pip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "appgw_pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "appgw_capacity": {
                                "description": "The capacity of the Application Gateway."
                            },
                            "appgw_name": {
                                "description": "The name of the Application Gateway."
                            },
                            "appgw_pip_name": {
                                "description": "The name of the public IP for Application Gateway."
                            },
                            "appgw_subnet_id": {
                                "description": "The subnet ID for the Application Gateway."
                            },
                            "location": {
                                "description": "The location where the resources will be created."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group."
                            }
                        }
                    },
                    "source": "./modules/applicationgateway"
                },
                "db_nsg": {
                    "expressions": {
                        "location": {
                            "constant_value": "southafricanorth"
                        },
                        "nsg_name": {
                            "constant_value": "db-nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "security_rules": {
                            "constant_value": [
                                {
                                    "access": "Allow",
                                    "destination_address_prefix": "*",
                                    "destination_port_range": "1433",
                                    "direction": "Inbound",
                                    "name": "allow-sql",
                                    "priority": 100,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.0.1.0/24",
                                    "source_port_range": "*"
                                }
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "nsg_id": {
                                "description": "The ID of the Network Security Group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.nsg.id",
                                        "azurerm_network_security_group.nsg"
                                    ]
                                }
                            },
                            "nsg_name": {
                                "description": "The name of the Network Security Group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.nsg.name",
                                        "azurerm_network_security_group.nsg"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.nsg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nsg_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "The location where the NSG will be created"
                            },
                            "nsg_name": {
                                "description": "The name of the Network Security Group"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the NSG will be created"
                            },
                            "security_rules": {
                                "description": "A list of security rules to apply to the NSG"
                            }
                        }
                    },
                    "source": "./modules/network_security_group"
                },
                "db_subnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/24"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "subnet_name": {
                            "constant_value": "db-subnet"
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtualnetwork.vnet_name",
                                "module.virtualnetwork"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "address_prefixes": {
                                "description": "The address prefixes of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.address_prefixes",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_id": {
                                "description": "The ID of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.id",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_name": {
                                "description": "The name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.name",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_subnet.web",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "description": "The address prefixes for the subnet"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the subnet will be created"
                            },
                            "subnet_name": {
                                "description": "The name of the subnet"
                            },
                            "virtual_network_name": {
                                "description": "The name of the virtual network to which the subnet belongs"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "keyvault_backup": {
                    "expressions": {
                        "backup_frequency": {
                            "constant_value": "Daily"
                        },
                        "backup_policy_name": {
                            "constant_value": "vm-backup-policy"
                        },
                        "backup_time": {
                            "constant_value": "23:00"
                        },
                        "key_vault_name": {
                            "constant_value": "zenpayzpkeyvault"
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "data.azurerm_client_config.owner.object_id",
                                "data.azurerm_client_config.owner"
                            ]
                        },
                        "recovery_vault_name": {
                            "constant_value": "zenpayrecoveryvault"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "retention_daily_count": {
                            "constant_value": 10
                        },
                        "retention_monthly_count": {
                            "constant_value": 7
                        },
                        "retention_monthly_days": {
                            "constant_value": [
                                "Sunday",
                                "Wednesday"
                            ]
                        },
                        "retention_monthly_weeks": {
                            "constant_value": [
                                "First",
                                "Last"
                            ]
                        },
                        "retention_weekly_count": {
                            "constant_value": 42
                        },
                        "retention_weekly_days": {
                            "constant_value": [
                                "Sunday",
                                "Wednesday",
                                "Friday",
                                "Saturday"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.owner.tenant_id",
                                "data.azurerm_client_config.owner"
                            ]
                        },
                        "timezone": {
                            "constant_value": "UTC"
                        }
                    },
                    "module": {
                        "outputs": {
                            "backup_policy_id": {
                                "description": "The ID of the VM backup policy.",
                                "expression": {
                                    "references": [
                                        "azurerm_backup_policy_vm.vm_backup_policy.id",
                                        "azurerm_backup_policy_vm.vm_backup_policy"
                                    ]
                                }
                            },
                            "key_vault_id": {
                                "description": "The ID of the Azure Key Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.zenpay_key_vault.id",
                                        "azurerm_key_vault.zenpay_key_vault"
                                    ]
                                }
                            },
                            "recovery_vault_id": {
                                "description": "The ID of the Recovery Services Vault.",
                                "expression": {
                                    "references": [
                                        "azurerm_recovery_services_vault.zenpay_recovery_vault.id",
                                        "azurerm_recovery_services_vault.zenpay_recovery_vault"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_backup_policy_vm.vm_backup_policy",
                                "expressions": {
                                    "backup": [
                                        {
                                            "frequency": {
                                                "references": [
                                                    "var.backup_frequency"
                                                ]
                                            },
                                            "time": {
                                                "references": [
                                                    "var.backup_time"
                                                ]
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.backup_policy_name"
                                        ]
                                    },
                                    "recovery_vault_name": {
                                        "references": [
                                            "azurerm_recovery_services_vault.zenpay_recovery_vault.name",
                                            "azurerm_recovery_services_vault.zenpay_recovery_vault"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_daily": [
                                        {
                                            "count": {
                                                "references": [
                                                    "var.retention_daily_count"
                                                ]
                                            }
                                        }
                                    ],
                                    "retention_monthly": [
                                        {
                                            "count": {
                                                "references": [
                                                    "var.retention_monthly_count"
                                                ]
                                            },
                                            "weekdays": {
                                                "references": [
                                                    "var.retention_monthly_days"
                                                ]
                                            },
                                            "weeks": {
                                                "references": [
                                                    "var.retention_monthly_weeks"
                                                ]
                                            }
                                        }
                                    ],
                                    "retention_weekly": [
                                        {
                                            "count": {
                                                "references": [
                                                    "var.retention_weekly_count"
                                                ]
                                            },
                                            "weekdays": {
                                                "references": [
                                                    "var.retention_weekly_days"
                                                ]
                                            }
                                        }
                                    ],
                                    "timezone": {
                                        "references": [
                                            "var.timezone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vm_backup_policy",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_backup_policy_vm"
                            },
                            {
                                "address": "azurerm_key_vault.zenpay_key_vault",
                                "expressions": {
                                    "access_policy": {
                                        "references": [
                                            "var.object_id",
                                            "var.tenant_id"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.key_vault_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "standard"
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_key_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_key_vault"
                            },
                            {
                                "address": "azurerm_recovery_services_vault.zenpay_recovery_vault",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.recovery_vault_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_recovery_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_recovery_services_vault"
                            }
                        ],
                        "variables": {
                            "backup_frequency": {
                                "description": "Frequency of the backup."
                            },
                            "backup_policy_name": {
                                "description": "Name of the VM backup policy."
                            },
                            "backup_time": {
                                "description": "Time of the backup."
                            },
                            "key_vault_name": {
                                "description": "Name of the Azure Key Vault."
                            },
                            "location": {
                                "description": "Location for all resources."
                            },
                            "object_id": {
                                "description": "Object ID for the Azure client."
                            },
                            "recovery_vault_name": {
                                "description": "Name of the Azure Recovery Services Vault."
                            },
                            "resource_group_name": {
                                "description": "Name of the resource group."
                            },
                            "retention_daily_count": {
                                "description": "Retention count for daily backups."
                            },
                            "retention_monthly_count": {
                                "description": "Retention count for monthly backups."
                            },
                            "retention_monthly_days": {
                                "description": "Days of the week for monthly backups."
                            },
                            "retention_monthly_weeks": {
                                "description": "Weeks of the month for monthly backups."
                            },
                            "retention_weekly_count": {
                                "description": "Retention count for weekly backups."
                            },
                            "retention_weekly_days": {
                                "description": "Days of the week for weekly backups."
                            },
                            "tenant_id": {
                                "description": "Tenant ID for Azure."
                            },
                            "timezone": {
                                "description": "Timezone for backup policy."
                            }
                        }
                    },
                    "source": "./modules/keyvault_backup"
                },
                "loadbalancer": {
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "backend_pool_id": {
                                "description": "The ID of the load balancer backend address pool",
                                "expression": {
                                    "references": [
                                        "azurerm_lb_backend_address_pool.web_lb_backend.id",
                                        "azurerm_lb_backend_address_pool.web_lb_backend"
                                    ]
                                }
                            },
                            "lb_rule_id": {
                                "description": "The ID of the load balancer rule",
                                "expression": {
                                    "references": [
                                        "azurerm_lb_rule.web_lb_rule.id",
                                        "azurerm_lb_rule.web_lb_rule"
                                    ]
                                }
                            },
                            "load_balancer_id": {
                                "description": "The ID of the load balancer",
                                "expression": {
                                    "references": [
                                        "azurerm_lb.web_lb.id",
                                        "azurerm_lb.web_lb"
                                    ]
                                }
                            },
                            "probe_id": {
                                "description": "The ID of the load balancer probe",
                                "expression": {
                                    "references": [
                                        "azurerm_lb_probe.web_lb_probe.id",
                                        "azurerm_lb_probe.web_lb_probe"
                                    ]
                                }
                            },
                            "public_ip_id": {
                                "description": "The ID of the public IP address",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.web_lb_pip.id",
                                        "azurerm_public_ip.web_lb_pip"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_lb.web_lb",
                                "expressions": {
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "web-lb-frontend"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.web_lb_pip.id",
                                                    "azurerm_public_ip.web_lb_pip"
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
                                        "constant_value": "web-lb"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb"
                            },
                            {
                                "address": "azurerm_lb_backend_address_pool.web_lb_backend",
                                "expressions": {
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.web_lb.id",
                                            "azurerm_lb.web_lb"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "web-lb-backend"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_backend",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_backend_address_pool"
                            },
                            {
                                "address": "azurerm_lb_probe.web_lb_probe",
                                "expressions": {
                                    "interval_in_seconds": {
                                        "constant_value": 15
                                    },
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.web_lb.id",
                                            "azurerm_lb.web_lb"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "http-probe"
                                    },
                                    "number_of_probes": {
                                        "constant_value": 2
                                    },
                                    "port": {
                                        "constant_value": 80
                                    },
                                    "protocol": {
                                        "constant_value": "Http"
                                    },
                                    "request_path": {
                                        "constant_value": "/"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_probe",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_probe"
                            },
                            {
                                "address": "azurerm_lb_rule.web_lb_rule",
                                "expressions": {
                                    "backend_address_pool_ids": {
                                        "references": [
                                            "azurerm_lb_backend_address_pool.web_lb_backend.id",
                                            "azurerm_lb_backend_address_pool.web_lb_backend"
                                        ]
                                    },
                                    "backend_port": {
                                        "constant_value": 80
                                    },
                                    "frontend_ip_configuration_name": {
                                        "references": [
                                            "azurerm_lb.web_lb.frontend_ip_configuration[0].name",
                                            "azurerm_lb.web_lb.frontend_ip_configuration[0]",
                                            "azurerm_lb.web_lb.frontend_ip_configuration",
                                            "azurerm_lb.web_lb"
                                        ]
                                    },
                                    "frontend_port": {
                                        "constant_value": 80
                                    },
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.web_lb.id",
                                            "azurerm_lb.web_lb"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "http-rule"
                                    },
                                    "probe_id": {
                                        "references": [
                                            "azurerm_lb_probe.web_lb_probe.id",
                                            "azurerm_lb_probe.web_lb_probe"
                                        ]
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_rule"
                            },
                            {
                                "address": "azurerm_public_ip.web_lb_pip",
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
                                        "constant_value": "web-lb-pip"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_lb_pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "The location/region where resources will be created"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group in which resources will be created"
                            }
                        }
                    },
                    "source": "./modules/loadbalancer"
                },
                "security": {
                    "expressions": {
                        "contact_email": {
                            "references": [
                                "var.contact_email"
                            ]
                        },
                        "contact_phone": {
                            "references": [
                                "var.contact_phone"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_id": {
                            "references": [
                                "module.zenpay_resource_group.resource_group_name",
                                "module.zenpay_resource_group"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "log_analytics_workspace_id": {
                                "description": "The ID of the Log Analytics Workspace created for security posture.",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.securitypostlog.id",
                                        "azurerm_log_analytics_workspace.securitypostlog"
                                    ]
                                }
                            },
                            "security_contact_email": {
                                "description": "The email address of the security contact.",
                                "expression": {
                                    "references": [
                                        "azurerm_security_center_contact.security_contact.email",
                                        "azurerm_security_center_contact.security_contact"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_log_analytics_workspace.securitypostlog",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.log_analytics_workspace_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_in_days": {
                                        "references": [
                                            "var.retention_in_days"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "PerGB2018"
                                    }
                                },
                                "mode": "managed",
                                "name": "securitypostlog",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "azurerm_security_center_auto_provisioning.auto_provisioning",
                                "expressions": {
                                    "auto_provision": {
                                        "constant_value": "On"
                                    }
                                },
                                "mode": "managed",
                                "name": "auto_provisioning",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_security_center_auto_provisioning"
                            },
                            {
                                "address": "azurerm_security_center_contact.security_contact",
                                "expressions": {
                                    "alert_notifications": {
                                        "constant_value": true
                                    },
                                    "alerts_to_admins": {
                                        "constant_value": true
                                    },
                                    "email": {
                                        "references": [
                                            "var.contact_email"
                                        ]
                                    },
                                    "phone": {
                                        "references": [
                                            "var.contact_phone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "security_contact",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_security_center_contact"
                            },
                            {
                                "address": "azurerm_security_center_workspace.securityposturews",
                                "expressions": {
                                    "scope": {
                                        "references": [
                                            "var.resource_group_id"
                                        ]
                                    },
                                    "workspace_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.securitypostlog.id",
                                            "azurerm_log_analytics_workspace.securitypostlog"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "securityposturews",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_security_center_workspace"
                            }
                        ],
                        "variables": {
                            "contact_email": {
                                "description": "The email address for security contact."
                            },
                            "contact_phone": {
                                "description": "The phone number for security contact."
                            },
                            "location": {
                                "description": "The location where resources will be deployed."
                            },
                            "log_analytics_workspace_name": {
                                "default": "security-posture-log-analytics",
                                "description": "The name of the Log Analytics Workspace."
                            },
                            "resource_group_id": {
                                "description": "The ID of the resource group."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group."
                            },
                            "retention_in_days": {
                                "default": 30,
                                "description": "The number of days to retain log data in the Log Analytics Workspace."
                            }
                        }
                    },
                    "source": "./modules/security"
                },
                "sql": {
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "var.admin_username"
                            ]
                        },
                        "environment": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "sql_db_name": {
                            "references": [
                                "var.sql_db_name"
                            ]
                        },
                        "sql_server_name": {
                            "references": [
                                "var.sql_server_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "sql_db_name": {
                                "description": "The name of the SQL Database.",
                                "expression": {
                                    "references": [
                                        "azurerm_sql_database.zenpaysqldb.name",
                                        "azurerm_sql_database.zenpaysqldb"
                                    ]
                                }
                            },
                            "sql_server_name": {
                                "description": "The name of the SQL Server.",
                                "expression": {
                                    "references": [
                                        "azurerm_sql_server.zenpaysqlserver.name",
                                        "azurerm_sql_server.zenpaysqlserver"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_sql_database.zenpaysqldb",
                                "expressions": {
                                    "edition": {
                                        "constant_value": "Standard"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.sql_db_name"
                                        ]
                                    },
                                    "requested_service_objective_name": {
                                        "constant_value": "S0"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "server_name": {
                                        "references": [
                                            "azurerm_sql_server.zenpaysqlserver.name",
                                            "azurerm_sql_server.zenpaysqlserver"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpaysqldb",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_sql_database"
                            },
                            {
                                "address": "azurerm_sql_firewall_rule.allow_azure_services",
                                "expressions": {
                                    "end_ip_address": {
                                        "constant_value": "0.0.0.0"
                                    },
                                    "name": {
                                        "constant_value": "AllowAzureServices"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "server_name": {
                                        "references": [
                                            "azurerm_sql_server.zenpaysqlserver.name",
                                            "azurerm_sql_server.zenpaysqlserver"
                                        ]
                                    },
                                    "start_ip_address": {
                                        "constant_value": "0.0.0.0"
                                    }
                                },
                                "mode": "managed",
                                "name": "allow_azure_services",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_sql_firewall_rule"
                            },
                            {
                                "address": "azurerm_sql_server.zenpaysqlserver",
                                "expressions": {
                                    "administrator_login": {
                                        "references": [
                                            "var.admin_username"
                                        ]
                                    },
                                    "administrator_login_password": {
                                        "references": [
                                            "var.admin_password"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.sql_server_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.environment"
                                        ]
                                    },
                                    "version": {
                                        "constant_value": "12.0"
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpaysqlserver",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_sql_server"
                            }
                        ],
                        "variables": {
                            "admin_password": {
                                "description": "The administrator password for the SQL Server.",
                                "sensitive": true
                            },
                            "admin_username": {
                                "description": "The administrator username for the SQL Server."
                            },
                            "environment": {
                                "description": "The environment tag for the resources."
                            },
                            "location": {
                                "description": "The location where the resources will be created."
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group."
                            },
                            "sql_db_name": {
                                "description": "The name of the SQL Database."
                            },
                            "sql_server_name": {
                                "description": "The name of the SQL Server."
                            }
                        }
                    },
                    "source": "./modules/sql"
                },
                "virtualmachines": {
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "var.admin_username"
                            ]
                        },
                        "db_subnet_id": {
                            "references": [
                                "module.db_subnet.subnet_id",
                                "module.db_subnet"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "web_nic_count": {
                            "constant_value": 2
                        },
                        "web_subnet_id": {
                            "references": [
                                "module.web_subnet.subnet_id",
                                "module.web_subnet"
                            ]
                        },
                        "web_vm_count": {
                            "constant_value": 2
                        }
                    },
                    "module": {
                        "outputs": {
                            "avset_id": {
                                "description": "The ID of the availability set",
                                "expression": {
                                    "references": [
                                        "azurerm_availability_set.avset.id",
                                        "azurerm_availability_set.avset"
                                    ]
                                }
                            },
                            "db_nic_id": {
                                "description": "The ID of the database network interface",
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.db_nic.id",
                                        "azurerm_network_interface.db_nic"
                                    ]
                                }
                            },
                            "db_vm_id": {
                                "description": "The ID of the database virtual machine",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_machine.db_vm.id",
                                        "azurerm_virtual_machine.db_vm"
                                    ]
                                }
                            },
                            "web_nic_ids": {
                                "description": "The IDs of the web network interfaces",
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.web_nic"
                                    ]
                                }
                            },
                            "web_vm_ids": {
                                "description": "The IDs of the web virtual machines",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_machine.web_vm"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_availability_set.avset",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "web-avset"
                                    },
                                    "platform_fault_domain_count": {
                                        "constant_value": 2
                                    },
                                    "platform_update_domain_count": {
                                        "constant_value": 5
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "avset",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_availability_set"
                            },
                            {
                                "address": "azurerm_network_interface.db_nic",
                                "expressions": {
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "dbnic-ip"
                                            },
                                            "private_ip_address_allocation": {
                                                "constant_value": "Dynamic"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.db_subnet_id"
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
                                        "constant_value": "dbnic"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "db_nic",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface.web_nic",
                                "count_expression": {
                                    "references": [
                                        "var.web_nic_count"
                                    ]
                                },
                                "expressions": {
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "count.index"
                                                ]
                                            },
                                            "private_ip_address_allocation": {
                                                "constant_value": "Dynamic"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.web_subnet_id"
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
                                            "count.index"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web_nic",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_virtual_machine.db_vm",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "dbvm"
                                    },
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.db_nic.id",
                                            "azurerm_network_interface.db_nic"
                                        ]
                                    },
                                    "os_profile": [
                                        {
                                            "admin_password": {
                                                "references": [
                                                    "var.admin_password"
                                                ]
                                            },
                                            "admin_username": {
                                                "references": [
                                                    "var.admin_username"
                                                ]
                                            },
                                            "computer_name": {
                                                "constant_value": "hostname-db"
                                            }
                                        }
                                    ],
                                    "os_profile_windows_config": [
                                        {}
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
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
                                            "disk_size_gb": {
                                                "constant_value": 256
                                            },
                                            "managed_disk_type": {
                                                "constant_value": "Premium_LRS"
                                            },
                                            "name": {
                                                "constant_value": "db_os_disk"
                                            }
                                        }
                                    ],
                                    "vm_size": {
                                        "constant_value": "Standard_D4s_v3"
                                    }
                                },
                                "mode": "managed",
                                "name": "db_vm",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_machine"
                            },
                            {
                                "address": "azurerm_virtual_machine.web_vm",
                                "count_expression": {
                                    "references": [
                                        "var.web_vm_count"
                                    ]
                                },
                                "expressions": {
                                    "availability_set_id": {
                                        "references": [
                                            "azurerm_availability_set.avset.id",
                                            "azurerm_availability_set.avset"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "count.index"
                                        ]
                                    },
                                    "network_interface_ids": {
                                        "references": [
                                            "azurerm_network_interface.web_nic",
                                            "count.index"
                                        ]
                                    },
                                    "os_profile": [
                                        {
                                            "admin_password": {
                                                "references": [
                                                    "var.admin_password"
                                                ]
                                            },
                                            "admin_username": {
                                                "references": [
                                                    "var.admin_username"
                                                ]
                                            },
                                            "computer_name": {
                                                "references": [
                                                    "count.index"
                                                ]
                                            }
                                        }
                                    ],
                                    "os_profile_windows_config": [
                                        {}
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
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
                                            "disk_size_gb": {
                                                "constant_value": 128
                                            },
                                            "managed_disk_type": {
                                                "constant_value": "Premium_LRS"
                                            },
                                            "name": {
                                                "references": [
                                                    "count.index"
                                                ]
                                            }
                                        }
                                    ],
                                    "vm_size": {
                                        "constant_value": "Standard_D2s_v3"
                                    }
                                },
                                "mode": "managed",
                                "name": "web_vm",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_machine"
                            }
                        ],
                        "variables": {
                            "admin_password": {
                                "description": "The admin password for the virtual machines"
                            },
                            "admin_username": {
                                "description": "The admin username for the virtual machines"
                            },
                            "db_subnet_id": {
                                "description": "The ID of the subnet for the database network interface"
                            },
                            "location": {
                                "description": "The location where the resources will be created"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the resources will be created"
                            },
                            "web_nic_count": {
                                "description": "Number of web network interfaces to create"
                            },
                            "web_subnet_id": {
                                "description": "The ID of the subnet for web network interfaces"
                            },
                            "web_vm_count": {
                                "description": "Number of web virtual machines to create"
                            }
                        }
                    },
                    "source": "./modules/virtualmachines"
                },
                "virtualnetwork": {
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
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.vnet_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "vnet_address_space": {
                                "description": "The address space of the virtual network",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.zenpay_vnet.address_space",
                                        "azurerm_virtual_network.zenpay_vnet"
                                    ]
                                }
                            },
                            "vnet_id": {
                                "description": "The ID of the virtual network",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.zenpay_vnet.id",
                                        "azurerm_virtual_network.zenpay_vnet"
                                    ]
                                }
                            },
                            "vnet_name": {
                                "description": "The name of the virtual network",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.zenpay_vnet.name",
                                        "azurerm_virtual_network.zenpay_vnet"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_virtual_network.zenpay_vnet",
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
                                            "var.vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpay_vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "address_space": {
                                "description": "The address space for the virtual network"
                            },
                            "location": {
                                "description": "The location of the virtual network"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the virtual network will be created"
                            },
                            "vnet_name": {
                                "description": "The name of the virtual network"
                            }
                        }
                    },
                    "source": "./modules/virtualnetwork"
                },
                "web_nsg": {
                    "expressions": {
                        "location": {
                            "constant_value": "southafricanorth"
                        },
                        "nsg_name": {
                            "constant_value": "web-nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "security_rules": {
                            "constant_value": [
                                {
                                    "access": "Allow",
                                    "destination_address_prefix": "*",
                                    "destination_port_range": "80",
                                    "direction": "Inbound",
                                    "name": "allow-http",
                                    "priority": 100,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "*",
                                    "source_port_range": "*"
                                },
                                {
                                    "access": "Allow",
                                    "destination_address_prefix": "*",
                                    "destination_port_range": "443",
                                    "direction": "Inbound",
                                    "name": "allow-https",
                                    "priority": 110,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "*",
                                    "source_port_range": "*"
                                }
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "nsg_id": {
                                "description": "The ID of the Network Security Group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.nsg.id",
                                        "azurerm_network_security_group.nsg"
                                    ]
                                }
                            },
                            "nsg_name": {
                                "description": "The name of the Network Security Group",
                                "expression": {
                                    "references": [
                                        "azurerm_network_security_group.nsg.name",
                                        "azurerm_network_security_group.nsg"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.nsg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nsg_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "The location where the NSG will be created"
                            },
                            "nsg_name": {
                                "description": "The name of the Network Security Group"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the NSG will be created"
                            },
                            "security_rules": {
                                "description": "A list of security rules to apply to the NSG"
                            }
                        }
                    },
                    "source": "./modules/network_security_group"
                },
                "web_subnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.resource_group_name"
                            ]
                        },
                        "subnet_name": {
                            "constant_value": "web-subnet"
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtualnetwork.vnet_name",
                                "module.virtualnetwork"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "address_prefixes": {
                                "description": "The address prefixes of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.address_prefixes",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_id": {
                                "description": "The ID of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.id",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            },
                            "subnet_name": {
                                "description": "The name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.web.name",
                                        "azurerm_subnet.web"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_subnet.web",
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.address_prefixes"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "web",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "description": "The address prefixes for the subnet"
                            },
                            "resource_group_name": {
                                "description": "The name of the resource group where the subnet will be created"
                            },
                            "subnet_name": {
                                "description": "The name of the subnet"
                            },
                            "virtual_network_name": {
                                "description": "The name of the virtual network to which the subnet belongs"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "zenpay_resource_group": {
                    "expressions": {
                        "location": {
                            "constant_value": "South Africa North"
                        },
                        "name": {
                            "constant_value": "zenpayrg"
                        }
                    },
                    "module": {
                        "outputs": {
                            "resource_group_location": {
                                "description": "The location of the created resource group",
                                "expression": {
                                    "references": [
                                        "var.location"
                                    ]
                                }
                            },
                            "resource_group_name": {
                                "description": "The name of the created resource group",
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.zenpayrg.name",
                                        "azurerm_resource_group.zenpayrg"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_resource_group.zenpayrg",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "zenpayrg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "South Africa North",
                                "description": "The location where the resource group will be created"
                            },
                            "name": {
                                "description": "The name of the resource group"
                            }
                        }
                    },
                    "source": "./modules/resource-group"
                }
            },
            "outputs": {
                "appgw_id": {
                    "expression": {
                        "references": [
                            "module.applicationgateway.appgw_id",
                            "module.applicationgateway"
                        ]
                    }
                },
                "appgw_public_ip_id": {
                    "expression": {
                        "references": [
                            "module.applicationgateway.appgw_public_ip_id",
                            "module.applicationgateway"
                        ]
                    }
                },
                "appgw_subnet_address_prefixes": {
                    "expression": {
                        "references": [
                            "module.appgw_subnet.address_prefixes",
                            "module.appgw_subnet"
                        ]
                    }
                },
                "appgw_subnet_id": {
                    "expression": {
                        "references": [
                            "module.appgw_subnet.subnet_id",
                            "module.appgw_subnet"
                        ]
                    }
                },
                "appgw_subnet_name": {
                    "expression": {
                        "references": [
                            "module.appgw_subnet.subnet_name",
                            "module.appgw_subnet"
                        ]
                    }
                },
                "avset_id": {
                    "description": "The ID of the availability set",
                    "expression": {
                        "references": [
                            "module.virtualmachines.avset_id",
                            "module.virtualmachines"
                        ]
                    }
                },
                "backend_pool_id": {
                    "description": "The ID of the load balancer backend address pool",
                    "expression": {
                        "references": [
                            "module.loadbalancer.backend_pool_id",
                            "module.loadbalancer"
                        ]
                    }
                },
                "db_nic_id": {
                    "description": "The ID of the database network interface",
                    "expression": {
                        "references": [
                            "module.virtualmachines.db_nic_id",
                            "module.virtualmachines"
                        ]
                    }
                },
                "db_nsg_id": {
                    "expression": {
                        "references": [
                            "module.db_nsg.nsg_id",
                            "module.db_nsg"
                        ]
                    }
                },
                "db_subnet_address_prefixes": {
                    "expression": {
                        "references": [
                            "module.db_subnet.address_prefixes",
                            "module.db_subnet"
                        ]
                    }
                },
                "db_subnet_id": {
                    "expression": {
                        "references": [
                            "module.db_subnet.subnet_id",
                            "module.db_subnet"
                        ]
                    }
                },
                "db_subnet_name": {
                    "expression": {
                        "references": [
                            "module.db_subnet.subnet_name",
                            "module.db_subnet"
                        ]
                    }
                },
                "db_vm_id": {
                    "description": "The ID of the database virtual machine",
                    "expression": {
                        "references": [
                            "module.virtualmachines.db_vm_id",
                            "module.virtualmachines"
                        ]
                    }
                },
                "lb_rule_id": {
                    "description": "The ID of the load balancer rule",
                    "expression": {
                        "references": [
                            "module.loadbalancer.lb_rule_id",
                            "module.loadbalancer"
                        ]
                    }
                },
                "load_balancer_id": {
                    "description": "The ID of the load balancer",
                    "expression": {
                        "references": [
                            "module.loadbalancer.load_balancer_id",
                            "module.loadbalancer"
                        ]
                    }
                },
                "log_analytics_workspace_id": {
                    "description": "The ID of the Log Analytics Workspace created for security posture.",
                    "expression": {
                        "references": [
                            "module.security.log_analytics_workspace_id",
                            "module.security"
                        ]
                    }
                },
                "probe_id": {
                    "description": "The ID of the load balancer probe",
                    "expression": {
                        "references": [
                            "module.loadbalancer.probe_id",
                            "module.loadbalancer"
                        ]
                    }
                },
                "resource_group_location": {
                    "description": "The location of the created resource group",
                    "expression": {
                        "references": [
                            "module.zenpay_resource_group.resource_group_location",
                            "module.zenpay_resource_group"
                        ]
                    }
                },
                "resource_group_name": {
                    "description": "The name of the created resource group",
                    "expression": {
                        "references": [
                            "module.zenpay_resource_group.resource_group_name",
                            "module.zenpay_resource_group"
                        ]
                    }
                },
                "security_contact_email": {
                    "description": "The email address of the security contact.",
                    "expression": {
                        "references": [
                            "module.security.security_contact_email",
                            "module.security"
                        ]
                    }
                },
                "sql_db_name": {
                    "description": "The name of the SQL Database.",
                    "expression": {
                        "references": [
                            "module.sql.sql_db_name",
                            "module.sql"
                        ]
                    }
                },
                "sql_server_name": {
                    "description": "The name of the SQL Server.",
                    "expression": {
                        "references": [
                            "module.sql.sql_server_name",
                            "module.sql"
                        ]
                    }
                },
                "web_nic_ids": {
                    "description": "The IDs of the web network interfaces",
                    "expression": {
                        "references": [
                            "module.virtualmachines.web_nic_ids",
                            "module.virtualmachines"
                        ]
                    }
                },
                "web_nsg_id": {
                    "expression": {
                        "references": [
                            "module.web_nsg.nsg_id",
                            "module.web_nsg"
                        ]
                    }
                },
                "web_subnet_address_prefixes": {
                    "expression": {
                        "references": [
                            "module.web_subnet.address_prefixes",
                            "module.web_subnet"
                        ]
                    }
                },
                "web_subnet_id": {
                    "expression": {
                        "references": [
                            "module.web_subnet.subnet_id",
                            "module.web_subnet"
                        ]
                    }
                },
                "web_subnet_name": {
                    "expression": {
                        "references": [
                            "module.web_subnet.subnet_name",
                            "module.web_subnet"
                        ]
                    }
                },
                "web_vm_ids": {
                    "description": "The IDs of the web virtual machines",
                    "expression": {
                        "references": [
                            "module.virtualmachines.web_vm_ids",
                            "module.virtualmachines"
                        ]
                    }
                },
                "zenpay_vnet_id": {
                    "expression": {
                        "references": [
                            "module.virtualnetwork.vnet_id",
                            "module.virtualnetwork"
                        ]
                    }
                },
                "zenpay_vnet_name": {
                    "expression": {
                        "references": [
                            "module.virtualnetwork.vnet_name",
                            "module.virtualnetwork"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "data.azurerm_client_config.owner",
                    "mode": "data",
                    "name": "owner",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ],
            "variables": {
                "address_space": {
                    "description": "The address space for the virtual network"
                },
                "admin_password": {
                    "description": "The admin password for the virtual machines"
                },
                "admin_username": {
                    "description": "The admin username for the virtual machines"
                },
                "contact_email": {
                    "description": "The email address for security contact."
                },
                "contact_phone": {
                    "description": "The phone number for security contact."
                },
                "db_subnet_id": {
                    "description": "The ID of the subnet for the database network interface"
                },
                "environment": {
                    "default": "Production",
                    "description": "The environment tag for the resources."
                },
                "location": {
                    "description": "The location of the virtual network"
                },
                "resource_group_name": {
                    "description": "The name of the resource group for the zenpay network"
                },
                "sql_db_name": {
                    "default": "zenpaysqldb",
                    "description": "The name of the SQL Database."
                },
                "sql_server_name": {
                    "default": "zenpaysqlserver",
                    "description": "The name of the SQL Server."
                },
                "vnet_name": {
                    "description": "The name of the virtual network"
                },
                "web_subnet_id": {
                    "description": "The ID of the subnet for web network interfaces"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "appgw_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "appgw_public_ip_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "appgw_subnet_address_prefixes": {
            "actions": [
                "create"
            ],
            "after": [
                "10.0.3.0/24"
            ],
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "appgw_subnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "appgw_subnet_name": {
            "actions": [
                "create"
            ],
            "after": "appgw-subnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "avset_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "backend_pool_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "db_nic_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "db_nsg_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "db_subnet_address_prefixes": {
            "actions": [
                "create"
            ],
            "after": [
                "10.0.2.0/24"
            ],
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "db_subnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "db_subnet_name": {
            "actions": [
                "create"
            ],
            "after": "db-subnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "db_vm_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "lb_rule_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "load_balancer_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "log_analytics_workspace_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "probe_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "resource_group_location": {
            "actions": [
                "create"
            ],
            "after": "South Africa North",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "resource_group_name": {
            "actions": [
                "create"
            ],
            "after": "zenpayrg",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "security_contact_email": {
            "actions": [
                "create"
            ],
            "after": "adminemailadrress@gmail.com",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "sql_db_name": {
            "actions": [
                "create"
            ],
            "after": "zenpaysqldb",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "sql_server_name": {
            "actions": [
                "create"
            ],
            "after": "zenpaysqlserver",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_nic_ids": {
            "actions": [
                "create"
            ],
            "after": [
                null,
                null
            ],
            "after_sensitive": false,
            "after_unknown": [
                true,
                true
            ],
            "before": null,
            "before_sensitive": false
        },
        "web_nsg_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_address_prefixes": {
            "actions": [
                "create"
            ],
            "after": [
                "10.0.1.0/24"
            ],
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "web_subnet_name": {
            "actions": [
                "create"
            ],
            "after": "web-subnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "web_vm_ids": {
            "actions": [
                "create"
            ],
            "after": [
                null,
                null
            ],
            "after_sensitive": false,
            "after_unknown": [
                true,
                true
            ],
            "before": null,
            "before_sensitive": false
        },
        "zenpay_vnet_id": {
            "actions": [
                "create"
            ],
            "after_sensitive": false,
            "after_unknown": true,
            "before": null,
            "before_sensitive": false
        },
        "zenpay_vnet_name": {
            "actions": [
                "create"
            ],
            "after": "zenpay-vnet",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "appgw_id": {
                "sensitive": false
            },
            "appgw_public_ip_id": {
                "sensitive": false
            },
            "appgw_subnet_address_prefixes": {
                "sensitive": false,
                "type": [
                    "list",
                    "string"
                ],
                "value": [
                    "10.0.3.0/24"
                ]
            },
            "appgw_subnet_id": {
                "sensitive": false
            },
            "appgw_subnet_name": {
                "sensitive": false,
                "type": "string",
                "value": "appgw-subnet"
            },
            "avset_id": {
                "sensitive": false
            },
            "backend_pool_id": {
                "sensitive": false
            },
            "db_nic_id": {
                "sensitive": false
            },
            "db_nsg_id": {
                "sensitive": false
            },
            "db_subnet_address_prefixes": {
                "sensitive": false,
                "type": [
                    "list",
                    "string"
                ],
                "value": [
                    "10.0.2.0/24"
                ]
            },
            "db_subnet_id": {
                "sensitive": false
            },
            "db_subnet_name": {
                "sensitive": false,
                "type": "string",
                "value": "db-subnet"
            },
            "db_vm_id": {
                "sensitive": false
            },
            "lb_rule_id": {
                "sensitive": false
            },
            "load_balancer_id": {
                "sensitive": false
            },
            "log_analytics_workspace_id": {
                "sensitive": false
            },
            "probe_id": {
                "sensitive": false
            },
            "resource_group_location": {
                "sensitive": false,
                "type": "string",
                "value": "South Africa North"
            },
            "resource_group_name": {
                "sensitive": false,
                "type": "string",
                "value": "zenpayrg"
            },
            "security_contact_email": {
                "sensitive": false,
                "type": "string",
                "value": "adminemailadrress@gmail.com"
            },
            "sql_db_name": {
                "sensitive": false,
                "type": "string",
                "value": "zenpaysqldb"
            },
            "sql_server_name": {
                "sensitive": false,
                "type": "string",
                "value": "zenpaysqlserver"
            },
            "web_nic_ids": {
                "sensitive": false
            },
            "web_nsg_id": {
                "sensitive": false
            },
            "web_subnet_address_prefixes": {
                "sensitive": false,
                "type": [
                    "list",
                    "string"
                ],
                "value": [
                    "10.0.1.0/24"
                ]
            },
            "web_subnet_id": {
                "sensitive": false
            },
            "web_subnet_name": {
                "sensitive": false,
                "type": "string",
                "value": "web-subnet"
            },
            "web_vm_ids": {
                "sensitive": false
            },
            "zenpay_vnet_id": {
                "sensitive": false
            },
            "zenpay_vnet_name": {
                "sensitive": false,
                "type": "string",
                "value": "zenpay-vnet"
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.appgw_subnet",
                    "resources": [
                        {
                            "address": "module.appgw_subnet.azurerm_subnet.web",
                            "mode": "managed",
                            "name": "web",
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
                                    "10.0.3.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "appgw-subnet",
                                "resource_group_name": "my-resource-group",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zenpay-vnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.applicationgateway",
                    "resources": [
                        {
                            "address": "module.applicationgateway.azurerm_application_gateway.zenpay_appgw",
                            "mode": "managed",
                            "name": "zenpay_appgw",
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
                                        "fqdns": [],
                                        "ip_addresses": [],
                                        "name": "appgw-backend-pool"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "appgw-backend-http-settings",
                                        "path": "",
                                        "pick_host_name_from_backend_address": false,
                                        "port": 80,
                                        "probe_name": "",
                                        "protocol": "Http",
                                        "request_timeout": 30,
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
                                        "name": "appgw-frontend-ip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "appgw-http-port",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appgw-ip-configuration"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "appgw-frontend-ip",
                                        "frontend_port_name": "appgw-http-port",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "appgw-http-listener",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "southafricanorth",
                                "name": "zenpay-appgw",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "appgw-backend-pool",
                                        "backend_http_settings_name": "appgw-backend-http-settings",
                                        "http_listener_name": "appgw-http-listener",
                                        "name": "appgw-routing-rule",
                                        "priority": 1,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "my-resource-group",
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
                            "address": "module.applicationgateway.azurerm_public_ip.appgw_pip",
                            "mode": "managed",
                            "name": "appgw_pip",
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
                                "location": "southafricanorth",
                                "name": "appgw-pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "my-resource-group",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.db_nsg",
                    "resources": [
                        {
                            "address": "module.db_nsg.azurerm_network_security_group.nsg",
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
                                    }
                                ]
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "southafricanorth",
                                "name": "db-nsg",
                                "resource_group_name": "my-resource-group",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "1433",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "allow-sql",
                                        "priority": 100,
                                        "protocol": "Tcp",
                                        "source_address_prefix": "10.0.1.0/24",
                                        "source_address_prefixes": [],
                                        "source_application_security_group_ids": [],
                                        "source_port_range": "*",
                                        "source_port_ranges": []
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.db_subnet",
                    "resources": [
                        {
                            "address": "module.db_subnet.azurerm_subnet.web",
                            "mode": "managed",
                            "name": "web",
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
                                    "10.0.2.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "db-subnet",
                                "resource_group_name": "my-resource-group",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zenpay-vnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.keyvault_backup",
                    "resources": [
                        {
                            "address": "module.keyvault_backup.azurerm_backup_policy_vm.vm_backup_policy",
                            "mode": "managed",
                            "name": "vm_backup_policy",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backup": [
                                    {}
                                ],
                                "instant_restore_resource_group": [],
                                "retention_daily": [
                                    {}
                                ],
                                "retention_monthly": [
                                    {
                                        "weekdays": [
                                            false,
                                            false
                                        ],
                                        "weeks": [
                                            false,
                                            false
                                        ]
                                    }
                                ],
                                "retention_weekly": [
                                    {
                                        "weekdays": [
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    }
                                ],
                                "retention_yearly": [],
                                "tiering_policy": []
                            },
                            "type": "azurerm_backup_policy_vm",
                            "values": {
                                "backup": [
                                    {
                                        "frequency": "Daily",
                                        "hour_duration": null,
                                        "hour_interval": null,
                                        "time": "23:00",
                                        "weekdays": null
                                    }
                                ],
                                "instant_restore_resource_group": [],
                                "name": "vm-backup-policy",
                                "policy_type": "V1",
                                "recovery_vault_name": "zenpayrecoveryvault",
                                "resource_group_name": "my-resource-group",
                                "retention_daily": [
                                    {
                                        "count": 10
                                    }
                                ],
                                "retention_monthly": [
                                    {
                                        "count": 7,
                                        "days": null,
                                        "include_last_days": false,
                                        "weekdays": [
                                            "Sunday",
                                            "Wednesday"
                                        ],
                                        "weeks": [
                                            "First",
                                            "Last"
                                        ]
                                    }
                                ],
                                "retention_weekly": [
                                    {
                                        "count": 42,
                                        "weekdays": [
                                            "Friday",
                                            "Saturday",
                                            "Sunday",
                                            "Wednesday"
                                        ]
                                    }
                                ],
                                "retention_yearly": [],
                                "tiering_policy": [],
                                "timeouts": null,
                                "timezone": "UTC"
                            }
                        },
                        {
                            "address": "module.keyvault_backup.azurerm_key_vault.zenpay_key_vault",
                            "mode": "managed",
                            "name": "zenpay_key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [
                                    {
                                        "key_permissions": [
                                            false,
                                            false
                                        ],
                                        "secret_permissions": [
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
                                        "certificate_permissions": null,
                                        "key_permissions": [
                                            "Get",
                                            "List"
                                        ],
                                        "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                        "secret_permissions": [
                                            "Get",
                                            "List"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    }
                                ],
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": null,
                                "enabled_for_template_deployment": null,
                                "location": "southafricanorth",
                                "name": "zenpayzpkeyvault",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": null,
                                "resource_group_name": "my-resource-group",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 90,
                                "tags": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.keyvault_backup.azurerm_recovery_services_vault.zenpay_recovery_vault",
                            "mode": "managed",
                            "name": "zenpay_recovery_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "encryption": [],
                                "identity": [],
                                "monitoring": []
                            },
                            "type": "azurerm_recovery_services_vault",
                            "values": {
                                "classic_vmware_replication_enabled": null,
                                "cross_region_restore_enabled": false,
                                "encryption": [],
                                "identity": [],
                                "location": "southafricanorth",
                                "monitoring": [],
                                "name": "zenpayrecoveryvault",
                                "public_network_access_enabled": true,
                                "resource_group_name": "my-resource-group",
                                "sku": "Standard",
                                "soft_delete_enabled": true,
                                "storage_mode_type": "GeoRedundant",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.loadbalancer",
                    "resources": [
                        {
                            "address": "module.loadbalancer.azurerm_lb.web_lb",
                            "mode": "managed",
                            "name": "web_lb",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "frontend_ip_configuration": [
                                    {
                                        "inbound_nat_rules": [],
                                        "load_balancer_rules": [],
                                        "outbound_rules": []
                                    }
                                ],
                                "private_ip_addresses": []
                            },
                            "type": "azurerm_lb",
                            "values": {
                                "edge_zone": null,
                                "frontend_ip_configuration": [
                                    {
                                        "name": "web-lb-frontend",
                                        "zones": null
                                    }
                                ],
                                "location": "southafricanorth",
                                "name": "web-lb",
                                "resource_group_name": "my-resource-group",
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend",
                            "mode": "managed",
                            "name": "web_lb_backend",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backend_ip_configurations": [],
                                "inbound_nat_rules": [],
                                "load_balancing_rules": [],
                                "outbound_rules": [],
                                "tunnel_interface": []
                            },
                            "type": "azurerm_lb_backend_address_pool",
                            "values": {
                                "name": "web-lb-backend",
                                "synchronous_mode": null,
                                "timeouts": null,
                                "tunnel_interface": [],
                                "virtual_network_id": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_probe.web_lb_probe",
                            "mode": "managed",
                            "name": "web_lb_probe",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "load_balancer_rules": []
                            },
                            "type": "azurerm_lb_probe",
                            "values": {
                                "interval_in_seconds": 15,
                                "name": "http-probe",
                                "number_of_probes": 2,
                                "port": 80,
                                "probe_threshold": 1,
                                "protocol": "Http",
                                "request_path": "/",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_lb_rule.web_lb_rule",
                            "mode": "managed",
                            "name": "web_lb_rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backend_address_pool_ids": []
                            },
                            "type": "azurerm_lb_rule",
                            "values": {
                                "backend_port": 80,
                                "disable_outbound_snat": false,
                                "enable_floating_ip": false,
                                "enable_tcp_reset": null,
                                "frontend_ip_configuration_name": "web-lb-frontend",
                                "frontend_port": 80,
                                "name": "http-rule",
                                "protocol": "Tcp",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.loadbalancer.azurerm_public_ip.web_lb_pip",
                            "mode": "managed",
                            "name": "web_lb_pip",
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
                                "location": "southafricanorth",
                                "name": "web-lb-pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "my-resource-group",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.security",
                    "resources": [
                        {
                            "address": "module.security.azurerm_log_analytics_workspace.securitypostlog",
                            "mode": "managed",
                            "name": "securitypostlog",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 3,
                            "sensitive_values": {
                                "identity": [],
                                "primary_shared_key": true,
                                "secondary_shared_key": true
                            },
                            "type": "azurerm_log_analytics_workspace",
                            "values": {
                                "allow_resource_only_permissions": true,
                                "cmk_for_query_forced": null,
                                "daily_quota_gb": -1,
                                "data_collection_rule_id": null,
                                "identity": [],
                                "immediate_data_purge_on_30_days_enabled": null,
                                "internet_ingestion_enabled": true,
                                "internet_query_enabled": true,
                                "local_authentication_disabled": false,
                                "location": "southafricanorth",
                                "name": "security-posture-log-analytics",
                                "reservation_capacity_in_gb_per_day": null,
                                "resource_group_name": "my-resource-group",
                                "retention_in_days": 30,
                                "sku": "PerGB2018",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.security.azurerm_security_center_auto_provisioning.auto_provisioning",
                            "mode": "managed",
                            "name": "auto_provisioning",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_auto_provisioning",
                            "values": {
                                "auto_provision": "On",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.security.azurerm_security_center_contact.security_contact",
                            "mode": "managed",
                            "name": "security_contact",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_contact",
                            "values": {
                                "alert_notifications": true,
                                "alerts_to_admins": true,
                                "email": "adminemailadrress@gmail.com",
                                "name": "default1",
                                "phone": "+2340800000000",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.security.azurerm_security_center_workspace.securityposturews",
                            "mode": "managed",
                            "name": "securityposturews",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_security_center_workspace",
                            "values": {
                                "scope": "zenpayrg",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.sql",
                    "resources": [
                        {
                            "address": "module.sql.azurerm_sql_database.zenpaysqldb",
                            "mode": "managed",
                            "name": "zenpaysqldb",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "import": [],
                                "threat_detection_policy": []
                            },
                            "type": "azurerm_sql_database",
                            "values": {
                                "create_mode": "Default",
                                "edition": "Standard",
                                "import": [],
                                "location": "southafricanorth",
                                "name": "zenpaysqldb",
                                "read_scale": false,
                                "requested_service_objective_name": "S0",
                                "resource_group_name": "my-resource-group",
                                "server_name": "zenpaysqlserver",
                                "tags": null,
                                "timeouts": null,
                                "zone_redundant": null
                            }
                        },
                        {
                            "address": "module.sql.azurerm_sql_firewall_rule.allow_azure_services",
                            "mode": "managed",
                            "name": "allow_azure_services",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_sql_firewall_rule",
                            "values": {
                                "end_ip_address": "0.0.0.0",
                                "name": "AllowAzureServices",
                                "resource_group_name": "my-resource-group",
                                "server_name": "zenpaysqlserver",
                                "start_ip_address": "0.0.0.0",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.sql.azurerm_sql_server.zenpaysqlserver",
                            "mode": "managed",
                            "name": "zenpaysqlserver",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "administrator_login_password": true,
                                "identity": [],
                                "tags": {},
                                "threat_detection_policy": []
                            },
                            "type": "azurerm_sql_server",
                            "values": {
                                "administrator_login": "adminuser",
                                "administrator_login_password": "Password1234!",
                                "connection_policy": "Default",
                                "identity": [],
                                "location": "southafricanorth",
                                "name": "zenpaysqlserver",
                                "resource_group_name": "my-resource-group",
                                "tags": {
                                    "environment": "Production"
                                },
                                "timeouts": null,
                                "version": "12.0"
                            }
                        }
                    ]
                },
                {
                    "address": "module.virtualmachines",
                    "resources": [
                        {
                            "address": "module.virtualmachines.azurerm_availability_set.avset",
                            "mode": "managed",
                            "name": "avset",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_availability_set",
                            "values": {
                                "location": "southafricanorth",
                                "managed": true,
                                "name": "web-avset",
                                "platform_fault_domain_count": 2,
                                "platform_update_domain_count": 5,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "my-resource-group",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_network_interface.db_nic",
                            "mode": "managed",
                            "name": "db_nic",
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
                                        "name": "dbnic-ip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4",
                                        "public_ip_address_id": null
                                    }
                                ],
                                "location": "southafricanorth",
                                "name": "dbnic",
                                "resource_group_name": "my-resource-group",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_network_interface.web_nic[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "web_nic",
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
                                        "name": "webnic0-ip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4",
                                        "public_ip_address_id": null
                                    }
                                ],
                                "location": "southafricanorth",
                                "name": "webnic0",
                                "resource_group_name": "my-resource-group",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_network_interface.web_nic[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "web_nic",
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
                                        "name": "webnic1-ip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4",
                                        "public_ip_address_id": null
                                    }
                                ],
                                "location": "southafricanorth",
                                "name": "webnic1",
                                "resource_group_name": "my-resource-group",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_virtual_machine.db_vm",
                            "mode": "managed",
                            "name": "db_vm",
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
                                "location": "southafricanorth",
                                "name": "dbvm",
                                "os_profile": [
                                    {
                                        "admin_password": "Password1234!",
                                        "admin_username": "adminuser",
                                        "computer_name": "hostname-db"
                                    }
                                ],
                                "os_profile_linux_config": [],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [
                                    {
                                        "additional_unattend_config": [],
                                        "enable_automatic_upgrades": false,
                                        "provision_vm_agent": false,
                                        "timezone": "",
                                        "winrm": []
                                    }
                                ],
                                "plan": [],
                                "primary_network_interface_id": null,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "my-resource-group",
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
                                        "disk_size_gb": 256,
                                        "image_uri": null,
                                        "managed_disk_type": "Premium_LRS",
                                        "name": "db_os_disk",
                                        "vhd_uri": null,
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "vm_size": "Standard_D4s_v3",
                                "zones": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_virtual_machine.web_vm[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "web_vm",
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
                                "location": "southafricanorth",
                                "name": "webvm0",
                                "os_profile": [
                                    {
                                        "admin_password": "Password1234!",
                                        "admin_username": "adminuser",
                                        "computer_name": "hostname0"
                                    }
                                ],
                                "os_profile_linux_config": [],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [
                                    {
                                        "additional_unattend_config": [],
                                        "enable_automatic_upgrades": false,
                                        "provision_vm_agent": false,
                                        "timezone": "",
                                        "winrm": []
                                    }
                                ],
                                "plan": [],
                                "primary_network_interface_id": null,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "my-resource-group",
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
                                        "disk_size_gb": 128,
                                        "image_uri": null,
                                        "managed_disk_type": "Premium_LRS",
                                        "name": "web_os_disk0",
                                        "vhd_uri": null,
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "vm_size": "Standard_D2s_v3",
                                "zones": null
                            }
                        },
                        {
                            "address": "module.virtualmachines.azurerm_virtual_machine.web_vm[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "web_vm",
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
                                "location": "southafricanorth",
                                "name": "webvm1",
                                "os_profile": [
                                    {
                                        "admin_password": "Password1234!",
                                        "admin_username": "adminuser",
                                        "computer_name": "hostname1"
                                    }
                                ],
                                "os_profile_linux_config": [],
                                "os_profile_secrets": [],
                                "os_profile_windows_config": [
                                    {
                                        "additional_unattend_config": [],
                                        "enable_automatic_upgrades": false,
                                        "provision_vm_agent": false,
                                        "timezone": "",
                                        "winrm": []
                                    }
                                ],
                                "plan": [],
                                "primary_network_interface_id": null,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "my-resource-group",
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
                                        "disk_size_gb": 128,
                                        "image_uri": null,
                                        "managed_disk_type": "Premium_LRS",
                                        "name": "web_os_disk1",
                                        "vhd_uri": null,
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "vm_size": "Standard_D2s_v3",
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.virtualnetwork",
                    "resources": [
                        {
                            "address": "module.virtualnetwork.azurerm_virtual_network.zenpay_vnet",
                            "mode": "managed",
                            "name": "zenpay_vnet",
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
                                "location": "southafricanorth",
                                "name": "zenpay-vnet",
                                "resource_group_name": "my-resource-group",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.web_nsg",
                    "resources": [
                        {
                            "address": "module.web_nsg.azurerm_network_security_group.nsg",
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
                                ]
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "southafricanorth",
                                "name": "web-nsg",
                                "resource_group_name": "my-resource-group",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "443",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "allow-https",
                                        "priority": 110,
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
                                        "name": "allow-http",
                                        "priority": 100,
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
                        }
                    ]
                },
                {
                    "address": "module.web_subnet",
                    "resources": [
                        {
                            "address": "module.web_subnet.azurerm_subnet.web",
                            "mode": "managed",
                            "name": "web",
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
                                "name": "web-subnet",
                                "resource_group_name": "my-resource-group",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zenpay-vnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.zenpay_resource_group",
                    "resources": [
                        {
                            "address": "module.zenpay_resource_group.azurerm_resource_group.zenpayrg",
                            "mode": "managed",
                            "name": "zenpayrg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "southafricanorth",
                                "managed_by": null,
                                "name": "zenpayrg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "outputs": {
                "appgw_subnet_address_prefixes": {
                    "sensitive": false,
                    "type": [
                        "list",
                        "string"
                    ],
                    "value": [
                        "10.0.3.0/24"
                    ]
                },
                "appgw_subnet_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "appgw-subnet"
                },
                "db_subnet_address_prefixes": {
                    "sensitive": false,
                    "type": [
                        "list",
                        "string"
                    ],
                    "value": [
                        "10.0.2.0/24"
                    ]
                },
                "db_subnet_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "db-subnet"
                },
                "resource_group_location": {
                    "sensitive": false,
                    "type": "string",
                    "value": "South Africa North"
                },
                "resource_group_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zenpayrg"
                },
                "security_contact_email": {
                    "sensitive": false,
                    "type": "string",
                    "value": "adminemailadrress@gmail.com"
                },
                "sql_db_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zenpaysqldb"
                },
                "sql_server_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zenpaysqlserver"
                },
                "web_subnet_address_prefixes": {
                    "sensitive": false,
                    "type": [
                        "list",
                        "string"
                    ],
                    "value": [
                        "10.0.1.0/24"
                    ]
                },
                "web_subnet_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "web-subnet"
                },
                "zenpay_vnet_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zenpay-vnet"
                }
            },
            "root_module": {
                "resources": [
                    {
                        "address": "data.azurerm_client_config.owner",
                        "mode": "data",
                        "name": "owner",
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
                    }
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "id"
            ],
            "resource": "module.web_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb_rule.web_lb_rule"
        },
        {
            "attribute": [],
            "resource": "module.virtualmachines.azurerm_virtual_machine.web_vm"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.db_nsg.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.zenpay_resource_group.azurerm_resource_group.zenpayrg"
        },
        {
            "attribute": [
                "address_prefixes"
            ],
            "resource": "module.db_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb.web_lb"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtualmachines.azurerm_network_interface.db_nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.db_nsg.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.web_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtualmachines.azurerm_virtual_machine.db_vm"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_public_ip.web_lb_pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtualnetwork.azurerm_virtual_network.zenpay_vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.web_nsg.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.keyvault_backup.azurerm_recovery_services_vault.zenpay_recovery_vault"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.owner"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtualmachines.azurerm_availability_set.avset"
        },
        {
            "attribute": [
                "frontend_ip_configuration",
                0,
                "name"
            ],
            "resource": "module.loadbalancer.azurerm_lb.web_lb"
        },
        {
            "attribute": [
                "address_prefixes"
            ],
            "resource": "module.web_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.appgw_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sql.azurerm_sql_database.zenpaysqldb"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.applicationgateway.azurerm_application_gateway.zenpay_appgw"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.owner"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb_probe.web_lb_probe"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.security.azurerm_log_analytics_workspace.securitypostlog"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.virtualnetwork.azurerm_virtual_network.zenpay_vnet"
        },
        {
            "attribute": [
                "address_prefixes"
            ],
            "resource": "module.appgw_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.appgw_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.db_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sql.azurerm_sql_server.zenpaysqlserver"
        },
        {
            "attribute": [
                "email"
            ],
            "resource": "module.security.azurerm_security_center_contact.security_contact"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.db_subnet.azurerm_subnet.web"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.keyvault_backup.azurerm_backup_policy_vm.vm_backup_policy"
        },
        {
            "attribute": [
                "address_space"
            ],
            "resource": "module.virtualnetwork.azurerm_virtual_network.zenpay_vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend"
        },
        {
            "attribute": [],
            "resource": "module.virtualmachines.azurerm_network_interface.web_nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.applicationgateway.azurerm_public_ip.appgw_pip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.web_nsg.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.keyvault_backup.azurerm_key_vault.zenpay_key_vault"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.keyvault_backup.azurerm_recovery_services_vault.zenpay_recovery_vault"
        }
    ],
    "resource_changes": [
        {
            "address": "module.appgw_subnet.azurerm_subnet.web",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "appgw-subnet",
                    "resource_group_name": "my-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zenpay-vnet"
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
            "module_address": "module.appgw_subnet",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.applicationgateway.azurerm_application_gateway.zenpay_appgw",
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
                            "name": "appgw-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "appgw-backend-http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 30,
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
                            "name": "appgw-frontend-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "appgw-http-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appgw-ip-configuration"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appgw-frontend-ip",
                            "frontend_port_name": "appgw-http-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "appgw-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "southafricanorth",
                    "name": "zenpay-appgw",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "appgw-backend-pool",
                            "backend_http_settings_name": "appgw-backend-http-settings",
                            "http_listener_name": "appgw-http-listener",
                            "name": "appgw-routing-rule",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "my-resource-group",
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
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.applicationgateway",
            "name": "zenpay_appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.applicationgateway.azurerm_public_ip.appgw_pip",
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
                    "location": "southafricanorth",
                    "name": "appgw-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "my-resource-group",
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
            "module_address": "module.applicationgateway",
            "name": "appgw_pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.db_nsg.azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "southafricanorth",
                    "name": "db-nsg",
                    "resource_group_name": "my-resource-group",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "1433",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "allow-sql",
                            "priority": 100,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.0.1.0/24",
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
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.db_nsg",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.db_subnet.azurerm_subnet.web",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "db-subnet",
                    "resource_group_name": "my-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zenpay-vnet"
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
            "module_address": "module.db_subnet",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.keyvault_backup.azurerm_backup_policy_vm.vm_backup_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [
                        {
                            "frequency": "Daily",
                            "hour_duration": null,
                            "hour_interval": null,
                            "time": "23:00",
                            "weekdays": null
                        }
                    ],
                    "instant_restore_resource_group": [],
                    "name": "vm-backup-policy",
                    "policy_type": "V1",
                    "recovery_vault_name": "zenpayrecoveryvault",
                    "resource_group_name": "my-resource-group",
                    "retention_daily": [
                        {
                            "count": 10
                        }
                    ],
                    "retention_monthly": [
                        {
                            "count": 7,
                            "days": null,
                            "include_last_days": false,
                            "weekdays": [
                                "Sunday",
                                "Wednesday"
                            ],
                            "weeks": [
                                "First",
                                "Last"
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "count": 42,
                            "weekdays": [
                                "Friday",
                                "Saturday",
                                "Sunday",
                                "Wednesday"
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": [],
                    "timeouts": null,
                    "timezone": "UTC"
                },
                "after_sensitive": {
                    "backup": [
                        {}
                    ],
                    "instant_restore_resource_group": [],
                    "retention_daily": [
                        {}
                    ],
                    "retention_monthly": [
                        {
                            "weekdays": [
                                false,
                                false
                            ],
                            "weeks": [
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "weekdays": [
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": []
                },
                "after_unknown": {
                    "backup": [
                        {}
                    ],
                    "id": true,
                    "instant_restore_resource_group": [],
                    "instant_restore_retention_days": true,
                    "retention_daily": [
                        {}
                    ],
                    "retention_monthly": [
                        {
                            "weekdays": [
                                false,
                                false
                            ],
                            "weeks": [
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_weekly": [
                        {
                            "weekdays": [
                                false,
                                false,
                                false,
                                false
                            ]
                        }
                    ],
                    "retention_yearly": [],
                    "tiering_policy": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.keyvault_backup",
            "name": "vm_backup_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_backup_policy_vm"
        },
        {
            "address": "module.keyvault_backup.azurerm_key_vault.zenpay_key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": null,
                            "key_permissions": [
                                "Get",
                                "List"
                            ],
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "secret_permissions": [
                                "Get",
                                "List"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": null,
                    "enabled_for_template_deployment": null,
                    "location": "southafricanorth",
                    "name": "zenpayzpkeyvault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": null,
                    "resource_group_name": "my-resource-group",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 90,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [
                        {
                            "key_permissions": [
                                false,
                                false
                            ],
                            "secret_permissions": [
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
                            "key_permissions": [
                                false,
                                false
                            ],
                            "secret_permissions": [
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
            "module_address": "module.keyvault_backup",
            "name": "zenpay_key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.keyvault_backup.azurerm_recovery_services_vault.zenpay_recovery_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "classic_vmware_replication_enabled": null,
                    "cross_region_restore_enabled": false,
                    "encryption": [],
                    "identity": [],
                    "location": "southafricanorth",
                    "monitoring": [],
                    "name": "zenpayrecoveryvault",
                    "public_network_access_enabled": true,
                    "resource_group_name": "my-resource-group",
                    "sku": "Standard",
                    "soft_delete_enabled": true,
                    "storage_mode_type": "GeoRedundant",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "encryption": [],
                    "identity": [],
                    "monitoring": []
                },
                "after_unknown": {
                    "encryption": [],
                    "id": true,
                    "identity": [],
                    "immutability": true,
                    "monitoring": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.keyvault_backup",
            "name": "zenpay_recovery_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_recovery_services_vault"
        },
        {
            "address": "module.loadbalancer.azurerm_lb.web_lb",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "edge_zone": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "web-lb-frontend",
                            "zones": null
                        }
                    ],
                    "location": "southafricanorth",
                    "name": "web-lb",
                    "resource_group_name": "my-resource-group",
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "frontend_ip_configuration": [
                        {
                            "inbound_nat_rules": [],
                            "load_balancer_rules": [],
                            "outbound_rules": []
                        }
                    ],
                    "private_ip_addresses": []
                },
                "after_unknown": {
                    "frontend_ip_configuration": [
                        {
                            "gateway_load_balancer_frontend_ip_configuration_id": true,
                            "id": true,
                            "inbound_nat_rules": true,
                            "load_balancer_rules": true,
                            "outbound_rules": true,
                            "private_ip_address": true,
                            "private_ip_address_allocation": true,
                            "private_ip_address_version": true,
                            "public_ip_address_id": true,
                            "public_ip_prefix_id": true,
                            "subnet_id": true
                        }
                    ],
                    "id": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_backend_address_pool.web_lb_backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "web-lb-backend",
                    "synchronous_mode": null,
                    "timeouts": null,
                    "tunnel_interface": [],
                    "virtual_network_id": null
                },
                "after_sensitive": {
                    "backend_ip_configurations": [],
                    "inbound_nat_rules": [],
                    "load_balancing_rules": [],
                    "outbound_rules": [],
                    "tunnel_interface": []
                },
                "after_unknown": {
                    "backend_ip_configurations": true,
                    "id": true,
                    "inbound_nat_rules": true,
                    "load_balancing_rules": true,
                    "loadbalancer_id": true,
                    "outbound_rules": true,
                    "tunnel_interface": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_backend",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_backend_address_pool"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_probe.web_lb_probe",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "interval_in_seconds": 15,
                    "name": "http-probe",
                    "number_of_probes": 2,
                    "port": 80,
                    "probe_threshold": 1,
                    "protocol": "Http",
                    "request_path": "/",
                    "timeouts": null
                },
                "after_sensitive": {
                    "load_balancer_rules": []
                },
                "after_unknown": {
                    "id": true,
                    "load_balancer_rules": true,
                    "loadbalancer_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_probe",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_probe"
        },
        {
            "address": "module.loadbalancer.azurerm_lb_rule.web_lb_rule",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backend_port": 80,
                    "disable_outbound_snat": false,
                    "enable_floating_ip": false,
                    "enable_tcp_reset": null,
                    "frontend_ip_configuration_name": "web-lb-frontend",
                    "frontend_port": 80,
                    "name": "http-rule",
                    "protocol": "Tcp",
                    "timeouts": null
                },
                "after_sensitive": {
                    "backend_address_pool_ids": []
                },
                "after_unknown": {
                    "backend_address_pool_ids": true,
                    "frontend_ip_configuration_id": true,
                    "id": true,
                    "idle_timeout_in_minutes": true,
                    "load_distribution": true,
                    "loadbalancer_id": true,
                    "probe_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.loadbalancer",
            "name": "web_lb_rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_rule"
        },
        {
            "address": "module.loadbalancer.azurerm_public_ip.web_lb_pip",
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
                    "location": "southafricanorth",
                    "name": "web-lb-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "my-resource-group",
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
            "module_address": "module.loadbalancer",
            "name": "web_lb_pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.security.azurerm_log_analytics_workspace.securitypostlog",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_resource_only_permissions": true,
                    "cmk_for_query_forced": null,
                    "daily_quota_gb": -1,
                    "data_collection_rule_id": null,
                    "identity": [],
                    "immediate_data_purge_on_30_days_enabled": null,
                    "internet_ingestion_enabled": true,
                    "internet_query_enabled": true,
                    "local_authentication_disabled": false,
                    "location": "southafricanorth",
                    "name": "security-posture-log-analytics",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "my-resource-group",
                    "retention_in_days": 30,
                    "sku": "PerGB2018",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true
                },
                "after_unknown": {
                    "id": true,
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.security",
            "name": "securitypostlog",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.security.azurerm_security_center_auto_provisioning.auto_provisioning",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_provision": "On",
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
            "module_address": "module.security",
            "name": "auto_provisioning",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_auto_provisioning"
        },
        {
            "address": "module.security.azurerm_security_center_contact.security_contact",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "alert_notifications": true,
                    "alerts_to_admins": true,
                    "email": "adminemailadrress@gmail.com",
                    "name": "default1",
                    "phone": "+2340800000000",
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
            "module_address": "module.security",
            "name": "security_contact",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_contact"
        },
        {
            "address": "module.security.azurerm_security_center_workspace.securityposturews",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "scope": "zenpayrg",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.security",
            "name": "securityposturews",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_security_center_workspace"
        },
        {
            "address": "module.sql.azurerm_sql_database.zenpaysqldb",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_mode": "Default",
                    "edition": "Standard",
                    "import": [],
                    "location": "southafricanorth",
                    "name": "zenpaysqldb",
                    "read_scale": false,
                    "requested_service_objective_name": "S0",
                    "resource_group_name": "my-resource-group",
                    "server_name": "zenpaysqlserver",
                    "tags": null,
                    "timeouts": null,
                    "zone_redundant": null
                },
                "after_sensitive": {
                    "import": [],
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "collation": true,
                    "creation_date": true,
                    "default_secondary_location": true,
                    "elastic_pool_name": true,
                    "encryption": true,
                    "id": true,
                    "import": [],
                    "max_size_bytes": true,
                    "max_size_gb": true,
                    "requested_service_objective_id": true,
                    "restore_point_in_time": true,
                    "source_database_deletion_date": true,
                    "source_database_id": true,
                    "threat_detection_policy": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sql",
            "name": "zenpaysqldb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_sql_database"
        },
        {
            "address": "module.sql.azurerm_sql_firewall_rule.allow_azure_services",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "end_ip_address": "0.0.0.0",
                    "name": "AllowAzureServices",
                    "resource_group_name": "my-resource-group",
                    "server_name": "zenpaysqlserver",
                    "start_ip_address": "0.0.0.0",
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
            "module_address": "module.sql",
            "name": "allow_azure_services",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_sql_firewall_rule"
        },
        {
            "address": "module.sql.azurerm_sql_server.zenpaysqlserver",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "adminuser",
                    "administrator_login_password": "Password1234!",
                    "connection_policy": "Default",
                    "identity": [],
                    "location": "southafricanorth",
                    "name": "zenpaysqlserver",
                    "resource_group_name": "my-resource-group",
                    "tags": {
                        "environment": "Production"
                    },
                    "timeouts": null,
                    "version": "12.0"
                },
                "after_sensitive": {
                    "administrator_login_password": true,
                    "identity": [],
                    "tags": {},
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "fully_qualified_domain_name": true,
                    "id": true,
                    "identity": [],
                    "tags": {},
                    "threat_detection_policy": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sql",
            "name": "zenpaysqlserver",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_sql_server"
        },
        {
            "address": "module.virtualmachines.azurerm_availability_set.avset",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "southafricanorth",
                    "managed": true,
                    "name": "web-avset",
                    "platform_fault_domain_count": 2,
                    "platform_update_domain_count": 5,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "my-resource-group",
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
            "module_address": "module.virtualmachines",
            "name": "avset",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_availability_set"
        },
        {
            "address": "module.virtualmachines.azurerm_network_interface.db_nic",
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
                            "name": "dbnic-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "southafricanorth",
                    "name": "dbnic",
                    "resource_group_name": "my-resource-group",
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
            "module_address": "module.virtualmachines",
            "name": "db_nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.virtualmachines.azurerm_network_interface.web_nic[0]",
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
                            "name": "webnic0-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "southafricanorth",
                    "name": "webnic0",
                    "resource_group_name": "my-resource-group",
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
            "index": 0,
            "mode": "managed",
            "module_address": "module.virtualmachines",
            "name": "web_nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.virtualmachines.azurerm_network_interface.web_nic[1]",
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
                            "name": "webnic1-ip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "southafricanorth",
                    "name": "webnic1",
                    "resource_group_name": "my-resource-group",
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
            "index": 1,
            "mode": "managed",
            "module_address": "module.virtualmachines",
            "name": "web_nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.virtualmachines.azurerm_virtual_machine.db_vm",
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
                    "location": "southafricanorth",
                    "name": "dbvm",
                    "os_profile": [
                        {
                            "admin_password": "Password1234!",
                            "admin_username": "adminuser",
                            "computer_name": "hostname-db"
                        }
                    ],
                    "os_profile_linux_config": [],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [
                        {
                            "additional_unattend_config": [],
                            "enable_automatic_upgrades": false,
                            "provision_vm_agent": false,
                            "timezone": "",
                            "winrm": []
                        }
                    ],
                    "plan": [],
                    "primary_network_interface_id": null,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "my-resource-group",
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
                            "disk_size_gb": 256,
                            "image_uri": null,
                            "managed_disk_type": "Premium_LRS",
                            "name": "db_os_disk",
                            "vhd_uri": null,
                            "write_accelerator_enabled": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "vm_size": "Standard_D4s_v3",
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
                            "managed_disk_id": true,
                            "os_type": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.virtualmachines",
            "name": "db_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine"
        },
        {
            "address": "module.virtualmachines.azurerm_virtual_machine.web_vm[0]",
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
                    "location": "southafricanorth",
                    "name": "webvm0",
                    "os_profile": [
                        {
                            "admin_password": "Password1234!",
                            "admin_username": "adminuser",
                            "computer_name": "hostname0"
                        }
                    ],
                    "os_profile_linux_config": [],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [
                        {
                            "additional_unattend_config": [],
                            "enable_automatic_upgrades": false,
                            "provision_vm_agent": false,
                            "timezone": "",
                            "winrm": []
                        }
                    ],
                    "plan": [],
                    "primary_network_interface_id": null,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "my-resource-group",
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
                            "disk_size_gb": 128,
                            "image_uri": null,
                            "managed_disk_type": "Premium_LRS",
                            "name": "web_os_disk0",
                            "vhd_uri": null,
                            "write_accelerator_enabled": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "vm_size": "Standard_D2s_v3",
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
                            "managed_disk_id": true,
                            "os_type": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.virtualmachines",
            "name": "web_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine"
        },
        {
            "address": "module.virtualmachines.azurerm_virtual_machine.web_vm[1]",
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
                    "location": "southafricanorth",
                    "name": "webvm1",
                    "os_profile": [
                        {
                            "admin_password": "Password1234!",
                            "admin_username": "adminuser",
                            "computer_name": "hostname1"
                        }
                    ],
                    "os_profile_linux_config": [],
                    "os_profile_secrets": [],
                    "os_profile_windows_config": [
                        {
                            "additional_unattend_config": [],
                            "enable_automatic_upgrades": false,
                            "provision_vm_agent": false,
                            "timezone": "",
                            "winrm": []
                        }
                    ],
                    "plan": [],
                    "primary_network_interface_id": null,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "my-resource-group",
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
                            "disk_size_gb": 128,
                            "image_uri": null,
                            "managed_disk_type": "Premium_LRS",
                            "name": "web_os_disk1",
                            "vhd_uri": null,
                            "write_accelerator_enabled": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "vm_size": "Standard_D2s_v3",
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
                            "managed_disk_id": true,
                            "os_type": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "module_address": "module.virtualmachines",
            "name": "web_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_machine"
        },
        {
            "address": "module.virtualnetwork.azurerm_virtual_network.zenpay_vnet",
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
                    "location": "southafricanorth",
                    "name": "zenpay-vnet",
                    "resource_group_name": "my-resource-group",
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
            "module_address": "module.virtualnetwork",
            "name": "zenpay_vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.web_nsg.azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "southafricanorth",
                    "name": "web-nsg",
                    "resource_group_name": "my-resource-group",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "443",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "allow-https",
                            "priority": 110,
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
                            "name": "allow-http",
                            "priority": 100,
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
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.web_nsg",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.web_subnet.azurerm_subnet.web",
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
                    "name": "web-subnet",
                    "resource_group_name": "my-resource-group",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zenpay-vnet"
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
            "module_address": "module.web_subnet",
            "name": "web",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.zenpay_resource_group.azurerm_resource_group.zenpayrg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "southafricanorth",
                    "managed_by": null,
                    "name": "zenpayrg",
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
            "module_address": "module.zenpay_resource_group",
            "name": "zenpayrg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:56:41Z",
    "variables": {
        "address_space": {
            "value": [
                "10.0.0.0/16"
            ]
        },
        "admin_password": {
            "value": "Password1234!"
        },
        "admin_username": {
            "value": "adminuser"
        },
        "contact_email": {
            "value": "adminemailadrress@gmail.com"
        },
        "contact_phone": {
            "value": "+2340800000000"
        },
        "db_subnet_id": {
            "value": "db_subnet_id"
        },
        "environment": {
            "value": "Production"
        },
        "location": {
            "value": "southafricanorth"
        },
        "resource_group_name": {
            "value": "my-resource-group"
        },
        "sql_db_name": {
            "value": "zenpaysqldb"
        },
        "sql_server_name": {
            "value": "zenpaysqlserver"
        },
        "vnet_name": {
            "value": "zenpay-vnet"
        },
        "web_subnet_id": {
            "value": "web_subnet_id"
        }
    }
}