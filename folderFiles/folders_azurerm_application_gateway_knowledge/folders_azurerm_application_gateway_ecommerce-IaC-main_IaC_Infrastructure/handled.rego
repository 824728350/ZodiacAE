
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
            },
            "module.key_vault:random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "module_address": "module.key_vault",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "apigtw": {
                    "expressions": {
                        "api_gateway_name": {
                            "constant_value": "apiGatewayUnique"
                        },
                        "backend_address_pool_name": {
                            "constant_value": "backendPool"
                        },
                        "backend_http_settings_name": {
                            "constant_value": "backendHttpSettings"
                        },
                        "backend_http_settings_port": {
                            "constant_value": 80
                        },
                        "backend_http_settings_protocol": {
                            "constant_value": "Http"
                        },
                        "backend_http_settings_request_timeout": {
                            "constant_value": 120
                        },
                        "cookie_based_affinity": {
                            "constant_value": "Disabled"
                        },
                        "frontend_ip_configuration_name": {
                            "constant_value": "frontendConfig"
                        },
                        "frontend_port_name": {
                            "constant_value": "frontendPort"
                        },
                        "frontend_port_port": {
                            "constant_value": 80
                        },
                        "gateway_ip_configuration_name": {
                            "constant_value": "appGatewayIpConfig"
                        },
                        "http_listener_frontend_ip_configuration_name": {
                            "constant_value": "frontendConfig"
                        },
                        "http_listener_frontend_port_name": {
                            "constant_value": "frontendPort"
                        },
                        "http_listener_name": {
                            "constant_value": "httpListener"
                        },
                        "http_listener_protocol": {
                            "constant_value": "Http"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.networks.public_ip_id",
                                "module.networks"
                            ]
                        },
                        "request_routing_rule_backend_address_pool_name": {
                            "constant_value": "backendPool"
                        },
                        "request_routing_rule_backend_http_settings_name": {
                            "constant_value": "backendHttpSettings"
                        },
                        "request_routing_rule_http_listener_name": {
                            "constant_value": "httpListener"
                        },
                        "request_routing_rule_name": {
                            "constant_value": "routingRule"
                        },
                        "request_routing_rule_priority": {
                            "constant_value": 9
                        },
                        "request_routing_rule_rule_type": {
                            "constant_value": "Basic"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku_capacity": {
                            "constant_value": 2
                        },
                        "sku_name": {
                            "constant_value": "Standard_v2"
                        },
                        "sku_tier": {
                            "constant_value": "Standard_v2"
                        },
                        "subnet_id": {
                            "references": [
                                "module.networks.api_gateway_subnet_id",
                                "module.networks"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "api_gateway_id": {
                                "description": "The ID of the API Gateway",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.api.id",
                                        "azurerm_application_gateway.api"
                                    ]
                                }
                            },
                            "api_gateway_name": {
                                "description": "The ID of the created Azure Application Gateway.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.api.name",
                                        "azurerm_application_gateway.api"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.api",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.backend_address_pool_name"
                                                ]
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "references": [
                                                    "var.cookie_based_affinity"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.backend_http_settings_name"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.backend_http_settings_port"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.backend_http_settings_protocol"
                                                ]
                                            },
                                            "request_timeout": {
                                                "references": [
                                                    "var.backend_http_settings_request_timeout"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.frontend_ip_configuration_name"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_address_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.frontend_port_name"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.frontend_port_port"
                                                ]
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.gateway_ip_configuration_name"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "references": [
                                                    "var.http_listener_frontend_ip_configuration_name"
                                                ]
                                            },
                                            "frontend_port_name": {
                                                "references": [
                                                    "var.http_listener_frontend_port_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.http_listener_name"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.http_listener_protocol"
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
                                            "var.api_gateway_name"
                                        ]
                                    },
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "references": [
                                                    "var.request_routing_rule_backend_address_pool_name"
                                                ]
                                            },
                                            "backend_http_settings_name": {
                                                "references": [
                                                    "var.request_routing_rule_backend_http_settings_name"
                                                ]
                                            },
                                            "http_listener_name": {
                                                "references": [
                                                    "var.request_routing_rule_http_listener_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.request_routing_rule_name"
                                                ]
                                            },
                                            "priority": {
                                                "references": [
                                                    "var.request_routing_rule_priority"
                                                ]
                                            },
                                            "rule_type": {
                                                "references": [
                                                    "var.request_routing_rule_rule_type"
                                                ]
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
                                                    "var.sku_capacity"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "var.sku_name"
                                                ]
                                            },
                                            "tier": {
                                                "references": [
                                                    "var.sku_tier"
                                                ]
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "api",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "api_gateway_name": {
                                "default": "pvidhold",
                                "description": "The name of the API Gateway"
                            },
                            "backend_address_pool_name": {
                                "default": "gqsvhold",
                                "description": "The name of the backend address pool."
                            },
                            "backend_http_settings_name": {
                                "default": "bitxhold",
                                "description": "The name of the backend HTTP settings."
                            },
                            "backend_http_settings_port": {
                                "default": "mq2thold",
                                "description": "The port number for the backend HTTP settings."
                            },
                            "backend_http_settings_protocol": {
                                "default": "xg5fhold",
                                "description": "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
                            },
                            "backend_http_settings_request_timeout": {
                                "default": "ef10hold",
                                "description": "The request timeout for the backend HTTP settings (in seconds)."
                            },
                            "cookie_based_affinity": {
                                "default": "o95nhold",
                                "description": "The cookie-based affinity setting for the backend HTTP settings."
                            },
                            "frontend_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the frontend IP configuration."
                            },
                            "frontend_port_name": {
                                "default": "hrvnhold",
                                "description": "The name of the frontend port."
                            },
                            "frontend_port_port": {
                                "default": "jiyphold",
                                "description": "The port number of the frontend port."
                            },
                            "gateway_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the gateway IP configuration."
                            },
                            "http_listener_frontend_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the frontend IP configuration associated with the HTTP listener."
                            },
                            "http_listener_frontend_port_name": {
                                "default": "kyemhold",
                                "description": "The name of the frontend port associated with the HTTP listener."
                            },
                            "http_listener_name": {
                                "default": "wpfnhold",
                                "description": "The name of the HTTP listener."
                            },
                            "http_listener_protocol": {
                                "default": "351qhold",
                                "description": "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resources"
                            },
                            "public_ip_address_id": {
                                "default": "10.0.0.0/16",
                                "description": "The ID of the public IP address to associate with the frontend IP configuration."
                            },
                            "request_routing_rule_backend_address_pool_name": {
                                "default": "5qr5hold",
                                "description": "The name of the backend address pool associated with the request routing rule."
                            },
                            "request_routing_rule_backend_http_settings_name": {
                                "default": "zozwhold",
                                "description": "The name of the backend HTTP settings associated with the request routing rule."
                            },
                            "request_routing_rule_http_listener_name": {
                                "default": "z0v5hold",
                                "description": "The name of the HTTP listener associated with the request routing rule."
                            },
                            "request_routing_rule_name": {
                                "default": "sq7yhold",
                                "description": "The name of the request routing rule."
                            },
                            "request_routing_rule_priority": {
                                "default": "6rijhold",
                                "description": "The priority of the request routing rule."
                            },
                            "request_routing_rule_rule_type": {
                                "default": "9s37hold",
                                "description": "The type of the request routing rule."
                            },
                            "resource_group_name": {
                                "default": "ij4ahold",
                                "description": "The name of the resource group"
                            },
                            "sku_capacity": {
                                "default": "Standard",
                                "description": "The capacity (instance count) of the SKU for the Application Gateway."
                            },
                            "sku_name": {
                                "default": "Standard",
                                "description": "The name of the SKU for the Application Gateway."
                            },
                            "sku_tier": {
                                "default": "Standard",
                                "description": "The tier of the SKU for the Application Gateway."
                            },
                            "subnet_id": {
                                "default": "ubnlhold",
                                "description": "The ID of the subnet where the API Gateway will be placed"
                            }
                        }
                    },
                    "source": "./modules/apigtw"
                },
                "bastion": {
                    "expressions": {
                        "bastion_name": {
                            "constant_value": "bastion_admin_ecommerce"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.networks.bastion_subnet_id",
                                "module.networks"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "bastion_host_id": {
                                "description": "The ID of the bastion host",
                                "expression": {
                                    "references": [
                                        "azurerm_bastion_host.bastion.id",
                                        "azurerm_bastion_host.bastion"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_bastion_host.bastion",
                                "expressions": {
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.bastion.id",
                                                    "azurerm_public_ip.bastion"
                                                ]
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.subnet_id"
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
                                            "var.bastion_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_bastion_host"
                            },
                            {
                                "address": "azurerm_public_ip.bastion",
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
                                            "var.bastion_name"
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
                                "name": "bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "bastion_name": {
                                "default": "ts6xhold",
                                "description": "The name of the bastion host"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resources"
                            },
                            "resource_group_name": {
                                "default": "jqy6hold",
                                "description": "The name of the resource group"
                            },
                            "subnet_id": {
                                "default": "g8r7hold",
                                "description": "The ID of the subnet for the bastion host"
                            }
                        }
                    },
                    "source": "./modules/bastion"
                },
                "cluster": {
                    "expressions": {
                        "cluster_name": {
                            "constant_value": "myK8sCluster"
                        },
                        "dns_prefix": {
                            "constant_value": "mydns"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "node_count": {
                            "constant_value": 1
                        },
                        "node_pool_name": {
                            "constant_value": "default"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "secret_rotation_enabled": {
                            "constant_value": true
                        },
                        "vm_size": {
                            "constant_value": "Standard_D2_v2"
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.networks.kubernetes_cluster_subnet_id",
                                "module.networks"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "client_certificate": {
                                "description": "The Kubernetes managed cluster client certificate",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.k8s.kube_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.k8s.kube_config[0]",
                                        "azurerm_kubernetes_cluster.k8s.kube_config",
                                        "azurerm_kubernetes_cluster.k8s"
                                    ]
                                }
                            },
                            "kube_config": {
                                "description": "The Kubernetes cluster config",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.k8s.kube_config_raw",
                                        "azurerm_kubernetes_cluster.k8s"
                                    ]
                                }
                            },
                            "secret_provider": {
                                "description": "The ID of the created AKS cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.k8s.key_vault_secrets_provider[0].secret_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.k8s.key_vault_secrets_provider[0].secret_identity[0]",
                                        "azurerm_kubernetes_cluster.k8s.key_vault_secrets_provider[0].secret_identity",
                                        "azurerm_kubernetes_cluster.k8s.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.k8s.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.k8s"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_kubernetes_cluster.k8s",
                                "expressions": {
                                    "default_node_pool": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.node_pool_name"
                                                ]
                                            },
                                            "node_count": {
                                                "references": [
                                                    "var.node_count"
                                                ]
                                            },
                                            "vm_size": {
                                                "references": [
                                                    "var.vm_size"
                                                ]
                                            },
                                            "vnet_subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "dns_prefix": {
                                        "references": [
                                            "var.dns_prefix"
                                        ]
                                    },
                                    "identity": [
                                        {
                                            "type": {
                                                "constant_value": "SystemAssigned"
                                            }
                                        }
                                    ],
                                    "key_vault_secrets_provider": [
                                        {
                                            "secret_rotation_enabled": {
                                                "references": [
                                                    "var.secret_rotation_enabled"
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
                                            "var.cluster_name"
                                        ]
                                    },
                                    "network_profile": [
                                        {
                                            "load_balancer_sku": {
                                                "constant_value": "standard"
                                            },
                                            "network_plugin": {
                                                "constant_value": "azure"
                                            },
                                            "network_policy": {
                                                "constant_value": "azure"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "tags": {
                                        "constant_value": {
                                            "Environment": "Production"
                                        }
                                    }
                                },
                                "mode": "managed",
                                "name": "k8s",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            }
                        ],
                        "variables": {
                            "cluster_name": {
                                "default": "390qhold",
                                "description": "The name of the Kubernetes cluster"
                            },
                            "dns_prefix": {
                                "default": "zodiac",
                                "description": "DNS prefix specified when creating the managed cluster"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resources"
                            },
                            "node_count": {
                                "default": null,
                                "description": "The number of nodes in the default node pool"
                            },
                            "node_pool_name": {
                                "default": "hba6hold",
                                "description": "The name of the default node pool"
                            },
                            "resource_group_name": {
                                "default": "2ktnhold",
                                "description": "The name of the resource group"
                            },
                            "secret_rotation_enabled": {
                                "default": null,
                                "description": "Name of the kuberneter file"
                            },
                            "vm_size": {
                                "default": "r1e6hold",
                                "description": "The size of the Virtual Machine"
                            },
                            "vnet_subnet_id": {
                                "default": "c5klhold",
                                "description": "The ID of the subnet where the AKS cluster will be created"
                            }
                        }
                    },
                    "source": "./modules/cluster"
                },
                "container_registry": {
                    "expressions": {
                        "container_name": {
                            "constant_value": "containerRegistryUnique"
                        },
                        "container_sku": {
                            "constant_value": "Standard"
                        },
                        "resource_group_location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "scope": {
                                "description": "The ID of the created AKS cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_container_registry.acrk8s.id",
                                        "azurerm_container_registry.acrk8s"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_container_registry.acrk8s",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.resource_group_location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.container_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.container_sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "acrk8s",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_container_registry"
                            }
                        ],
                        "variables": {
                            "container_name": {
                                "default": null,
                                "description": "The name of the Azure Container Registry."
                            },
                            "container_sku": {
                                "default": null,
                                "description": "The SKU name of the Azure Container Registry."
                            },
                            "resource_group_location": {
                                "default": "eastus",
                                "description": "The location of the resource group in which to create the Azure Container Registry."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Azure Container Registry."
                            }
                        }
                    },
                    "source": "./modules/registry"
                },
                "key_vault": {
                    "expressions": {
                        "aks_secret_provider_id": {
                            "references": [
                                "module.cluster.secret_provider",
                                "module.cluster"
                            ]
                        },
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
                            ]
                        },
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "expire_after": {
                            "constant_value": "P90D"
                        },
                        "key_names": {
                            "constant_value": [
                                "Key1",
                                "Key2"
                            ]
                        },
                        "key_opts": {
                            "constant_value": [
                                "decrypt",
                                "encrypt",
                                "sign",
                                "unwrapKey",
                                "verify",
                                "wrapKey"
                            ]
                        },
                        "key_permissions": {
                            "constant_value": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ]
                        },
                        "key_sizes": {
                            "constant_value": [
                                2048,
                                2048
                            ]
                        },
                        "key_types": {
                            "constant_value": [
                                "RSA",
                                "RSA"
                            ]
                        },
                        "key_vault_name": {
                            "constant_value": "myKeyVault-10888"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "notify_before_expiry": {
                            "constant_value": "P29D"
                        },
                        "object_id": {
                            "references": [
                                "data.azurerm_client_config.current.object_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "purge_protection_enabled": {
                            "constant_value": false
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "secret_names": {
                            "constant_value": [
                                "NEXT-PUBLIC-CLERK-PUBLISHABLE-KEY",
                                "CLERK-SECRET-KEY",
                                "NEXT-PUBLIC-CLERK-SIGN-IN-URL",
                                "NEXT-PUBLIC-CLERK-AFTER-SIGN-IN-URL",
                                "DATABASE-URL",
                                "NEXT-PUBLIC-CLOUDINARY-CLOUD-NAME",
                                "NEXT-PUBLIC-CLERK-SIGN-UP-URL",
                                "NEXT-PUBLIC-CLERK-AFTER-SIGN-UP-URL",
                                "FRONTEND-STORE-URL",
                                "STRIPE-API-KEY",
                                "STRIPE-WEBHOOK-SECRET",
                                "NEXT-PUBLIC-API-URL"
                            ]
                        },
                        "secret_permissions": {
                            "constant_value": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ]
                        },
                        "secret_values": {
                            "constant_value": [
                                "pk_test_Y2FwaXRhbC1odW1wYmFjay01NC5jbGVyay5hY2NvdW50cy5kZXYk",
                                "sk_test_M41hUtSCghLofhQpfdby0kGTY6j06Aa1SpJuC3HVnA",
                                "/sign-in",
                                "/",
                                "mysql://admin:Pass123.@mysql-server.databases.svc.cluster.local:3306/ecommerce_db",
                                "dlviqeipm",
                                "/sign-up",
                                "/",
                                "http://store-ecommerce-store.e-commerce.svc.cluster.local:3001",
                                "sk_test_51Owc1jRrb328b1F6XFoBh6eQPDlB3lYK7UwHUVKpqnTtbuN8i7C5sSbSFpeAqIgikjCEO31v8GINtk2RYyBySKdT006G0kdxsM",
                                "whsec_d78b83441dd891931db532bfccd6a04e94d473efb5f4bcca45672cb2dfbc251a",
                                "http://admin-e-commerce-admin.e-commerce.svc.cluster.local:3000/api/e4842c25-047e-450d-bdda-2cc42a4bec6d"
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
                        },
                        "time_before_expiry": {
                            "constant_value": "P30D"
                        },
                        "user_assigned_identity_principal_id": {
                            "references": [
                                "module.me.principal_id",
                                "module.me"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "name": {
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.name",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            },
                            "tenant_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.tenant_id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_key_vault.key_vault",
                                "expressions": {
                                    "access_policy": {
                                        "references": [
                                            "var.secret_permissions",
                                            "var.tenant_id",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.object_id",
                                            "var.certificate_permissions",
                                            "var.key_permissions",
                                            "var.user_assigned_identity_principal_id",
                                            "var.secret_permissions",
                                            "var.tenant_id",
                                            "var.aks_secret_provider_id",
                                            "var.secret_permissions",
                                            "var.tenant_id",
                                            "var.certificate_permissions",
                                            "var.key_permissions"
                                        ]
                                    },
                                    "enabled_for_disk_encryption": {
                                        "references": [
                                            "var.enabled_for_disk_encryption"
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
                                    "purge_protection_enabled": {
                                        "references": [
                                            "var.purge_protection_enabled"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "references": [
                                            "var.sku_name"
                                        ]
                                    },
                                    "soft_delete_retention_days": {
                                        "references": [
                                            "var.soft_delete_retention_days"
                                        ]
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_key_vault"
                            },
                            {
                                "address": "azurerm_key_vault_secret.key_vault_secret",
                                "count_expression": {
                                    "references": [
                                        "var.secret_names"
                                    ]
                                },
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.secret_names",
                                            "count.index"
                                        ]
                                    },
                                    "value": {
                                        "references": [
                                            "var.secret_values",
                                            "count.index"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault_secret",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_secret"
                            },
                            {
                                "address": "azurerm_key_vault_secret.linuxVM-pswd",
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "azurerm_key_vault.key_vault.id",
                                            "azurerm_key_vault.key_vault"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "linuxVM-pswd"
                                    },
                                    "value": {
                                        "references": [
                                            "random_password.rndm-pswd.result",
                                            "random_password.rndm-pswd"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "linuxVM-pswd",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_secret"
                            },
                            {
                                "address": "random_password.rndm-pswd",
                                "expressions": {
                                    "length": {
                                        "constant_value": 18
                                    },
                                    "min_lower": {
                                        "constant_value": 2
                                    },
                                    "min_numeric": {
                                        "constant_value": 2
                                    },
                                    "min_special": {
                                        "constant_value": 4
                                    },
                                    "min_upper": {
                                        "constant_value": 2
                                    },
                                    "override_special": {
                                        "constant_value": "!#$%&*()-_=+[]{}<>:?"
                                    }
                                },
                                "mode": "managed",
                                "name": "rndm-pswd",
                                "provider_config_key": "module.key_vault:random",
                                "schema_version": 3,
                                "type": "random_password"
                            }
                        ],
                        "variables": {
                            "aks_secret_provider_id": {
                                "default": "null"
                            },
                            "certificate_permissions": {
                                "default": [],
                                "description": "Certificate permissions"
                            },
                            "enabled_for_disk_encryption": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "expire_after": {
                                "default": null,
                                "description": "Expire after"
                            },
                            "key_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault keys"
                            },
                            "key_opts": {
                                "default": [],
                                "description": "Key options"
                            },
                            "key_permissions": {
                                "default": [],
                                "description": "Key permissions"
                            },
                            "key_sizes": {
                                "default": [],
                                "description": "Sizes of the Azure Key Vault keys"
                            },
                            "key_types": {
                                "default": [],
                                "description": "Types of the Azure Key Vault keys"
                            },
                            "key_vault_name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure Key Vault"
                            },
                            "notify_before_expiry": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "object_id": {
                                "default": null,
                                "description": "Object ID"
                            },
                            "purge_protection_enabled": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "secret_names": {
                                "default": [],
                                "description": "Names of the Azure Key Vault secrets"
                            },
                            "secret_permissions": {
                                "default": [],
                                "description": "Secret permissions"
                            },
                            "secret_values": {
                                "default": [],
                                "description": "Values of the Azure Key Vault secrets"
                            },
                            "sku_name": {
                                "default": null,
                                "description": "SKU name for the Azure Key Vault"
                            },
                            "soft_delete_retention_days": {
                                "default": null,
                                "description": "Soft delete retention period in days"
                            },
                            "tenant_id": {
                                "default": null,
                                "description": "Tenant ID"
                            },
                            "time_before_expiry": {
                                "default": null,
                                "description": "Time before expiry"
                            },
                            "user_assigned_identity_principal_id": {
                                "default": "10.0.0.0/16",
                                "description": "The principal ID of the user-assigned identity."
                            }
                        }
                    },
                    "source": "./modules/key_vault"
                },
                "me": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "constant_value": "myUserIdentity"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "client_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.myIdentity.client_id",
                                        "azurerm_user_assigned_identity.myIdentity"
                                    ]
                                }
                            },
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.myIdentity.id",
                                        "azurerm_user_assigned_identity.myIdentity"
                                    ]
                                }
                            },
                            "principal_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.myIdentity.principal_id",
                                        "azurerm_user_assigned_identity.myIdentity"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_user_assigned_identity.myIdentity",
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
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "myIdentity",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_user_assigned_identity"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "The location/region where the identity should be created."
                            },
                            "name": {
                                "default": "139uhold",
                                "description": "The name of the user-assigned identity."
                            },
                            "resource_group_name": {
                                "default": "hjjehold",
                                "description": "The name of the resource group."
                            }
                        }
                    },
                    "source": "./modules/me"
                },
                "networks": {
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "allow_virtual_network_access": {
                            "constant_value": true
                        },
                        "api_gateway_subnet_prefix": {
                            "constant_value": "10.1.1.0/24"
                        },
                        "api_gtw_subnet_name": {
                            "constant_value": "api_gtw_subnet"
                        },
                        "bastion_subnet_prefix": {
                            "constant_value": "10.2.2.0/24"
                        },
                        "cluster_subnet_name": {
                            "constant_value": "cluster_subnet"
                        },
                        "cluster_subnet_prefix": {
                            "constant_value": "10.2.1.0/24"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "nameApiToCluster": {
                            "constant_value": "peering-api-gtw-to-cluster"
                        },
                        "nameClusterToApiGtw": {
                            "constant_value": "peering-cluster-to-api-gtw"
                        },
                        "public_ip_name": {
                            "constant_value": "gatewayTestIpPublic"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "vnet_address_space_api_gtw": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "vnet_address_space_cluster": {
                            "constant_value": [
                                "10.2.0.0/16"
                            ]
                        },
                        "vnet_name_api_gtw": {
                            "constant_value": "api-gtw-vnet"
                        },
                        "vnet_name_cluster": {
                            "constant_value": "cluster-vnet"
                        }
                    },
                    "module": {
                        "outputs": {
                            "api_gateway_subnet_id": {
                                "description": "The ID of the subnet for the API Gateway",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.api_gateway_subnet.id",
                                        "azurerm_subnet.api_gateway_subnet"
                                    ]
                                }
                            },
                            "apigtw_vnet_name": {
                                "description": "The ID of the created API gateway Virtual Network.",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.vnet_api_gtw.name",
                                        "azurerm_virtual_network.vnet_api_gtw"
                                    ]
                                }
                            },
                            "bastion_subnet_id": {
                                "description": "The ID of the subnet for the bastion host",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.bastion_subnet.id",
                                        "azurerm_subnet.bastion_subnet"
                                    ]
                                }
                            },
                            "bastion_subnet_prefix": {
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.bastion_subnet.address_prefixes[0]",
                                        "azurerm_subnet.bastion_subnet.address_prefixes",
                                        "azurerm_subnet.bastion_subnet"
                                    ]
                                }
                            },
                            "kubernetes_cluster_subnet_id": {
                                "description": "The ID of the subnet for the Kubernetes cluster",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.kubernetes_cluster_subnet.id",
                                        "azurerm_subnet.kubernetes_cluster_subnet"
                                    ]
                                }
                            },
                            "public_ip_id": {
                                "description": "The ID of the created Azure Public IP.",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.pIp.id",
                                        "azurerm_public_ip.pIp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.pIp",
                                "expressions": {
                                    "allocation_method": {
                                        "references": [
                                            "var.allocation_method"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.public_ip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "pIp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_subnet.api_gateway_subnet",
                                "depends_on": [
                                    "azurerm_virtual_network.vnet_api_gtw",
                                    "azurerm_virtual_network_peering.api_gtw_to_cluster"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.api_gateway_subnet_prefix"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.api_gtw_subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name_api_gtw"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "api_gateway_subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.bastion_subnet",
                                "depends_on": [
                                    "azurerm_virtual_network.vnet_cluster"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.bastion_subnet_prefix"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "AzureBastionSubnet"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.vnet_cluster.name",
                                            "azurerm_virtual_network.vnet_cluster"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion_subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.kubernetes_cluster_subnet",
                                "depends_on": [
                                    "azurerm_virtual_network.vnet_cluster",
                                    "azurerm_virtual_network_peering.cluster_to_api_gtw"
                                ],
                                "expressions": {
                                    "address_prefixes": {
                                        "references": [
                                            "var.cluster_subnet_prefix"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_subnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "var.vnet_name_cluster"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubernetes_cluster_subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.vnet_api_gtw",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.vnet_address_space_api_gtw"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vnet_name_api_gtw"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vnet_api_gtw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network.vnet_cluster",
                                "expressions": {
                                    "address_space": {
                                        "references": [
                                            "var.vnet_address_space_cluster"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vnet_name_cluster"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vnet_cluster",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.api_gtw_to_cluster",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "references": [
                                            "var.allow_virtual_network_access"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nameApiToCluster"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.vnet_cluster.id",
                                            "azurerm_virtual_network.vnet_cluster"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.vnet_api_gtw.name",
                                            "azurerm_virtual_network.vnet_api_gtw"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "api_gtw_to_cluster",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            },
                            {
                                "address": "azurerm_virtual_network_peering.cluster_to_api_gtw",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "references": [
                                            "var.allow_virtual_network_access"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.nameClusterToApiGtw"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "azurerm_virtual_network.vnet_api_gtw.id",
                                            "azurerm_virtual_network.vnet_api_gtw"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.vnet_cluster.name",
                                            "azurerm_virtual_network.vnet_cluster"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "cluster_to_api_gtw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            }
                        ],
                        "variables": {
                            "allocation_method": {
                                "default": "eastus",
                                "description": "The allocation method of the public IP address"
                            },
                            "allow_virtual_network_access": {
                                "default": true,
                                "description": "Allow network access between peered VNets"
                            },
                            "api_gateway_subnet_prefix": {
                                "default": "zodiac",
                                "description": "The address prefix of the API gateway subnet"
                            },
                            "api_gtw_subnet_name": {
                                "default": "tdlyhold",
                                "description": "The name of the API gateway subnet"
                            },
                            "bastion_subnet_prefix": {
                                "default": "zodiac"
                            },
                            "cluster_subnet_name": {
                                "default": "zne8hold",
                                "description": "The name of the Kubernetes cluster subnet"
                            },
                            "cluster_subnet_prefix": {
                                "default": "zodiac",
                                "description": "The address prefix of the Kubernetes cluster subnet"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resources"
                            },
                            "nameApiToCluster": {
                                "default": "0lx0hold",
                                "description": "The name of the virtual network"
                            },
                            "nameClusterToApiGtw": {
                                "default": "r4r6hold",
                                "description": "The name of the virtual network"
                            },
                            "public_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the public IP address"
                            },
                            "resource_group_name": {
                                "default": "9oa5hold",
                                "description": "The name of the resource group"
                            },
                            "sku": {
                                "default": "Standard",
                                "description": "The SKU of the public IP address"
                            },
                            "vnet_address_space_api_gtw": {
                                "default": [],
                                "description": "The address space of the virtual network"
                            },
                            "vnet_address_space_cluster": {
                                "default": [],
                                "description": "The address space of the virtual network"
                            },
                            "vnet_name_api_gtw": {
                                "default": "ft00hold",
                                "description": "The name of the virtual network"
                            },
                            "vnet_name_cluster": {
                                "default": "1qmmhold",
                                "description": "The name of the virtual network"
                            }
                        }
                    },
                    "source": "./modules/networks"
                },
                "resource_group": {
                    "expressions": {
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "constant_value": "ecommerce-resources"
                        }
                    },
                    "module": {
                        "outputs": {
                            "location": {
                                "description": "The location of the resource group",
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.rg.location",
                                        "azurerm_resource_group.rg"
                                    ]
                                }
                            },
                            "name": {
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
                                "address": "azurerm_resource_group.rg",
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
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resource group"
                            },
                            "name": {
                                "default": "qe9yhold",
                                "description": "The name of the resource group"
                            }
                        }
                    },
                    "source": "./modules/resource_group"
                },
                "security": {
                    "expressions": {
                        "bastion_subnet_prefix": {
                            "references": [
                                "module.networks.bastion_subnet_prefix",
                                "module.networks"
                            ]
                        },
                        "kubernetes_cluster_subnet_id": {
                            "references": [
                                "module.networks.kubernetes_cluster_subnet_id",
                                "module.networks"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "nsg_name": {
                            "constant_value": "aks_nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_network_security_group.aks_nsg",
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
                                    },
                                    "security_rule": {
                                        "references": [
                                            "var.bastion_subnet_prefix"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            },
                            {
                                "address": "azurerm_subnet_network_security_group_association.aks_subnet_nsg_assoc",
                                "expressions": {
                                    "network_security_group_id": {
                                        "references": [
                                            "azurerm_network_security_group.aks_nsg.id",
                                            "azurerm_network_security_group.aks_nsg"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "var.kubernetes_cluster_subnet_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_subnet_nsg_assoc",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet_network_security_group_association"
                            }
                        ],
                        "variables": {
                            "bastion_subnet_prefix": {
                                "default": "zodiac"
                            },
                            "kubernetes_cluster_subnet_id": {
                                "default": "9wcxhold"
                            },
                            "location": {
                                "default": "eastus"
                            },
                            "nsg_name": {
                                "default": "abl6hold"
                            },
                            "resource_group_name": {
                                "default": "iu3phold"
                            }
                        }
                    },
                    "source": "./modules/security"
                }
            },
            "resources": [
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.apigtw",
                    "resources": [
                        {
                            "address": "module.apigtw.azurerm_application_gateway.api",
                            "mode": "managed",
                            "name": "api",
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
                                        "name": "backendPool"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "backendHttpSettings",
                                        "path": "",
                                        "pick_host_name_from_backend_address": false,
                                        "port": 80,
                                        "probe_name": "",
                                        "protocol": "Http",
                                        "request_timeout": 120,
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
                                        "name": "frontendConfig",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "frontendPort",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appGatewayIpConfig"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "frontendConfig",
                                        "frontend_port_name": "frontendPort",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "httpListener",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "apiGatewayUnique",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "backendPool",
                                        "backend_http_settings_name": "backendHttpSettings",
                                        "http_listener_name": "httpListener",
                                        "name": "routingRule",
                                        "priority": 9,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "ecommerce-resources",
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
                        }
                    ]
                },
                {
                    "address": "module.bastion",
                    "resources": [
                        {
                            "address": "module.bastion.azurerm_bastion_host.bastion",
                            "mode": "managed",
                            "name": "bastion",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "ip_configuration": [
                                    {}
                                ]
                            },
                            "type": "azurerm_bastion_host",
                            "values": {
                                "copy_paste_enabled": true,
                                "file_copy_enabled": false,
                                "ip_configuration": [
                                    {
                                        "name": "configuration"
                                    }
                                ],
                                "ip_connect_enabled": false,
                                "kerberos_enabled": false,
                                "location": "eastus",
                                "name": "bastion_admin_ecommerce",
                                "resource_group_name": "ecommerce-resources",
                                "scale_units": 2,
                                "shareable_link_enabled": false,
                                "sku": "Basic",
                                "tags": null,
                                "timeouts": null,
                                "tunneling_enabled": false,
                                "virtual_network_id": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_public_ip.bastion",
                            "mode": "managed",
                            "name": "bastion",
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
                                "name": "bastion_admin_ecommerce-pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "ecommerce-resources",
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
                    "address": "module.cluster",
                    "resources": [
                        {
                            "address": "module.cluster.azurerm_kubernetes_cluster.k8s",
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
                                "ingress_application_gateway": [],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [
                                    {
                                        "secret_identity": []
                                    }
                                ],
                                "kube_admin_config": true,
                                "kube_admin_config_raw": true,
                                "kube_config": true,
                                "kube_config_raw": true,
                                "kubelet_identity": [],
                                "linux_profile": [],
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
                                        "name": "default",
                                        "node_count": 1,
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
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
                                        "vm_size": "Standard_D2_v2",
                                        "zones": null
                                    }
                                ],
                                "disk_encryption_set_id": null,
                                "dns_prefix": "mydns",
                                "dns_prefix_private_cluster": null,
                                "edge_zone": null,
                                "enable_pod_security_policy": null,
                                "http_application_routing_enabled": null,
                                "http_proxy_config": [],
                                "identity": [
                                    {
                                        "identity_ids": null,
                                        "type": "SystemAssigned"
                                    }
                                ],
                                "image_cleaner_enabled": false,
                                "image_cleaner_interval_hours": 48,
                                "ingress_application_gateway": [],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [
                                    {
                                        "secret_rotation_enabled": true,
                                        "secret_rotation_interval": "2m"
                                    }
                                ],
                                "linux_profile": [],
                                "local_account_disabled": null,
                                "location": "eastus",
                                "maintenance_window": [],
                                "maintenance_window_auto_upgrade": [],
                                "maintenance_window_node_os": [],
                                "microsoft_defender": [],
                                "monitor_metrics": [],
                                "name": "myK8sCluster",
                                "network_profile": [
                                    {
                                        "load_balancer_sku": "standard",
                                        "network_plugin": "azure",
                                        "network_plugin_mode": null,
                                        "network_policy": "azure",
                                        "outbound_type": "loadBalancer"
                                    }
                                ],
                                "node_os_channel_upgrade": null,
                                "oidc_issuer_enabled": null,
                                "oms_agent": [],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
                                "resource_group_name": "ecommerce-resources",
                                "role_based_access_control_enabled": true,
                                "run_command_enabled": true,
                                "service_mesh_profile": [],
                                "service_principal": [],
                                "sku_tier": "Free",
                                "storage_profile": [],
                                "support_plan": "KubernetesOfficial",
                                "tags": {
                                    "Environment": "Production"
                                },
                                "timeouts": null,
                                "web_app_routing": [],
                                "workload_autoscaler_profile": [],
                                "workload_identity_enabled": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.container_registry",
                    "resources": [
                        {
                            "address": "module.container_registry.azurerm_container_registry.acrk8s",
                            "mode": "managed",
                            "name": "acrk8s",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "admin_password": true,
                                "encryption": [],
                                "georeplications": [],
                                "identity": [],
                                "network_rule_set": [],
                                "retention_policy": [],
                                "trust_policy": []
                            },
                            "type": "azurerm_container_registry",
                            "values": {
                                "admin_enabled": false,
                                "anonymous_pull_enabled": null,
                                "data_endpoint_enabled": null,
                                "export_policy_enabled": true,
                                "georeplications": [],
                                "identity": [],
                                "location": "eastus",
                                "name": "containerRegistryUnique",
                                "network_rule_bypass_option": "AzureServices",
                                "public_network_access_enabled": true,
                                "quarantine_policy_enabled": null,
                                "resource_group_name": "ecommerce-resources",
                                "sku": "Standard",
                                "tags": null,
                                "timeouts": null,
                                "zone_redundancy_enabled": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.key_vault",
                    "resources": [
                        {
                            "address": "module.key_vault.azurerm_key_vault.key_vault",
                            "mode": "managed",
                            "name": "key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [
                                    {
                                        "certificate_permissions": [
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
                                            false
                                        ],
                                        "secret_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    },
                                    {
                                        "certificate_permissions": [
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
                                            false
                                        ],
                                        "secret_permissions": [
                                            false,
                                            false,
                                            false,
                                            false,
                                            false,
                                            false
                                        ]
                                    },
                                    {
                                        "certificate_permissions": [
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
                                            false
                                        ],
                                        "secret_permissions": [
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
                                            "Get"
                                        ],
                                        "key_permissions": [
                                            "Get",
                                            "Create",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover",
                                            "SetRotationPolicy",
                                            "GetRotationPolicy"
                                        ],
                                        "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                                        "secret_permissions": [
                                            "Get",
                                            "Set",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    },
                                    {
                                        "application_id": null,
                                        "certificate_permissions": [
                                            "Get"
                                        ],
                                        "key_permissions": [
                                            "Get",
                                            "Create",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover",
                                            "SetRotationPolicy",
                                            "GetRotationPolicy"
                                        ],
                                        "secret_permissions": [
                                            "Get",
                                            "Set",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    },
                                    {
                                        "application_id": null,
                                        "certificate_permissions": [
                                            "Get"
                                        ],
                                        "key_permissions": [
                                            "Get",
                                            "Create",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover",
                                            "SetRotationPolicy",
                                            "GetRotationPolicy"
                                        ],
                                        "secret_permissions": [
                                            "Get",
                                            "Set",
                                            "List",
                                            "Delete",
                                            "Purge",
                                            "Recover"
                                        ],
                                        "storage_permissions": null,
                                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                                    }
                                ],
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": true,
                                "enabled_for_template_deployment": null,
                                "location": "eastus",
                                "name": "myKeyVault-10888",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": false,
                                "resource_group_name": "ecommerce-resources",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLERK-PUBLISHABLE-KEY",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "pk_test_Y2FwaXRhbC1odW1wYmFjay01NC5jbGVyay5hY2NvdW50cy5kZXYk"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[10]",
                            "index": 10,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "STRIPE-WEBHOOK-SECRET",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "whsec_d78b83441dd891931db532bfccd6a04e94d473efb5f4bcca45672cb2dfbc251a"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[11]",
                            "index": 11,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-API-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "http://admin-e-commerce-admin.e-commerce.svc.cluster.local:3000/api/e4842c25-047e-450d-bdda-2cc42a4bec6d"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[1]",
                            "index": 1,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "CLERK-SECRET-KEY",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "sk_test_M41hUtSCghLofhQpfdby0kGTY6j06Aa1SpJuC3HVnA"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[2]",
                            "index": 2,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLERK-SIGN-IN-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "/sign-in"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[3]",
                            "index": 3,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLERK-AFTER-SIGN-IN-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "/"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[4]",
                            "index": 4,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "DATABASE-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "mysql://admin:Pass123.@mysql-server.databases.svc.cluster.local:3306/ecommerce_db"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[5]",
                            "index": 5,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLOUDINARY-CLOUD-NAME",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "dlviqeipm"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[6]",
                            "index": 6,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLERK-SIGN-UP-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "/sign-up"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[7]",
                            "index": 7,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "NEXT-PUBLIC-CLERK-AFTER-SIGN-UP-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "/"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[8]",
                            "index": 8,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "FRONTEND-STORE-URL",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "http://store-ecommerce-store.e-commerce.svc.cluster.local:3001"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[9]",
                            "index": 9,
                            "mode": "managed",
                            "name": "key_vault_secret",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "STRIPE-API-KEY",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "sk_test_51Owc1jRrb328b1F6XFoBh6eQPDlB3lYK7UwHUVKpqnTtbuN8i7C5sSbSFpeAqIgikjCEO31v8GINtk2RYyBySKdT006G0kdxsM"
                            }
                        },
                        {
                            "address": "module.key_vault.azurerm_key_vault_secret.linuxVM-pswd",
                            "mode": "managed",
                            "name": "linuxVM-pswd",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "value": true
                            },
                            "type": "azurerm_key_vault_secret",
                            "values": {
                                "content_type": null,
                                "expiration_date": null,
                                "name": "linuxVM-pswd",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.key_vault.random_password.rndm-pswd",
                            "mode": "managed",
                            "name": "rndm-pswd",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 3,
                            "sensitive_values": {
                                "bcrypt_hash": true,
                                "result": true
                            },
                            "type": "random_password",
                            "values": {
                                "keepers": null,
                                "length": 18,
                                "lower": true,
                                "min_lower": 2,
                                "min_numeric": 2,
                                "min_special": 4,
                                "min_upper": 2,
                                "number": true,
                                "numeric": true,
                                "override_special": "!#$%&*()-_=+[]{}<>:?",
                                "special": true,
                                "upper": true
                            }
                        }
                    ]
                },
                {
                    "address": "module.me",
                    "resources": [
                        {
                            "address": "module.me.azurerm_user_assigned_identity.myIdentity",
                            "mode": "managed",
                            "name": "myIdentity",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_user_assigned_identity",
                            "values": {
                                "location": "eastus",
                                "name": "myUserIdentity",
                                "resource_group_name": "ecommerce-resources",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.networks",
                    "resources": [
                        {
                            "address": "module.networks.azurerm_public_ip.pIp",
                            "mode": "managed",
                            "name": "pIp",
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
                                "name": "gatewayTestIpPublic",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "ecommerce-resources",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.networks.azurerm_subnet.api_gateway_subnet",
                            "mode": "managed",
                            "name": "api_gateway_subnet",
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
                                "name": "api_gtw_subnet",
                                "resource_group_name": "ecommerce-resources",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "api-gtw-vnet"
                            }
                        },
                        {
                            "address": "module.networks.azurerm_subnet.bastion_subnet",
                            "mode": "managed",
                            "name": "bastion_subnet",
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
                                    "10.2.2.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "AzureBastionSubnet",
                                "resource_group_name": "ecommerce-resources",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "cluster-vnet"
                            }
                        },
                        {
                            "address": "module.networks.azurerm_subnet.kubernetes_cluster_subnet",
                            "mode": "managed",
                            "name": "kubernetes_cluster_subnet",
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
                                    "10.2.1.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "cluster_subnet",
                                "resource_group_name": "ecommerce-resources",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "cluster-vnet"
                            }
                        },
                        {
                            "address": "module.networks.azurerm_virtual_network.vnet_api_gtw",
                            "mode": "managed",
                            "name": "vnet_api_gtw",
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
                                "name": "api-gtw-vnet",
                                "resource_group_name": "ecommerce-resources",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.networks.azurerm_virtual_network.vnet_cluster",
                            "mode": "managed",
                            "name": "vnet_cluster",
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
                                    "10.2.0.0/16"
                                ],
                                "bgp_community": null,
                                "ddos_protection_plan": [],
                                "edge_zone": null,
                                "encryption": [],
                                "flow_timeout_in_minutes": null,
                                "location": "eastus",
                                "name": "cluster-vnet",
                                "resource_group_name": "ecommerce-resources",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.networks.azurerm_virtual_network_peering.api_gtw_to_cluster",
                            "mode": "managed",
                            "name": "api_gtw_to_cluster",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "peering-api-gtw-to-cluster",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ecommerce-resources",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "api-gtw-vnet"
                            }
                        },
                        {
                            "address": "module.networks.azurerm_virtual_network_peering.cluster_to_api_gtw",
                            "mode": "managed",
                            "name": "cluster_to_api_gtw",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "peering-cluster-to-api-gtw",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "ecommerce-resources",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "cluster-vnet"
                            }
                        }
                    ]
                },
                {
                    "address": "module.resource_group",
                    "resources": [
                        {
                            "address": "module.resource_group.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "ecommerce-resources",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.security",
                    "resources": [
                        {
                            "address": "module.security.azurerm_network_security_group.aks_nsg",
                            "mode": "managed",
                            "name": "aks_nsg",
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
                                "location": "eastus",
                                "name": "aks_nsg",
                                "resource_group_name": "ecommerce-resources",
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
                                        "name": "AllowSSHFromBastion",
                                        "priority": 1000,
                                        "protocol": "Tcp",
                                        "source_address_prefix": "10.2.2.0/24",
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
                            "address": "module.security.azurerm_subnet_network_security_group_association.aks_subnet_nsg_assoc",
                            "mode": "managed",
                            "name": "aks_subnet_nsg_assoc",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_subnet_network_security_group_association",
                            "values": {
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
            "resource": "module.key_vault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.security.azurerm_network_security_group.aks_nsg"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "module.key_vault.random_password.rndm-pswd"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "module.me.azurerm_user_assigned_identity.myIdentity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_public_ip.pIp"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_bastion_host.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.apigtw.azurerm_application_gateway.api"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0,
                "secret_identity",
                0,
                "object_id"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_virtual_network.vnet_api_gtw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.key_vault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.apigtw.azurerm_application_gateway.api"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_certificate"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.networks.azurerm_virtual_network.vnet_cluster"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.resource_group.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "principal_id"
            ],
            "resource": "module.me.azurerm_user_assigned_identity.myIdentity"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "module.key_vault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_virtual_network.vnet_cluster"
        },
        {
            "attribute": [
                "address_prefixes",
                0
            ],
            "resource": "module.networks.azurerm_subnet.bastion_subnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.networks.azurerm_virtual_network.vnet_api_gtw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_public_ip.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_subnet.bastion_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_subnet.api_gateway_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.container_registry.azurerm_container_registry.acrk8s"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.cluster.azurerm_kubernetes_cluster.k8s"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.resource_group.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.networks.azurerm_subnet.kubernetes_cluster_subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.me.azurerm_user_assigned_identity.myIdentity"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        }
    ],
    "resource_changes": [
        {
            "address": "module.apigtw.azurerm_application_gateway.api",
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
                            "name": "backendPool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "backendHttpSettings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 80,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 120,
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
                            "name": "frontendConfig",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "frontendPort",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appGatewayIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontendConfig",
                            "frontend_port_name": "frontendPort",
                            "host_name": "",
                            "host_names": [],
                            "name": "httpListener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "apiGatewayUnique",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "backendPool",
                            "backend_http_settings_name": "backendHttpSettings",
                            "http_listener_name": "httpListener",
                            "name": "routingRule",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.apigtw",
            "name": "api",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.bastion.azurerm_bastion_host.bastion",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "copy_paste_enabled": true,
                    "file_copy_enabled": false,
                    "ip_configuration": [
                        {
                            "name": "configuration"
                        }
                    ],
                    "ip_connect_enabled": false,
                    "kerberos_enabled": false,
                    "location": "eastus",
                    "name": "bastion_admin_ecommerce",
                    "resource_group_name": "ecommerce-resources",
                    "scale_units": 2,
                    "shareable_link_enabled": false,
                    "sku": "Basic",
                    "tags": null,
                    "timeouts": null,
                    "tunneling_enabled": false,
                    "virtual_network_id": null
                },
                "after_sensitive": {
                    "ip_configuration": [
                        {}
                    ]
                },
                "after_unknown": {
                    "dns_name": true,
                    "id": true,
                    "ip_configuration": [
                        {
                            "public_ip_address_id": true,
                            "subnet_id": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_bastion_host"
        },
        {
            "address": "module.bastion.azurerm_public_ip.bastion",
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
                    "name": "bastion_admin_ecommerce-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.cluster.azurerm_kubernetes_cluster.k8s",
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
                            "name": "default",
                            "node_count": 1,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
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
                            "vm_size": "Standard_D2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "mydns",
                    "dns_prefix_private_cluster": null,
                    "edge_zone": null,
                    "enable_pod_security_policy": null,
                    "http_application_routing_enabled": null,
                    "http_proxy_config": [],
                    "identity": [
                        {
                            "identity_ids": null,
                            "type": "SystemAssigned"
                        }
                    ],
                    "image_cleaner_enabled": false,
                    "image_cleaner_interval_hours": 48,
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [
                        {
                            "secret_rotation_enabled": true,
                            "secret_rotation_interval": "2m"
                        }
                    ],
                    "linux_profile": [],
                    "local_account_disabled": null,
                    "location": "eastus",
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": "myK8sCluster",
                    "network_profile": [
                        {
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "network_policy": "azure",
                            "outbound_type": "loadBalancer"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": null,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "resource_group_name": "ecommerce-resources",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": {
                        "Environment": "Production"
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
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [
                        {
                            "secret_identity": []
                        }
                    ],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": [],
                    "linux_profile": [],
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
                            "os_disk_size_gb": true,
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
                    "ingress_application_gateway": [],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [
                        {
                            "secret_identity": true
                        }
                    ],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": true,
                    "kubernetes_version": true,
                    "linux_profile": [],
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "dns_service_ip": true,
                            "docker_bridge_cidr": true,
                            "ebpf_data_plane": true,
                            "ip_versions": true,
                            "load_balancer_profile": true,
                            "nat_gateway_profile": true,
                            "network_data_plane": true,
                            "network_mode": true,
                            "outbound_ip_address_ids": true,
                            "outbound_ip_prefix_ids": true,
                            "pod_cidr": true,
                            "pod_cidrs": true,
                            "service_cidr": true,
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
            "module_address": "module.cluster",
            "name": "k8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.container_registry.azurerm_container_registry.acrk8s",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "admin_enabled": false,
                    "anonymous_pull_enabled": null,
                    "data_endpoint_enabled": null,
                    "export_policy_enabled": true,
                    "georeplications": [],
                    "identity": [],
                    "location": "eastus",
                    "name": "containerRegistryUnique",
                    "network_rule_bypass_option": "AzureServices",
                    "public_network_access_enabled": true,
                    "quarantine_policy_enabled": null,
                    "resource_group_name": "ecommerce-resources",
                    "sku": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "admin_password": true,
                    "encryption": [],
                    "georeplications": [],
                    "identity": [],
                    "network_rule_set": [],
                    "retention_policy": [],
                    "trust_policy": []
                },
                "after_unknown": {
                    "admin_password": true,
                    "admin_username": true,
                    "encryption": true,
                    "georeplications": [],
                    "id": true,
                    "identity": [],
                    "login_server": true,
                    "network_rule_set": true,
                    "retention_policy": true,
                    "trust_policy": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.container_registry",
            "name": "acrk8s",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_registry"
        },
        {
            "address": "module.key_vault.azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access_policy": [
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get"
                            ],
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ],
                            "object_id": "62e5370a-2bf4-4734-8511-cc798825f062",
                            "secret_permissions": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        },
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get"
                            ],
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ],
                            "secret_permissions": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        },
                        {
                            "application_id": null,
                            "certificate_permissions": [
                                "Get"
                            ],
                            "key_permissions": [
                                "Get",
                                "Create",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover",
                                "SetRotationPolicy",
                                "GetRotationPolicy"
                            ],
                            "secret_permissions": [
                                "Get",
                                "Set",
                                "List",
                                "Delete",
                                "Purge",
                                "Recover"
                            ],
                            "storage_permissions": null,
                            "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce"
                        }
                    ],
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "myKeyVault-10888",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "ecommerce-resources",
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
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
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
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
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
                                false
                            ],
                            "secret_permissions": [
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
                                false
                            ],
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
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
                                false
                            ],
                            "object_id": true,
                            "secret_permissions": [
                                false,
                                false,
                                false,
                                false,
                                false,
                                false
                            ]
                        },
                        {
                            "certificate_permissions": [
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
                                false
                            ],
                            "object_id": true,
                            "secret_permissions": [
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
            "module_address": "module.key_vault",
            "name": "key_vault",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLERK-PUBLISHABLE-KEY",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "pk_test_Y2FwaXRhbC1odW1wYmFjay01NC5jbGVyay5hY2NvdW50cy5kZXYk"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "CLERK-SECRET-KEY",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "sk_test_M41hUtSCghLofhQpfdby0kGTY6j06Aa1SpJuC3HVnA"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[2]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLERK-SIGN-IN-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "/sign-in"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 2,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[3]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLERK-AFTER-SIGN-IN-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "/"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 3,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[4]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "DATABASE-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "mysql://admin:Pass123.@mysql-server.databases.svc.cluster.local:3306/ecommerce_db"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 4,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[5]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLOUDINARY-CLOUD-NAME",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "dlviqeipm"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 5,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[6]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLERK-SIGN-UP-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "/sign-up"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 6,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[7]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-CLERK-AFTER-SIGN-UP-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "/"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 7,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[8]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "FRONTEND-STORE-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "http://store-ecommerce-store.e-commerce.svc.cluster.local:3001"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 8,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[9]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "STRIPE-API-KEY",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "sk_test_51Owc1jRrb328b1F6XFoBh6eQPDlB3lYK7UwHUVKpqnTtbuN8i7C5sSbSFpeAqIgikjCEO31v8GINtk2RYyBySKdT006G0kdxsM"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 9,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[10]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "STRIPE-WEBHOOK-SECRET",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "whsec_d78b83441dd891931db532bfccd6a04e94d473efb5f4bcca45672cb2dfbc251a"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 10,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.key_vault_secret[11]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "NEXT-PUBLIC-API-URL",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "http://admin-e-commerce-admin.e-commerce.svc.cluster.local:3000/api/e4842c25-047e-450d-bdda-2cc42a4bec6d"
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 11,
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.azurerm_key_vault_secret.linuxVM-pswd",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "linuxVM-pswd",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "value": true
                },
                "after_unknown": {
                    "id": true,
                    "key_vault_id": true,
                    "resource_id": true,
                    "resource_versionless_id": true,
                    "value": true,
                    "version": true,
                    "versionless_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "linuxVM-pswd",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault.random_password.rndm-pswd",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 18,
                    "lower": true,
                    "min_lower": 2,
                    "min_numeric": 2,
                    "min_special": 4,
                    "min_upper": 2,
                    "number": true,
                    "numeric": true,
                    "override_special": "!#$%&*()-_=+[]{}<>:?",
                    "special": true,
                    "upper": true
                },
                "after_sensitive": {
                    "bcrypt_hash": true,
                    "result": true
                },
                "after_unknown": {
                    "bcrypt_hash": true,
                    "id": true,
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.key_vault",
            "name": "rndm-pswd",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_password"
        },
        {
            "address": "module.me.azurerm_user_assigned_identity.myIdentity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "myUserIdentity",
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.me",
            "name": "myIdentity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "module.networks.azurerm_public_ip.pIp",
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
                    "name": "gatewayTestIpPublic",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.networks",
            "name": "pIp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.networks.azurerm_subnet.api_gateway_subnet",
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
                    "name": "api_gtw_subnet",
                    "resource_group_name": "ecommerce-resources",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "api-gtw-vnet"
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
            "module_address": "module.networks",
            "name": "api_gateway_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.networks.azurerm_subnet.bastion_subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.2.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "ecommerce-resources",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "cluster-vnet"
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
            "module_address": "module.networks",
            "name": "bastion_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.networks.azurerm_subnet.kubernetes_cluster_subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.2.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "cluster_subnet",
                    "resource_group_name": "ecommerce-resources",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "cluster-vnet"
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
            "module_address": "module.networks",
            "name": "kubernetes_cluster_subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.networks.azurerm_virtual_network.vnet_api_gtw",
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
                    "name": "api-gtw-vnet",
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.networks",
            "name": "vnet_api_gtw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.networks.azurerm_virtual_network.vnet_cluster",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.2.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
                    "name": "cluster-vnet",
                    "resource_group_name": "ecommerce-resources",
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
            "module_address": "module.networks",
            "name": "vnet_cluster",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.networks.azurerm_virtual_network_peering.api_gtw_to_cluster",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "peering-api-gtw-to-cluster",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ecommerce-resources",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "api-gtw-vnet"
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
            "module_address": "module.networks",
            "name": "api_gtw_to_cluster",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.networks.azurerm_virtual_network_peering.cluster_to_api_gtw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "peering-cluster-to-api-gtw",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "ecommerce-resources",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "cluster-vnet"
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
            "module_address": "module.networks",
            "name": "cluster_to_api_gtw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.resource_group.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "ecommerce-resources",
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
            "module_address": "module.resource_group",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.security.azurerm_network_security_group.aks_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "aks_nsg",
                    "resource_group_name": "ecommerce-resources",
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
                            "name": "AllowSSHFromBastion",
                            "priority": 1000,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.2.2.0/24",
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
            "module_address": "module.security",
            "name": "aks_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.security.azurerm_subnet_network_security_group_association.aks_subnet_nsg_assoc",
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
            "module_address": "module.security",
            "name": "aks_subnet_nsg_assoc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:57:28Z"
}