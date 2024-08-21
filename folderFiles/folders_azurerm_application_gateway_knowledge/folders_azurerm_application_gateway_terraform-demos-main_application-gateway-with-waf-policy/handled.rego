
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
            "outputs": {
                "temp": {
                    "expression": {
                        "references": [
                            "azurerm_virtual_network.example"
                        ]
                    }
                },
                "url": {
                    "description": "URL to the application gateway",
                    "expression": {
                        "references": [
                            "azurerm_public_ip.example.ip_address",
                            "azurerm_public_ip.example"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "expressions": {
                        "autoscale_configuration": [
                            {
                                "max_capacity": {
                                    "constant_value": 3
                                },
                                "min_capacity": {
                                    "constant_value": 2
                                }
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "constant_value": []
                                },
                                "ip_addresses": {
                                    "references": [
                                        "azurerm_private_endpoint.example.private_service_connection[0].private_ip_address",
                                        "azurerm_private_endpoint.example.private_service_connection[0]",
                                        "azurerm_private_endpoint.example.private_service_connection",
                                        "azurerm_private_endpoint.example"
                                    ]
                                },
                                "name": {
                                    "constant_value": "pool-app-service"
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": {
                                    "constant_value": null
                                },
                                "connection_draining": [
                                    {
                                        "drain_timeout_sec": {
                                            "constant_value": "30"
                                        },
                                        "enabled": {
                                            "constant_value": "false"
                                        }
                                    }
                                ],
                                "cookie_based_affinity": {
                                    "constant_value": "Disabled"
                                },
                                "host_name": {
                                    "references": [
                                        "azurerm_linux_web_app.example.default_hostname",
                                        "azurerm_linux_web_app.example"
                                    ]
                                },
                                "name": {
                                    "constant_value": "backendsetting-001"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "port": {
                                    "constant_value": "443"
                                },
                                "probe_name": {
                                    "constant_value": "probe-001"
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": "30"
                                }
                            }
                        ],
                        "enable_http2": {
                            "constant_value": true
                        },
                        "fips_enabled": {
                            "constant_value": false
                        },
                        "firewall_policy_id": {
                            "references": [
                                "azurerm_web_application_firewall_policy.example.id",
                                "azurerm_web_application_firewall_policy.example"
                            ]
                        },
                        "force_firewall_policy_association": {
                            "constant_value": true
                        },
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "frontendipconfig-public"
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
                                    "constant_value": "frontendipconfig-private"
                                },
                                "private_ip_address": {
                                    "constant_value": "10.0.0.68"
                                },
                                "private_ip_address_allocation": {
                                    "constant_value": "Static"
                                },
                                "subnet_id": {
                                    "references": [
                                        "local.subnets[\"agw\"].id",
                                        "local.subnets[\"agw\"]",
                                        "local.subnets"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "constant_value": "port1"
                                },
                                "port": {
                                    "constant_value": "80"
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "gatewayipconfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "local.subnets[\"agw\"].id",
                                        "local.subnets[\"agw\"]",
                                        "local.subnets"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "constant_value": "frontendipconfig-public"
                                },
                                "frontend_port_name": {
                                    "constant_value": "port1"
                                },
                                "host_names": {
                                    "constant_value": []
                                },
                                "name": {
                                    "constant_value": "listener-001"
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                },
                                "require_sni": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
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
                                                "200-399"
                                            ]
                                        }
                                    }
                                ],
                                "minimum_servers": {
                                    "constant_value": 0
                                },
                                "name": {
                                    "constant_value": "probe-001"
                                },
                                "path": {
                                    "constant_value": "/"
                                },
                                "pick_host_name_from_backend_http_settings": {
                                    "constant_value": true
                                },
                                "port": {
                                    "constant_value": 443
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
                                    "constant_value": "pool-app-service"
                                },
                                "backend_http_settings_name": {
                                    "constant_value": "backendsetting-001"
                                },
                                "http_listener_name": {
                                    "constant_value": "listener-001"
                                },
                                "name": {
                                    "constant_value": "rule-001"
                                },
                                "priority": {
                                    "constant_value": 10
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
                                "name": {
                                    "constant_value": "WAF_v2"
                                },
                                "tier": {
                                    "constant_value": "WAF_v2"
                                }
                            }
                        ],
                        "ssl_policy": [
                            {
                                "policy_name": {
                                    "constant_value": "AppGwSslPolicy20170401S"
                                },
                                "policy_type": {
                                    "constant_value": "Predefined"
                                }
                            }
                        ],
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
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_linux_web_app.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_service_plan.example.location",
                                "azurerm_service_plan.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
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
                            {}
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_linux_web_app"
                },
                {
                    "address": "azurerm_private_endpoint.example",
                    "expressions": {
                        "custom_network_interface_name": {
                            "references": [
                                "azurerm_linux_web_app.example.name",
                                "azurerm_linux_web_app.example"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "azurerm_linux_web_app.example.name",
                                "azurerm_linux_web_app.example"
                            ]
                        },
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "privateserviceconnection"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_linux_web_app.example.id",
                                        "azurerm_linux_web_app.example"
                                    ]
                                },
                                "subresource_names": {
                                    "constant_value": [
                                        "sites"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "local.subnets[\"workload\"].id",
                                "local.subnets[\"workload\"]",
                                "local.subnets"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_endpoint"
                },
                {
                    "address": "azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
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
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
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
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
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
                            "constant_value": "B1"
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_service_plan"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/24"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet": {
                            "constant_value": [
                                {
                                    "address_prefix": "10.0.0.0/26",
                                    "id": null,
                                    "name": "snet-workload",
                                    "security_group": null
                                },
                                {
                                    "address_prefix": "10.0.0.64/26",
                                    "id": null,
                                    "name": "snet-agw",
                                    "security_group": null
                                }
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
                    "address": "azurerm_web_application_firewall_policy.example",
                    "expressions": {
                        "custom_rules": [
                            {
                                "action": {
                                    "constant_value": "Allow"
                                },
                                "enabled": {
                                    "constant_value": true
                                },
                                "match_conditions": [
                                    {
                                        "match_values": {
                                            "constant_value": [
                                                "bypass_owasp=1"
                                            ]
                                        },
                                        "match_variables": [
                                            {
                                                "variable_name": {
                                                    "constant_value": "QueryString"
                                                }
                                            }
                                        ],
                                        "negation_condition": {
                                            "constant_value": false
                                        },
                                        "operator": {
                                            "constant_value": "Contains"
                                        },
                                        "transforms": {
                                            "constant_value": []
                                        }
                                    }
                                ],
                                "name": {
                                    "constant_value": "allowGary"
                                },
                                "priority": {
                                    "constant_value": 100
                                },
                                "rule_type": {
                                    "constant_value": "MatchRule"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "local.region"
                            ]
                        },
                        "managed_rules": [
                            {
                                "exclusion": [
                                    {
                                        "match_variable": {
                                            "constant_value": "RequestHeaderNames"
                                        },
                                        "selector": {
                                            "constant_value": "my-secret-header"
                                        },
                                        "selector_match_operator": {
                                            "constant_value": "Equals"
                                        }
                                    },
                                    {
                                        "match_variable": {
                                            "constant_value": "RequestCookieNames"
                                        },
                                        "selector": {
                                            "constant_value": "my-sweet-cookie"
                                        },
                                        "selector_match_operator": {
                                            "constant_value": "EndsWith"
                                        }
                                    }
                                ],
                                "managed_rule_set": [
                                    {
                                        "rule_group_override": [
                                            {
                                                "rule": [
                                                    {
                                                        "action": {
                                                            "constant_value": "Log"
                                                        },
                                                        "enabled": {
                                                            "constant_value": true
                                                        },
                                                        "id": {
                                                            "constant_value": "920300"
                                                        }
                                                    },
                                                    {
                                                        "action": {
                                                            "constant_value": "Block"
                                                        },
                                                        "enabled": {
                                                            "constant_value": true
                                                        },
                                                        "id": {
                                                            "constant_value": "920440"
                                                        }
                                                    }
                                                ],
                                                "rule_group_name": {
                                                    "constant_value": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                                                }
                                            }
                                        ],
                                        "type": {
                                            "constant_value": "OWASP"
                                        },
                                        "version": {
                                            "constant_value": "3.2"
                                        }
                                    }
                                ]
                            }
                        ],
                        "name": {
                            "references": [
                                "local.name"
                            ]
                        },
                        "policy_settings": [
                            {
                                "enabled": {
                                    "constant_value": true
                                },
                                "file_upload_limit_in_mb": {
                                    "constant_value": 100
                                },
                                "max_request_body_size_in_kb": {
                                    "constant_value": 128
                                },
                                "mode": {
                                    "constant_value": "Prevention"
                                },
                                "request_body_check": {
                                    "constant_value": true
                                }
                            }
                        ],
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
                    "schema_version": 1,
                    "type": "azurerm_web_application_firewall_policy"
                },
                {
                    "address": "random_pet.name",
                    "mode": "managed",
                    "name": "name",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_pet"
                }
            ]
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "temp": {
            "actions": [
                "create"
            ],
            "after": {
                "address_space": [
                    "10.0.0.0/24"
                ],
                "bgp_community": null,
                "ddos_protection_plan": [],
                "edge_zone": null,
                "encryption": [],
                "flow_timeout_in_minutes": null,
                "location": "australiaeast",
                "subnet": [
                    {
                        "address_prefix": "10.0.0.0/26",
                        "name": "snet-workload",
                        "security_group": ""
                    },
                    {
                        "address_prefix": "10.0.0.64/26",
                        "name": "snet-agw",
                        "security_group": ""
                    }
                ],
                "tags": null,
                "timeouts": null
            },
            "after_sensitive": false,
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
                "resource_group_name": true,
                "subnet": [
                    {
                        "id": true
                    },
                    {
                        "id": true
                    }
                ]
            },
            "before": null,
            "before_sensitive": false
        },
        "url": {
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
            "temp": {
                "sensitive": false
            },
            "url": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.example",
                    "mode": "managed",
                    "name": "example",
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
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "authentication_certificate": [],
                                "connection_draining": [
                                    {}
                                ],
                                "trusted_root_certificate_names": []
                            }
                        ],
                        "custom_error_configuration": [],
                        "frontend_ip_configuration": [
                            {},
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
                            {}
                        ],
                        "rewrite_rule_set": [],
                        "sku": [
                            {}
                        ],
                        "ssl_certificate": [],
                        "ssl_policy": [
                            {}
                        ],
                        "ssl_profile": [],
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": [
                            false,
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_application_gateway",
                    "values": {
                        "authentication_certificate": [],
                        "autoscale_configuration": [
                            {
                                "max_capacity": 3,
                                "min_capacity": 2
                            }
                        ],
                        "backend_address_pool": [
                            {
                                "fqdns": [],
                                "name": "pool-app-service"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [
                                    {
                                        "drain_timeout_sec": 30,
                                        "enabled": false
                                    }
                                ],
                                "cookie_based_affinity": "Disabled",
                                "name": "backendsetting-001",
                                "path": "/",
                                "pick_host_name_from_backend_address": false,
                                "port": 443,
                                "probe_name": "probe-001",
                                "protocol": "Https",
                                "request_timeout": 30,
                                "trusted_root_certificate_names": []
                            }
                        ],
                        "custom_error_configuration": [],
                        "enable_http2": true,
                        "fips_enabled": false,
                        "force_firewall_policy_association": true,
                        "frontend_ip_configuration": [
                            {
                                "name": "frontendipconfig-public",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            },
                            {
                                "name": "frontendipconfig-private",
                                "private_ip_address": "10.0.0.68",
                                "private_ip_address_allocation": "Static",
                                "private_link_configuration_name": null,
                                "public_ip_address_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "port1",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "gatewayipconfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "frontendipconfig-public",
                                "frontend_port_name": "port1",
                                "host_name": "",
                                "host_names": [],
                                "name": "listener-001",
                                "protocol": "Http",
                                "require_sni": false,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "australiaeast",
                        "private_link_configuration": [],
                        "probe": [
                            {
                                "host": "",
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
                                "name": "probe-001",
                                "path": "/",
                                "pick_host_name_from_backend_http_settings": true,
                                "port": 443,
                                "protocol": "Https",
                                "timeout": 30,
                                "unhealthy_threshold": 3
                            }
                        ],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "pool-app-service",
                                "backend_http_settings_name": "backendsetting-001",
                                "http_listener_name": "listener-001",
                                "name": "rule-001",
                                "priority": 10,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": null,
                                "name": "WAF_v2",
                                "tier": "WAF_v2"
                            }
                        ],
                        "ssl_certificate": [],
                        "ssl_policy": [
                            {
                                "cipher_suites": null,
                                "disabled_protocols": null,
                                "min_protocol_version": null,
                                "policy_name": "AppGwSslPolicy20170401S",
                                "policy_type": "Predefined"
                            }
                        ],
                        "ssl_profile": [],
                        "tags": null,
                        "timeouts": null,
                        "trusted_client_certificate": [],
                        "trusted_root_certificate": [],
                        "url_path_map": [],
                        "waf_configuration": [],
                        "zones": [
                            "1",
                            "2",
                            "3"
                        ]
                    }
                },
                {
                    "address": "azurerm_linux_web_app.example",
                    "mode": "managed",
                    "name": "example",
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
                                "application_stack": [],
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
                        "location": "australiaeast",
                        "logs": [],
                        "public_network_access_enabled": true,
                        "site_config": [
                            {
                                "always_on": true,
                                "api_definition_url": null,
                                "api_management_api_id": null,
                                "app_command_line": null,
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
                    "address": "azurerm_private_endpoint.example",
                    "mode": "managed",
                    "name": "example",
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
                        "ip_configuration": [],
                        "location": "australiaeast",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "privateserviceconnection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": [
                                    "sites"
                                ]
                            }
                        ],
                        "tags": null,
                        "timeouts": null
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
                        "location": "australiaeast",
                        "public_ip_prefix_id": null,
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
                        "location": "australiaeast",
                        "managed_by": null,
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
                        "location": "australiaeast",
                        "os_type": "Linux",
                        "per_site_scaling_enabled": false,
                        "sku_name": "B1",
                        "tags": null,
                        "timeouts": null,
                        "zone_balancing_enabled": null
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
                        "subnet": [
                            {},
                            {}
                        ]
                    },
                    "type": "azurerm_virtual_network",
                    "values": {
                        "address_space": [
                            "10.0.0.0/24"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "australiaeast",
                        "subnet": [
                            {
                                "address_prefix": "10.0.0.0/26",
                                "name": "snet-workload",
                                "security_group": ""
                            },
                            {
                                "address_prefix": "10.0.0.64/26",
                                "name": "snet-agw",
                                "security_group": ""
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_web_application_firewall_policy.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "custom_rules": [
                            {
                                "match_conditions": [
                                    {
                                        "match_values": [
                                            false
                                        ],
                                        "match_variables": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ],
                        "http_listener_ids": [],
                        "managed_rules": [
                            {
                                "exclusion": [
                                    {
                                        "excluded_rule_set": []
                                    },
                                    {
                                        "excluded_rule_set": []
                                    }
                                ],
                                "managed_rule_set": [
                                    {
                                        "rule_group_override": [
                                            {
                                                "disabled_rules": [],
                                                "rule": [
                                                    {},
                                                    {}
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "path_based_rule_ids": [],
                        "policy_settings": [
                            {
                                "log_scrubbing": []
                            }
                        ]
                    },
                    "type": "azurerm_web_application_firewall_policy",
                    "values": {
                        "custom_rules": [
                            {
                                "action": "Allow",
                                "enabled": true,
                                "group_rate_limit_by": null,
                                "match_conditions": [
                                    {
                                        "match_values": [
                                            "bypass_owasp=1"
                                        ],
                                        "match_variables": [
                                            {
                                                "selector": null,
                                                "variable_name": "QueryString"
                                            }
                                        ],
                                        "negation_condition": false,
                                        "operator": "Contains",
                                        "transforms": null
                                    }
                                ],
                                "name": "allowGary",
                                "priority": 100,
                                "rate_limit_duration": null,
                                "rate_limit_threshold": null,
                                "rule_type": "MatchRule"
                            }
                        ],
                        "location": "australiaeast",
                        "managed_rules": [
                            {
                                "exclusion": [
                                    {
                                        "excluded_rule_set": [],
                                        "match_variable": "RequestHeaderNames",
                                        "selector": "my-secret-header",
                                        "selector_match_operator": "Equals"
                                    },
                                    {
                                        "excluded_rule_set": [],
                                        "match_variable": "RequestCookieNames",
                                        "selector": "my-sweet-cookie",
                                        "selector_match_operator": "EndsWith"
                                    }
                                ],
                                "managed_rule_set": [
                                    {
                                        "rule_group_override": [
                                            {
                                                "rule": [
                                                    {
                                                        "action": "Log",
                                                        "enabled": true,
                                                        "id": "920300"
                                                    },
                                                    {
                                                        "action": "Block",
                                                        "enabled": true,
                                                        "id": "920440"
                                                    }
                                                ],
                                                "rule_group_name": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                                            }
                                        ],
                                        "type": "OWASP",
                                        "version": "3.2"
                                    }
                                ]
                            }
                        ],
                        "policy_settings": [
                            {
                                "enabled": true,
                                "file_upload_limit_in_mb": 100,
                                "js_challenge_cookie_expiration_in_minutes": 30,
                                "log_scrubbing": [],
                                "max_request_body_size_in_kb": 128,
                                "mode": "Prevention",
                                "request_body_check": true,
                                "request_body_inspect_limit_in_kb": 128
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "random_pet.name",
                    "mode": "managed",
                    "name": "name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_pet",
                    "values": {
                        "keepers": null,
                        "length": 2,
                        "prefix": null,
                        "separator": "-"
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "private_service_connection",
                0,
                "private_ip_address"
            ],
            "resource": "azurerm_private_endpoint.example"
        },
        {
            "attribute": [
                "default_hostname"
            ],
            "resource": "azurerm_linux_web_app.example"
        },
        {
            "attribute": [],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_service_plan.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_linux_web_app.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_web_application_firewall_policy.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.example"
        },
        {
            "attribute": [
                "subnet"
            ],
            "resource": "azurerm_virtual_network.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.example"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_service_plan.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_linux_web_app.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "random_pet.name"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {
                            "max_capacity": 3,
                            "min_capacity": 2
                        }
                    ],
                    "backend_address_pool": [
                        {
                            "fqdns": [],
                            "name": "pool-app-service"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [
                                {
                                    "drain_timeout_sec": 30,
                                    "enabled": false
                                }
                            ],
                            "cookie_based_affinity": "Disabled",
                            "name": "backendsetting-001",
                            "path": "/",
                            "pick_host_name_from_backend_address": false,
                            "port": 443,
                            "probe_name": "probe-001",
                            "protocol": "Https",
                            "request_timeout": 30,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "enable_http2": true,
                    "fips_enabled": false,
                    "force_firewall_policy_association": true,
                    "frontend_ip_configuration": [
                        {
                            "name": "frontendipconfig-public",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        },
                        {
                            "name": "frontendipconfig-private",
                            "private_ip_address": "10.0.0.68",
                            "private_ip_address_allocation": "Static",
                            "private_link_configuration_name": null,
                            "public_ip_address_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "port1",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "gatewayipconfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontendipconfig-public",
                            "frontend_port_name": "port1",
                            "host_name": "",
                            "host_names": [],
                            "name": "listener-001",
                            "protocol": "Http",
                            "require_sni": false,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "australiaeast",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "host": "",
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
                            "name": "probe-001",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": true,
                            "port": 443,
                            "protocol": "Https",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "pool-app-service",
                            "backend_http_settings_name": "backendsetting-001",
                            "http_listener_name": "listener-001",
                            "name": "rule-001",
                            "priority": 10,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": null,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_policy": [
                        {
                            "cipher_suites": null,
                            "disabled_protocols": null,
                            "min_protocol_version": null,
                            "policy_name": "AppGwSslPolicy20170401S",
                            "policy_type": "Predefined"
                        }
                    ],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [],
                    "zones": [
                        "1",
                        "2",
                        "3"
                    ]
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
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "authentication_certificate": [],
                            "connection_draining": [
                                {}
                            ],
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "frontend_ip_configuration": [
                        {},
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
                        {}
                    ],
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": [],
                    "ssl_policy": [
                        {}
                    ],
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [],
                    "zones": [
                        false,
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [
                        {}
                    ],
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
                            "connection_draining": [
                                {}
                            ],
                            "host_name": true,
                            "id": true,
                            "probe_id": true,
                            "trusted_root_certificate_names": []
                        }
                    ],
                    "custom_error_configuration": [],
                    "firewall_policy_id": true,
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
                    "name": true,
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
                        }
                    ],
                    "resource_group_name": true,
                    "rewrite_rule_set": [],
                    "sku": [
                        {}
                    ],
                    "ssl_certificate": [],
                    "ssl_policy": [
                        {}
                    ],
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [],
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
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_linux_web_app.example",
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
                    "location": "australiaeast",
                    "logs": [],
                    "public_network_access_enabled": true,
                    "site_config": [
                        {
                            "always_on": true,
                            "api_definition_url": null,
                            "api_management_api_id": null,
                            "app_command_line": null,
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
                            "application_stack": [],
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
                    "resource_group_name": true,
                    "service_plan_id": true,
                    "site_config": [
                        {
                            "application_stack": true,
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
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_web_app"
        },
        {
            "address": "azurerm_private_endpoint.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration": [],
                    "location": "australiaeast",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "privateserviceconnection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": [
                                "sites"
                            ]
                        }
                    ],
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
                    "custom_network_interface_name": true,
                    "id": true,
                    "ip_configuration": [],
                    "name": true,
                    "network_interface": true,
                    "private_dns_zone_configs": true,
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "private_connection_resource_id": true,
                            "private_ip_address": true,
                            "subresource_names": [
                                false
                            ]
                        }
                    ],
                    "resource_group_name": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_endpoint"
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
                    "location": "australiaeast",
                    "public_ip_prefix_id": null,
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
                    "name": true,
                    "resource_group_name": true,
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
                    "location": "australiaeast",
                    "managed_by": null,
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true
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
                    "location": "australiaeast",
                    "os_type": "Linux",
                    "per_site_scaling_enabled": false,
                    "sku_name": "B1",
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
                    "resource_group_name": true,
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
            "address": "azurerm_virtual_network.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.0.0.0/24"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "australiaeast",
                    "subnet": [
                        {
                            "address_prefix": "10.0.0.0/26",
                            "name": "snet-workload",
                            "security_group": ""
                        },
                        {
                            "address_prefix": "10.0.0.64/26",
                            "name": "snet-agw",
                            "security_group": ""
                        }
                    ],
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
                    "subnet": [
                        {},
                        {}
                    ]
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
                    "resource_group_name": true,
                    "subnet": [
                        {
                            "id": true
                        },
                        {
                            "id": true
                        }
                    ]
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
            "address": "azurerm_web_application_firewall_policy.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_rules": [
                        {
                            "action": "Allow",
                            "enabled": true,
                            "group_rate_limit_by": null,
                            "match_conditions": [
                                {
                                    "match_values": [
                                        "bypass_owasp=1"
                                    ],
                                    "match_variables": [
                                        {
                                            "selector": null,
                                            "variable_name": "QueryString"
                                        }
                                    ],
                                    "negation_condition": false,
                                    "operator": "Contains",
                                    "transforms": null
                                }
                            ],
                            "name": "allowGary",
                            "priority": 100,
                            "rate_limit_duration": null,
                            "rate_limit_threshold": null,
                            "rule_type": "MatchRule"
                        }
                    ],
                    "location": "australiaeast",
                    "managed_rules": [
                        {
                            "exclusion": [
                                {
                                    "excluded_rule_set": [],
                                    "match_variable": "RequestHeaderNames",
                                    "selector": "my-secret-header",
                                    "selector_match_operator": "Equals"
                                },
                                {
                                    "excluded_rule_set": [],
                                    "match_variable": "RequestCookieNames",
                                    "selector": "my-sweet-cookie",
                                    "selector_match_operator": "EndsWith"
                                }
                            ],
                            "managed_rule_set": [
                                {
                                    "rule_group_override": [
                                        {
                                            "rule": [
                                                {
                                                    "action": "Log",
                                                    "enabled": true,
                                                    "id": "920300"
                                                },
                                                {
                                                    "action": "Block",
                                                    "enabled": true,
                                                    "id": "920440"
                                                }
                                            ],
                                            "rule_group_name": "REQUEST-920-PROTOCOL-ENFORCEMENT"
                                        }
                                    ],
                                    "type": "OWASP",
                                    "version": "3.2"
                                }
                            ]
                        }
                    ],
                    "policy_settings": [
                        {
                            "enabled": true,
                            "file_upload_limit_in_mb": 100,
                            "js_challenge_cookie_expiration_in_minutes": 30,
                            "log_scrubbing": [],
                            "max_request_body_size_in_kb": 128,
                            "mode": "Prevention",
                            "request_body_check": true,
                            "request_body_inspect_limit_in_kb": 128
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "custom_rules": [
                        {
                            "match_conditions": [
                                {
                                    "match_values": [
                                        false
                                    ],
                                    "match_variables": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
                    "http_listener_ids": [],
                    "managed_rules": [
                        {
                            "exclusion": [
                                {
                                    "excluded_rule_set": []
                                },
                                {
                                    "excluded_rule_set": []
                                }
                            ],
                            "managed_rule_set": [
                                {
                                    "rule_group_override": [
                                        {
                                            "disabled_rules": [],
                                            "rule": [
                                                {},
                                                {}
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "path_based_rule_ids": [],
                    "policy_settings": [
                        {
                            "log_scrubbing": []
                        }
                    ]
                },
                "after_unknown": {
                    "custom_rules": [
                        {
                            "match_conditions": [
                                {
                                    "match_values": [
                                        false
                                    ],
                                    "match_variables": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
                    "http_listener_ids": true,
                    "id": true,
                    "managed_rules": [
                        {
                            "exclusion": [
                                {
                                    "excluded_rule_set": []
                                },
                                {
                                    "excluded_rule_set": []
                                }
                            ],
                            "managed_rule_set": [
                                {
                                    "rule_group_override": [
                                        {
                                            "disabled_rules": true,
                                            "rule": [
                                                {},
                                                {}
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "name": true,
                    "path_based_rule_ids": true,
                    "policy_settings": [
                        {
                            "log_scrubbing": []
                        }
                    ],
                    "resource_group_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_web_application_firewall_policy"
        },
        {
            "address": "random_pet.name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 2,
                    "prefix": null,
                    "separator": "-"
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_pet"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:16:26Z"
}