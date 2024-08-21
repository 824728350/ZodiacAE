
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
            "module.sampleapp:azurerm": {
                "expressions": {
                    "features": [
                        {}
                    ]
                },
                "full_name": "registry.terraform.io/hashicorp/azurerm",
                "module_address": "module.sampleapp",
                "name": "azurerm"
            },
            "module.sampleapp:random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "module_address": "module.sampleapp",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "sampleapp": {
                    "expressions": {
                        "common_tags": {
                            "references": [
                                "var.common_tags"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "resource_group_name": {
                            "constant_value": "appl-test-containerapp-westeurope"
                        },
                        "subscription_id": {
                            "constant_value": "4900d9ad-3740-49ee-8e3f-75dba81a55d6"
                        }
                    },
                    "module": {
                        "module_calls": {
                            "application_gateway": {
                                "expressions": {
                                    "autoscale_configuration": {
                                        "constant_value": {
                                            "max_capacity": 2,
                                            "min_capacity": 1
                                        }
                                    },
                                    "backend_address_pools": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "backend_http_settings": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service"
                                        ]
                                    },
                                    "frontend_ip_configuration": {
                                        "references": [
                                            "module.public_ip_application_gateway.id",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "http_listeners": {
                                        "constant_value": [
                                            {
                                                "frontend_ip_configuration": "Public",
                                                "name": "allure-http-listener",
                                                "port": 80,
                                                "protocol": "Http"
                                            }
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "request_routing_rules": {
                                        "constant_value": [
                                            {
                                                "http_listener_name": "allure-http-listener",
                                                "name": "allure-request-routing-rule",
                                                "priority": 10,
                                                "url_path_map_name": "allure-request-routing-rules"
                                            }
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": {
                                            "size": "WAF_v2",
                                            "tier": "WAF_v2"
                                        }
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "module.subnet_applicationgateway.id",
                                            "module.subnet_applicationgateway"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "url_path_map_path_rules": {
                                        "references": [
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service",
                                            "module.managed_app_allure_docker_service.name",
                                            "module.managed_app_allure_docker_service"
                                        ]
                                    },
                                    "url_path_maps": {
                                        "references": [
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service",
                                            "module.managed_app_allure_docker_ui_service.name",
                                            "module.managed_app_allure_docker_ui_service"
                                        ]
                                    },
                                    "waf_configuration": {
                                        "constant_value": {
                                            "enabled": true,
                                            "firewall_mode": "Detection",
                                            "rule_set_version": "3.0"
                                        }
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "backend_address_pools": {
                                            "description": "Blocks containing configuration of each backend address pool.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.backend_address_pool",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "backend_http_settings": {
                                            "description": "Blocks containing configuration of each backend http settings.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.backend_http_settings",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "http_listeners": {
                                            "description": "Blocks containing configuration of each http listener.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.http_listener",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "id": {
                                            "description": "The application gateway configuration ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.id",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "location": {
                                            "description": "The location/region where the application gateway is created.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.location",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The name of the application gateway.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.name",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "request_routing_rules": {
                                            "description": "Blocks containing configuration of each request routing rule.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.request_routing_rule",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "resource_group_name": {
                                            "description": "The name of the resource group in which to create the application gateway.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.resource_group_name",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "ssl_certificates": {
                                            "description": "Blocks containing configuration of each ssl certificate.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.ssl_certificate",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        },
                                        "tags": {
                                            "description": "The tags assigned to the resource.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_application_gateway.appgw.tags",
                                                    "azurerm_application_gateway.appgw"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_application_gateway.appgw",
                                            "expressions": {
                                                "frontend_port": [
                                                    {
                                                        "name": {
                                                            "constant_value": "80"
                                                        },
                                                        "port": {
                                                            "constant_value": 80
                                                        }
                                                    },
                                                    {
                                                        "name": {
                                                            "constant_value": "443"
                                                        },
                                                        "port": {
                                                            "constant_value": 443
                                                        }
                                                    }
                                                ],
                                                "gateway_ip_configuration": [
                                                    {
                                                        "name": {
                                                            "references": [
                                                                "var.name"
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
                                                        "var.name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "sku": [
                                                    {
                                                        "capacity": {
                                                            "references": [
                                                                "var.sku"
                                                            ]
                                                        },
                                                        "name": {
                                                            "references": [
                                                                "var.sku.size",
                                                                "var.sku"
                                                            ]
                                                        },
                                                        "tier": {
                                                            "references": [
                                                                "var.sku.tier",
                                                                "var.sku"
                                                            ]
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
                                            "name": "appgw",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_application_gateway"
                                        }
                                    ],
                                    "variables": {
                                        "autoscale_configuration": {
                                            "default": {}
                                        },
                                        "backend_address_pools": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend address pool."
                                        },
                                        "backend_http_settings": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend http settings."
                                        },
                                        "frontend_ip_configuration": {
                                            "default": {},
                                            "description": "A mapping the front ip configuration."
                                        },
                                        "http_listeners": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each http listener."
                                        },
                                        "identity_id": {
                                            "default": null,
                                            "description": "Specifies a user managed identity id to be assigned to the Application Gateway."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location/region where the Application Gateway is created."
                                        },
                                        "name": {
                                            "default": "hp4vhold",
                                            "description": "The name of the Application Gateway."
                                        },
                                        "probes": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each probe."
                                        },
                                        "request_routing_rules": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each backend request routing rule."
                                        },
                                        "resource_group_name": {
                                            "default": "qek5hold",
                                            "description": "The name of the resource group in which to create the Application Gateway."
                                        },
                                        "sku": {
                                            "default": {},
                                            "description": "A mapping with the sku configuration of the application gateway."
                                        },
                                        "ssl_certificates": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each ssl certificate."
                                        },
                                        "subnet_id": {
                                            "default": "cgzehold",
                                            "description": "The ID of the Subnet which the Application Gateway should be connected to."
                                        },
                                        "tags": {
                                            "default": {},
                                            "description": "A mapping of tags to assign to the resource."
                                        },
                                        "url_path_map_path_rules": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each url_path_map."
                                        },
                                        "url_path_maps": {
                                            "default": [],
                                            "description": "List of objects that represent the configuration of each url_path_map."
                                        },
                                        "waf_configuration": {
                                            "default": {}
                                        }
                                    }
                                },
                                "source": "../../../public/terraform-azurerm-application-gateway/v1.2.1"
                            },
                            "log_analytics_workspace": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "log_analytics_workspace_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
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
                                        "id": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.id",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        },
                                        "primary_shared_key": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.primary_shared_key",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        },
                                        "workspace_id": {
                                            "description": "The log analytics ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace.workspace_id",
                                                    "azurerm_log_analytics_workspace.log_analytics_workspace"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_log_analytics_workspace.log_analytics_workspace",
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
                                                        "var.log_analytics_workspace_retention_in_days"
                                                    ]
                                                },
                                                "sku": {
                                                    "references": [
                                                        "var.log_analytics_workspace_sku"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "log_analytics_workspace",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 3,
                                            "type": "azurerm_log_analytics_workspace"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "log_analytics_workspace_name": {
                                            "default": "p013hold",
                                            "description": "The log analytics name to deploy."
                                        },
                                        "log_analytics_workspace_retention_in_days": {
                                            "default": 30,
                                            "description": "The log analytics retension."
                                        },
                                        "log_analytics_workspace_sku": {
                                            "default": "PerGB2018",
                                            "description": "The log analytics sku."
                                        },
                                        "resource_group_name": {
                                            "default": "9tphhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_log_analytics_workspace/v1.0.0"
                            },
                            "managed_app_allure_docker_service": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "container_app_envs": {
                                        "references": [
                                            "module.public_ip_application_gateway.ip_address",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "container_app_image": {
                                        "constant_value": "docker.io/frankescobar/allure-docker-service:latest"
                                    },
                                    "container_app_managed_environment_id": {
                                        "references": [
                                            "module.managed_environment.id",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_static_ip_address": {
                                        "references": [
                                            "module.managed_environment.static_ip_address",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_zone_name": {
                                        "references": [
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "container_app_port": {
                                        "constant_value": 5050
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
                                        "id": {
                                            "description": "The managed app ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.id",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The managed app name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.name",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app.app",
                                            "expressions": {
                                                "container_app_environment_id": {
                                                    "references": [
                                                        "var.container_app_managed_environment_id"
                                                    ]
                                                },
                                                "ingress": [
                                                    {
                                                        "external_enabled": {
                                                            "constant_value": true
                                                        },
                                                        "target_port": {
                                                            "references": [
                                                                "var.container_app_port"
                                                            ]
                                                        },
                                                        "traffic_weight": [
                                                            {
                                                                "latest_revision": {
                                                                    "constant_value": true
                                                                },
                                                                "percentage": {
                                                                    "constant_value": 100
                                                                }
                                                            }
                                                        ]
                                                    }
                                                ],
                                                "name": {
                                                    "references": [
                                                        "var.container_app_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "revision_mode": {
                                                    "constant_value": "Single"
                                                },
                                                "template": [
                                                    {
                                                        "container": [
                                                            {
                                                                "cpu": {
                                                                    "constant_value": 0.25
                                                                },
                                                                "image": {
                                                                    "references": [
                                                                        "var.container_app_image"
                                                                    ]
                                                                },
                                                                "memory": {
                                                                    "constant_value": "0.5Gi"
                                                                },
                                                                "name": {
                                                                    "references": [
                                                                        "var.container_app_name"
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "max_replicas": {
                                                            "constant_value": 1
                                                        },
                                                        "min_replicas": {
                                                            "constant_value": 1
                                                        }
                                                    }
                                                ]
                                            },
                                            "mode": "managed",
                                            "name": "app",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app"
                                        },
                                        {
                                            "address": "azurerm_private_dns_a_record.containerapp_record",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app.app.name",
                                                        "azurerm_container_app.app"
                                                    ]
                                                },
                                                "records": {
                                                    "references": [
                                                        "var.container_app_managed_environment_static_ip_address"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "ttl": {
                                                    "constant_value": 300
                                                },
                                                "zone_name": {
                                                    "references": [
                                                        "var.container_app_managed_environment_zone_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "containerapp_record",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_a_record"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "container_app_envs": {
                                            "default": [],
                                            "description": "List of objects that represent the container app environment values."
                                        },
                                        "container_app_image": {
                                            "default": "ie8bhold",
                                            "description": "The managed app image url to deploy."
                                        },
                                        "container_app_managed_environment_id": {
                                            "default": "a3zehold",
                                            "description": "The managed app environment id to connect."
                                        },
                                        "container_app_managed_environment_static_ip_address": {
                                            "default": "10.0.0.0/16",
                                            "description": "The managed app environment satic ip address."
                                        },
                                        "container_app_managed_environment_zone_name": {
                                            "default": "1wsnhold",
                                            "description": "The managed app environment dns zone name."
                                        },
                                        "container_app_name": {
                                            "default": "q3srhold",
                                            "description": "The managed app name to deploy."
                                        },
                                        "container_app_port": {
                                            "default": null,
                                            "description": "The managed app port."
                                        },
                                        "resource_group_name": {
                                            "default": "x0xhhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app/v1.0.0"
                            },
                            "managed_app_allure_docker_ui_service": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "container_app_envs": {
                                        "references": [
                                            "module.public_ip_application_gateway.ip_address",
                                            "module.public_ip_application_gateway"
                                        ]
                                    },
                                    "container_app_image": {
                                        "constant_value": "docker.io/frankescobar/allure-docker-service-ui:latest"
                                    },
                                    "container_app_managed_environment_id": {
                                        "references": [
                                            "module.managed_environment.id",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_static_ip_address": {
                                        "references": [
                                            "module.managed_environment.static_ip_address",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_managed_environment_zone_name": {
                                        "references": [
                                            "module.managed_environment.private_dns_zone_name",
                                            "module.managed_environment"
                                        ]
                                    },
                                    "container_app_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "container_app_port": {
                                        "constant_value": 5252
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
                                        "id": {
                                            "description": "The managed app ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.id",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The managed app name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app.app.name",
                                                    "azurerm_container_app.app"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app.app",
                                            "expressions": {
                                                "container_app_environment_id": {
                                                    "references": [
                                                        "var.container_app_managed_environment_id"
                                                    ]
                                                },
                                                "ingress": [
                                                    {
                                                        "external_enabled": {
                                                            "constant_value": true
                                                        },
                                                        "target_port": {
                                                            "references": [
                                                                "var.container_app_port"
                                                            ]
                                                        },
                                                        "traffic_weight": [
                                                            {
                                                                "latest_revision": {
                                                                    "constant_value": true
                                                                },
                                                                "percentage": {
                                                                    "constant_value": 100
                                                                }
                                                            }
                                                        ]
                                                    }
                                                ],
                                                "name": {
                                                    "references": [
                                                        "var.container_app_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "revision_mode": {
                                                    "constant_value": "Single"
                                                },
                                                "template": [
                                                    {
                                                        "container": [
                                                            {
                                                                "cpu": {
                                                                    "constant_value": 0.25
                                                                },
                                                                "image": {
                                                                    "references": [
                                                                        "var.container_app_image"
                                                                    ]
                                                                },
                                                                "memory": {
                                                                    "constant_value": "0.5Gi"
                                                                },
                                                                "name": {
                                                                    "references": [
                                                                        "var.container_app_name"
                                                                    ]
                                                                }
                                                            }
                                                        ],
                                                        "max_replicas": {
                                                            "constant_value": 1
                                                        },
                                                        "min_replicas": {
                                                            "constant_value": 1
                                                        }
                                                    }
                                                ]
                                            },
                                            "mode": "managed",
                                            "name": "app",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app"
                                        },
                                        {
                                            "address": "azurerm_private_dns_a_record.containerapp_record",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app.app.name",
                                                        "azurerm_container_app.app"
                                                    ]
                                                },
                                                "records": {
                                                    "references": [
                                                        "var.container_app_managed_environment_static_ip_address"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "ttl": {
                                                    "constant_value": 300
                                                },
                                                "zone_name": {
                                                    "references": [
                                                        "var.container_app_managed_environment_zone_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "containerapp_record",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_a_record"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "container_app_envs": {
                                            "default": [],
                                            "description": "List of objects that represent the container app environment values."
                                        },
                                        "container_app_image": {
                                            "default": "ie8bhold",
                                            "description": "The managed app image url to deploy."
                                        },
                                        "container_app_managed_environment_id": {
                                            "default": "a3zehold",
                                            "description": "The managed app environment id to connect."
                                        },
                                        "container_app_managed_environment_static_ip_address": {
                                            "default": "10.0.0.0/16",
                                            "description": "The managed app environment satic ip address."
                                        },
                                        "container_app_managed_environment_zone_name": {
                                            "default": "1wsnhold",
                                            "description": "The managed app environment dns zone name."
                                        },
                                        "container_app_name": {
                                            "default": "q3srhold",
                                            "description": "The managed app name to deploy."
                                        },
                                        "container_app_port": {
                                            "default": null,
                                            "description": "The managed app port."
                                        },
                                        "resource_group_name": {
                                            "default": "x0xhhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app/v1.0.0"
                            },
                            "managed_environment": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "log_analytics_workspace_id": {
                                        "references": [
                                            "module.log_analytics_workspace.id",
                                            "module.log_analytics_workspace"
                                        ]
                                    },
                                    "managed_environments_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    },
                                    "resource_group_id": {
                                        "references": [
                                            "module.resource_group.id",
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
                                            "module.subnet_containerapps.id",
                                            "module.subnet_containerapps"
                                        ]
                                    },
                                    "vnet_id": {
                                        "references": [
                                            "module.virtual_network.id",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The managed environment ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app_environment.container_app_environment.id",
                                                    "azurerm_container_app_environment.container_app_environment"
                                                ]
                                            }
                                        },
                                        "private_dns_zone_name": {
                                            "expression": {
                                                "references": [
                                                    "azurerm_private_dns_zone.private_dns_zone.name",
                                                    "azurerm_private_dns_zone.private_dns_zone"
                                                ]
                                            }
                                        },
                                        "static_ip_address": {
                                            "description": "The managed environment static ip address.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_container_app_environment.container_app_environment.static_ip_address",
                                                    "azurerm_container_app_environment.container_app_environment"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_container_app_environment.container_app_environment",
                                            "expressions": {
                                                "infrastructure_subnet_id": {
                                                    "references": [
                                                        "var.subnet_id"
                                                    ]
                                                },
                                                "internal_load_balancer_enabled": {
                                                    "constant_value": true
                                                },
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "log_analytics_workspace_id": {
                                                    "references": [
                                                        "var.log_analytics_workspace_id"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.managed_environments_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                },
                                                "timeouts": {
                                                    "create": {
                                                        "constant_value": "4h"
                                                    }
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "container_app_environment",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_container_app_environment"
                                        },
                                        {
                                            "address": "azurerm_private_dns_zone.private_dns_zone",
                                            "expressions": {
                                                "name": {
                                                    "references": [
                                                        "azurerm_container_app_environment.container_app_environment.default_domain",
                                                        "azurerm_container_app_environment.container_app_environment"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "private_dns_zone",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_zone"
                                        },
                                        {
                                            "address": "azurerm_private_dns_zone_virtual_network_link.vnet_link",
                                            "expressions": {
                                                "name": {
                                                    "constant_value": "containerapplink"
                                                },
                                                "private_dns_zone_name": {
                                                    "references": [
                                                        "azurerm_private_dns_zone.private_dns_zone.name",
                                                        "azurerm_private_dns_zone.private_dns_zone"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                },
                                                "virtual_network_id": {
                                                    "references": [
                                                        "var.vnet_id"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "vnet_link",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_private_dns_zone_virtual_network_link"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "log_analytics_workspace_id": {
                                            "default": "owwnhold",
                                            "description": "The log analytics workspace id to connect."
                                        },
                                        "managed_environments_name": {
                                            "default": "c93ihold",
                                            "description": "The managed environment name to deploy."
                                        },
                                        "resource_group_id": {
                                            "default": "apcehold",
                                            "description": "The resource group id to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "aq5chold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_id": {
                                            "default": "nqazhold",
                                            "description": "The subnet id to connect."
                                        },
                                        "vnet_id": {
                                            "default": "hkw2hold",
                                            "description": "The vnet id to connect."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_container_app_environment/v1.0.0"
                            },
                            "public_ip_application_gateway": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "public_ip_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
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
                                        "id": {
                                            "description": "The public IP ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_public_ip.public_ip.id",
                                                    "azurerm_public_ip.public_ip"
                                                ]
                                            }
                                        },
                                        "ip_address": {
                                            "description": "The public IP address.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_public_ip.public_ip.ip_address",
                                                    "azurerm_public_ip.public_ip"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_public_ip.public_ip",
                                            "expressions": {
                                                "allocation_method": {
                                                    "references": [
                                                        "var.public_ip_allocation_method"
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
                                                        "var.public_ip_sku"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "public_ip",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_public_ip"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "public_ip_allocation_method": {
                                            "default": "Static",
                                            "description": "The public ip allocation method."
                                        },
                                        "public_ip_name": {
                                            "default": "10.0.0.0/16",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "public_ip_sku": {
                                            "default": "Standard",
                                            "description": "The public ip sku."
                                        },
                                        "resource_group_name": {
                                            "default": "34i1hold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_public_ip/v1.0.0"
                            },
                            "resource_group": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
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
                                        "id": {
                                            "description": "The resource group ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_resource_group.resource_group.id",
                                                    "azurerm_resource_group.resource_group"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The resource group name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_resource_group.resource_group.name",
                                                    "azurerm_resource_group.resource_group"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_resource_group.resource_group",
                                            "expressions": {
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "resource_group",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_resource_group"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "l03shold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_resource_group/v1.0.0"
                            },
                            "subnet_applicationgateway": {
                                "expressions": {
                                    "resource_group_name": {
                                        "references": [
                                            "module.virtual_network.resource_group_name",
                                            "module.virtual_network"
                                        ]
                                    },
                                    "subnet_address_prefixes": {
                                        "constant_value": [
                                            "10.0.8.0/24"
                                        ]
                                    },
                                    "subnet_name": {
                                        "constant_value": "applicationgateway"
                                    },
                                    "subnet_virtual_network_name": {
                                        "references": [
                                            "module.virtual_network.name",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The subnet ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_subnet.subnet.id",
                                                    "azurerm_subnet.subnet"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_subnet.subnet",
                                            "expressions": {
                                                "address_prefixes": {
                                                    "references": [
                                                        "var.subnet_address_prefixes"
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
                                                        "var.subnet_virtual_network_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "subnet",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_subnet"
                                        }
                                    ],
                                    "variables": {
                                        "resource_group_name": {
                                            "default": "0nnthold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_address_prefixes": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "subnet_name": {
                                            "default": "m7euhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_virtual_network_name": {
                                            "default": "muydhold",
                                            "description": "The virtual network name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_subnet/v1.0.0"
                            },
                            "subnet_containerapps": {
                                "depends_on": [
                                    "module.subnet_applicationgateway"
                                ],
                                "expressions": {
                                    "resource_group_name": {
                                        "references": [
                                            "module.virtual_network.resource_group_name",
                                            "module.virtual_network"
                                        ]
                                    },
                                    "subnet_address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/21"
                                        ]
                                    },
                                    "subnet_name": {
                                        "constant_value": "containerapps"
                                    },
                                    "subnet_virtual_network_name": {
                                        "references": [
                                            "module.virtual_network.name",
                                            "module.virtual_network"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The subnet ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_subnet.subnet.id",
                                                    "azurerm_subnet.subnet"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_subnet.subnet",
                                            "expressions": {
                                                "address_prefixes": {
                                                    "references": [
                                                        "var.subnet_address_prefixes"
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
                                                        "var.subnet_virtual_network_name"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "subnet",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_subnet"
                                        }
                                    ],
                                    "variables": {
                                        "resource_group_name": {
                                            "default": "0nnthold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_address_prefixes": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "subnet_name": {
                                            "default": "m7euhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "subnet_virtual_network_name": {
                                            "default": "muydhold",
                                            "description": "The virtual network name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_subnet/v1.0.0"
                            },
                            "virtual_network": {
                                "expressions": {
                                    "common_tags": {
                                        "references": [
                                            "var.common_tags"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "module.resource_group.name",
                                            "module.resource_group"
                                        ]
                                    },
                                    "virtual_network_address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "random_string.deployment_string.result",
                                            "random_string.deployment_string"
                                        ]
                                    }
                                },
                                "module": {
                                    "outputs": {
                                        "id": {
                                            "description": "The vrirtual network ID.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.id",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        },
                                        "name": {
                                            "description": "The vrirtual network name.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.name",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        },
                                        "resource_group_name": {
                                            "description": "The vrirtual network resource group.",
                                            "expression": {
                                                "references": [
                                                    "azurerm_virtual_network.virtual_network.resource_group_name",
                                                    "azurerm_virtual_network.virtual_network"
                                                ]
                                            }
                                        }
                                    },
                                    "resources": [
                                        {
                                            "address": "azurerm_virtual_network.virtual_network",
                                            "expressions": {
                                                "address_space": {
                                                    "references": [
                                                        "var.virtual_network_address_space"
                                                    ]
                                                },
                                                "location": {
                                                    "references": [
                                                        "var.location"
                                                    ]
                                                },
                                                "name": {
                                                    "references": [
                                                        "var.virtual_network_name"
                                                    ]
                                                },
                                                "resource_group_name": {
                                                    "references": [
                                                        "var.resource_group_name"
                                                    ]
                                                },
                                                "tags": {
                                                    "references": [
                                                        "var.common_tags"
                                                    ]
                                                }
                                            },
                                            "mode": "managed",
                                            "name": "virtual_network",
                                            "provider_config_key": "module.sampleapp:azurerm",
                                            "schema_version": 0,
                                            "type": "azurerm_virtual_network"
                                        }
                                    ],
                                    "variables": {
                                        "common_tags": {
                                            "default": null,
                                            "description": "The tags to be added to all resources."
                                        },
                                        "location": {
                                            "default": "eastus",
                                            "description": "The location to deploy to."
                                        },
                                        "resource_group_name": {
                                            "default": "8urvhold",
                                            "description": "The resource group name to deploy to."
                                        },
                                        "virtual_network_address_space": {
                                            "default": [],
                                            "description": "List of all virtual network addresses"
                                        },
                                        "virtual_network_name": {
                                            "default": "tj3uhold",
                                            "description": "The resource group name to deploy to."
                                        }
                                    }
                                },
                                "source": "../../../common/azurerm_virtual_network/v1.0.0"
                            }
                        },
                        "resources": [
                            {
                                "address": "random_string.deployment_string",
                                "expressions": {
                                    "keepers": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "length": {
                                        "constant_value": 13
                                    },
                                    "lower": {
                                        "constant_value": true
                                    },
                                    "numeric": {
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
                                "name": "deployment_string",
                                "provider_config_key": "module.sampleapp:random",
                                "schema_version": 2,
                                "type": "random_string"
                            },
                            {
                                "address": "data.azurerm_client_config.current",
                                "mode": "data",
                                "name": "current",
                                "provider_config_key": "module.sampleapp:azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            }
                        ],
                        "variables": {
                            "common_tags": {
                                "default": null,
                                "description": "The tags to be added to all resources."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location to deploy to."
                            },
                            "resource_group_name": {
                                "default": "y0rehold",
                                "description": "The resource group name to deploy to."
                            },
                            "subscription_id": {
                                "default": "10.0.0.0/16",
                                "description": "The subscription id to deploy to."
                            }
                        }
                    },
                    "source": "./modules/custom/containerinfrastructure/v1.0.0"
                }
            },
            "variables": {
                "common_tags": {
                    "default": {
                        "deployedby": "Terraform IaC"
                    },
                    "description": "The tags to be added to all resources."
                },
                "location": {
                    "default": "westeurope",
                    "description": "Deployment location"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.sampleapp",
                    "child_modules": [
                        {
                            "address": "module.sampleapp.module.resource_group",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group",
                                    "mode": "managed",
                                    "name": "resource_group",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "tags": {}
                                    },
                                    "type": "azurerm_resource_group",
                                    "values": {
                                        "location": "westeurope",
                                        "managed_by": null,
                                        "name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.virtual_network",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network",
                                    "mode": "managed",
                                    "name": "virtual_network",
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
                                        "location": "westeurope",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.public_ip_application_gateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip",
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
                                        "location": "westeurope",
                                        "public_ip_prefix_id": null,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "reverse_fqdn": null,
                                        "sku": "Standard",
                                        "sku_tier": "Regional",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null,
                                        "zones": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.subnet_applicationgateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet",
                                    "mode": "managed",
                                    "name": "subnet",
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
                                            "10.0.8.0/24"
                                        ],
                                        "default_outbound_access_enabled": true,
                                        "delegation": [],
                                        "name": "applicationgateway",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "service_endpoint_policy_ids": null,
                                        "service_endpoints": null,
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.subnet_containerapps",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet",
                                    "mode": "managed",
                                    "name": "subnet",
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
                                            "10.0.0.0/21"
                                        ],
                                        "default_outbound_access_enabled": true,
                                        "delegation": [],
                                        "name": "containerapps",
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "service_endpoint_policy_ids": null,
                                        "service_endpoints": null,
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.log_analytics_workspace",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace",
                                    "mode": "managed",
                                    "name": "log_analytics_workspace",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 3,
                                    "sensitive_values": {
                                        "identity": [],
                                        "primary_shared_key": true,
                                        "secondary_shared_key": true,
                                        "tags": {}
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
                                        "location": "westeurope",
                                        "reservation_capacity_in_gb_per_day": null,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "retention_in_days": 30,
                                        "sku": "PerGB2018",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_environment",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment",
                                    "mode": "managed",
                                    "name": "container_app_environment",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "dapr_application_insights_connection_string": true,
                                        "tags": {},
                                        "timeouts": {},
                                        "workload_profile": []
                                    },
                                    "type": "azurerm_container_app_environment",
                                    "values": {
                                        "dapr_application_insights_connection_string": null,
                                        "infrastructure_resource_group_name": null,
                                        "internal_load_balancer_enabled": true,
                                        "location": "westeurope",
                                        "mutual_tls_enabled": false,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": {
                                            "create": "4h",
                                            "delete": null,
                                            "read": null,
                                            "update": null
                                        },
                                        "workload_profile": [],
                                        "zone_redundancy_enabled": false
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone",
                                    "mode": "managed",
                                    "name": "private_dns_zone",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "soa_record": [],
                                        "tags": {}
                                    },
                                    "type": "azurerm_private_dns_zone",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone_virtual_network_link.vnet_link",
                                    "mode": "managed",
                                    "name": "vnet_link",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "tags": {}
                                    },
                                    "type": "azurerm_private_dns_zone_virtual_network_link",
                                    "values": {
                                        "name": "containerapplink",
                                        "registration_enabled": false,
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app",
                                    "mode": "managed",
                                    "name": "app",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "custom_domain_verification_id": true,
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "custom_domain": [],
                                                "ip_security_restriction": [],
                                                "traffic_weight": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "outbound_ip_addresses": [],
                                        "registry": [],
                                        "secret": [],
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "env": [
                                                            {},
                                                            {}
                                                        ],
                                                        "liveness_probe": [],
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ]
                                    },
                                    "type": "azurerm_container_app",
                                    "values": {
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "allow_insecure_connections": false,
                                                "exposed_port": null,
                                                "external_enabled": true,
                                                "ip_security_restriction": [],
                                                "target_port": 5252,
                                                "traffic_weight": [
                                                    {
                                                        "label": null,
                                                        "latest_revision": true,
                                                        "percentage": 100,
                                                        "revision_suffix": null
                                                    }
                                                ],
                                                "transport": "auto"
                                            }
                                        ],
                                        "registry": [],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "revision_mode": "Single",
                                        "secret": [],
                                        "tags": null,
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "args": null,
                                                        "command": null,
                                                        "cpu": 0.25,
                                                        "env": [
                                                            {
                                                                "name": "ALLURE_DOCKER_PUBLIC_API_URL",
                                                                "secret_name": null
                                                            },
                                                            {
                                                                "name": "ALLURE_DOCKER_PUBLIC_API_URL_PREFIX",
                                                                "secret_name": null,
                                                                "value": "/api"
                                                            }
                                                        ],
                                                        "image": "docker.io/frankescobar/allure-docker-service-ui:latest",
                                                        "liveness_probe": [],
                                                        "memory": "0.5Gi",
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "max_replicas": 1,
                                                "min_replicas": 1,
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ],
                                        "timeouts": null,
                                        "workload_profile_name": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_private_dns_a_record.containerapp_record",
                                    "mode": "managed",
                                    "name": "containerapp_record",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "records": []
                                    },
                                    "type": "azurerm_private_dns_a_record",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": null,
                                        "timeouts": null,
                                        "ttl": 300
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.managed_app_allure_docker_service",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app",
                                    "mode": "managed",
                                    "name": "app",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "custom_domain_verification_id": true,
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "custom_domain": [],
                                                "ip_security_restriction": [],
                                                "traffic_weight": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "outbound_ip_addresses": [],
                                        "registry": [],
                                        "secret": [],
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "env": [
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
                                                        "liveness_probe": [],
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ]
                                    },
                                    "type": "azurerm_container_app",
                                    "values": {
                                        "dapr": [],
                                        "identity": [],
                                        "ingress": [
                                            {
                                                "allow_insecure_connections": false,
                                                "exposed_port": null,
                                                "external_enabled": true,
                                                "ip_security_restriction": [],
                                                "target_port": 5050,
                                                "traffic_weight": [
                                                    {
                                                        "label": null,
                                                        "latest_revision": true,
                                                        "percentage": 100,
                                                        "revision_suffix": null
                                                    }
                                                ],
                                                "transport": "auto"
                                            }
                                        ],
                                        "registry": [],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "revision_mode": "Single",
                                        "secret": [],
                                        "tags": null,
                                        "template": [
                                            {
                                                "azure_queue_scale_rule": [],
                                                "container": [
                                                    {
                                                        "args": null,
                                                        "command": null,
                                                        "cpu": 0.25,
                                                        "env": [
                                                            {
                                                                "name": "CHECK_RESULTS_EVERY_SECONDS",
                                                                "secret_name": null,
                                                                "value": "NONE"
                                                            },
                                                            {
                                                                "name": "KEEP_HISTORY",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "KEEP_HISTORY_LATEST",
                                                                "secret_name": null,
                                                                "value": "25"
                                                            },
                                                            {
                                                                "name": "SECURITY_USER",
                                                                "secret_name": null,
                                                                "value": "admin"
                                                            },
                                                            {
                                                                "name": "SECURITY_PASS",
                                                                "secret_name": null,
                                                                "value": "password"
                                                            },
                                                            {
                                                                "name": "SECURITY_ENABLED",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "MAKE_VIEWER_ENDPOINTS_PUBLIC",
                                                                "secret_name": null,
                                                                "value": "1"
                                                            },
                                                            {
                                                                "name": "URL_PREFIX",
                                                                "secret_name": null,
                                                                "value": "/api"
                                                            },
                                                            {
                                                                "name": "SERVER_URL",
                                                                "secret_name": null
                                                            }
                                                        ],
                                                        "image": "docker.io/frankescobar/allure-docker-service:latest",
                                                        "liveness_probe": [],
                                                        "memory": "0.5Gi",
                                                        "readiness_probe": [],
                                                        "startup_probe": [],
                                                        "volume_mounts": []
                                                    }
                                                ],
                                                "custom_scale_rule": [],
                                                "http_scale_rule": [],
                                                "init_container": [],
                                                "max_replicas": 1,
                                                "min_replicas": 1,
                                                "tcp_scale_rule": [],
                                                "volume": []
                                            }
                                        ],
                                        "timeouts": null,
                                        "workload_profile_name": null
                                    }
                                },
                                {
                                    "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_private_dns_a_record.containerapp_record",
                                    "mode": "managed",
                                    "name": "containerapp_record",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "records": []
                                    },
                                    "type": "azurerm_private_dns_a_record",
                                    "values": {
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "tags": null,
                                        "timeouts": null,
                                        "ttl": 300
                                    }
                                }
                            ]
                        },
                        {
                            "address": "module.sampleapp.module.application_gateway",
                            "resources": [
                                {
                                    "address": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw",
                                    "mode": "managed",
                                    "name": "appgw",
                                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                                    "schema_version": 0,
                                    "sensitive_values": {
                                        "authentication_certificate": [],
                                        "autoscale_configuration": [
                                            {}
                                        ],
                                        "backend_address_pool": [
                                            {
                                                "fqdns": [],
                                                "ip_addresses": []
                                            },
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
                                        "frontend_ip_configuration": [],
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
                                        "url_path_map": [
                                            {
                                                "path_rule": [
                                                    {
                                                        "paths": [
                                                            false
                                                        ]
                                                    }
                                                ]
                                            }
                                        ],
                                        "waf_configuration": [
                                            {
                                                "disabled_rule_group": [],
                                                "exclusion": []
                                            }
                                        ]
                                    },
                                    "type": "azurerm_application_gateway",
                                    "values": {
                                        "authentication_certificate": [],
                                        "autoscale_configuration": [
                                            {
                                                "max_capacity": 2,
                                                "min_capacity": 1
                                            }
                                        ],
                                        "backend_address_pool": [
                                            {
                                                "ip_addresses": []
                                            },
                                            {
                                                "ip_addresses": []
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
                                                "pick_host_name_from_backend_address": true,
                                                "port": 443,
                                                "probe_name": "",
                                                "protocol": "Https",
                                                "request_timeout": 20,
                                                "trusted_root_certificate_names": []
                                            },
                                            {
                                                "affinity_cookie_name": "",
                                                "authentication_certificate": [],
                                                "connection_draining": [],
                                                "cookie_based_affinity": "Disabled",
                                                "host_name": "",
                                                "path": "/",
                                                "pick_host_name_from_backend_address": true,
                                                "port": 443,
                                                "probe_name": "",
                                                "protocol": "Https",
                                                "request_timeout": 20,
                                                "trusted_root_certificate_names": []
                                            }
                                        ],
                                        "custom_error_configuration": [],
                                        "enable_http2": null,
                                        "fips_enabled": null,
                                        "firewall_policy_id": null,
                                        "force_firewall_policy_association": null,
                                        "frontend_port": [
                                            {
                                                "name": "443",
                                                "port": 443
                                            },
                                            {
                                                "name": "80",
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
                                                "frontend_ip_configuration_name": "Public-frontend-ip-configuration",
                                                "frontend_port_name": "80",
                                                "host_name": "",
                                                "host_names": [],
                                                "name": "allure-http-listener",
                                                "protocol": "Http",
                                                "require_sni": null,
                                                "ssl_certificate_name": "",
                                                "ssl_profile_name": ""
                                            }
                                        ],
                                        "identity": [],
                                        "location": "westeurope",
                                        "private_link_configuration": [],
                                        "probe": [],
                                        "redirect_configuration": [],
                                        "request_routing_rule": [
                                            {
                                                "backend_address_pool_name": "",
                                                "backend_http_settings_name": "",
                                                "http_listener_name": "allure-http-listener",
                                                "name": "allure-request-routing-rule",
                                                "priority": 10,
                                                "redirect_configuration_name": "",
                                                "rewrite_rule_set_name": "",
                                                "rule_type": "PathBasedRouting",
                                                "url_path_map_name": "allure-request-routing-rules"
                                            }
                                        ],
                                        "resource_group_name": "appl-test-containerapp-westeurope",
                                        "rewrite_rule_set": [],
                                        "sku": [
                                            {
                                                "capacity": null,
                                                "name": "WAF_v2",
                                                "tier": "WAF_v2"
                                            }
                                        ],
                                        "ssl_certificate": [],
                                        "ssl_profile": [],
                                        "tags": {
                                            "deployedby": "Terraform IaC"
                                        },
                                        "timeouts": null,
                                        "trusted_client_certificate": [],
                                        "trusted_root_certificate": [],
                                        "url_path_map": [
                                            {
                                                "default_redirect_configuration_name": null,
                                                "default_rewrite_rule_set_name": null,
                                                "name": "allure-request-routing-rules",
                                                "path_rule": [
                                                    {
                                                        "firewall_policy_id": null,
                                                        "paths": [
                                                            "/api*"
                                                        ],
                                                        "redirect_configuration_name": null,
                                                        "rewrite_rule_set_name": null
                                                    }
                                                ]
                                            }
                                        ],
                                        "waf_configuration": [
                                            {
                                                "disabled_rule_group": [],
                                                "enabled": true,
                                                "exclusion": [],
                                                "file_upload_limit_mb": 100,
                                                "firewall_mode": "Detection",
                                                "max_request_body_size_kb": 128,
                                                "request_body_check": true,
                                                "rule_set_type": "OWASP",
                                                "rule_set_version": "3.0"
                                            }
                                        ],
                                        "zones": null
                                    }
                                }
                            ]
                        }
                    ],
                    "resources": [
                        {
                            "address": "module.sampleapp.random_string.deployment_string",
                            "mode": "managed",
                            "name": "deployment_string",
                            "provider_name": "registry.terraform.io/hashicorp/random",
                            "schema_version": 2,
                            "sensitive_values": {
                                "keepers": {}
                            },
                            "type": "random_string",
                            "values": {
                                "keepers": {
                                    "resource_group": "appl-test-containerapp-westeurope"
                                },
                                "length": 13,
                                "lower": true,
                                "min_lower": 0,
                                "min_numeric": 0,
                                "min_special": 0,
                                "min_upper": 0,
                                "number": false,
                                "numeric": false,
                                "override_special": null,
                                "special": false,
                                "upper": false
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
                "child_modules": [
                    {
                        "address": "module.sampleapp",
                        "resources": [
                            {
                                "address": "module.sampleapp.data.azurerm_client_config.current",
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
                ]
            }
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "http_listener"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "request_routing_rule"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "ssl_certificate"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "default_domain"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group"
        },
        {
            "attribute": [
                "workspace_id"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "backend_http_settings"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "static_ip_address"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "tags"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "module.sampleapp.random_string.deployment_string"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "primary_shared_key"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app"
        }
    ],
    "resource_changes": [
        {
            "address": "module.sampleapp.random_string.deployment_string",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": {
                        "resource_group": "appl-test-containerapp-westeurope"
                    },
                    "length": 13,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": false,
                    "numeric": false,
                    "override_special": null,
                    "special": false,
                    "upper": false
                },
                "after_sensitive": {
                    "keepers": {}
                },
                "after_unknown": {
                    "id": true,
                    "keepers": {},
                    "result": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp",
            "name": "deployment_string",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
        },
        {
            "address": "module.sampleapp.module.application_gateway.azurerm_application_gateway.appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {
                            "max_capacity": 2,
                            "min_capacity": 1
                        }
                    ],
                    "backend_address_pool": [
                        {
                            "ip_addresses": []
                        },
                        {
                            "ip_addresses": []
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
                            "pick_host_name_from_backend_address": true,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "path": "/",
                            "pick_host_name_from_backend_address": true,
                            "port": 443,
                            "probe_name": "",
                            "protocol": "Https",
                            "request_timeout": 20,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": null,
                    "fips_enabled": null,
                    "firewall_policy_id": null,
                    "force_firewall_policy_association": null,
                    "frontend_port": [
                        {
                            "name": "443",
                            "port": 443
                        },
                        {
                            "name": "80",
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
                            "frontend_ip_configuration_name": "Public-frontend-ip-configuration",
                            "frontend_port_name": "80",
                            "host_name": "",
                            "host_names": [],
                            "name": "allure-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "allure-http-listener",
                            "name": "allure-request-routing-rule",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "allure-request-routing-rules"
                        }
                    ],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": null,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "allure-request-routing-rules",
                            "path_rule": [
                                {
                                    "firewall_policy_id": null,
                                    "paths": [
                                        "/api*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        }
                    ],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "enabled": true,
                            "exclusion": [],
                            "file_upload_limit_mb": 100,
                            "firewall_mode": "Detection",
                            "max_request_body_size_kb": 128,
                            "request_body_check": true,
                            "rule_set_type": "OWASP",
                            "rule_set_version": "3.0"
                        }
                    ],
                    "zones": null
                },
                "after_sensitive": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {}
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "ip_addresses": []
                        },
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
                    "frontend_ip_configuration": [],
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
                    "url_path_map": [
                        {
                            "path_rule": [
                                {
                                    "paths": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {}
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": [],
                            "name": true
                        },
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": [],
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
                        },
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
                    "frontend_ip_configuration": true,
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
                            "name": true,
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
                    "name": true,
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
                    "tags": {},
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_address_pool_name": true,
                            "default_backend_http_settings_id": true,
                            "default_backend_http_settings_name": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_address_pool_name": true,
                                    "backend_http_settings_id": true,
                                    "backend_http_settings_name": true,
                                    "id": true,
                                    "name": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        }
                    ],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.application_gateway",
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.sampleapp.module.log_analytics_workspace.azurerm_log_analytics_workspace.log_analytics_workspace",
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
                    "location": "westeurope",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "retention_in_days": 30,
                    "sku": "PerGB2018",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "identity": [],
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "identity": [],
                    "name": true,
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "tags": {},
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.log_analytics_workspace",
            "name": "log_analytics_workspace",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_container_app.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": false,
                            "exposed_port": null,
                            "external_enabled": true,
                            "ip_security_restriction": [],
                            "target_port": 5050,
                            "traffic_weight": [
                                {
                                    "label": null,
                                    "latest_revision": true,
                                    "percentage": 100,
                                    "revision_suffix": null
                                }
                            ],
                            "transport": "auto"
                        }
                    ],
                    "registry": [],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": null,
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [
                                        {
                                            "name": "CHECK_RESULTS_EVERY_SECONDS",
                                            "secret_name": null,
                                            "value": "NONE"
                                        },
                                        {
                                            "name": "KEEP_HISTORY",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "KEEP_HISTORY_LATEST",
                                            "secret_name": null,
                                            "value": "25"
                                        },
                                        {
                                            "name": "SECURITY_USER",
                                            "secret_name": null,
                                            "value": "admin"
                                        },
                                        {
                                            "name": "SECURITY_PASS",
                                            "secret_name": null,
                                            "value": "password"
                                        },
                                        {
                                            "name": "SECURITY_ENABLED",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "MAKE_VIEWER_ENDPOINTS_PUBLIC",
                                            "secret_name": null,
                                            "value": "1"
                                        },
                                        {
                                            "name": "URL_PREFIX",
                                            "secret_name": null,
                                            "value": "/api"
                                        },
                                        {
                                            "name": "SERVER_URL",
                                            "secret_name": null
                                        }
                                    ],
                                    "image": "docker.io/frankescobar/allure-docker-service:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 1,
                            "min_replicas": 1,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ],
                    "timeouts": null,
                    "workload_profile_name": null
                },
                "after_sensitive": {
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": [],
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "outbound_ip_addresses": [],
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
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
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "container_app_environment_id": true,
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "id": true,
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": true,
                            "fqdn": true,
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "latest_revision_fqdn": true,
                    "latest_revision_name": true,
                    "location": true,
                    "name": true,
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {},
                                        {
                                            "value": true
                                        }
                                    ],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
                                    "name": true,
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "revision_suffix": true,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_service",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_service.azurerm_private_dns_a_record.containerapp_record",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "name": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_service",
            "name": "containerapp_record",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_container_app.app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "allow_insecure_connections": false,
                            "exposed_port": null,
                            "external_enabled": true,
                            "ip_security_restriction": [],
                            "target_port": 5252,
                            "traffic_weight": [
                                {
                                    "label": null,
                                    "latest_revision": true,
                                    "percentage": 100,
                                    "revision_suffix": null
                                }
                            ],
                            "transport": "auto"
                        }
                    ],
                    "registry": [],
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": null,
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [
                                        {
                                            "name": "ALLURE_DOCKER_PUBLIC_API_URL",
                                            "secret_name": null
                                        },
                                        {
                                            "name": "ALLURE_DOCKER_PUBLIC_API_URL_PREFIX",
                                            "secret_name": null,
                                            "value": "/api"
                                        }
                                    ],
                                    "image": "docker.io/frankescobar/allure-docker-service-ui:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 1,
                            "min_replicas": 1,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ],
                    "timeouts": null,
                    "workload_profile_name": null
                },
                "after_sensitive": {
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": [],
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "outbound_ip_addresses": [],
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {},
                                        {}
                                    ],
                                    "liveness_probe": [],
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "container_app_environment_id": true,
                    "custom_domain_verification_id": true,
                    "dapr": [],
                    "id": true,
                    "identity": [],
                    "ingress": [
                        {
                            "custom_domain": true,
                            "fqdn": true,
                            "ip_security_restriction": [],
                            "traffic_weight": [
                                {}
                            ]
                        }
                    ],
                    "latest_revision_fqdn": true,
                    "latest_revision_name": true,
                    "location": true,
                    "name": true,
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [
                                        {
                                            "value": true
                                        },
                                        {}
                                    ],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
                                    "name": true,
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "revision_suffix": true,
                            "tcp_scale_rule": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
            "name": "app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "module.sampleapp.module.managed_app_allure_docker_ui_service.azurerm_private_dns_a_record.containerapp_record",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": null,
                    "timeouts": null,
                    "ttl": 300
                },
                "after_sensitive": {
                    "records": []
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "name": true,
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_app_allure_docker_ui_service",
            "name": "containerapp_record",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_container_app_environment.container_app_environment",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr_application_insights_connection_string": null,
                    "infrastructure_resource_group_name": null,
                    "internal_load_balancer_enabled": true,
                    "location": "westeurope",
                    "mutual_tls_enabled": false,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": {
                        "create": "4h",
                        "delete": null,
                        "read": null,
                        "update": null
                    },
                    "workload_profile": [],
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "dapr_application_insights_connection_string": true,
                    "tags": {},
                    "timeouts": {},
                    "workload_profile": []
                },
                "after_unknown": {
                    "custom_domain_verification_id": true,
                    "default_domain": true,
                    "docker_bridge_cidr": true,
                    "id": true,
                    "infrastructure_subnet_id": true,
                    "log_analytics_workspace_id": true,
                    "name": true,
                    "platform_reserved_cidr": true,
                    "platform_reserved_dns_ip_address": true,
                    "static_ip_address": true,
                    "tags": {},
                    "timeouts": {},
                    "workload_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "container_app_environment",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app_environment"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone.private_dns_zone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "soa_record": [],
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "max_number_of_record_sets": true,
                    "max_number_of_virtual_network_links": true,
                    "max_number_of_virtual_network_links_with_registration": true,
                    "name": true,
                    "number_of_record_sets": true,
                    "soa_record": true,
                    "tags": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "private_dns_zone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "module.sampleapp.module.managed_environment.azurerm_private_dns_zone_virtual_network_link.vnet_link",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "containerapplink",
                    "registration_enabled": false,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
                    },
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "private_dns_zone_name": true,
                    "tags": {},
                    "virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.sampleapp.module.managed_environment",
            "name": "vnet_link",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "module.sampleapp.module.public_ip_application_gateway.azurerm_public_ip.public_ip",
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
                    "public_ip_prefix_id": null,
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
            "module_address": "module.sampleapp.module.public_ip_application_gateway",
            "name": "public_ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.sampleapp.module.resource_group.azurerm_resource_group.resource_group",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
            "module_address": "module.sampleapp.module.resource_group",
            "name": "resource_group",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.sampleapp.module.subnet_applicationgateway.azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.8.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "applicationgateway",
                    "resource_group_name": "appl-test-containerapp-westeurope",
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
            "module_address": "module.sampleapp.module.subnet_applicationgateway",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.sampleapp.module.subnet_containerapps.azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.0.0/21"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "containerapps",
                    "resource_group_name": "appl-test-containerapp-westeurope",
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
            "module_address": "module.sampleapp.module.subnet_containerapps",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.sampleapp.module.virtual_network.azurerm_virtual_network.virtual_network",
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
                    "location": "westeurope",
                    "resource_group_name": "appl-test-containerapp-westeurope",
                    "tags": {
                        "deployedby": "Terraform IaC"
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
            "module_address": "module.sampleapp.module.virtual_network",
            "name": "virtual_network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-16T23:47:45Z",
    "variables": {
        "common_tags": {
            "value": {
                "deployedby": "Terraform IaC"
            }
        },
        "location": {
            "value": "westeurope"
        }
    }
}