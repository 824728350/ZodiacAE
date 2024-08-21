
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
            "module.database:random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "module_address": "module.database",
                "name": "random"
            },
            "module.storage:random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "module_address": "module.storage",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "application_gateway": {
                    "expressions": {
                        "agw_name": {
                            "references": [
                                "var.agw_name"
                            ]
                        },
                        "agw_snet_id": {
                            "references": [
                                "module.network.agw_snet_id",
                                "module.network"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "pip_id": {
                            "references": [
                                "module.network.pip_id",
                                "module.network"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "backend_address_pool_ids": {
                                "description": "The IDs of the Backend Address Pool",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.fme_flow.backend_address_pool",
                                        "azurerm_application_gateway.fme_flow"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.fme_flow",
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
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": false
                                            },
                                            "port": {
                                                "constant_value": 8080
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "request_timeout": {
                                                "constant_value": 86400
                                            }
                                        },
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "references": [
                                                    "local.ws_setting_name"
                                                ]
                                            },
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": true
                                            },
                                            "port": {
                                                "constant_value": 7078
                                            },
                                            "probe_name": {
                                                "constant_value": "websocketProbe"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "request_timeout": {
                                                "constant_value": 86400
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
                                            "private_ip_address_allocation": {
                                                "constant_value": "Dynamic"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.pip_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "references": [
                                                    "local.http_frontend_port_name"
                                                ]
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        },
                                        {
                                            "name": {
                                                "references": [
                                                    "local.ws_frontend_port_name"
                                                ]
                                            },
                                            "port": {
                                                "constant_value": 7078
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
                                                    "var.agw_snet_id"
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
                                                    "local.http_frontend_port_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "local.http_listener_name"
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
                                                "references": [
                                                    "local.ws_frontend_port_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "local.ws_listener_name"
                                                ]
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
                                            "var.agw_name"
                                        ]
                                    },
                                    "probe": [
                                        {
                                            "interval": {
                                                "constant_value": 30
                                            },
                                            "match": [
                                                {
                                                    "body": {
                                                        "constant_value": ""
                                                    },
                                                    "status_code": {
                                                        "constant_value": [
                                                            "200-400"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "name": {
                                                "constant_value": "websocketProbe"
                                            },
                                            "path": {
                                                "constant_value": "/"
                                            },
                                            "pick_host_name_from_backend_http_settings": {
                                                "constant_value": true
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
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
                                                    "local.http_listener_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "local.http_request_routing_rule_name"
                                                ]
                                            },
                                            "rule_type": {
                                                "constant_value": "Basic"
                                            }
                                        },
                                        {
                                            "backend_address_pool_name": {
                                                "references": [
                                                    "local.backend_address_pool_name"
                                                ]
                                            },
                                            "backend_http_settings_name": {
                                                "references": [
                                                    "local.ws_setting_name"
                                                ]
                                            },
                                            "http_listener_name": {
                                                "references": [
                                                    "local.ws_listener_name"
                                                ]
                                            },
                                            "name": {
                                                "references": [
                                                    "local.ws_request_routing_rule_name"
                                                ]
                                            },
                                            "rule_type": {
                                                "constant_value": "Basic"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "capacity": {
                                                "constant_value": 1
                                            },
                                            "name": {
                                                "constant_value": "Standard_Medium"
                                            },
                                            "tier": {
                                                "constant_value": "Standard"
                                            }
                                        }
                                    ],
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "agw_name": {
                                "default": "fme-flow-agw",
                                "description": "description"
                            },
                            "agw_snet_id": {
                                "default": "l232hold",
                                "description": "Application gateway virtual network subnet id"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "g3yjhold",
                                "description": "Default value for onwer tag"
                            },
                            "pip_id": {
                                "default": "10.0.0.0/16",
                                "description": "Public IP id"
                            },
                            "rg_name": {
                                "default": "p4d7hold",
                                "description": "Resource group name"
                            },
                            "vnet_name": {
                                "default": "fme-flow-vnet",
                                "description": "Virtual network name"
                            }
                        }
                    },
                    "source": "./modules/lb-services/agw"
                },
                "database": {
                    "expressions": {
                        "be_snet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        },
                        "db_admin_pw": {
                            "references": [
                                "var.db_admin_pw"
                            ]
                        },
                        "db_admin_user": {
                            "references": [
                                "var.db_admin_user"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "fqdn": {
                                "description": "Fully qualified domain name of the postgresql database server",
                                "expression": {
                                    "references": [
                                        "azurerm_postgresql_server.fme_flow.fqdn",
                                        "azurerm_postgresql_server.fme_flow"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_postgresql_server.fme_flow",
                                "expressions": {
                                    "administrator_login": {
                                        "references": [
                                            "var.db_admin_user"
                                        ]
                                    },
                                    "administrator_login_password": {
                                        "references": [
                                            "var.db_admin_pw"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "random_string.db_name.result",
                                            "random_string.db_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "GP_Gen5_2"
                                    },
                                    "ssl_enforcement_enabled": {
                                        "constant_value": true
                                    },
                                    "storage_mb": {
                                        "constant_value": 51200
                                    },
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    },
                                    "version": {
                                        "constant_value": "10"
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_postgresql_server"
                            },
                            {
                                "address": "azurerm_postgresql_virtual_network_rule.fme_flow",
                                "expressions": {
                                    "ignore_missing_vnet_service_endpoint": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "constant_value": "postgresql-vnet-rule"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "server_name": {
                                        "references": [
                                            "azurerm_postgresql_server.fme_flow.name",
                                            "azurerm_postgresql_server.fme_flow"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "var.be_snet_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_postgresql_virtual_network_rule"
                            },
                            {
                                "address": "random_string.db_name",
                                "expressions": {
                                    "length": {
                                        "constant_value": 8
                                    },
                                    "special": {
                                        "constant_value": false
                                    },
                                    "upper": {
                                        "constant_value": false
                                    }
                                },
                                "mode": "managed",
                                "name": "db_name",
                                "provider_config_key": "module.database:random",
                                "schema_version": 2,
                                "type": "random_string"
                            }
                        ],
                        "variables": {
                            "be_snet_id": {
                                "default": "jjz9hold",
                                "description": "Backend virtual network subnet id"
                            },
                            "db_admin_pw": {
                                "default": "1uvhhold",
                                "description": "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "db_admin_user": {
                                "default": "0fx2hold",
                                "description": "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "w6lvhold",
                                "description": "Default value for onwer tag"
                            },
                            "rg_name": {
                                "default": "oliuhold",
                                "description": "Resource group name"
                            }
                        }
                    },
                    "source": "./modules/database/pgsql"
                },
                "load_balancer": {
                    "expressions": {
                        "be_snet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        },
                        "lb_name": {
                            "references": [
                                "var.lb_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "be_address_pool_id": {
                                "description": "Backend address poll id of the load balancer",
                                "expression": {
                                    "references": [
                                        "azurerm_lb_backend_address_pool.fme_flow.id",
                                        "azurerm_lb_backend_address_pool.fme_flow"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "description": "Private IP address of the load balancer",
                                "expression": {
                                    "references": [
                                        "azurerm_lb.fme_flow.private_ip_address",
                                        "azurerm_lb.fme_flow"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_lb.fme_flow",
                                "expressions": {
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "engineRegistrationFrontend"
                                            },
                                            "private_ip_address_allocation": {
                                                "constant_value": "Dynamic"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.be_snet_id"
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
                                            "var.lb_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb"
                            },
                            {
                                "address": "azurerm_lb_backend_address_pool.fme_flow",
                                "expressions": {
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.fme_flow.id",
                                            "azurerm_lb.fme_flow"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "engineRegistrationBackend"
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_backend_address_pool"
                            },
                            {
                                "address": "azurerm_lb_rule.fme_flow",
                                "expressions": {
                                    "backend_address_pool_ids": {
                                        "references": [
                                            "azurerm_lb_backend_address_pool.fme_flow.id",
                                            "azurerm_lb_backend_address_pool.fme_flow"
                                        ]
                                    },
                                    "backend_port": {
                                        "constant_value": 7070
                                    },
                                    "frontend_ip_configuration_name": {
                                        "constant_value": "engineRegistrationFrontend"
                                    },
                                    "frontend_port": {
                                        "constant_value": 7070
                                    },
                                    "idle_timeout_in_minutes": {
                                        "constant_value": 30
                                    },
                                    "loadbalancer_id": {
                                        "references": [
                                            "azurerm_lb.fme_flow.id",
                                            "azurerm_lb.fme_flow"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "roundRobinEngineRegistrationRule"
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_lb_rule"
                            }
                        ],
                        "variables": {
                            "be_snet_id": {
                                "default": "vfeyhold",
                                "description": "Backend virtual network subnet id"
                            },
                            "lb_name": {
                                "default": "fme-flow-lb",
                                "description": "Load balancer name"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "hcqahold",
                                "description": "Default value for onwer tag"
                            },
                            "rg_name": {
                                "default": "cyeohold",
                                "description": "Resource group name"
                            }
                        }
                    },
                    "source": "./modules/lb-services/lb"
                },
                "network": {
                    "expressions": {
                        "agw_snet_name": {
                            "references": [
                                "var.agw_snet_name"
                            ]
                        },
                        "be_snet_name": {
                            "references": [
                                "var.be_snet_name"
                            ]
                        },
                        "domain_name_label": {
                            "references": [
                                "var.domain_name_label"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "pip_name": {
                            "references": [
                                "var.pip_name"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
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
                            "agw_snet_id": {
                                "description": "Application gateway virtual network subnet id",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.fme_flow_agw.id",
                                        "azurerm_subnet.fme_flow_agw"
                                    ]
                                }
                            },
                            "be_snet_id": {
                                "description": "Backend virtual network subnet id",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.fme_flow_be.id",
                                        "azurerm_subnet.fme_flow_be"
                                    ]
                                }
                            },
                            "fqdn": {
                                "description": "Fully qualified domain name of the A DNS record associated with the public IP.",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.fme_flow.fqdn",
                                        "azurerm_public_ip.fme_flow"
                                    ]
                                }
                            },
                            "pip_id": {
                                "description": "Public ip id",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.fme_flow.id",
                                        "azurerm_public_ip.fme_flow"
                                    ]
                                }
                            },
                            "vnet_name": {
                                "description": "Virtual network name",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.fme_flow.name",
                                        "azurerm_virtual_network.fme_flow"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.fme_flow",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Dynamic"
                                    },
                                    "domain_name_label": {
                                        "references": [
                                            "var.domain_name_label"
                                        ]
                                    },
                                    "idle_timeout_in_minutes": {
                                        "constant_value": 30
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.pip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Basic"
                                    },
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_subnet.fme_flow_agw",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.1.0/24"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.agw_snet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.fme_flow.name",
                                            "azurerm_virtual_network.fme_flow"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow_agw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_subnet.fme_flow_be",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.be_snet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "service_endpoints": {
                                        "constant_value": [
                                            "Microsoft.Storage",
                                            "Microsoft.Sql"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.fme_flow.name",
                                            "azurerm_virtual_network.fme_flow"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow_be",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.fme_flow",
                                "expressions": {
                                    "address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
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
                                            "var.rg_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "agw_snet_name": {
                                "default": "2lkohold",
                                "description": "Application gateway virtual network subnet name"
                            },
                            "be_snet_name": {
                                "default": "5jt2hold",
                                "description": "Backend virtual network subnet name"
                            },
                            "domain_name_label": {
                                "default": "2qbqhold",
                                "description": "Label for the Domain Name. Will be used to make up the FQDN"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "8d9fhold",
                                "description": "Default value for onwer tag"
                            },
                            "pip_name": {
                                "default": "10.0.0.0/16",
                                "description": "Public ip name"
                            },
                            "rg_name": {
                                "default": "2z2xhold",
                                "description": "Resource group name"
                            },
                            "vnet_name": {
                                "default": "0k4vhold",
                                "description": "Virtual network name"
                            }
                        }
                    },
                    "source": "./modules/network"
                },
                "storage": {
                    "expressions": {
                        "be_snet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        },
                        "build_agent_public_ip": {
                            "references": [
                                "var.build_agent_public_ip"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "name": {
                                "description": "Name of the Azure storage account for the FME Sever file share",
                                "expression": {
                                    "references": [
                                        "azurerm_storage_account.fme_flow.name",
                                        "azurerm_storage_account.fme_flow"
                                    ]
                                }
                            },
                            "primary_access_key": {
                                "description": "The primary access key for the storage account.",
                                "expression": {
                                    "references": [
                                        "azurerm_storage_account.fme_flow.primary_access_key",
                                        "azurerm_storage_account.fme_flow"
                                    ]
                                },
                                "sensitive": true
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_storage_account.fme_flow",
                                "expressions": {
                                    "account_kind": {
                                        "constant_value": "FileStorage"
                                    },
                                    "account_replication_type": {
                                        "constant_value": "LRS"
                                    },
                                    "account_tier": {
                                        "constant_value": "Premium"
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "random_string.st_name.result",
                                            "random_string.st_name"
                                        ]
                                    },
                                    "network_rules": [
                                        {
                                            "bypass": {
                                                "constant_value": [
                                                    "AzureServices"
                                                ]
                                            },
                                            "default_action": {
                                                "constant_value": "Deny"
                                            },
                                            "ip_rules": {
                                                "references": [
                                                    "var.build_agent_public_ip"
                                                ]
                                            },
                                            "virtual_network_subnet_ids": {
                                                "references": [
                                                    "var.be_snet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 4,
                                "type": "azurerm_storage_account"
                            },
                            {
                                "address": "azurerm_storage_share.fme_flow",
                                "expressions": {
                                    "name": {
                                        "constant_value": "fmeflowdata"
                                    },
                                    "quota": {
                                        "constant_value": 100
                                    },
                                    "storage_account_name": {
                                        "references": [
                                            "azurerm_storage_account.fme_flow.name",
                                            "azurerm_storage_account.fme_flow"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_storage_share"
                            },
                            {
                                "address": "random_string.st_name",
                                "expressions": {
                                    "length": {
                                        "constant_value": 8
                                    },
                                    "lower": {
                                        "constant_value": false
                                    },
                                    "special": {
                                        "constant_value": false
                                    },
                                    "upper": {
                                        "constant_value": false
                                    }
                                },
                                "mode": "managed",
                                "name": "st_name",
                                "provider_config_key": "module.storage:random",
                                "schema_version": 2,
                                "type": "random_string"
                            }
                        ],
                        "variables": {
                            "be_snet_id": {
                                "default": "ntabhold",
                                "description": "Backend virtual network subnet id"
                            },
                            "build_agent_public_ip": {
                                "default": "10.0.0.0/16",
                                "description": "Public IP of the build agent or machine that is running terraform deployment to be whitelisted in the storage account. This is a workaround for the following known issue: https://github.com/hashicorp/terraform-provider-azurerm/issues/2977"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "5zfrhold",
                                "description": "Default value for onwer tag"
                            },
                            "rg_name": {
                                "default": "f280hold",
                                "description": "Resource group name"
                            }
                        }
                    },
                    "source": "./modules/storage"
                },
                "vmss_core": {
                    "expressions": {
                        "agw_backend_address_pool_ids": {
                            "references": [
                                "module.application_gateway.backend_address_pool_ids",
                                "module.application_gateway"
                            ]
                        },
                        "be_snet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        },
                        "db_admin_pw": {
                            "references": [
                                "var.db_admin_pw"
                            ]
                        },
                        "db_admin_user": {
                            "references": [
                                "var.db_admin_user"
                            ]
                        },
                        "db_fqdn": {
                            "references": [
                                "module.database.fqdn",
                                "module.database"
                            ]
                        },
                        "fqdn": {
                            "references": [
                                "module.network.fqdn",
                                "module.network"
                            ]
                        },
                        "instance_count_core": {
                            "references": [
                                "var.instance_count_core"
                            ]
                        },
                        "lb_be_address_pool_id": {
                            "references": [
                                "module.load_balancer.be_address_pool_id",
                                "module.load_balancer"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "storage_key": {
                            "references": [
                                "module.storage.primary_access_key",
                                "module.storage"
                            ]
                        },
                        "storage_name": {
                            "references": [
                                "module.storage.name",
                                "module.storage"
                            ]
                        },
                        "vm_admin_pw": {
                            "references": [
                                "var.vm_admin_pw"
                            ]
                        },
                        "vm_admin_user": {
                            "references": [
                                "var.vm_admin_user"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_windows_virtual_machine_scale_set.fme_flow_core",
                                "expressions": {
                                    "admin_password": {
                                        "references": [
                                            "var.vm_admin_pw"
                                        ]
                                    },
                                    "admin_username": {
                                        "references": [
                                            "var.vm_admin_user"
                                        ]
                                    },
                                    "extension": [
                                        {
                                            "name": {
                                                "constant_value": "core-script"
                                            },
                                            "protected_settings": {
                                                "references": [
                                                    "var.db_fqdn",
                                                    "var.db_admin_pw",
                                                    "var.db_admin_user",
                                                    "var.fqdn",
                                                    "var.storage_name",
                                                    "var.storage_key"
                                                ]
                                            },
                                            "publisher": {
                                                "constant_value": "Microsoft.Compute"
                                            },
                                            "type": {
                                                "constant_value": "CustomScriptExtension"
                                            },
                                            "type_handler_version": {
                                                "constant_value": "1.8"
                                            }
                                        }
                                    ],
                                    "instances": {
                                        "references": [
                                            "var.instance_count_core"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "core"
                                    },
                                    "network_interface": [
                                        {
                                            "ip_configuration": [
                                                {
                                                    "application_gateway_backend_address_pool_ids": {
                                                        "references": [
                                                            "var.agw_backend_address_pool_ids"
                                                        ]
                                                    },
                                                    "load_balancer_backend_address_pool_ids": {
                                                        "references": [
                                                            "var.lb_be_address_pool_id"
                                                        ]
                                                    },
                                                    "name": {
                                                        "constant_value": "ipconfig"
                                                    },
                                                    "primary": {
                                                        "constant_value": true
                                                    },
                                                    "subnet_id": {
                                                        "references": [
                                                            "var.be_snet_id"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "name": {
                                                "constant_value": "nic-core"
                                            },
                                            "primary": {
                                                "constant_value": true
                                            }
                                        }
                                    ],
                                    "os_disk": [
                                        {
                                            "caching": {
                                                "constant_value": "ReadWrite"
                                            },
                                            "storage_account_type": {
                                                "constant_value": "Premium_LRS"
                                            }
                                        }
                                    ],
                                    "plan": [
                                        {
                                            "name": {
                                                "constant_value": "fme-core-2024-0-2-1-windows-byol"
                                            },
                                            "product": {
                                                "constant_value": "fme-core"
                                            },
                                            "publisher": {
                                                "constant_value": "safesoftwareinc"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard_D2s_v3"
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "constant_value": "fme-core"
                                            },
                                            "publisher": {
                                                "constant_value": "safesoftwareinc"
                                            },
                                            "sku": {
                                                "constant_value": "fme-core-2024-0-2-1-windows-byol"
                                            },
                                            "version": {
                                                "constant_value": "latest"
                                            }
                                        }
                                    ],
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow_core",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_windows_virtual_machine_scale_set"
                            }
                        ],
                        "variables": {
                            "agw_backend_address_pool_ids": {
                                "default": null,
                                "description": "Application gateway backend address pool id"
                            },
                            "be_snet_id": {
                                "default": "d23xhold",
                                "description": "Backend virtual network subnet id"
                            },
                            "db_admin_pw": {
                                "default": "iporhold",
                                "description": "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "db_admin_user": {
                                "default": "t9w7hold",
                                "description": "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "db_fqdn": {
                                "default": "22tehold",
                                "description": "Fully qualified domain name of the postgresql database server"
                            },
                            "fqdn": {
                                "default": "w8wqhold",
                                "description": "Fully qualified domain name of the A DNS record associated with the public IP."
                            },
                            "instance_count_core": {
                                "default": null,
                                "description": "Number of Core VM instances"
                            },
                            "lb_be_address_pool_id": {
                                "default": "gxt3hold",
                                "description": "Load balancer backend address pool id"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "humrhold",
                                "description": "Default value for onwer tag"
                            },
                            "rg_name": {
                                "default": "6dv6hold",
                                "description": "Resource group name"
                            },
                            "storage_key": {
                                "default": "egiehold",
                                "description": "FME Flow backend storage account key",
                                "sensitive": true
                            },
                            "storage_name": {
                                "default": "mp58hold",
                                "description": "FME Flow backend storage account name"
                            },
                            "vm_admin_pw": {
                                "default": "ngoyhold",
                                "description": "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "vm_admin_user": {
                                "default": "fay6hold",
                                "description": "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            }
                        }
                    },
                    "source": "./modules/vmss/vmss_core"
                },
                "vmss_standard_engine": {
                    "depends_on": [
                        "module.vmss_core"
                    ],
                    "expressions": {
                        "be_snet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        },
                        "db_fqdn": {
                            "references": [
                                "module.database.fqdn",
                                "module.database"
                            ]
                        },
                        "engine_type": {
                            "constant_value": "STANDARD"
                        },
                        "instance_count_engine": {
                            "references": [
                                "var.instance_count_engine"
                            ]
                        },
                        "lb_private_ip_address": {
                            "references": [
                                "module.load_balancer.private_ip_address",
                                "module.load_balancer"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "owner": {
                            "references": [
                                "var.owner"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "storage_key": {
                            "references": [
                                "module.storage.primary_access_key",
                                "module.storage"
                            ]
                        },
                        "storage_name": {
                            "references": [
                                "module.storage.name",
                                "module.storage"
                            ]
                        },
                        "vm_admin_pw": {
                            "references": [
                                "var.vm_admin_pw"
                            ]
                        },
                        "vm_admin_user": {
                            "references": [
                                "var.vm_admin_user"
                            ]
                        },
                        "vmss_name": {
                            "constant_value": "standard"
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_windows_virtual_machine_scale_set.fme_flow_engine",
                                "expressions": {
                                    "admin_password": {
                                        "references": [
                                            "var.vm_admin_pw"
                                        ]
                                    },
                                    "admin_username": {
                                        "references": [
                                            "var.vm_admin_user"
                                        ]
                                    },
                                    "extension": [
                                        {
                                            "name": {
                                                "constant_value": "engine-script"
                                            },
                                            "protected_settings": {
                                                "references": [
                                                    "var.db_fqdn",
                                                    "var.lb_private_ip_address",
                                                    "var.storage_name",
                                                    "var.storage_key",
                                                    "local.engine_type"
                                                ]
                                            },
                                            "publisher": {
                                                "constant_value": "Microsoft.Compute"
                                            },
                                            "type": {
                                                "constant_value": "CustomScriptExtension"
                                            },
                                            "type_handler_version": {
                                                "constant_value": "1.8"
                                            }
                                        }
                                    ],
                                    "instances": {
                                        "references": [
                                            "var.instance_count_engine"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vmss_name"
                                        ]
                                    },
                                    "network_interface": [
                                        {
                                            "ip_configuration": [
                                                {
                                                    "name": {
                                                        "constant_value": "ipconfig"
                                                    },
                                                    "primary": {
                                                        "constant_value": true
                                                    },
                                                    "subnet_id": {
                                                        "references": [
                                                            "var.be_snet_id"
                                                        ]
                                                    }
                                                }
                                            ],
                                            "name": {
                                                "constant_value": "nic-engine"
                                            },
                                            "primary": {
                                                "constant_value": true
                                            }
                                        }
                                    ],
                                    "os_disk": [
                                        {
                                            "caching": {
                                                "constant_value": "ReadWrite"
                                            },
                                            "storage_account_type": {
                                                "constant_value": "Premium_LRS"
                                            }
                                        }
                                    ],
                                    "plan": [
                                        {
                                            "name": {
                                                "constant_value": "fme-engine-2024-0-2-1-windows-byol"
                                            },
                                            "product": {
                                                "constant_value": "fme-engine"
                                            },
                                            "publisher": {
                                                "constant_value": "safesoftwareinc"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg_name"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard_D2s_v3"
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "constant_value": "fme-engine"
                                            },
                                            "publisher": {
                                                "constant_value": "safesoftwareinc"
                                            },
                                            "sku": {
                                                "constant_value": "fme-engine-2024-0-2-1-windows-byol"
                                            },
                                            "version": {
                                                "constant_value": "latest"
                                            }
                                        }
                                    ],
                                    "tags": {
                                        "references": [
                                            "local.default_tags"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "fme_flow_engine",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_windows_virtual_machine_scale_set"
                            }
                        ],
                        "variables": {
                            "be_snet_id": {
                                "default": "5y73hold",
                                "description": "Backend virtual network subnet id"
                            },
                            "db_fqdn": {
                                "default": "n5aihold",
                                "description": "Fully qualified domain name of the postgresql database server"
                            },
                            "engine_type": {
                                "default": "ibq2hold",
                                "description": "The type of FME Flow Engine. Possible values are STANDARD and DYNAMIC"
                            },
                            "instance_count_engine": {
                                "default": null,
                                "description": "Number of engine VM instances"
                            },
                            "lb_private_ip_address": {
                                "default": "10.0.0.0/16",
                                "description": "Private IP address of the load balancer"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location of resources"
                            },
                            "owner": {
                                "default": "c6jyhold",
                                "description": "Default value for onwer tag"
                            },
                            "rg_name": {
                                "default": "v7emhold",
                                "description": "Resource group name"
                            },
                            "storage_key": {
                                "default": "5zlihold",
                                "description": "FME Flow backend storage account key",
                                "sensitive": true
                            },
                            "storage_name": {
                                "default": "98echold",
                                "description": "FME Flow backend storage account name"
                            },
                            "vm_admin_pw": {
                                "default": "hadlhold",
                                "description": "Specifies the windows virual machine admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "vm_admin_user": {
                                "default": "euvyhold",
                                "description": "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                                "sensitive": true
                            },
                            "vmss_name": {
                                "default": "w57uhold",
                                "description": "Name of the virtual machine scale set"
                            }
                        }
                    },
                    "source": "./modules/vmss/vmss_engine"
                }
            },
            "outputs": {
                "fme_flow_fqdn": {
                    "description": "External hostname of FME Flow",
                    "expression": {
                        "references": [
                            "module.network.fqdn",
                            "module.network"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_resource_group.fme_flow",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.rg_name"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.application_gateway.azurerm_application_gateway.fme_flow",
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
                                "pick_host_name_from_backend_address": {
                                    "constant_value": false
                                },
                                "port": {
                                    "constant_value": 8080
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 86400
                                }
                            },
                            {
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "references": [
                                        "local.ws_setting_name"
                                    ]
                                },
                                "pick_host_name_from_backend_address": {
                                    "constant_value": true
                                },
                                "port": {
                                    "constant_value": 7078
                                },
                                "probe_name": {
                                    "constant_value": "websocketProbe"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "request_timeout": {
                                    "constant_value": 86400
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
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.network.pip_id",
                                        "module.network"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "local.http_frontend_port_name"
                                    ]
                                },
                                "port": {
                                    "constant_value": 80
                                }
                            },
                            {
                                "name": {
                                    "references": [
                                        "local.ws_frontend_port_name"
                                    ]
                                },
                                "port": {
                                    "constant_value": 7078
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
                                        "module.network.agw_snet_id",
                                        "module.network"
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
                                        "local.http_frontend_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.http_listener_name"
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
                                    "references": [
                                        "local.ws_frontend_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.ws_listener_name"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.application_gateway.agw_name"
                            ]
                        },
                        "probe": [
                            {
                                "interval": {
                                    "constant_value": 30
                                },
                                "match": [
                                    {
                                        "body": {
                                            "constant_value": ""
                                        },
                                        "status_code": {
                                            "constant_value": [
                                                "200-400"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "websocketProbe"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "pick_host_name_from_backend_http_settings": {
                                    "constant_value": true
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                                        "local.http_listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.http_request_routing_rule_name"
                                    ]
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            },
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "local.backend_address_pool_name"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "local.ws_setting_name"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "local.ws_listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.ws_request_routing_rule_name"
                                    ]
                                },
                                "rule_type": {
                                    "constant_value": "Basic"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 1
                                },
                                "name": {
                                    "constant_value": "Standard_Medium"
                                },
                                "tier": {
                                    "constant_value": "Standard"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "module.database.azurerm_postgresql_server.fme_flow",
                    "expressions": {
                        "administrator_login": {
                            "references": [
                                "root.database.db_admin_user"
                            ]
                        },
                        "administrator_login_password": {
                            "references": [
                                "root.database.db_admin_pw"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "module.database.random_string.db_name.result",
                                "module.database.random_string.db_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "GP_Gen5_2"
                        },
                        "ssl_enforcement_enabled": {
                            "constant_value": true
                        },
                        "storage_mb": {
                            "constant_value": 51200
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        },
                        "version": {
                            "constant_value": "10"
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_postgresql_server"
                },
                {
                    "address": "module.database.azurerm_postgresql_virtual_network_rule.fme_flow",
                    "expressions": {
                        "ignore_missing_vnet_service_endpoint": {
                            "constant_value": true
                        },
                        "name": {
                            "constant_value": "postgresql-vnet-rule"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "server_name": {
                            "references": [
                                "module.database.azurerm_postgresql_server.fme_flow.name",
                                "module.database.azurerm_postgresql_server.fme_flow"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "module.network.be_snet_id",
                                "module.network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_postgresql_virtual_network_rule"
                },
                {
                    "address": "module.database.random_string.db_name",
                    "expressions": {
                        "length": {
                            "constant_value": 8
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "db_name",
                    "provider_config_key": "module.database:random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "module.load_balancer.azurerm_lb.fme_flow",
                    "expressions": {
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "engineRegistrationFrontend"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "subnet_id": {
                                    "references": [
                                        "module.network.be_snet_id",
                                        "module.network"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.load_balancer.lb_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_lb"
                },
                {
                    "address": "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow",
                    "expressions": {
                        "loadbalancer_id": {
                            "references": [
                                "module.load_balancer.azurerm_lb.fme_flow.id",
                                "module.load_balancer.azurerm_lb.fme_flow"
                            ]
                        },
                        "name": {
                            "constant_value": "engineRegistrationBackend"
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_lb_backend_address_pool"
                },
                {
                    "address": "module.load_balancer.azurerm_lb_rule.fme_flow",
                    "expressions": {
                        "backend_address_pool_ids": {
                            "references": [
                                "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow.id",
                                "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow"
                            ]
                        },
                        "backend_port": {
                            "constant_value": 7070
                        },
                        "frontend_ip_configuration_name": {
                            "constant_value": "engineRegistrationFrontend"
                        },
                        "frontend_port": {
                            "constant_value": 7070
                        },
                        "idle_timeout_in_minutes": {
                            "constant_value": 30
                        },
                        "loadbalancer_id": {
                            "references": [
                                "module.load_balancer.azurerm_lb.fme_flow.id",
                                "module.load_balancer.azurerm_lb.fme_flow"
                            ]
                        },
                        "name": {
                            "constant_value": "roundRobinEngineRegistrationRule"
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_lb_rule"
                },
                {
                    "address": "module.network.azurerm_public_ip.fme_flow",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Dynamic"
                        },
                        "domain_name_label": {
                            "references": [
                                "root.network.domain_name_label"
                            ]
                        },
                        "idle_timeout_in_minutes": {
                            "constant_value": 30
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.pip_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "sku": {
                            "constant_value": "Basic"
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.network.azurerm_subnet.fme_flow_agw",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.agw_snet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.network.azurerm_virtual_network.fme_flow.name",
                                "module.network.azurerm_virtual_network.fme_flow"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow_agw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "module.network.azurerm_subnet.fme_flow_be",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.0.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.be_snet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "service_endpoints": {
                            "constant_value": [
                                "Microsoft.Storage",
                                "Microsoft.Sql"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.network.azurerm_virtual_network.fme_flow.name",
                                "module.network.azurerm_virtual_network.fme_flow"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow_be",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "module.network.azurerm_virtual_network.fme_flow",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.network.vnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "module.storage.azurerm_storage_account.fme_flow",
                    "expressions": {
                        "account_kind": {
                            "constant_value": "FileStorage"
                        },
                        "account_replication_type": {
                            "constant_value": "LRS"
                        },
                        "account_tier": {
                            "constant_value": "Premium"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "module.storage.random_string.st_name.result",
                                "module.storage.random_string.st_name"
                            ]
                        },
                        "network_rules": [
                            {
                                "bypass": {
                                    "constant_value": [
                                        "AzureServices"
                                    ]
                                },
                                "default_action": {
                                    "constant_value": "Deny"
                                },
                                "ip_rules": {
                                    "references": [
                                        "root.storage.build_agent_public_ip"
                                    ]
                                },
                                "virtual_network_subnet_ids": {
                                    "references": [
                                        "module.network.be_snet_id",
                                        "module.network"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 4,
                    "type": "azurerm_storage_account"
                },
                {
                    "address": "module.storage.azurerm_storage_share.fme_flow",
                    "expressions": {
                        "name": {
                            "constant_value": "fmeflowdata"
                        },
                        "quota": {
                            "constant_value": 100
                        },
                        "storage_account_name": {
                            "references": [
                                "module.storage.azurerm_storage_account.fme_flow.name",
                                "module.storage.azurerm_storage_account.fme_flow"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_storage_share"
                },
                {
                    "address": "module.storage.random_string.st_name",
                    "expressions": {
                        "length": {
                            "constant_value": 8
                        },
                        "lower": {
                            "constant_value": false
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "st_name",
                    "provider_config_key": "module.storage:random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "module.vmss_core.azurerm_windows_virtual_machine_scale_set.fme_flow_core",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "root.vmss_core.vm_admin_pw"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.vmss_core.vm_admin_user"
                            ]
                        },
                        "extension": [
                            {
                                "name": {
                                    "constant_value": "core-script"
                                },
                                "protected_settings": {
                                    "references": [
                                        "module.database.fqdn",
                                        "module.database",
                                        "root.vmss_core.db_admin_pw",
                                        "root.vmss_core.db_admin_user",
                                        "module.network.fqdn",
                                        "module.network",
                                        "module.storage.name",
                                        "module.storage",
                                        "module.storage.primary_access_key",
                                        "module.storage"
                                    ]
                                },
                                "publisher": {
                                    "constant_value": "Microsoft.Compute"
                                },
                                "type": {
                                    "constant_value": "CustomScriptExtension"
                                },
                                "type_handler_version": {
                                    "constant_value": "1.8"
                                }
                            }
                        ],
                        "instances": {
                            "references": [
                                "root.vmss_core.instance_count_core"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "constant_value": "core"
                        },
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "application_gateway_backend_address_pool_ids": {
                                            "references": [
                                                "module.application_gateway.backend_address_pool_ids",
                                                "module.application_gateway"
                                            ]
                                        },
                                        "load_balancer_backend_address_pool_ids": {
                                            "references": [
                                                "module.load_balancer.be_address_pool_id",
                                                "module.load_balancer"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "ipconfig"
                                        },
                                        "primary": {
                                            "constant_value": true
                                        },
                                        "subnet_id": {
                                            "references": [
                                                "module.network.be_snet_id",
                                                "module.network"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "nic-core"
                                },
                                "primary": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Premium_LRS"
                                }
                            }
                        ],
                        "plan": [
                            {
                                "name": {
                                    "constant_value": "fme-core-2024-0-2-1-windows-byol"
                                },
                                "product": {
                                    "constant_value": "fme-core"
                                },
                                "publisher": {
                                    "constant_value": "safesoftwareinc"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard_D2s_v3"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "fme-core"
                                },
                                "publisher": {
                                    "constant_value": "safesoftwareinc"
                                },
                                "sku": {
                                    "constant_value": "fme-core-2024-0-2-1-windows-byol"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow_core",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine_scale_set"
                },
                {
                    "address": "module.vmss_standard_engine.azurerm_windows_virtual_machine_scale_set.fme_flow_engine",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "root.vmss_standard_engine.vm_admin_pw"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.vmss_standard_engine.vm_admin_user"
                            ]
                        },
                        "extension": [
                            {
                                "name": {
                                    "constant_value": "engine-script"
                                },
                                "protected_settings": {
                                    "references": [
                                        "module.database.fqdn",
                                        "module.database",
                                        "module.load_balancer.private_ip_address",
                                        "module.load_balancer",
                                        "module.storage.name",
                                        "module.storage",
                                        "module.storage.primary_access_key",
                                        "module.storage",
                                        "local.engine_type"
                                    ]
                                },
                                "publisher": {
                                    "constant_value": "Microsoft.Compute"
                                },
                                "type": {
                                    "constant_value": "CustomScriptExtension"
                                },
                                "type_handler_version": {
                                    "constant_value": "1.8"
                                }
                            }
                        ],
                        "instances": {
                            "references": [
                                "root.vmss_standard_engine.instance_count_engine"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.fme_flow.location",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.vmss_standard_engine.vmss_name"
                            ]
                        },
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "name": {
                                            "constant_value": "ipconfig"
                                        },
                                        "primary": {
                                            "constant_value": true
                                        },
                                        "subnet_id": {
                                            "references": [
                                                "module.network.be_snet_id",
                                                "module.network"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "nic-engine"
                                },
                                "primary": {
                                    "constant_value": true
                                }
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "constant_value": "Premium_LRS"
                                }
                            }
                        ],
                        "plan": [
                            {
                                "name": {
                                    "constant_value": "fme-engine-2024-0-2-1-windows-byol"
                                },
                                "product": {
                                    "constant_value": "fme-engine"
                                },
                                "publisher": {
                                    "constant_value": "safesoftwareinc"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.fme_flow.name",
                                "azurerm_resource_group.fme_flow"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard_D2s_v3"
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "constant_value": "fme-engine"
                                },
                                "publisher": {
                                    "constant_value": "safesoftwareinc"
                                },
                                "sku": {
                                    "constant_value": "fme-engine-2024-0-2-1-windows-byol"
                                },
                                "version": {
                                    "constant_value": "latest"
                                }
                            }
                        ],
                        "tags": {
                            "references": [
                                "local.default_tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fme_flow_engine",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine_scale_set"
                }
            ],
            "variables": {
                "agw_name": {
                    "default": "fme-flow-agw",
                    "description": "Application gateway name"
                },
                "agw_snet_name": {
                    "default": "fme-flow-agw-snet",
                    "description": "Application gateway virtual network subnet name"
                },
                "be_snet_name": {
                    "default": "fme-flow-be-snet",
                    "description": "Backend virtual network subnet name"
                },
                "build_agent_public_ip": {
                    "default": "10.0.0.0/16",
                    "description": "Public IP of the build agent or machine that is running terraform deployment to be whitelisted in the storage account. This is a workaround for the following known issue: https://github.com/hashicorp/terraform-provider-azurerm/issues/2977"
                },
                "db_admin_pw": {
                    "default": "q032hold",
                    "description": "Specifies the backend database admin pw. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "db_admin_user": {
                    "default": "lgayhold",
                    "description": "Specifies the backend database admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "db_pw": {
                    "default": "vdamhold",
                    "description": "The password for the fmeflow database (Only used for Azure SQL Server. Should be left blank when PostgreSQL is used). Please review the [SQL Server Password Policy](https://docs.microsoft.com/en-us/sql/relational-databases/security/password-policy?view=azuresqldb-current)). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "db_user": {
                    "default": "lpfdhold",
                    "description": "The login for the fmeflow database (Only used for Azure SQL Server. Should be left blank when PostgreSQL is used). This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "domain_name_label": {
                    "default": "fmeflow",
                    "description": "Label for the Domain Name. Will be used to make up the FQDN"
                },
                "instance_count_core": {
                    "default": 2,
                    "description": "Number of Core VM instances"
                },
                "instance_count_engine": {
                    "default": 2,
                    "description": "Number of engine VM instances"
                },
                "lb_name": {
                    "default": "fme-flow-lb",
                    "description": "Load balancer name"
                },
                "location": {
                    "default": "Canada Central",
                    "description": "Location of resources"
                },
                "owner": {
                    "default": "gsqnhold",
                    "description": "Default value for onwer tag"
                },
                "pip_name": {
                    "default": "fme-flow-pip",
                    "description": "Public ip name"
                },
                "rg_name": {
                    "default": "terraform-rg",
                    "description": "Resource group name"
                },
                "vm_admin_pw": {
                    "default": "eb15hold",
                    "description": "Specifies the windows virual machine admin pw. Password must have 3 of the following: 1 lower case character, 1 upper case character, 1 number, and 1 special character. The value must be between 12 and 123 characters long. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "vm_admin_user": {
                    "default": "zfy9hold",
                    "description": "Specifies the windows virual machine admin username. This variable should be retrieved from an [environment variable](https://www.terraform.io/cli/config/environment-variables#tf_var_name) or a secure secret store like [Azure Key Vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault). DO NOT HARDCODE.",
                    "sensitive": true
                },
                "vnet_name": {
                    "default": "fme-flow-vnet",
                    "description": "Virtual network name"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "fme_flow_fqdn": {
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
            "fme_flow_fqdn": {
                "sensitive": false
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.application_gateway",
                    "resources": [
                        {
                            "address": "module.application_gateway.azurerm_application_gateway.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
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
                                "identity": [],
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
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {},
                                    {}
                                ],
                                "rewrite_rule_set": [],
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
                                        "name": "fme-flow-vnet-beap"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "fme-flow-vnet-be-htst",
                                        "path": "",
                                        "pick_host_name_from_backend_address": false,
                                        "port": 8080,
                                        "probe_name": "",
                                        "protocol": "Http",
                                        "request_timeout": 86400,
                                        "trusted_root_certificate_names": []
                                    },
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "fme-flow-vnet-be-wsst",
                                        "path": "",
                                        "pick_host_name_from_backend_address": true,
                                        "port": 7078,
                                        "probe_name": "websocketProbe",
                                        "protocol": "Http",
                                        "request_timeout": 86400,
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
                                        "name": "fme-flow-vnet-feip",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "fme-flow-vnet-http-feport",
                                        "port": 80
                                    },
                                    {
                                        "name": "fme-flow-vnet-ws-feport",
                                        "port": 7078
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
                                        "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                                        "frontend_port_name": "fme-flow-vnet-http-feport",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "fme-flow-vnet-httplstn",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    },
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                                        "frontend_port_name": "fme-flow-vnet-ws-feport",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "fme-flow-vnet-wslstn",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "canadacentral",
                                "name": "fme-flow-agw",
                                "private_link_configuration": [],
                                "probe": [
                                    {
                                        "host": "",
                                        "interval": 30,
                                        "match": [
                                            {
                                                "body": "",
                                                "status_code": [
                                                    "200-400"
                                                ]
                                            }
                                        ],
                                        "minimum_servers": 0,
                                        "name": "websocketProbe",
                                        "path": "/",
                                        "pick_host_name_from_backend_http_settings": true,
                                        "port": null,
                                        "protocol": "Http",
                                        "timeout": 30,
                                        "unhealthy_threshold": 3
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "fme-flow-vnet-beap",
                                        "backend_http_settings_name": "fme-flow-vnet-be-htst",
                                        "http_listener_name": "fme-flow-vnet-httplstn",
                                        "name": "fme-flow-vnet-http-rqrt",
                                        "priority": null,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    },
                                    {
                                        "backend_address_pool_name": "fme-flow-vnet-beap",
                                        "backend_http_settings_name": "fme-flow-vnet-be-wsst",
                                        "http_listener_name": "fme-flow-vnet-wslstn",
                                        "name": "fme-flow-vnet-ws-rqrt",
                                        "priority": null,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "terraform-rg",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": 1,
                                        "name": "Standard_Medium",
                                        "tier": "Standard"
                                    }
                                ],
                                "ssl_certificate": [],
                                "ssl_profile": [],
                                "tags": {
                                    "owner": "gsqnhold"
                                },
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
                    "address": "module.database",
                    "resources": [
                        {
                            "address": "module.database.azurerm_postgresql_server.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "administrator_login": true,
                                "administrator_login_password": true,
                                "identity": [],
                                "tags": {},
                                "threat_detection_policy": []
                            },
                            "type": "azurerm_postgresql_server",
                            "values": {
                                "administrator_login": "lgayhold",
                                "administrator_login_password": "q032hold",
                                "auto_grow_enabled": true,
                                "create_mode": "Default",
                                "creation_source_server_id": null,
                                "geo_redundant_backup_enabled": false,
                                "identity": [],
                                "infrastructure_encryption_enabled": null,
                                "location": "canadacentral",
                                "public_network_access_enabled": true,
                                "resource_group_name": "terraform-rg",
                                "restore_point_in_time": null,
                                "sku_name": "GP_Gen5_2",
                                "ssl_enforcement_enabled": true,
                                "ssl_minimal_tls_version_enforced": "TLS1_2",
                                "storage_mb": 51200,
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "threat_detection_policy": [],
                                "timeouts": null,
                                "version": "10"
                            }
                        },
                        {
                            "address": "module.database.azurerm_postgresql_virtual_network_rule.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_postgresql_virtual_network_rule",
                            "values": {
                                "ignore_missing_vnet_service_endpoint": true,
                                "name": "postgresql-vnet-rule",
                                "resource_group_name": "terraform-rg",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.database.random_string.db_name",
                            "mode": "managed",
                            "name": "db_name",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 2,
                            "sensitive_values": {},
                            "type": "random_string",
                            "values": {
                                "keepers": null,
                                "length": 8,
                                "lower": true,
                                "min_lower": 0,
                                "min_numeric": 0,
                                "min_special": 0,
                                "min_upper": 0,
                                "number": true,
                                "numeric": true,
                                "override_special": null,
                                "special": false,
                                "upper": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.load_balancer",
                    "resources": [
                        {
                            "address": "module.load_balancer.azurerm_lb.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
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
                                "private_ip_addresses": [],
                                "tags": {}
                            },
                            "type": "azurerm_lb",
                            "values": {
                                "edge_zone": null,
                                "frontend_ip_configuration": [
                                    {
                                        "name": "engineRegistrationFrontend",
                                        "private_ip_address_allocation": "Dynamic",
                                        "zones": null
                                    }
                                ],
                                "location": "canadacentral",
                                "name": "fme-flow-lb",
                                "resource_group_name": "terraform-rg",
                                "sku": "Basic",
                                "sku_tier": "Regional",
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
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
                                "name": "engineRegistrationBackend",
                                "synchronous_mode": null,
                                "timeouts": null,
                                "tunnel_interface": [],
                                "virtual_network_id": null
                            }
                        },
                        {
                            "address": "module.load_balancer.azurerm_lb_rule.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "backend_address_pool_ids": []
                            },
                            "type": "azurerm_lb_rule",
                            "values": {
                                "backend_port": 7070,
                                "disable_outbound_snat": false,
                                "enable_floating_ip": false,
                                "enable_tcp_reset": null,
                                "frontend_ip_configuration_name": "engineRegistrationFrontend",
                                "frontend_port": 7070,
                                "idle_timeout_in_minutes": 30,
                                "name": "roundRobinEngineRegistrationRule",
                                "probe_id": null,
                                "protocol": "Tcp",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.network",
                    "resources": [
                        {
                            "address": "module.network.azurerm_public_ip.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
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
                                "domain_name_label": "fmeflow",
                                "edge_zone": null,
                                "idle_timeout_in_minutes": 30,
                                "ip_tags": null,
                                "ip_version": "IPv4",
                                "location": "canadacentral",
                                "name": "fme-flow-pip",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "terraform-rg",
                                "reverse_fqdn": null,
                                "sku": "Basic",
                                "sku_tier": "Regional",
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.fme_flow_agw",
                            "mode": "managed",
                            "name": "fme_flow_agw",
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
                                "name": "fme-flow-agw-snet",
                                "resource_group_name": "terraform-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "fme-flow-vnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_subnet.fme_flow_be",
                            "mode": "managed",
                            "name": "fme_flow_be",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "address_prefixes": [
                                    false
                                ],
                                "delegation": [],
                                "service_endpoints": [
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_subnet",
                            "values": {
                                "address_prefixes": [
                                    "10.0.0.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "fme-flow-be-snet",
                                "resource_group_name": "terraform-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": [
                                    "Microsoft.Sql",
                                    "Microsoft.Storage"
                                ],
                                "timeouts": null,
                                "virtual_network_name": "fme-flow-vnet"
                            }
                        },
                        {
                            "address": "module.network.azurerm_virtual_network.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
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
                                "location": "canadacentral",
                                "name": "fme-flow-vnet",
                                "resource_group_name": "terraform-rg",
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.storage",
                    "resources": [
                        {
                            "address": "module.storage.azurerm_storage_account.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 4,
                            "sensitive_values": {
                                "azure_files_authentication": [],
                                "blob_properties": [],
                                "custom_domain": [],
                                "customer_managed_key": [],
                                "identity": [],
                                "immutability_policy": [],
                                "network_rules": [
                                    {
                                        "bypass": [
                                            false
                                        ],
                                        "ip_rules": [
                                            false
                                        ],
                                        "private_link_access": [],
                                        "virtual_network_subnet_ids": []
                                    }
                                ],
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
                                "static_website": [],
                                "tags": {}
                            },
                            "type": "azurerm_storage_account",
                            "values": {
                                "account_kind": "FileStorage",
                                "account_replication_type": "LRS",
                                "account_tier": "Premium",
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
                                "location": "canadacentral",
                                "min_tls_version": "TLS1_2",
                                "network_rules": [
                                    {
                                        "bypass": [
                                            "AzureServices"
                                        ],
                                        "default_action": "Deny",
                                        "ip_rules": [
                                            "10.0.0.0/16"
                                        ],
                                        "private_link_access": []
                                    }
                                ],
                                "nfsv3_enabled": false,
                                "public_network_access_enabled": true,
                                "queue_encryption_key_type": "Service",
                                "resource_group_name": "terraform-rg",
                                "sas_policy": [],
                                "sftp_enabled": false,
                                "shared_access_key_enabled": true,
                                "static_website": [],
                                "table_encryption_key_type": "Service",
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.storage.azurerm_storage_share.fme_flow",
                            "mode": "managed",
                            "name": "fme_flow",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "acl": [],
                                "metadata": {}
                            },
                            "type": "azurerm_storage_share",
                            "values": {
                                "acl": [],
                                "enabled_protocol": "SMB",
                                "name": "fmeflowdata",
                                "quota": 100,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.storage.random_string.st_name",
                            "mode": "managed",
                            "name": "st_name",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 2,
                            "sensitive_values": {},
                            "type": "random_string",
                            "values": {
                                "keepers": null,
                                "length": 8,
                                "lower": false,
                                "min_lower": 0,
                                "min_numeric": 0,
                                "min_special": 0,
                                "min_upper": 0,
                                "number": true,
                                "numeric": true,
                                "override_special": null,
                                "special": false,
                                "upper": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.vmss_core",
                    "resources": [
                        {
                            "address": "module.vmss_core.azurerm_windows_virtual_machine_scale_set.fme_flow_core",
                            "mode": "managed",
                            "name": "fme_flow_core",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": true,
                                "admin_username": true,
                                "automatic_instance_repair": [],
                                "automatic_os_upgrade_policy": [],
                                "boot_diagnostics": [],
                                "custom_data": true,
                                "data_disk": [],
                                "extension": true,
                                "gallery_application": [],
                                "gallery_applications": [],
                                "identity": [],
                                "network_interface": [
                                    {
                                        "ip_configuration": [
                                            {
                                                "application_gateway_backend_address_pool_ids": [],
                                                "load_balancer_backend_address_pool_ids": [],
                                                "public_ip_address": []
                                            }
                                        ]
                                    }
                                ],
                                "os_disk": [
                                    {
                                        "diff_disk_settings": []
                                    }
                                ],
                                "plan": [
                                    {}
                                ],
                                "rolling_upgrade_policy": [],
                                "scale_in": [],
                                "secret": [],
                                "source_image_reference": [
                                    {}
                                ],
                                "spot_restore": [],
                                "tags": {},
                                "terminate_notification": [],
                                "termination_notification": [],
                                "winrm_listener": []
                            },
                            "type": "azurerm_windows_virtual_machine_scale_set",
                            "values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": "eb15hold",
                                "admin_username": "zfy9hold",
                                "automatic_os_upgrade_policy": [],
                                "boot_diagnostics": [],
                                "capacity_reservation_group_id": null,
                                "custom_data": null,
                                "data_disk": [],
                                "do_not_run_extensions_on_overprovisioned_machines": false,
                                "edge_zone": null,
                                "enable_automatic_updates": true,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extension": [
                                    {
                                        "auto_upgrade_minor_version": true,
                                        "automatic_upgrade_enabled": null,
                                        "force_update_tag": "",
                                        "name": "core-script",
                                        "protected_settings_from_key_vault": [],
                                        "provision_after_extensions": [],
                                        "publisher": "Microsoft.Compute",
                                        "settings": "",
                                        "type": "CustomScriptExtension",
                                        "type_handler_version": "1.8"
                                    }
                                ],
                                "extensions_time_budget": "PT1H30M",
                                "health_probe_id": null,
                                "host_group_id": null,
                                "identity": [],
                                "instances": 2,
                                "license_type": null,
                                "location": "canadacentral",
                                "max_bid_price": -1,
                                "name": "core",
                                "network_interface": [
                                    {
                                        "dns_servers": null,
                                        "enable_accelerated_networking": false,
                                        "enable_ip_forwarding": false,
                                        "ip_configuration": [
                                            {
                                                "application_security_group_ids": null,
                                                "load_balancer_inbound_nat_rules_ids": null,
                                                "name": "ipconfig",
                                                "primary": true,
                                                "public_ip_address": [],
                                                "version": "IPv4"
                                            }
                                        ],
                                        "name": "nic-core",
                                        "network_security_group_id": null,
                                        "primary": true
                                    }
                                ],
                                "os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "diff_disk_settings": [],
                                        "disk_encryption_set_id": null,
                                        "secure_vm_disk_encryption_set_id": null,
                                        "security_encryption_type": null,
                                        "storage_account_type": "Premium_LRS",
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "overprovision": true,
                                "plan": [
                                    {
                                        "name": "fme-core-2024-0-2-1-windows-byol",
                                        "product": "fme-core",
                                        "publisher": "safesoftwareinc"
                                    }
                                ],
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "terraform-rg",
                                "rolling_upgrade_policy": [],
                                "secret": [],
                                "secure_boot_enabled": null,
                                "single_placement_group": true,
                                "sku": "Standard_D2s_v3",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "fme-core",
                                        "publisher": "safesoftwareinc",
                                        "sku": "fme-core-2024-0-2-1-windows-byol",
                                        "version": "latest"
                                    }
                                ],
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null,
                                "timezone": null,
                                "upgrade_mode": "Manual",
                                "user_data": null,
                                "vtpm_enabled": null,
                                "winrm_listener": [],
                                "zone_balance": false,
                                "zones": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.vmss_standard_engine",
                    "resources": [
                        {
                            "address": "module.vmss_standard_engine.azurerm_windows_virtual_machine_scale_set.fme_flow_engine",
                            "mode": "managed",
                            "name": "fme_flow_engine",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": true,
                                "admin_username": true,
                                "automatic_instance_repair": [],
                                "automatic_os_upgrade_policy": [],
                                "boot_diagnostics": [],
                                "custom_data": true,
                                "data_disk": [],
                                "extension": true,
                                "gallery_application": [],
                                "gallery_applications": [],
                                "identity": [],
                                "network_interface": [
                                    {
                                        "ip_configuration": [
                                            {
                                                "public_ip_address": []
                                            }
                                        ]
                                    }
                                ],
                                "os_disk": [
                                    {
                                        "diff_disk_settings": []
                                    }
                                ],
                                "plan": [
                                    {}
                                ],
                                "rolling_upgrade_policy": [],
                                "scale_in": [],
                                "secret": [],
                                "source_image_reference": [
                                    {}
                                ],
                                "spot_restore": [],
                                "tags": {},
                                "terminate_notification": [],
                                "termination_notification": [],
                                "winrm_listener": []
                            },
                            "type": "azurerm_windows_virtual_machine_scale_set",
                            "values": {
                                "additional_capabilities": [],
                                "additional_unattend_content": [],
                                "admin_password": "eb15hold",
                                "admin_username": "zfy9hold",
                                "automatic_os_upgrade_policy": [],
                                "boot_diagnostics": [],
                                "capacity_reservation_group_id": null,
                                "custom_data": null,
                                "data_disk": [],
                                "do_not_run_extensions_on_overprovisioned_machines": false,
                                "edge_zone": null,
                                "enable_automatic_updates": true,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extension": [
                                    {
                                        "auto_upgrade_minor_version": true,
                                        "automatic_upgrade_enabled": null,
                                        "force_update_tag": "",
                                        "name": "engine-script",
                                        "protected_settings_from_key_vault": [],
                                        "provision_after_extensions": [],
                                        "publisher": "Microsoft.Compute",
                                        "settings": "",
                                        "type": "CustomScriptExtension",
                                        "type_handler_version": "1.8"
                                    }
                                ],
                                "extensions_time_budget": "PT1H30M",
                                "health_probe_id": null,
                                "host_group_id": null,
                                "identity": [],
                                "instances": 2,
                                "license_type": null,
                                "location": "canadacentral",
                                "max_bid_price": -1,
                                "name": "standard",
                                "network_interface": [
                                    {
                                        "dns_servers": null,
                                        "enable_accelerated_networking": false,
                                        "enable_ip_forwarding": false,
                                        "ip_configuration": [
                                            {
                                                "application_gateway_backend_address_pool_ids": null,
                                                "application_security_group_ids": null,
                                                "load_balancer_backend_address_pool_ids": null,
                                                "load_balancer_inbound_nat_rules_ids": null,
                                                "name": "ipconfig",
                                                "primary": true,
                                                "public_ip_address": [],
                                                "version": "IPv4"
                                            }
                                        ],
                                        "name": "nic-engine",
                                        "network_security_group_id": null,
                                        "primary": true
                                    }
                                ],
                                "os_disk": [
                                    {
                                        "caching": "ReadWrite",
                                        "diff_disk_settings": [],
                                        "disk_encryption_set_id": null,
                                        "secure_vm_disk_encryption_set_id": null,
                                        "security_encryption_type": null,
                                        "storage_account_type": "Premium_LRS",
                                        "write_accelerator_enabled": false
                                    }
                                ],
                                "overprovision": true,
                                "plan": [
                                    {
                                        "name": "fme-engine-2024-0-2-1-windows-byol",
                                        "product": "fme-engine",
                                        "publisher": "safesoftwareinc"
                                    }
                                ],
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "resource_group_name": "terraform-rg",
                                "rolling_upgrade_policy": [],
                                "secret": [],
                                "secure_boot_enabled": null,
                                "single_placement_group": true,
                                "sku": "Standard_D2s_v3",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "fme-engine",
                                        "publisher": "safesoftwareinc",
                                        "sku": "fme-engine-2024-0-2-1-windows-byol",
                                        "version": "latest"
                                    }
                                ],
                                "tags": {
                                    "owner": "gsqnhold"
                                },
                                "timeouts": null,
                                "timezone": null,
                                "upgrade_mode": "Manual",
                                "user_data": null,
                                "vtpm_enabled": null,
                                "winrm_listener": [],
                                "zone_balance": false,
                                "zones": null
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azurerm_resource_group.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "canadacentral",
                        "managed_by": null,
                        "name": "terraform-rg",
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "module.application_gateway.azurerm_application_gateway.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
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
                        "identity": [],
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
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {},
                            {}
                        ],
                        "rewrite_rule_set": [],
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
                                "name": "fme-flow-vnet-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "fme-flow-vnet-be-htst",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
                                "port": 8080,
                                "probe_name": "",
                                "protocol": "Http",
                                "request_timeout": 86400,
                                "trusted_root_certificate_names": []
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "fme-flow-vnet-be-wsst",
                                "path": "",
                                "pick_host_name_from_backend_address": true,
                                "port": 7078,
                                "probe_name": "websocketProbe",
                                "protocol": "Http",
                                "request_timeout": 86400,
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
                                "name": "fme-flow-vnet-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "fme-flow-vnet-http-feport",
                                "port": 80
                            },
                            {
                                "name": "fme-flow-vnet-ws-feport",
                                "port": 7078
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
                                "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                                "frontend_port_name": "fme-flow-vnet-http-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "fme-flow-vnet-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                                "frontend_port_name": "fme-flow-vnet-ws-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "fme-flow-vnet-wslstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "canadacentral",
                        "name": "fme-flow-agw",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "",
                                "interval": 30,
                                "match": [
                                    {
                                        "body": "",
                                        "status_code": [
                                            "200-400"
                                        ]
                                    }
                                ],
                                "minimum_servers": 0,
                                "name": "websocketProbe",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": true,
                                "port": null,
                                "protocol": "Http",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "fme-flow-vnet-beap",
                                "backend_http_settings_name": "fme-flow-vnet-be-htst",
                                "http_listener_name": "fme-flow-vnet-httplstn",
                                "name": "fme-flow-vnet-http-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            },
                            {
                                "backend_address_pool_name": "fme-flow-vnet-beap",
                                "backend_http_settings_name": "fme-flow-vnet-be-wsst",
                                "http_listener_name": "fme-flow-vnet-wslstn",
                                "name": "fme-flow-vnet-ws-rqrt",
                                "priority": null,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "terraform-rg",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 1,
                                "name": "Standard_Medium",
                                "tier": "Standard"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_profile": [],
                        "tags": {
                            "owner": "gsqnhold"
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
                    "address": "module.database.azurerm_postgresql_server.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "administrator_login": true,
                        "administrator_login_password": true,
                        "identity": [],
                        "tags": {},
                        "threat_detection_policy": []
                    },
                    "type": "azurerm_postgresql_server",
                    "values": {
                        "administrator_login": "lgayhold",
                        "administrator_login_password": "q032hold",
                        "auto_grow_enabled": true,
                        "create_mode": "Default",
                        "creation_source_server_id": null,
                        "geo_redundant_backup_enabled": false,
                        "identity": [],
                        "infrastructure_encryption_enabled": null,
                        "location": "canadacentral",
                        "public_network_access_enabled": true,
                        "resource_group_name": "terraform-rg",
                        "restore_point_in_time": null,
                        "sku_name": "GP_Gen5_2",
                        "ssl_enforcement_enabled": true,
                        "ssl_minimal_tls_version_enforced": "TLS1_2",
                        "storage_mb": 51200,
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "threat_detection_policy": [],
                        "timeouts": null,
                        "version": "10"
                    }
                },
                {
                    "address": "module.database.azurerm_postgresql_virtual_network_rule.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_postgresql_virtual_network_rule",
                    "values": {
                        "ignore_missing_vnet_service_endpoint": true,
                        "name": "postgresql-vnet-rule",
                        "resource_group_name": "terraform-rg",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.database.random_string.db_name",
                    "mode": "managed",
                    "name": "db_name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 8,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": false,
                        "upper": false
                    }
                },
                {
                    "address": "module.load_balancer.azurerm_lb.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
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
                        "private_ip_addresses": [],
                        "tags": {}
                    },
                    "type": "azurerm_lb",
                    "values": {
                        "edge_zone": null,
                        "frontend_ip_configuration": [
                            {
                                "name": "engineRegistrationFrontend",
                                "private_ip_address_allocation": "Dynamic",
                                "zones": null
                            }
                        ],
                        "location": "canadacentral",
                        "name": "fme-flow-lb",
                        "resource_group_name": "terraform-rg",
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
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
                        "name": "engineRegistrationBackend",
                        "synchronous_mode": null,
                        "timeouts": null,
                        "tunnel_interface": [],
                        "virtual_network_id": null
                    }
                },
                {
                    "address": "module.load_balancer.azurerm_lb_rule.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "backend_address_pool_ids": []
                    },
                    "type": "azurerm_lb_rule",
                    "values": {
                        "backend_port": 7070,
                        "disable_outbound_snat": false,
                        "enable_floating_ip": false,
                        "enable_tcp_reset": null,
                        "frontend_ip_configuration_name": "engineRegistrationFrontend",
                        "frontend_port": 7070,
                        "idle_timeout_in_minutes": 30,
                        "name": "roundRobinEngineRegistrationRule",
                        "probe_id": null,
                        "protocol": "Tcp",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.network.azurerm_public_ip.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
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
                        "domain_name_label": "fmeflow",
                        "edge_zone": null,
                        "idle_timeout_in_minutes": 30,
                        "ip_tags": null,
                        "ip_version": "IPv4",
                        "location": "canadacentral",
                        "name": "fme-flow-pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "terraform-rg",
                        "reverse_fqdn": null,
                        "sku": "Basic",
                        "sku_tier": "Regional",
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.network.azurerm_subnet.fme_flow_agw",
                    "mode": "managed",
                    "name": "fme_flow_agw",
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
                        "name": "fme-flow-agw-snet",
                        "resource_group_name": "terraform-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "fme-flow-vnet"
                    }
                },
                {
                    "address": "module.network.azurerm_subnet.fme_flow_be",
                    "mode": "managed",
                    "name": "fme_flow_be",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "address_prefixes": [
                            false
                        ],
                        "delegation": [],
                        "service_endpoints": [
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_subnet",
                    "values": {
                        "address_prefixes": [
                            "10.0.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "fme-flow-be-snet",
                        "resource_group_name": "terraform-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": [
                            "Microsoft.Sql",
                            "Microsoft.Storage"
                        ],
                        "timeouts": null,
                        "virtual_network_name": "fme-flow-vnet"
                    }
                },
                {
                    "address": "module.network.azurerm_virtual_network.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
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
                        "location": "canadacentral",
                        "name": "fme-flow-vnet",
                        "resource_group_name": "terraform-rg",
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.azurerm_storage_account.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 4,
                    "sensitive_values": {
                        "azure_files_authentication": [],
                        "blob_properties": [],
                        "custom_domain": [],
                        "customer_managed_key": [],
                        "identity": [],
                        "immutability_policy": [],
                        "network_rules": [
                            {
                                "bypass": [
                                    false
                                ],
                                "ip_rules": [
                                    false
                                ],
                                "private_link_access": [],
                                "virtual_network_subnet_ids": []
                            }
                        ],
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
                        "static_website": [],
                        "tags": {}
                    },
                    "type": "azurerm_storage_account",
                    "values": {
                        "account_kind": "FileStorage",
                        "account_replication_type": "LRS",
                        "account_tier": "Premium",
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
                        "location": "canadacentral",
                        "min_tls_version": "TLS1_2",
                        "network_rules": [
                            {
                                "bypass": [
                                    "AzureServices"
                                ],
                                "default_action": "Deny",
                                "ip_rules": [
                                    "10.0.0.0/16"
                                ],
                                "private_link_access": []
                            }
                        ],
                        "nfsv3_enabled": false,
                        "public_network_access_enabled": true,
                        "queue_encryption_key_type": "Service",
                        "resource_group_name": "terraform-rg",
                        "sas_policy": [],
                        "sftp_enabled": false,
                        "shared_access_key_enabled": true,
                        "static_website": [],
                        "table_encryption_key_type": "Service",
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.azurerm_storage_share.fme_flow",
                    "mode": "managed",
                    "name": "fme_flow",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "acl": [],
                        "metadata": {}
                    },
                    "type": "azurerm_storage_share",
                    "values": {
                        "acl": [],
                        "enabled_protocol": "SMB",
                        "name": "fmeflowdata",
                        "quota": 100,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.storage.random_string.st_name",
                    "mode": "managed",
                    "name": "st_name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {},
                    "type": "random_string",
                    "values": {
                        "keepers": null,
                        "length": 8,
                        "lower": false,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": false,
                        "upper": false
                    }
                },
                {
                    "address": "module.vmss_core.azurerm_windows_virtual_machine_scale_set.fme_flow_core",
                    "mode": "managed",
                    "name": "fme_flow_core",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
                        "admin_username": true,
                        "automatic_instance_repair": [],
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "data_disk": [],
                        "extension": true,
                        "gallery_application": [],
                        "gallery_applications": [],
                        "identity": [],
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "application_gateway_backend_address_pool_ids": [],
                                        "load_balancer_backend_address_pool_ids": [],
                                        "public_ip_address": []
                                    }
                                ]
                            }
                        ],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "plan": [
                            {}
                        ],
                        "rolling_upgrade_policy": [],
                        "scale_in": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "spot_restore": [],
                        "tags": {},
                        "terminate_notification": [],
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine_scale_set",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": "eb15hold",
                        "admin_username": "zfy9hold",
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "data_disk": [],
                        "do_not_run_extensions_on_overprovisioned_machines": false,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extension": [
                            {
                                "auto_upgrade_minor_version": true,
                                "automatic_upgrade_enabled": null,
                                "force_update_tag": "",
                                "name": "core-script",
                                "protected_settings_from_key_vault": [],
                                "provision_after_extensions": [],
                                "publisher": "Microsoft.Compute",
                                "settings": "",
                                "type": "CustomScriptExtension",
                                "type_handler_version": "1.8"
                            }
                        ],
                        "extensions_time_budget": "PT1H30M",
                        "health_probe_id": null,
                        "host_group_id": null,
                        "identity": [],
                        "instances": 2,
                        "license_type": null,
                        "location": "canadacentral",
                        "max_bid_price": -1,
                        "name": "core",
                        "network_interface": [
                            {
                                "dns_servers": null,
                                "enable_accelerated_networking": false,
                                "enable_ip_forwarding": false,
                                "ip_configuration": [
                                    {
                                        "application_security_group_ids": null,
                                        "load_balancer_inbound_nat_rules_ids": null,
                                        "name": "ipconfig",
                                        "primary": true,
                                        "public_ip_address": [],
                                        "version": "IPv4"
                                    }
                                ],
                                "name": "nic-core",
                                "network_security_group_id": null,
                                "primary": true
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Premium_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "overprovision": true,
                        "plan": [
                            {
                                "name": "fme-core-2024-0-2-1-windows-byol",
                                "product": "fme-core",
                                "publisher": "safesoftwareinc"
                            }
                        ],
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "resource_group_name": "terraform-rg",
                        "rolling_upgrade_policy": [],
                        "secret": [],
                        "secure_boot_enabled": null,
                        "single_placement_group": true,
                        "sku": "Standard_D2s_v3",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "fme-core",
                                "publisher": "safesoftwareinc",
                                "sku": "fme-core-2024-0-2-1-windows-byol",
                                "version": "latest"
                            }
                        ],
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null,
                        "timezone": null,
                        "upgrade_mode": "Manual",
                        "user_data": null,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone_balance": false,
                        "zones": null
                    }
                },
                {
                    "address": "module.vmss_standard_engine.azurerm_windows_virtual_machine_scale_set.fme_flow_engine",
                    "mode": "managed",
                    "name": "fme_flow_engine",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": true,
                        "admin_username": true,
                        "automatic_instance_repair": [],
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "custom_data": true,
                        "data_disk": [],
                        "extension": true,
                        "gallery_application": [],
                        "gallery_applications": [],
                        "identity": [],
                        "network_interface": [
                            {
                                "ip_configuration": [
                                    {
                                        "public_ip_address": []
                                    }
                                ]
                            }
                        ],
                        "os_disk": [
                            {
                                "diff_disk_settings": []
                            }
                        ],
                        "plan": [
                            {}
                        ],
                        "rolling_upgrade_policy": [],
                        "scale_in": [],
                        "secret": [],
                        "source_image_reference": [
                            {}
                        ],
                        "spot_restore": [],
                        "tags": {},
                        "terminate_notification": [],
                        "termination_notification": [],
                        "winrm_listener": []
                    },
                    "type": "azurerm_windows_virtual_machine_scale_set",
                    "values": {
                        "additional_capabilities": [],
                        "additional_unattend_content": [],
                        "admin_password": "eb15hold",
                        "admin_username": "zfy9hold",
                        "automatic_os_upgrade_policy": [],
                        "boot_diagnostics": [],
                        "capacity_reservation_group_id": null,
                        "custom_data": null,
                        "data_disk": [],
                        "do_not_run_extensions_on_overprovisioned_machines": false,
                        "edge_zone": null,
                        "enable_automatic_updates": true,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extension": [
                            {
                                "auto_upgrade_minor_version": true,
                                "automatic_upgrade_enabled": null,
                                "force_update_tag": "",
                                "name": "engine-script",
                                "protected_settings_from_key_vault": [],
                                "provision_after_extensions": [],
                                "publisher": "Microsoft.Compute",
                                "settings": "",
                                "type": "CustomScriptExtension",
                                "type_handler_version": "1.8"
                            }
                        ],
                        "extensions_time_budget": "PT1H30M",
                        "health_probe_id": null,
                        "host_group_id": null,
                        "identity": [],
                        "instances": 2,
                        "license_type": null,
                        "location": "canadacentral",
                        "max_bid_price": -1,
                        "name": "standard",
                        "network_interface": [
                            {
                                "dns_servers": null,
                                "enable_accelerated_networking": false,
                                "enable_ip_forwarding": false,
                                "ip_configuration": [
                                    {
                                        "application_gateway_backend_address_pool_ids": null,
                                        "application_security_group_ids": null,
                                        "load_balancer_backend_address_pool_ids": null,
                                        "load_balancer_inbound_nat_rules_ids": null,
                                        "name": "ipconfig",
                                        "primary": true,
                                        "public_ip_address": [],
                                        "version": "IPv4"
                                    }
                                ],
                                "name": "nic-engine",
                                "network_security_group_id": null,
                                "primary": true
                            }
                        ],
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Premium_LRS",
                                "write_accelerator_enabled": false
                            }
                        ],
                        "overprovision": true,
                        "plan": [
                            {
                                "name": "fme-engine-2024-0-2-1-windows-byol",
                                "product": "fme-engine",
                                "publisher": "safesoftwareinc"
                            }
                        ],
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "resource_group_name": "terraform-rg",
                        "rolling_upgrade_policy": [],
                        "secret": [],
                        "secure_boot_enabled": null,
                        "single_placement_group": true,
                        "sku": "Standard_D2s_v3",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "fme-engine",
                                "publisher": "safesoftwareinc",
                                "sku": "fme-engine-2024-0-2-1-windows-byol",
                                "version": "latest"
                            }
                        ],
                        "tags": {
                            "owner": "gsqnhold"
                        },
                        "timeouts": null,
                        "timezone": null,
                        "upgrade_mode": "Manual",
                        "user_data": null,
                        "vtpm_enabled": null,
                        "winrm_listener": [],
                        "zone_balance": false,
                        "zones": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "result"
            ],
            "resource": "module.database.random_string.db_name"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.load_balancer.azurerm_lb.fme_flow"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_public_ip.fme_flow"
        },
        {
            "attribute": [
                "primary_access_key"
            ],
            "resource": "module.storage.azurerm_storage_account.fme_flow"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "module.application_gateway.azurerm_application_gateway.fme_flow"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.database.azurerm_postgresql_server.fme_flow"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.network.azurerm_public_ip.fme_flow"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.load_balancer.azurerm_lb.fme_flow"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.network.azurerm_virtual_network.fme_flow"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "module.storage.random_string.st_name"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.storage.azurerm_storage_account.fme_flow"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.fme_flow_be"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.database.azurerm_postgresql_server.fme_flow"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.network.azurerm_subnet.fme_flow_agw"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.fme_flow"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.fme_flow"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_resource_group.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "canadacentral",
                    "managed_by": null,
                    "name": "terraform-rg",
                    "tags": {
                        "owner": "gsqnhold"
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
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.application_gateway.azurerm_application_gateway.fme_flow",
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
                            "name": "fme-flow-vnet-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "fme-flow-vnet-be-htst",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
                            "port": 8080,
                            "probe_name": "",
                            "protocol": "Http",
                            "request_timeout": 86400,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "fme-flow-vnet-be-wsst",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 7078,
                            "probe_name": "websocketProbe",
                            "protocol": "Http",
                            "request_timeout": 86400,
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
                            "name": "fme-flow-vnet-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "fme-flow-vnet-http-feport",
                            "port": 80
                        },
                        {
                            "name": "fme-flow-vnet-ws-feport",
                            "port": 7078
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
                            "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                            "frontend_port_name": "fme-flow-vnet-http-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "fme-flow-vnet-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "fme-flow-vnet-feip",
                            "frontend_port_name": "fme-flow-vnet-ws-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "fme-flow-vnet-wslstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "canadacentral",
                    "name": "fme-flow-agw",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "",
                            "interval": 30,
                            "match": [
                                {
                                    "body": "",
                                    "status_code": [
                                        "200-400"
                                    ]
                                }
                            ],
                            "minimum_servers": 0,
                            "name": "websocketProbe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": true,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "fme-flow-vnet-beap",
                            "backend_http_settings_name": "fme-flow-vnet-be-htst",
                            "http_listener_name": "fme-flow-vnet-httplstn",
                            "name": "fme-flow-vnet-http-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        },
                        {
                            "backend_address_pool_name": "fme-flow-vnet-beap",
                            "backend_http_settings_name": "fme-flow-vnet-be-wsst",
                            "http_listener_name": "fme-flow-vnet-wslstn",
                            "name": "fme-flow-vnet-ws-rqrt",
                            "priority": null,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "terraform-rg",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 1,
                            "name": "Standard_Medium",
                            "tier": "Standard"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "owner": "gsqnhold"
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
                    "identity": [],
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
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {},
                        {}
                    ],
                    "rewrite_rule_set": [],
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
                    "identity": [],
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
                        }
                    ],
                    "rewrite_rule_set": [],
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
            "module_address": "module.application_gateway",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.database.azurerm_postgresql_server.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "administrator_login": "lgayhold",
                    "administrator_login_password": "q032hold",
                    "auto_grow_enabled": true,
                    "create_mode": "Default",
                    "creation_source_server_id": null,
                    "geo_redundant_backup_enabled": false,
                    "identity": [],
                    "infrastructure_encryption_enabled": null,
                    "location": "canadacentral",
                    "public_network_access_enabled": true,
                    "resource_group_name": "terraform-rg",
                    "restore_point_in_time": null,
                    "sku_name": "GP_Gen5_2",
                    "ssl_enforcement_enabled": true,
                    "ssl_minimal_tls_version_enforced": "TLS1_2",
                    "storage_mb": 51200,
                    "tags": {
                        "owner": "gsqnhold"
                    },
                    "threat_detection_policy": [],
                    "timeouts": null,
                    "version": "10"
                },
                "after_sensitive": {
                    "administrator_login": true,
                    "administrator_login_password": true,
                    "identity": [],
                    "tags": {},
                    "threat_detection_policy": []
                },
                "after_unknown": {
                    "backup_retention_days": true,
                    "fqdn": true,
                    "id": true,
                    "identity": [],
                    "name": true,
                    "tags": {},
                    "threat_detection_policy": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_postgresql_server"
        },
        {
            "address": "module.database.azurerm_postgresql_virtual_network_rule.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ignore_missing_vnet_service_endpoint": true,
                    "name": "postgresql-vnet-rule",
                    "resource_group_name": "terraform-rg",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "server_name": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.database",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_postgresql_virtual_network_rule"
        },
        {
            "address": "module.database.random_string.db_name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 8,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": false,
                    "upper": false
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
            "module_address": "module.database",
            "name": "db_name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        },
        {
            "address": "module.load_balancer.azurerm_lb.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "edge_zone": null,
                    "frontend_ip_configuration": [
                        {
                            "name": "engineRegistrationFrontend",
                            "private_ip_address_allocation": "Dynamic",
                            "zones": null
                        }
                    ],
                    "location": "canadacentral",
                    "name": "fme-flow-lb",
                    "resource_group_name": "terraform-rg",
                    "sku": "Basic",
                    "sku_tier": "Regional",
                    "tags": {
                        "owner": "gsqnhold"
                    },
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
                    "private_ip_addresses": [],
                    "tags": {}
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
                            "private_ip_address_version": true,
                            "public_ip_address_id": true,
                            "public_ip_prefix_id": true,
                            "subnet_id": true
                        }
                    ],
                    "id": true,
                    "private_ip_address": true,
                    "private_ip_addresses": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.load_balancer",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb"
        },
        {
            "address": "module.load_balancer.azurerm_lb_backend_address_pool.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "engineRegistrationBackend",
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
            "module_address": "module.load_balancer",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_backend_address_pool"
        },
        {
            "address": "module.load_balancer.azurerm_lb_rule.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backend_port": 7070,
                    "disable_outbound_snat": false,
                    "enable_floating_ip": false,
                    "enable_tcp_reset": null,
                    "frontend_ip_configuration_name": "engineRegistrationFrontend",
                    "frontend_port": 7070,
                    "idle_timeout_in_minutes": 30,
                    "name": "roundRobinEngineRegistrationRule",
                    "probe_id": null,
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
                    "load_distribution": true,
                    "loadbalancer_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.load_balancer",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_lb_rule"
        },
        {
            "address": "module.network.azurerm_public_ip.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Dynamic",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "fmeflow",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 30,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "canadacentral",
                    "name": "fme-flow-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "terraform-rg",
                    "reverse_fqdn": null,
                    "sku": "Basic",
                    "sku_tier": "Regional",
                    "tags": {
                        "owner": "gsqnhold"
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
            "module_address": "module.network",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.network.azurerm_subnet.fme_flow_agw",
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
                    "name": "fme-flow-agw-snet",
                    "resource_group_name": "terraform-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "fme-flow-vnet"
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
            "module_address": "module.network",
            "name": "fme_flow_agw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_subnet.fme_flow_be",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "fme-flow-be-snet",
                    "resource_group_name": "terraform-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": [
                        "Microsoft.Sql",
                        "Microsoft.Storage"
                    ],
                    "timeouts": null,
                    "virtual_network_name": "fme-flow-vnet"
                },
                "after_sensitive": {
                    "address_prefixes": [
                        false
                    ],
                    "delegation": [],
                    "service_endpoints": [
                        false,
                        false
                    ]
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
                    "service_endpoints": [
                        false,
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.network",
            "name": "fme_flow_be",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.network.azurerm_virtual_network.fme_flow",
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
                    "location": "canadacentral",
                    "name": "fme-flow-vnet",
                    "resource_group_name": "terraform-rg",
                    "tags": {
                        "owner": "gsqnhold"
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
            "module_address": "module.network",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.storage.azurerm_storage_account.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "account_kind": "FileStorage",
                    "account_replication_type": "LRS",
                    "account_tier": "Premium",
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
                    "location": "canadacentral",
                    "min_tls_version": "TLS1_2",
                    "network_rules": [
                        {
                            "bypass": [
                                "AzureServices"
                            ],
                            "default_action": "Deny",
                            "ip_rules": [
                                "10.0.0.0/16"
                            ],
                            "private_link_access": []
                        }
                    ],
                    "nfsv3_enabled": false,
                    "public_network_access_enabled": true,
                    "queue_encryption_key_type": "Service",
                    "resource_group_name": "terraform-rg",
                    "sas_policy": [],
                    "sftp_enabled": false,
                    "shared_access_key_enabled": true,
                    "static_website": [],
                    "table_encryption_key_type": "Service",
                    "tags": {
                        "owner": "gsqnhold"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "azure_files_authentication": [],
                    "blob_properties": [],
                    "custom_domain": [],
                    "customer_managed_key": [],
                    "identity": [],
                    "immutability_policy": [],
                    "network_rules": [
                        {
                            "bypass": [
                                false
                            ],
                            "ip_rules": [
                                false
                            ],
                            "private_link_access": [],
                            "virtual_network_subnet_ids": []
                        }
                    ],
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
                    "static_website": [],
                    "tags": {}
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
                    "network_rules": [
                        {
                            "bypass": [
                                false
                            ],
                            "ip_rules": [
                                false
                            ],
                            "private_link_access": [],
                            "virtual_network_subnet_ids": true
                        }
                    ],
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
                    "static_website": [],
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.storage",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_account"
        },
        {
            "address": "module.storage.azurerm_storage_share.fme_flow",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "acl": [],
                    "enabled_protocol": "SMB",
                    "name": "fmeflowdata",
                    "quota": 100,
                    "timeouts": null
                },
                "after_sensitive": {
                    "acl": [],
                    "metadata": {}
                },
                "after_unknown": {
                    "access_tier": true,
                    "acl": [],
                    "id": true,
                    "metadata": true,
                    "resource_manager_id": true,
                    "storage_account_name": true,
                    "url": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.storage",
            "name": "fme_flow",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_storage_share"
        },
        {
            "address": "module.storage.random_string.st_name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 8,
                    "lower": false,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
                    "special": false,
                    "upper": false
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
            "module_address": "module.storage",
            "name": "st_name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        },
        {
            "address": "module.vmss_core.azurerm_windows_virtual_machine_scale_set.fme_flow_core",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "eb15hold",
                    "admin_username": "zfy9hold",
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "data_disk": [],
                    "do_not_run_extensions_on_overprovisioned_machines": false,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extension": [
                        {
                            "auto_upgrade_minor_version": true,
                            "automatic_upgrade_enabled": null,
                            "force_update_tag": "",
                            "name": "core-script",
                            "protected_settings_from_key_vault": [],
                            "provision_after_extensions": [],
                            "publisher": "Microsoft.Compute",
                            "settings": "",
                            "type": "CustomScriptExtension",
                            "type_handler_version": "1.8"
                        }
                    ],
                    "extensions_time_budget": "PT1H30M",
                    "health_probe_id": null,
                    "host_group_id": null,
                    "identity": [],
                    "instances": 2,
                    "license_type": null,
                    "location": "canadacentral",
                    "max_bid_price": -1,
                    "name": "core",
                    "network_interface": [
                        {
                            "dns_servers": null,
                            "enable_accelerated_networking": false,
                            "enable_ip_forwarding": false,
                            "ip_configuration": [
                                {
                                    "application_security_group_ids": null,
                                    "load_balancer_inbound_nat_rules_ids": null,
                                    "name": "ipconfig",
                                    "primary": true,
                                    "public_ip_address": [],
                                    "version": "IPv4"
                                }
                            ],
                            "name": "nic-core",
                            "network_security_group_id": null,
                            "primary": true
                        }
                    ],
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Premium_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "overprovision": true,
                    "plan": [
                        {
                            "name": "fme-core-2024-0-2-1-windows-byol",
                            "product": "fme-core",
                            "publisher": "safesoftwareinc"
                        }
                    ],
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "terraform-rg",
                    "rolling_upgrade_policy": [],
                    "secret": [],
                    "secure_boot_enabled": null,
                    "single_placement_group": true,
                    "sku": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "fme-core",
                            "publisher": "safesoftwareinc",
                            "sku": "fme-core-2024-0-2-1-windows-byol",
                            "version": "latest"
                        }
                    ],
                    "tags": {
                        "owner": "gsqnhold"
                    },
                    "timeouts": null,
                    "timezone": null,
                    "upgrade_mode": "Manual",
                    "user_data": null,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone_balance": false,
                    "zones": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "admin_username": true,
                    "automatic_instance_repair": [],
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "data_disk": [],
                    "extension": true,
                    "gallery_application": [],
                    "gallery_applications": [],
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "application_gateway_backend_address_pool_ids": [],
                                    "load_balancer_backend_address_pool_ids": [],
                                    "public_ip_address": []
                                }
                            ]
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "plan": [
                        {}
                    ],
                    "rolling_upgrade_policy": [],
                    "scale_in": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": [],
                    "tags": {},
                    "terminate_notification": [],
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "automatic_instance_repair": true,
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "computer_name_prefix": true,
                    "data_disk": [],
                    "extension": [
                        {
                            "protected_settings": true,
                            "protected_settings_from_key_vault": [],
                            "provision_after_extensions": []
                        }
                    ],
                    "extension_operations_enabled": true,
                    "gallery_application": true,
                    "gallery_applications": true,
                    "id": true,
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "application_gateway_backend_address_pool_ids": true,
                                    "load_balancer_backend_address_pool_ids": true,
                                    "public_ip_address": [],
                                    "subnet_id": true
                                }
                            ]
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true
                        }
                    ],
                    "plan": [
                        {}
                    ],
                    "platform_fault_domain_count": true,
                    "rolling_upgrade_policy": [],
                    "scale_in": true,
                    "scale_in_policy": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": true,
                    "tags": {},
                    "terminate_notification": true,
                    "termination_notification": true,
                    "unique_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.vmss_core",
            "name": "fme_flow_core",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine_scale_set"
        },
        {
            "address": "module.vmss_standard_engine.azurerm_windows_virtual_machine_scale_set.fme_flow_engine",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "eb15hold",
                    "admin_username": "zfy9hold",
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "capacity_reservation_group_id": null,
                    "custom_data": null,
                    "data_disk": [],
                    "do_not_run_extensions_on_overprovisioned_machines": false,
                    "edge_zone": null,
                    "enable_automatic_updates": true,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extension": [
                        {
                            "auto_upgrade_minor_version": true,
                            "automatic_upgrade_enabled": null,
                            "force_update_tag": "",
                            "name": "engine-script",
                            "protected_settings_from_key_vault": [],
                            "provision_after_extensions": [],
                            "publisher": "Microsoft.Compute",
                            "settings": "",
                            "type": "CustomScriptExtension",
                            "type_handler_version": "1.8"
                        }
                    ],
                    "extensions_time_budget": "PT1H30M",
                    "health_probe_id": null,
                    "host_group_id": null,
                    "identity": [],
                    "instances": 2,
                    "license_type": null,
                    "location": "canadacentral",
                    "max_bid_price": -1,
                    "name": "standard",
                    "network_interface": [
                        {
                            "dns_servers": null,
                            "enable_accelerated_networking": false,
                            "enable_ip_forwarding": false,
                            "ip_configuration": [
                                {
                                    "application_gateway_backend_address_pool_ids": null,
                                    "application_security_group_ids": null,
                                    "load_balancer_backend_address_pool_ids": null,
                                    "load_balancer_inbound_nat_rules_ids": null,
                                    "name": "ipconfig",
                                    "primary": true,
                                    "public_ip_address": [],
                                    "version": "IPv4"
                                }
                            ],
                            "name": "nic-engine",
                            "network_security_group_id": null,
                            "primary": true
                        }
                    ],
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Premium_LRS",
                            "write_accelerator_enabled": false
                        }
                    ],
                    "overprovision": true,
                    "plan": [
                        {
                            "name": "fme-engine-2024-0-2-1-windows-byol",
                            "product": "fme-engine",
                            "publisher": "safesoftwareinc"
                        }
                    ],
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "resource_group_name": "terraform-rg",
                    "rolling_upgrade_policy": [],
                    "secret": [],
                    "secure_boot_enabled": null,
                    "single_placement_group": true,
                    "sku": "Standard_D2s_v3",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "fme-engine",
                            "publisher": "safesoftwareinc",
                            "sku": "fme-engine-2024-0-2-1-windows-byol",
                            "version": "latest"
                        }
                    ],
                    "tags": {
                        "owner": "gsqnhold"
                    },
                    "timeouts": null,
                    "timezone": null,
                    "upgrade_mode": "Manual",
                    "user_data": null,
                    "vtpm_enabled": null,
                    "winrm_listener": [],
                    "zone_balance": false,
                    "zones": null
                },
                "after_sensitive": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": true,
                    "admin_username": true,
                    "automatic_instance_repair": [],
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "custom_data": true,
                    "data_disk": [],
                    "extension": true,
                    "gallery_application": [],
                    "gallery_applications": [],
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "public_ip_address": []
                                }
                            ]
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": []
                        }
                    ],
                    "plan": [
                        {}
                    ],
                    "rolling_upgrade_policy": [],
                    "scale_in": [],
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": [],
                    "tags": {},
                    "terminate_notification": [],
                    "termination_notification": [],
                    "winrm_listener": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "automatic_instance_repair": true,
                    "automatic_os_upgrade_policy": [],
                    "boot_diagnostics": [],
                    "computer_name_prefix": true,
                    "data_disk": [],
                    "extension": [
                        {
                            "protected_settings": true,
                            "protected_settings_from_key_vault": [],
                            "provision_after_extensions": []
                        }
                    ],
                    "extension_operations_enabled": true,
                    "gallery_application": true,
                    "gallery_applications": true,
                    "id": true,
                    "identity": [],
                    "network_interface": [
                        {
                            "ip_configuration": [
                                {
                                    "public_ip_address": [],
                                    "subnet_id": true
                                }
                            ]
                        }
                    ],
                    "os_disk": [
                        {
                            "diff_disk_settings": [],
                            "disk_size_gb": true
                        }
                    ],
                    "plan": [
                        {}
                    ],
                    "platform_fault_domain_count": true,
                    "rolling_upgrade_policy": [],
                    "scale_in": true,
                    "scale_in_policy": true,
                    "secret": [],
                    "source_image_reference": [
                        {}
                    ],
                    "spot_restore": true,
                    "tags": {},
                    "terminate_notification": true,
                    "termination_notification": true,
                    "unique_id": true,
                    "winrm_listener": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.vmss_standard_engine",
            "name": "fme_flow_engine",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine_scale_set"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:54:29Z",
    "variables": {
        "agw_name": {
            "value": "fme-flow-agw"
        },
        "agw_snet_name": {
            "value": "fme-flow-agw-snet"
        },
        "be_snet_name": {
            "value": "fme-flow-be-snet"
        },
        "build_agent_public_ip": {
            "value": "10.0.0.0/16"
        },
        "db_admin_pw": {
            "value": "q032hold"
        },
        "db_admin_user": {
            "value": "lgayhold"
        },
        "db_pw": {
            "value": "vdamhold"
        },
        "db_user": {
            "value": "lpfdhold"
        },
        "domain_name_label": {
            "value": "fmeflow"
        },
        "instance_count_core": {
            "value": 2
        },
        "instance_count_engine": {
            "value": 2
        },
        "lb_name": {
            "value": "fme-flow-lb"
        },
        "location": {
            "value": "Canada Central"
        },
        "owner": {
            "value": "gsqnhold"
        },
        "pip_name": {
            "value": "fme-flow-pip"
        },
        "rg_name": {
            "value": "terraform-rg"
        },
        "vm_admin_pw": {
            "value": "eb15hold"
        },
        "vm_admin_user": {
            "value": "zfy9hold"
        },
        "vnet_name": {
            "value": "fme-flow-vnet"
        }
    }
}