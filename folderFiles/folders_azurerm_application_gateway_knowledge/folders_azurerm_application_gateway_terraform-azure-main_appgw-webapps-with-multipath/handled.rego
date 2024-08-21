
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
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            }
        },
        "root_module": {
            "module_calls": {
                "bastion": {
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "bastion"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.bastion.id",
                                "azurerm_subnet.bastion"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_bastion_host.bastion",
                                "depends_on": [
                                    "azurerm_subnet_network_security_group_association.hub-bastion"
                                ],
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
                                    "ip_connect_enabled": {
                                        "constant_value": true
                                    },
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
                                    "shareable_link_enabled": {
                                        "constant_value": true
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    },
                                    "tunneling_enabled": {
                                        "constant_value": true
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_bastion_host"
                            },
                            {
                                "address": "azurerm_network_security_group.bastion",
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
                                "name": "bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-azurecloud-out",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "AzureCloud"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "443"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Outbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowAzureCloudOutbound"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 130
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-azurecloud-out",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-bastioncommunication-out",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "VirtualNetwork"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "8080",
                                            "5701"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Outbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowBastionCommunication"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 140
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "VirtualNetwork"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-bastioncommunication-out",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-gsi-out",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "Internet"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "80"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Outbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowGetSesssionInformation"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 150
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-gsi-out",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-gwm",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "destination_application_security_group_ids": {
                                        "constant_value": []
                                    },
                                    "destination_port_range": {
                                        "constant_value": "443"
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowGatewayManagerInbound"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 130
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "GatewayManager"
                                    },
                                    "source_application_security_group_ids": {
                                        "constant_value": []
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-gwm",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-hc",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "VirtualNetwork"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "8080",
                                            "5701"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowBastionHostCommunication"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 150
                                    },
                                    "protocol": {
                                        "constant_value": "*"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "VirtualNetwork"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-hc",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-https",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "destination_port_range": {
                                        "constant_value": "443"
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowHttpsInbound"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 120
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "Internet"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-https",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-lb",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "destination_port_range": {
                                        "constant_value": "443"
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowAzureLoadBalancerInbound"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 140
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "AzureLoadBalancer"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-lb",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_network_security_rule.bastion-sshrdp-out",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "description": {
                                        "constant_value": ""
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "VirtualNetwork"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "22",
                                            "3389"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Outbound"
                                    },
                                    "name": {
                                        "constant_value": "AllowSshRdpOutbound"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.name",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 120
                                    },
                                    "protocol": {
                                        "constant_value": "*"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "bastion-sshrdp-out",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
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
                                            "var.name"
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
                            },
                            {
                                "address": "azurerm_subnet_network_security_group_association.hub-bastion",
                                "depends_on": [
                                    "azurerm_network_security_rule.bastion-azurecloud-out",
                                    "azurerm_network_security_rule.bastion-bastioncommunication-out",
                                    "azurerm_network_security_rule.bastion-gsi-out",
                                    "azurerm_network_security_rule.bastion-gwm",
                                    "azurerm_network_security_rule.bastion-https",
                                    "azurerm_network_security_rule.bastion-hc",
                                    "azurerm_network_security_rule.bastion-lb",
                                    "azurerm_network_security_rule.bastion-sshrdp-out"
                                ],
                                "expressions": {
                                    "network_security_group_id": {
                                        "references": [
                                            "azurerm_network_security_group.bastion.id",
                                            "azurerm_network_security_group.bastion"
                                        ]
                                    },
                                    "subnet_id": {
                                        "references": [
                                            "var.subnet_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "hub-bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet_network_security_group_association"
                            }
                        ],
                        "variables": {
                            "location": {},
                            "name": {},
                            "resource_group_name": {},
                            "subnet_id": {}
                        }
                    },
                    "source": "../modules/bastion/"
                },
                "jumpbox": {
                    "expressions": {
                        "admin_password": {
                            "constant_value": "Password1!"
                        },
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "vmjumpbox"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.backend.id",
                                "azurerm_subnet.backend"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_windows_virtual_machine.windows.id",
                                        "azurerm_windows_virtual_machine.windows"
                                    ]
                                }
                            },
                            "network_interface_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.id",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "network_interface_ipconfiguration": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.ip_configuration",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.private_ip_address",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                                "expressions": {
                                    "daily_recurrence_time": {
                                        "constant_value": "0200"
                                    },
                                    "enabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_windows_virtual_machine.windows.location",
                                            "azurerm_windows_virtual_machine.windows"
                                        ]
                                    },
                                    "notification_settings": [
                                        {
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "timezone": {
                                        "constant_value": "Tokyo Standard Time"
                                    },
                                    "virtual_machine_id": {
                                        "references": [
                                            "azurerm_windows_virtual_machine.windows.id",
                                            "azurerm_windows_virtual_machine.windows"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "autoshutdown",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                            },
                            {
                                "address": "azurerm_network_interface.nic",
                                "expressions": {
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "private_ip_address_allocation": {
                                                "constant_value": "Dynamic"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.pip.id",
                                                    "azurerm_public_ip.pip"
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
                                    }
                                },
                                "mode": "managed",
                                "name": "nic",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface_security_group_association.example",
                                "expressions": {
                                    "network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
                                    "network_security_group_id": {
                                        "references": [
                                            "azurerm_network_security_group.nsg.id",
                                            "azurerm_network_security_group.nsg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface_security_group_association"
                            },
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
                                            "var.name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
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
                                                "destination_port_range": "3389",
                                                "destination_port_ranges": null,
                                                "direction": "Inbound",
                                                "name": "remote_access",
                                                "priority": 100,
                                                "protocol": "Tcp",
                                                "source_address_prefix": "*",
                                                "source_address_prefixes": null,
                                                "source_application_security_group_ids": null,
                                                "source_port_range": "*",
                                                "source_port_ranges": null
                                            }
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
                                "address": "azurerm_public_ip.pip",
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
                                            "var.name"
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
                                "name": "pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
                            {
                                "address": "azurerm_windows_virtual_machine.windows",
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
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
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
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "size": {
                                        "references": [
                                            "var.vm_size"
                                        ]
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
                                    ],
                                    "zone": {
                                        "references": [
                                            "var.zone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "windows",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_windows_virtual_machine"
                            }
                        ],
                        "variables": {
                            "admin_password": {},
                            "admin_username": {},
                            "location": {},
                            "name": {},
                            "resource_group_name": {},
                            "subnet_id": {},
                            "vm_size": {
                                "default": "Standard_B2ms"
                            },
                            "zone": {
                                "default": 1
                            }
                        }
                    },
                    "source": "../modules/vm-windows-2019/"
                },
                "jumpbox-linux": {
                    "expressions": {
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "custom_data": {
                            "constant_value": "test"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "vmjumpboxlinux"
                        },
                        "public_key": {
                            "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.backend.id",
                                "azurerm_subnet.backend"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_linux_virtual_machine.linux.id",
                                        "azurerm_linux_virtual_machine.linux"
                                    ]
                                }
                            },
                            "ip_configuration_name": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.ip_configuration[0].name",
                                        "azurerm_network_interface.nic.ip_configuration[0]",
                                        "azurerm_network_interface.nic.ip_configuration",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "network_interface_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.id",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "network_interface_ipconfiguration": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.ip_configuration",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "nic_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.id",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.private_ip_address",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                                "expressions": {
                                    "daily_recurrence_time": {
                                        "constant_value": "0200"
                                    },
                                    "enabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_linux_virtual_machine.linux.location",
                                            "azurerm_linux_virtual_machine.linux"
                                        ]
                                    },
                                    "notification_settings": [
                                        {
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "timezone": {
                                        "constant_value": "Tokyo Standard Time"
                                    },
                                    "virtual_machine_id": {
                                        "references": [
                                            "azurerm_linux_virtual_machine.linux.id",
                                            "azurerm_linux_virtual_machine.linux"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "autoshutdown",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                            },
                            {
                                "address": "azurerm_linux_virtual_machine.linux",
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
                                    "availability_set_id": {
                                        "references": [
                                            "var.availability_set_id"
                                        ]
                                    },
                                    "boot_diagnostics": [
                                        {
                                            "storage_account_uri": {
                                                "constant_value": null
                                            }
                                        }
                                    ],
                                    "custom_data": {
                                        "references": [
                                            "var.custom_data",
                                            "var.custom_data"
                                        ]
                                    },
                                    "disable_password_authentication": {
                                        "constant_value": false
                                    },
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
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
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
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "size": {
                                        "references": [
                                            "var.vm_size"
                                        ]
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "references": [
                                                    "var.source_image_reference.offer",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.source_image_reference.publisher",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.source_image_reference.sku",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.source_image_reference.version",
                                                    "var.source_image_reference"
                                                ]
                                            }
                                        }
                                    ],
                                    "zone": {
                                        "references": [
                                            "var.zone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "linux",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_linux_virtual_machine"
                            },
                            {
                                "address": "azurerm_network_interface.nic",
                                "expressions": {
                                    "enable_accelerated_networking": {
                                        "references": [
                                            "var.enable_accelerated_networking"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "private_ip_address": {
                                                "references": [
                                                    "var.private_ip_address_allocation",
                                                    "var.private_ip_address"
                                                ]
                                            },
                                            "private_ip_address_allocation": {
                                                "references": [
                                                    "var.private_ip_address_allocation"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.pip.id",
                                                    "azurerm_public_ip.pip"
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
                                    }
                                },
                                "mode": "managed",
                                "name": "nic",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface_security_group_association.example",
                                "expressions": {
                                    "network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
                                    "network_security_group_id": {
                                        "references": [
                                            "azurerm_network_security_group.nsg.id",
                                            "azurerm_network_security_group.nsg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface_security_group_association"
                            },
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
                                "name": "nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            },
                            {
                                "address": "azurerm_network_security_rule.nsg-rule",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "22",
                                            "80"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "remote_access"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.nsg.name",
                                            "azurerm_network_security_group.nsg"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 100
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "references": [
                                            "var.source_address_prefix"
                                        ]
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "nsg-rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_public_ip.pip",
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
                                            "var.name"
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
                                "name": "pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "admin_password": {
                                "default": "Password1!"
                            },
                            "admin_username": {},
                            "availability_set_id": {
                                "default": null
                            },
                            "custom_data": {
                                "default": ""
                            },
                            "enable_accelerated_networking": {
                                "default": false
                            },
                            "location": {},
                            "name": {},
                            "private_ip_address": {
                                "default": null
                            },
                            "private_ip_address_allocation": {
                                "default": "Dynamic"
                            },
                            "public_key": {
                                "default": null
                            },
                            "resource_group_name": {},
                            "source_address_prefix": {
                                "default": "*"
                            },
                            "source_image_reference": {
                                "default": {
                                    "offer": "0001-com-ubuntu-server-focal",
                                    "publisher": "Canonical",
                                    "sku": "20_04-lts-gen2",
                                    "version": "latest"
                                }
                            },
                            "subnet_id": {},
                            "vm_size": {
                                "default": "Standard_B2ms"
                            },
                            "zone": {
                                "default": null
                            }
                        }
                    },
                    "source": "../modules/vm-linux/"
                },
                "webserver": {
                    "expressions": {
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "custom_data": {
                            "constant_value": "sudo apt update && sudo apt install -y nginx"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "vmwebserver"
                        },
                        "public_key": {
                            "constant_value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.backend.id",
                                "azurerm_subnet.backend"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_linux_virtual_machine.linux.id",
                                        "azurerm_linux_virtual_machine.linux"
                                    ]
                                }
                            },
                            "ip_configuration_name": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.ip_configuration[0].name",
                                        "azurerm_network_interface.nic.ip_configuration[0]",
                                        "azurerm_network_interface.nic.ip_configuration",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "network_interface_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.id",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "network_interface_ipconfiguration": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.ip_configuration",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "nic_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.id",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_network_interface.nic.private_ip_address",
                                        "azurerm_network_interface.nic"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                                "expressions": {
                                    "daily_recurrence_time": {
                                        "constant_value": "0200"
                                    },
                                    "enabled": {
                                        "constant_value": true
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_linux_virtual_machine.linux.location",
                                            "azurerm_linux_virtual_machine.linux"
                                        ]
                                    },
                                    "notification_settings": [
                                        {
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "timezone": {
                                        "constant_value": "Tokyo Standard Time"
                                    },
                                    "virtual_machine_id": {
                                        "references": [
                                            "azurerm_linux_virtual_machine.linux.id",
                                            "azurerm_linux_virtual_machine.linux"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "autoshutdown",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                            },
                            {
                                "address": "azurerm_linux_virtual_machine.linux",
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
                                    "availability_set_id": {
                                        "references": [
                                            "var.availability_set_id"
                                        ]
                                    },
                                    "boot_diagnostics": [
                                        {
                                            "storage_account_uri": {
                                                "constant_value": null
                                            }
                                        }
                                    ],
                                    "custom_data": {
                                        "references": [
                                            "var.custom_data",
                                            "var.custom_data"
                                        ]
                                    },
                                    "disable_password_authentication": {
                                        "constant_value": false
                                    },
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
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
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
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "size": {
                                        "references": [
                                            "var.vm_size"
                                        ]
                                    },
                                    "source_image_reference": [
                                        {
                                            "offer": {
                                                "references": [
                                                    "var.source_image_reference.offer",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "publisher": {
                                                "references": [
                                                    "var.source_image_reference.publisher",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "sku": {
                                                "references": [
                                                    "var.source_image_reference.sku",
                                                    "var.source_image_reference"
                                                ]
                                            },
                                            "version": {
                                                "references": [
                                                    "var.source_image_reference.version",
                                                    "var.source_image_reference"
                                                ]
                                            }
                                        }
                                    ],
                                    "zone": {
                                        "references": [
                                            "var.zone"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "linux",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_linux_virtual_machine"
                            },
                            {
                                "address": "azurerm_network_interface.nic",
                                "expressions": {
                                    "enable_accelerated_networking": {
                                        "references": [
                                            "var.enable_accelerated_networking"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "private_ip_address": {
                                                "references": [
                                                    "var.private_ip_address_allocation",
                                                    "var.private_ip_address"
                                                ]
                                            },
                                            "private_ip_address_allocation": {
                                                "references": [
                                                    "var.private_ip_address_allocation"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.pip.id",
                                                    "azurerm_public_ip.pip"
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
                                    }
                                },
                                "mode": "managed",
                                "name": "nic",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface"
                            },
                            {
                                "address": "azurerm_network_interface_security_group_association.example",
                                "expressions": {
                                    "network_interface_id": {
                                        "references": [
                                            "azurerm_network_interface.nic.id",
                                            "azurerm_network_interface.nic"
                                        ]
                                    },
                                    "network_security_group_id": {
                                        "references": [
                                            "azurerm_network_security_group.nsg.id",
                                            "azurerm_network_security_group.nsg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_interface_security_group_association"
                            },
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
                                "name": "nsg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_group"
                            },
                            {
                                "address": "azurerm_network_security_rule.nsg-rule",
                                "expressions": {
                                    "access": {
                                        "constant_value": "Allow"
                                    },
                                    "destination_address_prefix": {
                                        "constant_value": "*"
                                    },
                                    "destination_port_ranges": {
                                        "constant_value": [
                                            "22",
                                            "80"
                                        ]
                                    },
                                    "direction": {
                                        "constant_value": "Inbound"
                                    },
                                    "name": {
                                        "constant_value": "remote_access"
                                    },
                                    "network_security_group_name": {
                                        "references": [
                                            "azurerm_network_security_group.nsg.name",
                                            "azurerm_network_security_group.nsg"
                                        ]
                                    },
                                    "priority": {
                                        "constant_value": 100
                                    },
                                    "protocol": {
                                        "constant_value": "Tcp"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "source_address_prefix": {
                                        "references": [
                                            "var.source_address_prefix"
                                        ]
                                    },
                                    "source_port_range": {
                                        "constant_value": "*"
                                    }
                                },
                                "mode": "managed",
                                "name": "nsg-rule",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_network_security_rule"
                            },
                            {
                                "address": "azurerm_public_ip.pip",
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
                                            "var.name"
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
                                "name": "pip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "admin_password": {
                                "default": "Password1!"
                            },
                            "admin_username": {},
                            "availability_set_id": {
                                "default": null
                            },
                            "custom_data": {
                                "default": ""
                            },
                            "enable_accelerated_networking": {
                                "default": false
                            },
                            "location": {},
                            "name": {},
                            "private_ip_address": {
                                "default": null
                            },
                            "private_ip_address_allocation": {
                                "default": "Dynamic"
                            },
                            "public_key": {
                                "default": null
                            },
                            "resource_group_name": {},
                            "source_address_prefix": {
                                "default": "*"
                            },
                            "source_image_reference": {
                                "default": {
                                    "offer": "0001-com-ubuntu-server-focal",
                                    "publisher": "Canonical",
                                    "sku": "20_04-lts-gen2",
                                    "version": "latest"
                                }
                            },
                            "subnet_id": {},
                            "vm_size": {
                                "default": "Standard_B2ms"
                            },
                            "zone": {
                                "default": null
                            }
                        }
                    },
                    "source": "../modules/vm-linux/"
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.network",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_linux_web_app.app1.default_hostname",
                                        "azurerm_linux_web_app.app1"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name_1"
                                    ]
                                }
                            },
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_linux_web_app.app2.default_hostname",
                                        "azurerm_linux_web_app.app2"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name_2"
                                    ]
                                }
                            },
                            {
                                "fqdns": {
                                    "references": [
                                        "module.webserver.network_interface_ipconfiguration[0].private_ip_address",
                                        "module.webserver.network_interface_ipconfiguration[0]",
                                        "module.webserver.network_interface_ipconfiguration",
                                        "module.webserver"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.backend_address_pool_name_vm"
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
                                    "constant_value": ""
                                },
                                "pick_host_name_from_backend_address": {
                                    "constant_value": true
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
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "pick_host_name_from_backend_address": {
                                    "constant_value": true
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
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.example.id",
                                        "azurerm_public_ip.example"
                                    ]
                                }
                            },
                            {
                                "name": {
                                    "references": [
                                        "local.frontend_ip_configuration_private_name"
                                    ]
                                },
                                "private_ip_address": {
                                    "references": [
                                        "local.frontend_ip_private"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Static"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.frontend.id",
                                        "azurerm_subnet.frontend"
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
                                    "references": [
                                        "local.frontend_port_8080_name"
                                    ]
                                },
                                "port": {
                                    "constant_value": 8080
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
                                        "local.frontend_ip_configuration_private_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "local.frontend_port_8080_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.listener_name_private"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
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
                            "constant_value": "appgw-example"
                        },
                        "request_routing_rule": [
                            {
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
                                    "constant_value": "1000"
                                },
                                "rule_type": {
                                    "constant_value": "PathBasedRouting"
                                },
                                "url_path_map_name": {
                                    "constant_value": "my-url-path-map"
                                }
                            },
                            {
                                "http_listener_name": {
                                    "references": [
                                        "local.listener_name_private"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_private_name"
                                    ]
                                },
                                "priority": {
                                    "constant_value": "2000"
                                },
                                "rule_type": {
                                    "constant_value": "PathBasedRouting"
                                },
                                "url_path_map_name": {
                                    "constant_value": "my-url-path-map-vm"
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": {
                                    "references": [
                                        "local.backend_address_pool_name_1"
                                    ]
                                },
                                "default_backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "name": {
                                    "constant_value": "my-url-path-map"
                                },
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": {
                                            "references": [
                                                "local.backend_address_pool_name_2"
                                            ]
                                        },
                                        "backend_http_settings_name": {
                                            "references": [
                                                "local.http_setting_name"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "my-path-rule"
                                        },
                                        "paths": {
                                            "constant_value": [
                                                "/staging/*"
                                            ]
                                        }
                                    }
                                ]
                            },
                            {
                                "default_backend_address_pool_name": {
                                    "references": [
                                        "local.backend_address_pool_name_vm"
                                    ]
                                },
                                "default_backend_http_settings_name": {
                                    "references": [
                                        "local.http_setting_name"
                                    ]
                                },
                                "name": {
                                    "constant_value": "my-url-path-map-vm"
                                },
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": {
                                            "references": [
                                                "local.backend_address_pool_name_vm"
                                            ]
                                        },
                                        "backend_http_settings_name": {
                                            "references": [
                                                "local.http_setting_name"
                                            ]
                                        },
                                        "name": {
                                            "constant_value": "my-path-rule"
                                        },
                                        "paths": {
                                            "constant_value": [
                                                "/staging/*"
                                            ]
                                        }
                                    }
                                ]
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
                    "address": "azurerm_linux_web_app.app1",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_service_plan.example.location",
                                "azurerm_service_plan.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_string.uniqstr.result",
                                "random_string.uniqstr"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "azurerm_service_plan.example.id",
                                "azurerm_service_plan.example"
                            ]
                        },
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_image": {
                                            "constant_value": "tsubasaxzzz/nginx-0829"
                                        },
                                        "docker_image_tag": {
                                            "constant_value": "app1"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "app1",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_web_app"
                },
                {
                    "address": "azurerm_linux_web_app.app2",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_service_plan.example.location",
                                "azurerm_service_plan.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_string.uniqstr.result",
                                "random_string.uniqstr"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "service_plan_id": {
                            "references": [
                                "azurerm_service_plan.example.id",
                                "azurerm_service_plan.example"
                            ]
                        },
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_image": {
                                            "constant_value": "tsubasaxzzz/nginx-0829"
                                        },
                                        "docker_image_tag": {
                                            "constant_value": "app2"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "app2",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_web_app"
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
                            "constant_value": "pip-appgw"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "zones": {
                            "constant_value": [
                                "1",
                                "2",
                                "3"
                            ]
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
                            "references": [
                                "var.rg.location",
                                "var.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.rg.name",
                                "var.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_service_plan.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_string.uniqstr.result",
                                "random_string.uniqstr"
                            ]
                        },
                        "os_type": {
                            "constant_value": "Linux"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "S1"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.254.2.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-backend"
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
                    "address": "azurerm_subnet.bastion",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.254.255.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureBastionSubnet"
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
                    "name": "bastion",
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
                            "constant_value": "snet-frontend"
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
                            "constant_value": "vnet-example"
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
                    "address": "random_string.uniqstr",
                    "expressions": {
                        "keepers": {
                            "references": [
                                "var.rg.name",
                                "var.rg"
                            ]
                        },
                        "length": {
                            "constant_value": 6
                        },
                        "special": {
                            "constant_value": false
                        },
                        "upper": {
                            "constant_value": false
                        }
                    },
                    "mode": "managed",
                    "name": "uniqstr",
                    "provider_config_key": "random",
                    "schema_version": 2,
                    "type": "random_string"
                },
                {
                    "address": "module.bastion.azurerm_bastion_host.bastion",
                    "depends_on": [
                        "module.bastion.azurerm_subnet_network_security_group_association.hub-bastion"
                    ],
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.bastion.azurerm_public_ip.bastion.id",
                                        "module.bastion.azurerm_public_ip.bastion"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.bastion.id",
                                        "azurerm_subnet.bastion"
                                    ]
                                }
                            }
                        ],
                        "ip_connect_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.bastion.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "shareable_link_enabled": {
                            "constant_value": true
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "tunneling_enabled": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "bastion",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_bastion_host"
                },
                {
                    "address": "module.bastion.azurerm_network_security_group.bastion",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.bastion.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "bastion",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_group"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-azurecloud-out",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "AzureCloud"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "443"
                            ]
                        },
                        "direction": {
                            "constant_value": "Outbound"
                        },
                        "name": {
                            "constant_value": "AllowAzureCloudOutbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 130
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-azurecloud-out",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "VirtualNetwork"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "8080",
                                "5701"
                            ]
                        },
                        "direction": {
                            "constant_value": "Outbound"
                        },
                        "name": {
                            "constant_value": "AllowBastionCommunication"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 140
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "VirtualNetwork"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-bastioncommunication-out",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-gsi-out",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "Internet"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "80"
                            ]
                        },
                        "direction": {
                            "constant_value": "Outbound"
                        },
                        "name": {
                            "constant_value": "AllowGetSesssionInformation"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 150
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-gsi-out",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-gwm",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_application_security_group_ids": {
                            "constant_value": []
                        },
                        "destination_port_range": {
                            "constant_value": "443"
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "AllowGatewayManagerInbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 130
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "GatewayManager"
                        },
                        "source_application_security_group_ids": {
                            "constant_value": []
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-gwm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-hc",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "VirtualNetwork"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "8080",
                                "5701"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "AllowBastionHostCommunication"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 150
                        },
                        "protocol": {
                            "constant_value": "*"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "VirtualNetwork"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-hc",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-https",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "constant_value": "443"
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "AllowHttpsInbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 120
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "Internet"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-https",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-lb",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_range": {
                            "constant_value": "443"
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "AllowAzureLoadBalancerInbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 140
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "AzureLoadBalancer"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-lb",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-sshrdp-out",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "description": {
                            "constant_value": ""
                        },
                        "destination_address_prefix": {
                            "constant_value": "VirtualNetwork"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "22",
                                "3389"
                            ]
                        },
                        "direction": {
                            "constant_value": "Outbound"
                        },
                        "name": {
                            "constant_value": "AllowSshRdpOutbound"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.name",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "priority": {
                            "constant_value": 120
                        },
                        "protocol": {
                            "constant_value": "*"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "constant_value": "*"
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "bastion-sshrdp-out",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.bastion.azurerm_public_ip.bastion",
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
                            "references": [
                                "root.bastion.name"
                            ]
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
                    "name": "bastion",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.bastion.azurerm_subnet_network_security_group_association.hub-bastion",
                    "depends_on": [
                        "module.bastion.azurerm_network_security_rule.bastion-azurecloud-out",
                        "module.bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
                        "module.bastion.azurerm_network_security_rule.bastion-gsi-out",
                        "module.bastion.azurerm_network_security_rule.bastion-gwm",
                        "module.bastion.azurerm_network_security_rule.bastion-https",
                        "module.bastion.azurerm_network_security_rule.bastion-hc",
                        "module.bastion.azurerm_network_security_rule.bastion-lb",
                        "module.bastion.azurerm_network_security_rule.bastion-sshrdp-out"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "module.bastion.azurerm_network_security_group.bastion.id",
                                "module.bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.bastion.id",
                                "azurerm_subnet.bastion"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "hub-bastion",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "module.jumpbox.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "expressions": {
                        "daily_recurrence_time": {
                            "constant_value": "0200"
                        },
                        "enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "module.jumpbox.azurerm_windows_virtual_machine.windows.location",
                                "module.jumpbox.azurerm_windows_virtual_machine.windows"
                            ]
                        },
                        "notification_settings": [
                            {
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "timezone": {
                            "constant_value": "Tokyo Standard Time"
                        },
                        "virtual_machine_id": {
                            "references": [
                                "module.jumpbox.azurerm_windows_virtual_machine.windows.id",
                                "module.jumpbox.azurerm_windows_virtual_machine.windows"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                },
                {
                    "address": "module.jumpbox.azurerm_network_interface.nic",
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Dynamic"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.jumpbox.azurerm_public_ip.pip.id",
                                        "module.jumpbox.azurerm_public_ip.pip"
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
                            "references": [
                                "root.jumpbox.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "address": "module.jumpbox.azurerm_network_interface_security_group_association.example",
                    "expressions": {
                        "network_interface_id": {
                            "references": [
                                "module.jumpbox.azurerm_network_interface.nic.id",
                                "module.jumpbox.azurerm_network_interface.nic"
                            ]
                        },
                        "network_security_group_id": {
                            "references": [
                                "module.jumpbox.azurerm_network_security_group.nsg.id",
                                "module.jumpbox.azurerm_network_security_group.nsg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_security_group_association"
                },
                {
                    "address": "module.jumpbox.azurerm_network_security_group.nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.jumpbox.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                                    "destination_port_range": "3389",
                                    "destination_port_ranges": null,
                                    "direction": "Inbound",
                                    "name": "remote_access",
                                    "priority": 100,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "*",
                                    "source_address_prefixes": null,
                                    "source_application_security_group_ids": null,
                                    "source_port_range": "*",
                                    "source_port_ranges": null
                                }
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
                    "address": "module.jumpbox.azurerm_public_ip.pip",
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
                            "references": [
                                "root.jumpbox.name"
                            ]
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
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.jumpbox.azurerm_windows_virtual_machine.windows",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "root.jumpbox.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.jumpbox.admin_username"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.jumpbox.name"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.jumpbox.azurerm_network_interface.nic.id",
                                "module.jumpbox.azurerm_network_interface.nic"
                            ]
                        },
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
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "size": {
                            "references": [
                                "var.vm_size"
                            ]
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
                        ],
                        "zone": {
                            "references": [
                                "var.zone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "windows",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_windows_virtual_machine"
                },
                {
                    "address": "module.jumpbox-linux.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "expressions": {
                        "daily_recurrence_time": {
                            "constant_value": "0200"
                        },
                        "enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "module.jumpbox-linux.azurerm_linux_virtual_machine.linux.location",
                                "module.jumpbox-linux.azurerm_linux_virtual_machine.linux"
                            ]
                        },
                        "notification_settings": [
                            {
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "timezone": {
                            "constant_value": "Tokyo Standard Time"
                        },
                        "virtual_machine_id": {
                            "references": [
                                "module.jumpbox-linux.azurerm_linux_virtual_machine.linux.id",
                                "module.jumpbox-linux.azurerm_linux_virtual_machine.linux"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                },
                {
                    "address": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.jumpbox-linux.admin_username"
                            ]
                        },
                        "availability_set_id": {
                            "references": [
                                "var.availability_set_id"
                            ]
                        },
                        "boot_diagnostics": [
                            {
                                "storage_account_uri": {
                                    "constant_value": null
                                }
                            }
                        ],
                        "custom_data": {
                            "references": [
                                "root.jumpbox-linux.custom_data",
                                "root.jumpbox-linux.custom_data"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.jumpbox-linux.name"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.jumpbox-linux.azurerm_network_interface.nic.id",
                                "module.jumpbox-linux.azurerm_network_interface.nic"
                            ]
                        },
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
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "size": {
                            "references": [
                                "var.vm_size"
                            ]
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "references": [
                                        "var.source_image_reference.offer",
                                        "var.source_image_reference"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.source_image_reference.publisher",
                                        "var.source_image_reference"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.source_image_reference.sku",
                                        "var.source_image_reference"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.source_image_reference.version",
                                        "var.source_image_reference"
                                    ]
                                }
                            }
                        ],
                        "zone": {
                            "references": [
                                "var.zone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "linux",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_interface.nic",
                    "expressions": {
                        "enable_accelerated_networking": {
                            "references": [
                                "var.enable_accelerated_networking"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "private_ip_address": {
                                    "references": [
                                        "var.private_ip_address_allocation",
                                        "var.private_ip_address"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "references": [
                                        "var.private_ip_address_allocation"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.jumpbox-linux.azurerm_public_ip.pip.id",
                                        "module.jumpbox-linux.azurerm_public_ip.pip"
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
                            "references": [
                                "root.jumpbox-linux.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "address": "module.jumpbox-linux.azurerm_network_interface_security_group_association.example",
                    "expressions": {
                        "network_interface_id": {
                            "references": [
                                "module.jumpbox-linux.azurerm_network_interface.nic.id",
                                "module.jumpbox-linux.azurerm_network_interface.nic"
                            ]
                        },
                        "network_security_group_id": {
                            "references": [
                                "module.jumpbox-linux.azurerm_network_security_group.nsg.id",
                                "module.jumpbox-linux.azurerm_network_security_group.nsg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_security_group_association"
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_security_group.nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.jumpbox-linux.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "address": "module.jumpbox-linux.azurerm_network_security_rule.nsg-rule",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "22",
                                "80"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "remote_access"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.jumpbox-linux.azurerm_network_security_group.nsg.name",
                                "module.jumpbox-linux.azurerm_network_security_group.nsg"
                            ]
                        },
                        "priority": {
                            "constant_value": 100
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "references": [
                                "var.source_address_prefix"
                            ]
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-rule",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.jumpbox-linux.azurerm_public_ip.pip",
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
                            "references": [
                                "root.jumpbox-linux.name"
                            ]
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
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.webserver.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "expressions": {
                        "daily_recurrence_time": {
                            "constant_value": "0200"
                        },
                        "enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "module.webserver.azurerm_linux_virtual_machine.linux.location",
                                "module.webserver.azurerm_linux_virtual_machine.linux"
                            ]
                        },
                        "notification_settings": [
                            {
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "timezone": {
                            "constant_value": "Tokyo Standard Time"
                        },
                        "virtual_machine_id": {
                            "references": [
                                "module.webserver.azurerm_linux_virtual_machine.linux.id",
                                "module.webserver.azurerm_linux_virtual_machine.linux"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule"
                },
                {
                    "address": "module.webserver.azurerm_linux_virtual_machine.linux",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.webserver.admin_username"
                            ]
                        },
                        "availability_set_id": {
                            "references": [
                                "var.availability_set_id"
                            ]
                        },
                        "boot_diagnostics": [
                            {
                                "storage_account_uri": {
                                    "constant_value": null
                                }
                            }
                        ],
                        "custom_data": {
                            "references": [
                                "root.webserver.custom_data",
                                "root.webserver.custom_data"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.webserver.azurerm_network_interface.nic.id",
                                "module.webserver.azurerm_network_interface.nic"
                            ]
                        },
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
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "size": {
                            "references": [
                                "var.vm_size"
                            ]
                        },
                        "source_image_reference": [
                            {
                                "offer": {
                                    "references": [
                                        "var.source_image_reference.offer",
                                        "var.source_image_reference"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.source_image_reference.publisher",
                                        "var.source_image_reference"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.source_image_reference.sku",
                                        "var.source_image_reference"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.source_image_reference.version",
                                        "var.source_image_reference"
                                    ]
                                }
                            }
                        ],
                        "zone": {
                            "references": [
                                "var.zone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "linux",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "module.webserver.azurerm_network_interface.nic",
                    "expressions": {
                        "enable_accelerated_networking": {
                            "references": [
                                "var.enable_accelerated_networking"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "private_ip_address": {
                                    "references": [
                                        "var.private_ip_address_allocation",
                                        "var.private_ip_address"
                                    ]
                                },
                                "private_ip_address_allocation": {
                                    "references": [
                                        "var.private_ip_address_allocation"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.webserver.azurerm_public_ip.pip.id",
                                        "module.webserver.azurerm_public_ip.pip"
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
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "address": "module.webserver.azurerm_network_interface_security_group_association.example",
                    "expressions": {
                        "network_interface_id": {
                            "references": [
                                "module.webserver.azurerm_network_interface.nic.id",
                                "module.webserver.azurerm_network_interface.nic"
                            ]
                        },
                        "network_security_group_id": {
                            "references": [
                                "module.webserver.azurerm_network_security_group.nsg.id",
                                "module.webserver.azurerm_network_security_group.nsg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_security_group_association"
                },
                {
                    "address": "module.webserver.azurerm_network_security_group.nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
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
                    "address": "module.webserver.azurerm_network_security_rule.nsg-rule",
                    "expressions": {
                        "access": {
                            "constant_value": "Allow"
                        },
                        "destination_address_prefix": {
                            "constant_value": "*"
                        },
                        "destination_port_ranges": {
                            "constant_value": [
                                "22",
                                "80"
                            ]
                        },
                        "direction": {
                            "constant_value": "Inbound"
                        },
                        "name": {
                            "constant_value": "remote_access"
                        },
                        "network_security_group_name": {
                            "references": [
                                "module.webserver.azurerm_network_security_group.nsg.name",
                                "module.webserver.azurerm_network_security_group.nsg"
                            ]
                        },
                        "priority": {
                            "constant_value": 100
                        },
                        "protocol": {
                            "constant_value": "Tcp"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "source_address_prefix": {
                            "references": [
                                "var.source_address_prefix"
                            ]
                        },
                        "source_port_range": {
                            "constant_value": "*"
                        }
                    },
                    "mode": "managed",
                    "name": "nsg-rule",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_security_rule"
                },
                {
                    "address": "module.webserver.azurerm_public_ip.pip",
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
                            "references": [
                                "root.webserver.name"
                            ]
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
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                }
            ],
            "variables": {
                "rg": {
                    "default": {
                        "location": "japaneast",
                        "name": "rg-webapp-appgw"
                    }
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
                                "ip_connect_enabled": true,
                                "kerberos_enabled": false,
                                "location": "japaneast",
                                "name": "bastion",
                                "resource_group_name": "rg-appgw",
                                "scale_units": 2,
                                "shareable_link_enabled": true,
                                "sku": "Standard",
                                "tags": null,
                                "timeouts": null,
                                "tunneling_enabled": true,
                                "virtual_network_id": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_group.bastion",
                            "mode": "managed",
                            "name": "bastion",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "security_rule": []
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "japaneast",
                                "name": "nsg-bastion",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-azurecloud-out",
                            "mode": "managed",
                            "name": "bastion-azurecloud-out",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false
                                ]
                            },
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "AzureCloud",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "443"
                                ],
                                "direction": "Outbound",
                                "name": "AllowAzureCloudOutbound",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 130,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
                            "mode": "managed",
                            "name": "bastion-bastioncommunication-out",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "VirtualNetwork",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "5701",
                                    "8080"
                                ],
                                "direction": "Outbound",
                                "name": "AllowBastionCommunication",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 140,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "VirtualNetwork",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-gsi-out",
                            "mode": "managed",
                            "name": "bastion-gsi-out",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false
                                ]
                            },
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "Internet",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "80"
                                ],
                                "direction": "Outbound",
                                "name": "AllowGetSesssionInformation",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 150,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-gwm",
                            "mode": "managed",
                            "name": "bastion-gwm",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": "443",
                                "destination_port_ranges": null,
                                "direction": "Inbound",
                                "name": "AllowGatewayManagerInbound",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 130,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "GatewayManager",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-hc",
                            "mode": "managed",
                            "name": "bastion-hc",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "VirtualNetwork",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "5701",
                                    "8080"
                                ],
                                "direction": "Inbound",
                                "name": "AllowBastionHostCommunication",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 150,
                                "protocol": "*",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "VirtualNetwork",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-https",
                            "mode": "managed",
                            "name": "bastion-https",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": "443",
                                "destination_port_ranges": null,
                                "direction": "Inbound",
                                "name": "AllowHttpsInbound",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 120,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "Internet",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-lb",
                            "mode": "managed",
                            "name": "bastion-lb",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": "443",
                                "destination_port_ranges": null,
                                "direction": "Inbound",
                                "name": "AllowAzureLoadBalancerInbound",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 140,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "AzureLoadBalancer",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_network_security_rule.bastion-sshrdp-out",
                            "mode": "managed",
                            "name": "bastion-sshrdp-out",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_network_security_rule",
                            "values": {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "VirtualNetwork",
                                "destination_address_prefixes": null,
                                "destination_application_security_group_ids": null,
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "22",
                                    "3389"
                                ],
                                "direction": "Outbound",
                                "name": "AllowSshRdpOutbound",
                                "network_security_group_name": "nsg-bastion",
                                "priority": 120,
                                "protocol": "*",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
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
                                "location": "japaneast",
                                "name": "pip-bastion",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-appgw",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.bastion.azurerm_subnet_network_security_group_association.hub-bastion",
                            "mode": "managed",
                            "name": "hub-bastion",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_subnet_network_security_group_association",
                            "values": {
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.jumpbox",
                    "resources": [
                        {
                            "address": "module.jumpbox.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                            "mode": "managed",
                            "name": "autoshutdown",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "notification_settings": [
                                    {}
                                ]
                            },
                            "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                            "values": {
                                "daily_recurrence_time": "0200",
                                "enabled": true,
                                "location": "japaneast",
                                "notification_settings": [
                                    {
                                        "email": null,
                                        "enabled": false,
                                        "time_in_minutes": 30,
                                        "webhook_url": null
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": "Tokyo Standard Time"
                            }
                        },
                        {
                            "address": "module.jumpbox.azurerm_network_interface.nic",
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
                                        "name": "configuration",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "japaneast",
                                "name": "nic-vmjumpbox",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox.azurerm_network_interface_security_group_association.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_interface_security_group_association",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox.azurerm_network_security_group.nsg",
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
                                "location": "japaneast",
                                "name": "nsg-vmjumpbox",
                                "resource_group_name": "rg-appgw",
                                "security_rule": [
                                    {
                                        "access": "Allow",
                                        "description": "",
                                        "destination_address_prefix": "*",
                                        "destination_address_prefixes": [],
                                        "destination_application_security_group_ids": [],
                                        "destination_port_range": "3389",
                                        "destination_port_ranges": [],
                                        "direction": "Inbound",
                                        "name": "remote_access",
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
                        },
                        {
                            "address": "module.jumpbox.azurerm_public_ip.pip",
                            "mode": "managed",
                            "name": "pip",
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
                                "location": "japaneast",
                                "name": "pip-vmjumpbox",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-appgw",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.jumpbox.azurerm_windows_virtual_machine.windows",
                            "mode": "managed",
                            "name": "windows",
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
                                "admin_password": "Password1!",
                                "admin_username": "adminuser",
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
                                "location": "japaneast",
                                "max_bid_price": -1,
                                "name": "vmjumpbox",
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
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "AutomaticByOS",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "rg-appgw",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_B2ms",
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
                                "zone": "1"
                            }
                        }
                    ]
                },
                {
                    "address": "module.jumpbox-linux",
                    "resources": [
                        {
                            "address": "module.jumpbox-linux.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                            "mode": "managed",
                            "name": "autoshutdown",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "notification_settings": [
                                    {}
                                ]
                            },
                            "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                            "values": {
                                "daily_recurrence_time": "0200",
                                "enabled": true,
                                "location": "japaneast",
                                "notification_settings": [
                                    {
                                        "email": null,
                                        "enabled": false,
                                        "time_in_minutes": 30,
                                        "webhook_url": null
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": "Tokyo Standard Time"
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux",
                            "mode": "managed",
                            "name": "linux",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "admin_password": true,
                                "admin_ssh_key": [
                                    {}
                                ],
                                "boot_diagnostics": [
                                    {}
                                ],
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
                                "termination_notification": []
                            },
                            "type": "azurerm_linux_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "admin_password": "Password1!",
                                "admin_ssh_key": [
                                    {
                                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                        "username": "adminuser"
                                    }
                                ],
                                "admin_username": "adminuser",
                                "allow_extension_operations": true,
                                "availability_set_id": null,
                                "boot_diagnostics": [
                                    {
                                        "storage_account_uri": null
                                    }
                                ],
                                "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                                "capacity_reservation_group_id": null,
                                "custom_data": "dGVzdA==",
                                "dedicated_host_group_id": null,
                                "dedicated_host_id": null,
                                "disable_password_authentication": false,
                                "edge_zone": null,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extensions_time_budget": "PT1H30M",
                                "gallery_application": [],
                                "identity": [],
                                "license_type": null,
                                "location": "japaneast",
                                "max_bid_price": -1,
                                "name": "vmjumpboxlinux",
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
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "ImageDefault",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "rg-appgw",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_B2ms",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "0001-com-ubuntu-server-focal",
                                        "publisher": "Canonical",
                                        "sku": "20_04-lts-gen2",
                                        "version": "latest"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "user_data": null,
                                "virtual_machine_scale_set_id": null,
                                "vm_agent_platform_updates_enabled": false,
                                "vtpm_enabled": null,
                                "zone": null
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_network_interface.nic",
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
                                "private_ip_addresses": []
                            },
                            "type": "azurerm_network_interface",
                            "values": {
                                "auxiliary_mode": null,
                                "auxiliary_sku": null,
                                "edge_zone": null,
                                "enable_accelerated_networking": false,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "configuration",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "japaneast",
                                "name": "nic-vmjumpboxlinux",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_network_interface_security_group_association.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_interface_security_group_association",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_network_security_group.nsg",
                            "mode": "managed",
                            "name": "nsg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "security_rule": []
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "japaneast",
                                "name": "nsg-vmjumpboxlinux",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_network_security_rule.nsg-rule",
                            "mode": "managed",
                            "name": "nsg-rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false,
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
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "22",
                                    "80"
                                ],
                                "direction": "Inbound",
                                "name": "remote_access",
                                "network_security_group_name": "nsg-vmjumpboxlinux",
                                "priority": 100,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.jumpbox-linux.azurerm_public_ip.pip",
                            "mode": "managed",
                            "name": "pip",
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
                                "location": "japaneast",
                                "name": "pip-vmjumpboxlinux",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-appgw",
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
                    "address": "module.webserver",
                    "resources": [
                        {
                            "address": "module.webserver.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                            "mode": "managed",
                            "name": "autoshutdown",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "notification_settings": [
                                    {}
                                ]
                            },
                            "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                            "values": {
                                "daily_recurrence_time": "0200",
                                "enabled": true,
                                "location": "japaneast",
                                "notification_settings": [
                                    {
                                        "email": null,
                                        "enabled": false,
                                        "time_in_minutes": 30,
                                        "webhook_url": null
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "timezone": "Tokyo Standard Time"
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_linux_virtual_machine.linux",
                            "mode": "managed",
                            "name": "linux",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "additional_capabilities": [],
                                "admin_password": true,
                                "admin_ssh_key": [
                                    {}
                                ],
                                "boot_diagnostics": [
                                    {}
                                ],
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
                                "termination_notification": []
                            },
                            "type": "azurerm_linux_virtual_machine",
                            "values": {
                                "additional_capabilities": [],
                                "admin_password": "Password1!",
                                "admin_ssh_key": [
                                    {
                                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                        "username": "adminuser"
                                    }
                                ],
                                "admin_username": "adminuser",
                                "allow_extension_operations": true,
                                "availability_set_id": null,
                                "boot_diagnostics": [
                                    {
                                        "storage_account_uri": null
                                    }
                                ],
                                "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                                "capacity_reservation_group_id": null,
                                "custom_data": "c3VkbyBhcHQgdXBkYXRlICYmIHN1ZG8gYXB0IGluc3RhbGwgLXkgbmdpbng=",
                                "dedicated_host_group_id": null,
                                "dedicated_host_id": null,
                                "disable_password_authentication": false,
                                "edge_zone": null,
                                "encryption_at_host_enabled": null,
                                "eviction_policy": null,
                                "extensions_time_budget": "PT1H30M",
                                "gallery_application": [],
                                "identity": [],
                                "license_type": null,
                                "location": "japaneast",
                                "max_bid_price": -1,
                                "name": "vmwebserver",
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
                                "os_image_notification": [],
                                "patch_assessment_mode": "ImageDefault",
                                "patch_mode": "ImageDefault",
                                "plan": [],
                                "platform_fault_domain": -1,
                                "priority": "Regular",
                                "provision_vm_agent": true,
                                "proximity_placement_group_id": null,
                                "reboot_setting": null,
                                "resource_group_name": "rg-appgw",
                                "secret": [],
                                "secure_boot_enabled": null,
                                "size": "Standard_B2ms",
                                "source_image_id": null,
                                "source_image_reference": [
                                    {
                                        "offer": "0001-com-ubuntu-server-focal",
                                        "publisher": "Canonical",
                                        "sku": "20_04-lts-gen2",
                                        "version": "latest"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "user_data": null,
                                "virtual_machine_scale_set_id": null,
                                "vm_agent_platform_updates_enabled": false,
                                "vtpm_enabled": null,
                                "zone": null
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_network_interface.nic",
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
                                "private_ip_addresses": []
                            },
                            "type": "azurerm_network_interface",
                            "values": {
                                "auxiliary_mode": null,
                                "auxiliary_sku": null,
                                "edge_zone": null,
                                "enable_accelerated_networking": false,
                                "internal_dns_name_label": null,
                                "ip_configuration": [
                                    {
                                        "name": "configuration",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_ip_address_version": "IPv4"
                                    }
                                ],
                                "location": "japaneast",
                                "name": "nic-vmwebserver",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_network_interface_security_group_association.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_network_interface_security_group_association",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_network_security_group.nsg",
                            "mode": "managed",
                            "name": "nsg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "security_rule": []
                            },
                            "type": "azurerm_network_security_group",
                            "values": {
                                "location": "japaneast",
                                "name": "nsg-vmwebserver",
                                "resource_group_name": "rg-appgw",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_network_security_rule.nsg-rule",
                            "mode": "managed",
                            "name": "nsg-rule",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "destination_port_ranges": [
                                    false,
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
                                "destination_port_range": null,
                                "destination_port_ranges": [
                                    "22",
                                    "80"
                                ],
                                "direction": "Inbound",
                                "name": "remote_access",
                                "network_security_group_name": "nsg-vmwebserver",
                                "priority": 100,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-appgw",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.webserver.azurerm_public_ip.pip",
                            "mode": "managed",
                            "name": "pip",
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
                                "location": "japaneast",
                                "name": "pip-vmwebserver",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-appgw",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        }
                    ]
                }
            ],
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
                            },
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
                        "frontend_ip_configuration": [
                            {},
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
                        "probe": [],
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
                            },
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
                        "waf_configuration": []
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "ip_addresses": [],
                                "name": "vnet-example-beap-vm"
                            },
                            {
                                "ip_addresses": [],
                                "name": "vnet-example-beap-webapps1"
                            },
                            {
                                "ip_addresses": [],
                                "name": "vnet-example-beap-webapps2"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "vnet-example-be-htst",
                                "path": "",
                                "pick_host_name_from_backend_address": true,
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
                                "name": "vnet-example-be-htst-2",
                                "path": "/",
                                "pick_host_name_from_backend_address": true,
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
                                "name": "vnet-example-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            },
                            {
                                "name": "vnet-example-feip-private",
                                "private_ip_address": "10.254.0.4",
                                "private_ip_address_allocation": "Static",
                                "private_link_configuration_name": null,
                                "public_ip_address_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "vnet-example-8080-feport",
                                "port": 8080
                            },
                            {
                                "name": "vnet-example-feport",
                                "port": 80
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
                                "frontend_ip_configuration_name": "vnet-example-feip",
                                "frontend_port_name": "vnet-example-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "vnet-example-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            },
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "vnet-example-feip-private",
                                "frontend_port_name": "vnet-example-8080-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "vnet-example-httplstn-private",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "japaneast",
                        "name": "appgw-example",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "vnet-example-httplstn",
                                "name": "vnet-example-rqrt",
                                "priority": 1000,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "PathBasedRouting",
                                "url_path_map_name": "my-url-path-map"
                            },
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "vnet-example-httplstn-private",
                                "name": "vnet-example-private-rqrt",
                                "priority": 2000,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "PathBasedRouting",
                                "url_path_map_name": "my-url-path-map-vm"
                            }
                        ],
                        "resource_group_name": "rg-appgw",
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": "vnet-example-beap-webapps1",
                                "default_backend_http_settings_name": "vnet-example-be-htst",
                                "default_redirect_configuration_name": null,
                                "default_rewrite_rule_set_name": null,
                                "name": "my-url-path-map",
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": "vnet-example-beap-webapps2",
                                        "backend_http_settings_name": "vnet-example-be-htst-2",
                                        "firewall_policy_id": null,
                                        "name": "my-path-rule",
                                        "paths": [
                                            "/staging/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    }
                                ]
                            },
                            {
                                "default_backend_address_pool_name": "vnet-example-beap-vm",
                                "default_backend_http_settings_name": "vnet-example-be-htst",
                                "default_redirect_configuration_name": null,
                                "default_rewrite_rule_set_name": null,
                                "name": "my-url-path-map-vm",
                                "path_rule": [
                                    {
                                        "backend_address_pool_name": "vnet-example-beap-vm",
                                        "backend_http_settings_name": "vnet-example-be-htst-2",
                                        "firewall_policy_id": null,
                                        "name": "my-path-rule",
                                        "paths": [
                                            "/staging/*"
                                        ],
                                        "redirect_configuration_name": null,
                                        "rewrite_rule_set_name": null
                                    }
                                ]
                            }
                        ],
                        "waf_configuration": [],
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_linux_web_app.app1",
                    "mode": "managed",
                    "name": "app1",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": [],
                        "custom_domain_verification_id": true,
                        "identity": [],
                        "logs": [],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_registry_password": true
                                    }
                                ],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_linux_web_app",
                    "values": {
                        "app_settings": null,
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": false,
                        "identity": [],
                        "location": "japaneast",
                        "logs": [],
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-appgw",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "application_stack": [
                                    {
                                        "docker_image": "tsubasaxzzz/nginx-0829",
                                        "docker_image_name": null,
                                        "docker_image_tag": "app1",
                                        "dotnet_version": null,
                                        "go_version": null,
                                        "java_server": null,
                                        "java_server_version": null,
                                        "java_version": null,
                                        "node_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "ruby_version": null
                                    }
                                ],
                                "auto_heal_enabled": null,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "Disabled",
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [],
                                "ip_restriction_default_action": "Allow",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": true,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_linux_web_app.app2",
                    "mode": "managed",
                    "name": "app2",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "connection_string": [],
                        "custom_domain_verification_id": true,
                        "identity": [],
                        "logs": [],
                        "outbound_ip_address_list": [],
                        "possible_outbound_ip_address_list": [],
                        "site_config": [
                            {
                                "application_stack": [
                                    {
                                        "docker_registry_password": true
                                    }
                                ],
                                "auto_heal_setting": [],
                                "cors": [],
                                "default_documents": [],
                                "ip_restriction": [],
                                "scm_ip_restriction": []
                            }
                        ],
                        "site_credential": true,
                        "sticky_settings": [],
                        "storage_account": []
                    },
                    "type": "azurerm_linux_web_app",
                    "values": {
                        "app_settings": null,
                        "auth_settings": [],
                        "auth_settings_v2": [],
                        "backup": [],
                        "client_affinity_enabled": false,
                        "client_certificate_enabled": false,
                        "client_certificate_exclusion_paths": null,
                        "client_certificate_mode": "Required",
                        "connection_string": [],
                        "enabled": true,
                        "ftp_publish_basic_authentication_enabled": true,
                        "https_only": false,
                        "identity": [],
                        "location": "japaneast",
                        "logs": [],
                        "public_network_access_enabled": true,
                        "resource_group_name": "rg-appgw",
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
                                "application_stack": [
                                    {
                                        "docker_image": "tsubasaxzzz/nginx-0829",
                                        "docker_image_name": null,
                                        "docker_image_tag": "app2",
                                        "dotnet_version": null,
                                        "go_version": null,
                                        "java_server": null,
                                        "java_server_version": null,
                                        "java_version": null,
                                        "node_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "ruby_version": null
                                    }
                                ],
                                "auto_heal_enabled": null,
                                "auto_heal_setting": [],
                                "container_registry_managed_identity_client_id": null,
                                "container_registry_use_managed_identity": false,
                                "cors": [],
                                "ftps_state": "Disabled",
                                "health_check_path": null,
                                "http2_enabled": false,
                                "ip_restriction": [],
                                "ip_restriction_default_action": "Allow",
                                "load_balancing_mode": "LeastRequests",
                                "local_mysql_enabled": false,
                                "managed_pipeline_mode": "Integrated",
                                "minimum_tls_version": "1.2",
                                "remote_debugging_enabled": false,
                                "scm_ip_restriction": [],
                                "scm_ip_restriction_default_action": "Allow",
                                "scm_minimum_tls_version": "1.2",
                                "scm_use_main_ip_restriction": false,
                                "use_32_bit_worker": true,
                                "vnet_route_all_enabled": false,
                                "websockets_enabled": false
                            }
                        ],
                        "sticky_settings": [],
                        "storage_account": [],
                        "tags": null,
                        "timeouts": null,
                        "virtual_network_subnet_id": null,
                        "webdeploy_publish_basic_authentication_enabled": true
                    }
                },
                {
                    "address": "azurerm_public_ip.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "zones": [
                            false,
                            false,
                            false
                        ]
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
                        "location": "japaneast",
                        "name": "pip-appgw",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-appgw",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": [
                            "1",
                            "2",
                            "3"
                        ]
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
                        "location": "japaneast",
                        "managed_by": null,
                        "name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_service_plan.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_service_plan",
                    "values": {
                        "app_service_environment_id": null,
                        "location": "japaneast",
                        "os_type": "Linux",
                        "per_site_scaling_enabled": false,
                        "resource_group_name": "rg-appgw",
                        "sku_name": "S1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
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
                            "10.254.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-backend",
                        "resource_group_name": "rg-appgw",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet.bastion",
                    "mode": "managed",
                    "name": "bastion",
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
                            "10.254.255.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureBastionSubnet",
                        "resource_group_name": "rg-appgw",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
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
                        "name": "snet-frontend",
                        "resource_group_name": "rg-appgw",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
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
                        "location": "japaneast",
                        "name": "vnet-example",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "random_string.uniqstr",
                    "mode": "managed",
                    "name": "uniqstr",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 2,
                    "sensitive_values": {
                        "keepers": {}
                    },
                    "type": "random_string",
                    "values": {
                        "keepers": {
                            "resource_group_name": "rg-appgw"
                        },
                        "length": 6,
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
                        "ip_connect_enabled": true,
                        "kerberos_enabled": false,
                        "location": "japaneast",
                        "name": "bastion",
                        "resource_group_name": "rg-appgw",
                        "scale_units": 2,
                        "shareable_link_enabled": true,
                        "sku": "Standard",
                        "tags": null,
                        "timeouts": null,
                        "tunneling_enabled": true,
                        "virtual_network_id": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_group.bastion",
                    "mode": "managed",
                    "name": "bastion",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "japaneast",
                        "name": "nsg-bastion",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-azurecloud-out",
                    "mode": "managed",
                    "name": "bastion-azurecloud-out",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "AzureCloud",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "443"
                        ],
                        "direction": "Outbound",
                        "name": "AllowAzureCloudOutbound",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 130,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
                    "mode": "managed",
                    "name": "bastion-bastioncommunication-out",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "VirtualNetwork",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "5701",
                            "8080"
                        ],
                        "direction": "Outbound",
                        "name": "AllowBastionCommunication",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 140,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "VirtualNetwork",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-gsi-out",
                    "mode": "managed",
                    "name": "bastion-gsi-out",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "Internet",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "80"
                        ],
                        "direction": "Outbound",
                        "name": "AllowGetSesssionInformation",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 150,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-gwm",
                    "mode": "managed",
                    "name": "bastion-gwm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "AllowGatewayManagerInbound",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 130,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "GatewayManager",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-hc",
                    "mode": "managed",
                    "name": "bastion-hc",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "VirtualNetwork",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "5701",
                            "8080"
                        ],
                        "direction": "Inbound",
                        "name": "AllowBastionHostCommunication",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 150,
                        "protocol": "*",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "VirtualNetwork",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-https",
                    "mode": "managed",
                    "name": "bastion-https",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "AllowHttpsInbound",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 120,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "Internet",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-lb",
                    "mode": "managed",
                    "name": "bastion-lb",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "*",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": "443",
                        "destination_port_ranges": null,
                        "direction": "Inbound",
                        "name": "AllowAzureLoadBalancerInbound",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 140,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "AzureLoadBalancer",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_network_security_rule.bastion-sshrdp-out",
                    "mode": "managed",
                    "name": "bastion-sshrdp-out",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_network_security_rule",
                    "values": {
                        "access": "Allow",
                        "description": "",
                        "destination_address_prefix": "VirtualNetwork",
                        "destination_address_prefixes": null,
                        "destination_application_security_group_ids": null,
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "22",
                            "3389"
                        ],
                        "direction": "Outbound",
                        "name": "AllowSshRdpOutbound",
                        "network_security_group_name": "nsg-bastion",
                        "priority": 120,
                        "protocol": "*",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
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
                        "location": "japaneast",
                        "name": "pip-bastion",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-appgw",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.bastion.azurerm_subnet_network_security_group_association.hub-bastion",
                    "mode": "managed",
                    "name": "hub-bastion",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "notification_settings": [
                            {}
                        ]
                    },
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                    "values": {
                        "daily_recurrence_time": "0200",
                        "enabled": true,
                        "location": "japaneast",
                        "notification_settings": [
                            {
                                "email": null,
                                "enabled": false,
                                "time_in_minutes": 30,
                                "webhook_url": null
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": "Tokyo Standard Time"
                    }
                },
                {
                    "address": "module.jumpbox.azurerm_network_interface.nic",
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
                                "name": "configuration",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "japaneast",
                        "name": "nic-vmjumpbox",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox.azurerm_network_interface_security_group_association.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox.azurerm_network_security_group.nsg",
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
                        "location": "japaneast",
                        "name": "nsg-vmjumpbox",
                        "resource_group_name": "rg-appgw",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "3389",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "remote_access",
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
                },
                {
                    "address": "module.jumpbox.azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
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
                        "location": "japaneast",
                        "name": "pip-vmjumpbox",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-appgw",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.jumpbox.azurerm_windows_virtual_machine.windows",
                    "mode": "managed",
                    "name": "windows",
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
                        "admin_password": "Password1!",
                        "admin_username": "adminuser",
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
                        "location": "japaneast",
                        "max_bid_price": -1,
                        "name": "vmjumpbox",
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
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "AutomaticByOS",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "rg-appgw",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B2ms",
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
                        "zone": "1"
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "notification_settings": [
                            {}
                        ]
                    },
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                    "values": {
                        "daily_recurrence_time": "0200",
                        "enabled": true,
                        "location": "japaneast",
                        "notification_settings": [
                            {
                                "email": null,
                                "enabled": false,
                                "time_in_minutes": 30,
                                "webhook_url": null
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": "Tokyo Standard Time"
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux",
                    "mode": "managed",
                    "name": "linux",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
                        "boot_diagnostics": [
                            {}
                        ],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": "Password1!",
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "adminuser"
                            }
                        ],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [
                            {
                                "storage_account_uri": null
                            }
                        ],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "dGVzdA==",
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": false,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "japaneast",
                        "max_bid_price": -1,
                        "name": "vmjumpboxlinux",
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
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "ImageDefault",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "rg-appgw",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B2ms",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-focal",
                                "publisher": "Canonical",
                                "sku": "20_04-lts-gen2",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "zone": null
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_interface.nic",
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
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "enable_accelerated_networking": false,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "configuration",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "japaneast",
                        "name": "nic-vmjumpboxlinux",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_interface_security_group_association.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_security_group.nsg",
                    "mode": "managed",
                    "name": "nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "japaneast",
                        "name": "nsg-vmjumpboxlinux",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_network_security_rule.nsg-rule",
                    "mode": "managed",
                    "name": "nsg-rule",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false,
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
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "22",
                            "80"
                        ],
                        "direction": "Inbound",
                        "name": "remote_access",
                        "network_security_group_name": "nsg-vmjumpboxlinux",
                        "priority": 100,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.jumpbox-linux.azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
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
                        "location": "japaneast",
                        "name": "pip-vmjumpboxlinux",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-appgw",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "mode": "managed",
                    "name": "autoshutdown",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "notification_settings": [
                            {}
                        ]
                    },
                    "type": "azurerm_dev_test_global_vm_shutdown_schedule",
                    "values": {
                        "daily_recurrence_time": "0200",
                        "enabled": true,
                        "location": "japaneast",
                        "notification_settings": [
                            {
                                "email": null,
                                "enabled": false,
                                "time_in_minutes": 30,
                                "webhook_url": null
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "timezone": "Tokyo Standard Time"
                    }
                },
                {
                    "address": "module.webserver.azurerm_linux_virtual_machine.linux",
                    "mode": "managed",
                    "name": "linux",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [
                            {}
                        ],
                        "boot_diagnostics": [
                            {}
                        ],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_password": "Password1!",
                        "admin_ssh_key": [
                            {
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                                "username": "adminuser"
                            }
                        ],
                        "admin_username": "adminuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [
                            {
                                "storage_account_uri": null
                            }
                        ],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "c3VkbyBhcHQgdXBkYXRlICYmIHN1ZG8gYXB0IGluc3RhbGwgLXkgbmdpbng=",
                        "dedicated_host_group_id": null,
                        "dedicated_host_id": null,
                        "disable_password_authentication": false,
                        "edge_zone": null,
                        "encryption_at_host_enabled": null,
                        "eviction_policy": null,
                        "extensions_time_budget": "PT1H30M",
                        "gallery_application": [],
                        "identity": [],
                        "license_type": null,
                        "location": "japaneast",
                        "max_bid_price": -1,
                        "name": "vmwebserver",
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
                        "os_image_notification": [],
                        "patch_assessment_mode": "ImageDefault",
                        "patch_mode": "ImageDefault",
                        "plan": [],
                        "platform_fault_domain": -1,
                        "priority": "Regular",
                        "provision_vm_agent": true,
                        "proximity_placement_group_id": null,
                        "reboot_setting": null,
                        "resource_group_name": "rg-appgw",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B2ms",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-focal",
                                "publisher": "Canonical",
                                "sku": "20_04-lts-gen2",
                                "version": "latest"
                            }
                        ],
                        "tags": null,
                        "timeouts": null,
                        "user_data": null,
                        "virtual_machine_scale_set_id": null,
                        "vm_agent_platform_updates_enabled": false,
                        "vtpm_enabled": null,
                        "zone": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_network_interface.nic",
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
                        "private_ip_addresses": []
                    },
                    "type": "azurerm_network_interface",
                    "values": {
                        "auxiliary_mode": null,
                        "auxiliary_sku": null,
                        "edge_zone": null,
                        "enable_accelerated_networking": false,
                        "internal_dns_name_label": null,
                        "ip_configuration": [
                            {
                                "name": "configuration",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4"
                            }
                        ],
                        "location": "japaneast",
                        "name": "nic-vmwebserver",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_network_interface_security_group_association.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_network_security_group.nsg",
                    "mode": "managed",
                    "name": "nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "security_rule": []
                    },
                    "type": "azurerm_network_security_group",
                    "values": {
                        "location": "japaneast",
                        "name": "nsg-vmwebserver",
                        "resource_group_name": "rg-appgw",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_network_security_rule.nsg-rule",
                    "mode": "managed",
                    "name": "nsg-rule",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "destination_port_ranges": [
                            false,
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
                        "destination_port_range": null,
                        "destination_port_ranges": [
                            "22",
                            "80"
                        ],
                        "direction": "Inbound",
                        "name": "remote_access",
                        "network_security_group_name": "nsg-vmwebserver",
                        "priority": 100,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-appgw",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.webserver.azurerm_public_ip.pip",
                    "mode": "managed",
                    "name": "pip",
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
                        "location": "japaneast",
                        "name": "pip-vmwebserver",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-appgw",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "ip_configuration",
                0,
                "name"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.webserver.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_service_plan.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox-linux.azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "default_hostname"
            ],
            "resource": "azurerm_linux_web_app.app2"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "name"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.bastion.azurerm_network_security_group.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_service_plan.example"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.jumpbox.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.backend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.jumpbox.azurerm_windows_virtual_machine.windows"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.jumpbox.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_network_security_group.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.webserver.azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_public_ip.bastion"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox.azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "default_hostname"
            ],
            "resource": "azurerm_linux_web_app.app1"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_string.uniqstr"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.jumpbox.azurerm_windows_virtual_machine.windows"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.bastion"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.jumpbox-linux.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_linux_virtual_machine.linux"
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
                            "ip_addresses": [],
                            "name": "vnet-example-beap-vm"
                        },
                        {
                            "ip_addresses": [],
                            "name": "vnet-example-beap-webapps1"
                        },
                        {
                            "ip_addresses": [],
                            "name": "vnet-example-beap-webapps2"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "vnet-example-be-htst",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
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
                            "name": "vnet-example-be-htst-2",
                            "path": "/",
                            "pick_host_name_from_backend_address": true,
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
                            "name": "vnet-example-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        },
                        {
                            "name": "vnet-example-feip-private",
                            "private_ip_address": "10.254.0.4",
                            "private_ip_address_allocation": "Static",
                            "private_link_configuration_name": null,
                            "public_ip_address_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "vnet-example-8080-feport",
                            "port": 8080
                        },
                        {
                            "name": "vnet-example-feport",
                            "port": 80
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
                            "frontend_ip_configuration_name": "vnet-example-feip",
                            "frontend_port_name": "vnet-example-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "vnet-example-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        },
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "vnet-example-feip-private",
                            "frontend_port_name": "vnet-example-8080-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "vnet-example-httplstn-private",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "japaneast",
                    "name": "appgw-example",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "vnet-example-httplstn",
                            "name": "vnet-example-rqrt",
                            "priority": 1000,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "my-url-path-map"
                        },
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "vnet-example-httplstn-private",
                            "name": "vnet-example-private-rqrt",
                            "priority": 2000,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "my-url-path-map-vm"
                        }
                    ],
                    "resource_group_name": "rg-appgw",
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_name": "vnet-example-beap-webapps1",
                            "default_backend_http_settings_name": "vnet-example-be-htst",
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "my-url-path-map",
                            "path_rule": [
                                {
                                    "backend_address_pool_name": "vnet-example-beap-webapps2",
                                    "backend_http_settings_name": "vnet-example-be-htst-2",
                                    "firewall_policy_id": null,
                                    "name": "my-path-rule",
                                    "paths": [
                                        "/staging/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        },
                        {
                            "default_backend_address_pool_name": "vnet-example-beap-vm",
                            "default_backend_http_settings_name": "vnet-example-be-htst",
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": null,
                            "name": "my-url-path-map-vm",
                            "path_rule": [
                                {
                                    "backend_address_pool_name": "vnet-example-beap-vm",
                                    "backend_http_settings_name": "vnet-example-be-htst-2",
                                    "firewall_policy_id": null,
                                    "name": "my-path-rule",
                                    "paths": [
                                        "/staging/*"
                                    ],
                                    "redirect_configuration_name": null,
                                    "rewrite_rule_set_name": null
                                }
                            ]
                        }
                    ],
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
                        },
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
                    "frontend_ip_configuration": [
                        {},
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
                    "probe": [],
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
                        },
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
                    "waf_configuration": []
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": true,
                            "id": true,
                            "ip_addresses": []
                        },
                        {
                            "fqdns": true,
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
                        },
                        {
                            "id": true,
                            "private_link_configuration_id": true,
                            "subnet_id": true
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
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_http_settings_id": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        },
                        {
                            "default_backend_address_pool_id": true,
                            "default_backend_http_settings_id": true,
                            "default_redirect_configuration_id": true,
                            "default_rewrite_rule_set_id": true,
                            "id": true,
                            "path_rule": [
                                {
                                    "backend_address_pool_id": true,
                                    "backend_http_settings_id": true,
                                    "id": true,
                                    "paths": [
                                        false
                                    ],
                                    "redirect_configuration_id": true,
                                    "rewrite_rule_set_id": true
                                }
                            ]
                        }
                    ],
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
            "address": "azurerm_linux_web_app.app1",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": null,
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "japaneast",
                    "logs": [],
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-appgw",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "application_stack": [
                                {
                                    "docker_image": "tsubasaxzzz/nginx-0829",
                                    "docker_image_name": null,
                                    "docker_image_tag": "app1",
                                    "dotnet_version": null,
                                    "go_version": null,
                                    "java_server": null,
                                    "java_server_version": null,
                                    "java_version": null,
                                    "node_version": null,
                                    "php_version": null,
                                    "python_version": null,
                                    "ruby_version": null
                                }
                            ],
                            "auto_heal_enabled": null,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "Disabled",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [],
                            "ip_restriction_default_action": "Allow",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": true,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": null,
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [],
                    "name": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true,
                                    "docker_registry_url": true,
                                    "docker_registry_username": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
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
            "name": "app1",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_web_app"
        },
        {
            "address": "azurerm_linux_web_app.app2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_settings": null,
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_certificate_enabled": false,
                    "client_certificate_exclusion_paths": null,
                    "client_certificate_mode": "Required",
                    "connection_string": [],
                    "enabled": true,
                    "ftp_publish_basic_authentication_enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "japaneast",
                    "logs": [],
                    "public_network_access_enabled": true,
                    "resource_group_name": "rg-appgw",
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
                            "application_stack": [
                                {
                                    "docker_image": "tsubasaxzzz/nginx-0829",
                                    "docker_image_name": null,
                                    "docker_image_tag": "app2",
                                    "dotnet_version": null,
                                    "go_version": null,
                                    "java_server": null,
                                    "java_server_version": null,
                                    "java_version": null,
                                    "node_version": null,
                                    "php_version": null,
                                    "python_version": null,
                                    "ruby_version": null
                                }
                            ],
                            "auto_heal_enabled": null,
                            "auto_heal_setting": [],
                            "container_registry_managed_identity_client_id": null,
                            "container_registry_use_managed_identity": false,
                            "cors": [],
                            "ftps_state": "Disabled",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "ip_restriction": [],
                            "ip_restriction_default_action": "Allow",
                            "load_balancing_mode": "LeastRequests",
                            "local_mysql_enabled": false,
                            "managed_pipeline_mode": "Integrated",
                            "minimum_tls_version": "1.2",
                            "remote_debugging_enabled": false,
                            "scm_ip_restriction": [],
                            "scm_ip_restriction_default_action": "Allow",
                            "scm_minimum_tls_version": "1.2",
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker": true,
                            "vnet_route_all_enabled": false,
                            "websockets_enabled": false
                        }
                    ],
                    "sticky_settings": [],
                    "storage_account": [],
                    "tags": null,
                    "timeouts": null,
                    "virtual_network_subnet_id": null,
                    "webdeploy_publish_basic_authentication_enabled": true
                },
                "after_sensitive": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": true,
                    "sticky_settings": [],
                    "storage_account": []
                },
                "after_unknown": {
                    "auth_settings": [],
                    "auth_settings_v2": [],
                    "backup": [],
                    "connection_string": [],
                    "custom_domain_verification_id": true,
                    "default_hostname": true,
                    "hosting_environment_id": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "kind": true,
                    "logs": [],
                    "name": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "application_stack": [
                                {
                                    "docker_registry_password": true,
                                    "docker_registry_url": true,
                                    "docker_registry_username": true
                                }
                            ],
                            "auto_heal_setting": [],
                            "cors": [],
                            "default_documents": true,
                            "detailed_error_logging_enabled": true,
                            "health_check_eviction_time_in_min": true,
                            "ip_restriction": [],
                            "linux_fx_version": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": [],
                            "scm_type": true,
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
            "name": "app2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_web_app"
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
                    "location": "japaneast",
                    "name": "pip-appgw",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-appgw",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": null,
                    "timeouts": null,
                    "zones": [
                        "1",
                        "2",
                        "3"
                    ]
                },
                "after_sensitive": {
                    "zones": [
                        false,
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "fqdn": true,
                    "id": true,
                    "ip_address": true,
                    "zones": [
                        false,
                        false,
                        false
                    ]
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
                    "location": "japaneast",
                    "managed_by": null,
                    "name": "rg-appgw",
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
            "address": "azurerm_service_plan.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "location": "japaneast",
                    "os_type": "Linux",
                    "per_site_scaling_enabled": false,
                    "resource_group_name": "rg-appgw",
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
                    "name": true,
                    "reserved": true,
                    "worker_count": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_service_plan"
        },
        {
            "address": "azurerm_subnet.backend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-backend",
                    "resource_group_name": "rg-appgw",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-example"
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
            "address": "azurerm_subnet.bastion",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.255.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "rg-appgw",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-example"
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
            "name": "bastion",
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
                    "name": "snet-frontend",
                    "resource_group_name": "rg-appgw",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-example"
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
                    "location": "japaneast",
                    "name": "vnet-example",
                    "resource_group_name": "rg-appgw",
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
            "address": "random_string.uniqstr",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": {
                        "resource_group_name": "rg-appgw"
                    },
                    "length": 6,
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
            "name": "uniqstr",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_string"
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
                    "ip_connect_enabled": true,
                    "kerberos_enabled": false,
                    "location": "japaneast",
                    "name": "bastion",
                    "resource_group_name": "rg-appgw",
                    "scale_units": 2,
                    "shareable_link_enabled": true,
                    "sku": "Standard",
                    "tags": null,
                    "timeouts": null,
                    "tunneling_enabled": true,
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
            "address": "module.bastion.azurerm_network_security_group.bastion",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-bastion",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-azurecloud-out",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "AzureCloud",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "443"
                    ],
                    "direction": "Outbound",
                    "name": "AllowAzureCloudOutbound",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 130,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion-azurecloud-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "VirtualNetwork",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "5701",
                        "8080"
                    ],
                    "direction": "Outbound",
                    "name": "AllowBastionCommunication",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 140,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "VirtualNetwork",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false,
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion-bastioncommunication-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-gsi-out",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "Internet",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "80"
                    ],
                    "direction": "Outbound",
                    "name": "AllowGetSesssionInformation",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 150,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion-gsi-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-gwm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "AllowGatewayManagerInbound",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 130,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "GatewayManager",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
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
            "module_address": "module.bastion",
            "name": "bastion-gwm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-hc",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "VirtualNetwork",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "5701",
                        "8080"
                    ],
                    "direction": "Inbound",
                    "name": "AllowBastionHostCommunication",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 150,
                    "protocol": "*",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "VirtualNetwork",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false,
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion-hc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-https",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "AllowHttpsInbound",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 120,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "Internet",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
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
            "module_address": "module.bastion",
            "name": "bastion-https",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-lb",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "*",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": "443",
                    "destination_port_ranges": null,
                    "direction": "Inbound",
                    "name": "AllowAzureLoadBalancerInbound",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 140,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "AzureLoadBalancer",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
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
            "module_address": "module.bastion",
            "name": "bastion-lb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.bastion.azurerm_network_security_rule.bastion-sshrdp-out",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "access": "Allow",
                    "description": "",
                    "destination_address_prefix": "VirtualNetwork",
                    "destination_address_prefixes": null,
                    "destination_application_security_group_ids": null,
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "22",
                        "3389"
                    ],
                    "direction": "Outbound",
                    "name": "AllowSshRdpOutbound",
                    "network_security_group_name": "nsg-bastion",
                    "priority": 120,
                    "protocol": "*",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false,
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.bastion",
            "name": "bastion-sshrdp-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
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
                    "location": "japaneast",
                    "name": "pip-bastion",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-appgw",
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
            "address": "module.bastion.azurerm_subnet_network_security_group_association.hub-bastion",
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
            "module_address": "module.bastion",
            "name": "hub-bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "module.jumpbox.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "daily_recurrence_time": "0200",
                    "enabled": true,
                    "location": "japaneast",
                    "notification_settings": [
                        {
                            "email": null,
                            "enabled": false,
                            "time_in_minutes": 30,
                            "webhook_url": null
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": "Tokyo Standard Time"
                },
                "after_sensitive": {
                    "notification_settings": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "notification_settings": [
                        {}
                    ],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox",
            "name": "autoshutdown",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dev_test_global_vm_shutdown_schedule"
        },
        {
            "address": "module.jumpbox.azurerm_network_interface.nic",
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
                            "name": "configuration",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "japaneast",
                    "name": "nic-vmjumpbox",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.jumpbox",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.jumpbox.azurerm_network_interface_security_group_association.example",
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
                    "network_interface_id": true,
                    "network_security_group_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_security_group_association"
        },
        {
            "address": "module.jumpbox.azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-vmjumpbox",
                    "resource_group_name": "rg-appgw",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "3389",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "remote_access",
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
            "module_address": "module.jumpbox",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.jumpbox.azurerm_public_ip.pip",
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
                    "location": "japaneast",
                    "name": "pip-vmjumpbox",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.jumpbox",
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.jumpbox.azurerm_windows_virtual_machine.windows",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "additional_unattend_content": [],
                    "admin_password": "Password1!",
                    "admin_username": "adminuser",
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
                    "location": "japaneast",
                    "max_bid_price": -1,
                    "name": "vmjumpbox",
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
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "AutomaticByOS",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "rg-appgw",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B2ms",
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
                    "zone": "1"
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
            "module_address": "module.jumpbox",
            "name": "windows",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_windows_virtual_machine"
        },
        {
            "address": "module.jumpbox-linux.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "daily_recurrence_time": "0200",
                    "enabled": true,
                    "location": "japaneast",
                    "notification_settings": [
                        {
                            "email": null,
                            "enabled": false,
                            "time_in_minutes": 30,
                            "webhook_url": null
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": "Tokyo Standard Time"
                },
                "after_sensitive": {
                    "notification_settings": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "notification_settings": [
                        {}
                    ],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox-linux",
            "name": "autoshutdown",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dev_test_global_vm_shutdown_schedule"
        },
        {
            "address": "module.jumpbox-linux.azurerm_linux_virtual_machine.linux",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Password1!",
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "adminuser"
                        }
                    ],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [
                        {
                            "storage_account_uri": null
                        }
                    ],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "dGVzdA==",
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": false,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "japaneast",
                    "max_bid_price": -1,
                    "name": "vmjumpboxlinux",
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
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "ImageDefault",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "rg-appgw",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B2ms",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-focal",
                            "publisher": "Canonical",
                            "sku": "20_04-lts-gen2",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
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
                    "boot_diagnostics": [
                        {}
                    ],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [
                        {}
                    ],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox-linux",
            "name": "linux",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "module.jumpbox-linux.azurerm_network_interface.nic",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": false,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "configuration",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "japaneast",
                    "name": "nic-vmjumpboxlinux",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.jumpbox-linux",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.jumpbox-linux.azurerm_network_interface_security_group_association.example",
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
                    "network_interface_id": true,
                    "network_security_group_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox-linux",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_security_group_association"
        },
        {
            "address": "module.jumpbox-linux.azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-vmjumpboxlinux",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.jumpbox-linux",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.jumpbox-linux.azurerm_network_security_rule.nsg-rule",
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
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "22",
                        "80"
                    ],
                    "direction": "Inbound",
                    "name": "remote_access",
                    "network_security_group_name": "nsg-vmjumpboxlinux",
                    "priority": 100,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false,
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.jumpbox-linux",
            "name": "nsg-rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.jumpbox-linux.azurerm_public_ip.pip",
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
                    "location": "japaneast",
                    "name": "pip-vmjumpboxlinux",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.jumpbox-linux",
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.webserver.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "daily_recurrence_time": "0200",
                    "enabled": true,
                    "location": "japaneast",
                    "notification_settings": [
                        {
                            "email": null,
                            "enabled": false,
                            "time_in_minutes": 30,
                            "webhook_url": null
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "timezone": "Tokyo Standard Time"
                },
                "after_sensitive": {
                    "notification_settings": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "notification_settings": [
                        {}
                    ],
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.webserver",
            "name": "autoshutdown",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dev_test_global_vm_shutdown_schedule"
        },
        {
            "address": "module.webserver.azurerm_linux_virtual_machine.linux",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Password1!",
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zTPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJr noname",
                            "username": "adminuser"
                        }
                    ],
                    "admin_username": "adminuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [
                        {
                            "storage_account_uri": null
                        }
                    ],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "c3VkbyBhcHQgdXBkYXRlICYmIHN1ZG8gYXB0IGluc3RhbGwgLXkgbmdpbng=",
                    "dedicated_host_group_id": null,
                    "dedicated_host_id": null,
                    "disable_password_authentication": false,
                    "edge_zone": null,
                    "encryption_at_host_enabled": null,
                    "eviction_policy": null,
                    "extensions_time_budget": "PT1H30M",
                    "gallery_application": [],
                    "identity": [],
                    "license_type": null,
                    "location": "japaneast",
                    "max_bid_price": -1,
                    "name": "vmwebserver",
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
                    "os_image_notification": [],
                    "patch_assessment_mode": "ImageDefault",
                    "patch_mode": "ImageDefault",
                    "plan": [],
                    "platform_fault_domain": -1,
                    "priority": "Regular",
                    "provision_vm_agent": true,
                    "proximity_placement_group_id": null,
                    "reboot_setting": null,
                    "resource_group_name": "rg-appgw",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B2ms",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-focal",
                            "publisher": "Canonical",
                            "sku": "20_04-lts-gen2",
                            "version": "latest"
                        }
                    ],
                    "tags": null,
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
                    "boot_diagnostics": [
                        {}
                    ],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [
                        {}
                    ],
                    "boot_diagnostics": [
                        {}
                    ],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.webserver",
            "name": "linux",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "module.webserver.azurerm_network_interface.nic",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auxiliary_mode": null,
                    "auxiliary_sku": null,
                    "edge_zone": null,
                    "enable_accelerated_networking": false,
                    "internal_dns_name_label": null,
                    "ip_configuration": [
                        {
                            "name": "configuration",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4"
                        }
                    ],
                    "location": "japaneast",
                    "name": "nic-vmwebserver",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.webserver",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.webserver.azurerm_network_interface_security_group_association.example",
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
                    "network_interface_id": true,
                    "network_security_group_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.webserver",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_security_group_association"
        },
        {
            "address": "module.webserver.azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-vmwebserver",
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.webserver",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.webserver.azurerm_network_security_rule.nsg-rule",
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
                    "destination_port_range": null,
                    "destination_port_ranges": [
                        "22",
                        "80"
                    ],
                    "direction": "Inbound",
                    "name": "remote_access",
                    "network_security_group_name": "nsg-vmwebserver",
                    "priority": 100,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-appgw",
                    "source_address_prefix": "*",
                    "source_address_prefixes": null,
                    "source_application_security_group_ids": null,
                    "source_port_range": "*",
                    "source_port_ranges": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "destination_port_ranges": [
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "destination_port_ranges": [
                        false,
                        false
                    ],
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.webserver",
            "name": "nsg-rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.webserver.azurerm_public_ip.pip",
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
                    "location": "japaneast",
                    "name": "pip-vmwebserver",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-appgw",
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
            "module_address": "module.webserver",
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:01:02Z",
    "variables": {
        "rg": {
            "value": {
                "location": "japaneast",
                "name": "rg-appgw"
            }
        }
    }
}