
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
                "east_app_gateway": {
                    "expressions": {
                        "app_service_fqdn": {
                            "references": [
                                "module.east_webapp.webapp_name",
                                "module.east_webapp"
                            ]
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "public_ip_id": {
                            "references": [
                                "module.east_network.public_ip_id",
                                "module.east_network"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.east_network.subnet_id",
                                "module.east_network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.app_gateway",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "fqdns": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "name": {
                                                "constant_value": "AppService"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": "true"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            },
                                            "probe_name": {
                                                "constant_value": "probe"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "request_timeout": {
                                                "constant_value": 1
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "frontend"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "Http"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "subnet"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "constant_value": "frontend"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
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
                                            "var.name"
                                        ]
                                    },
                                    "probe": [
                                        {
                                            "host": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "interval": {
                                                "constant_value": "30"
                                            },
                                            "name": {
                                                "constant_value": "probe"
                                            },
                                            "path": {
                                                "constant_value": "/"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "timeout": {
                                                "constant_value": "30"
                                            },
                                            "unhealthy_threshold": {
                                                "constant_value": "3"
                                            }
                                        }
                                    ],
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "AppService"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "http"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "priority": {
                                                "constant_value": 100
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
                                                "constant_value": 2
                                            },
                                            "name": {
                                                "constant_value": "WAF_v2"
                                            },
                                            "tier": {
                                                "constant_value": "WAF_v2"
                                            }
                                        }
                                    ],
                                    "waf_configuration": [
                                        {
                                            "enabled": {
                                                "constant_value": "true"
                                            },
                                            "firewall_mode": {
                                                "constant_value": "Detection"
                                            },
                                            "rule_set_type": {
                                                "constant_value": "OWASP"
                                            },
                                            "rule_set_version": {
                                                "constant_value": "3.0"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_gateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "app_service_fqdn": {
                                "default": "9f43hold",
                                "description": "FQDN of the App Service to be used in the Application Gateway configuration"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Application Gateway"
                            },
                            "name": {
                                "default": "t08ghold",
                                "description": "Name for the Application Gateway"
                            },
                            "public_ip_id": {
                                "default": "10.0.0.0/16",
                                "description": "ID of the Public IP for the Application Gateway"
                            },
                            "rg_name": {
                                "default": "m1lhhold",
                                "description": "Name for the Resource Group"
                            },
                            "vnet_subnet_id": {
                                "default": "a534hold",
                                "description": "ID of the VNet Subnet for the Application Gateway"
                            }
                        }
                    },
                    "source": "./modules/app_gateway"
                },
                "east_network": {
                    "expressions": {
                        "domain_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "public_ip_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.ip.id",
                                        "azurerm_public_ip.ip"
                                    ]
                                }
                            },
                            "subnet_id": {
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
                                "address": "azurerm_public_ip.ip",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "domain_name_label": {
                                        "references": [
                                            "var.domain_name"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.public_ip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "ip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
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
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "azurerm_subnet.subnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "default"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.vnet.name",
                                            "azurerm_virtual_network.vnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.vnet",
                                "expressions": {
                                    "address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "domain_name": {
                                "default": "zchjhold",
                                "description": "Domaine Name for the public IP"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "public_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "Name for the public IP"
                            },
                            "rg_name": {
                                "default": "4j6qhold",
                                "description": "Name for the resource group"
                            },
                            "vnet_name": {
                                "default": "03urhold",
                                "description": "Name for the virtual network"
                            }
                        }
                    },
                    "source": "./modules/Network"
                },
                "east_webapp": {
                    "expressions": {
                        "app_service_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "app_service_plan_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "branch": {
                            "constant_value": "master"
                        },
                        "location": {
                            "constant_value": "East US"
                        },
                        "repo_url": {
                            "constant_value": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git"
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The ID of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.id",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            },
                            "webapp_name": {
                                "description": "The default hostname of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.default_site_hostname",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_app_service.webapp",
                                "expressions": {
                                    "app_service_plan_id": {
                                        "references": [
                                            "azurerm_app_service_plan.app_service_plan.id",
                                            "azurerm_app_service_plan.app_service_plan"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "site_config": [
                                        {
                                            "dotnet_framework_version": {
                                                "constant_value": "v6.0"
                                            }
                                        }
                                    ],
                                    "source_control": [
                                        {
                                            "branch": {
                                                "references": [
                                                    "var.branch"
                                                ]
                                            },
                                            "manual_integration": {
                                                "constant_value": true
                                            },
                                            "repo_url": {
                                                "references": [
                                                    "var.repo_url"
                                                ]
                                            },
                                            "use_mercurial": {
                                                "constant_value": false
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "webapp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_app_service"
                            },
                            {
                                "address": "azurerm_app_service_plan.app_service_plan",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_plan_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "size": {
                                                "constant_value": "S1"
                                            },
                                            "tier": {
                                                "constant_value": "Standard"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_service_plan",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_app_service_plan"
                            },
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
                                            "var.rg_name"
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
                            "app_service_name": {
                                "default": "r8wqhold",
                                "description": "Name for the App Service"
                            },
                            "app_service_plan_name": {
                                "default": "v75fhold",
                                "description": "Name for the App Service Plan"
                            },
                            "branch": {
                                "default": "i4uqhold",
                                "description": "Branch of the Git repository"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "repo_url": {
                                "default": "he5whold",
                                "description": "URL of the Git repository"
                            },
                            "rg_name": {
                                "default": "1854hold",
                                "description": "Name for the resource group"
                            }
                        }
                    },
                    "source": "./modules/App_Services"
                },
                "traffic_manager": {
                    "expressions": {
                        "location": {
                            "constant_value": "Central US"
                        },
                        "monitor_failures": {
                            "constant_value": 2
                        },
                        "monitor_interval": {
                            "constant_value": 30
                        },
                        "monitor_path": {
                            "constant_value": "/"
                        },
                        "monitor_port": {
                            "constant_value": 443
                        },
                        "monitor_protocol": {
                            "constant_value": "HTTPS"
                        },
                        "monitor_timeout": {
                            "constant_value": 10
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "primary_target_resource_id": {
                            "references": [
                                "module.east_network.public_ip_id",
                                "module.east_network"
                            ]
                        },
                        "profile_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "secondary_target_resource_id": {
                            "references": [
                                "module.west_network.public_ip_id",
                                "module.west_network"
                            ]
                        },
                        "ttl": {
                            "constant_value": 100
                        }
                    },
                    "module": {
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
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "azurerm_traffic_manager_azure_endpoint.primary_endpoint",
                                "expressions": {
                                    "name": {
                                        "constant_value": "primary-endpoint"
                                    },
                                    "priority": {
                                        "constant_value": 1
                                    },
                                    "profile_id": {
                                        "references": [
                                            "azurerm_traffic_manager_profile.traffic_profile.id",
                                            "azurerm_traffic_manager_profile.traffic_profile"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.primary_target_resource_id"
                                        ]
                                    },
                                    "weight": {
                                        "constant_value": 100
                                    }
                                },
                                "mode": "managed",
                                "name": "primary_endpoint",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_azure_endpoint"
                            },
                            {
                                "address": "azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
                                "expressions": {
                                    "name": {
                                        "constant_value": "secondary-endpoint"
                                    },
                                    "priority": {
                                        "constant_value": 2
                                    },
                                    "profile_id": {
                                        "references": [
                                            "azurerm_traffic_manager_profile.traffic_profile.id",
                                            "azurerm_traffic_manager_profile.traffic_profile"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.secondary_target_resource_id"
                                        ]
                                    },
                                    "weight": {
                                        "constant_value": 100
                                    }
                                },
                                "mode": "managed",
                                "name": "secondary_endpoint",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_azure_endpoint"
                            },
                            {
                                "address": "azurerm_traffic_manager_profile.traffic_profile",
                                "expressions": {
                                    "dns_config": [
                                        {
                                            "relative_name": {
                                                "references": [
                                                    "var.name"
                                                ]
                                            },
                                            "ttl": {
                                                "references": [
                                                    "var.ttl"
                                                ]
                                            }
                                        }
                                    ],
                                    "monitor_config": [
                                        {
                                            "interval_in_seconds": {
                                                "references": [
                                                    "var.monitor_interval"
                                                ]
                                            },
                                            "path": {
                                                "references": [
                                                    "var.monitor_path"
                                                ]
                                            },
                                            "port": {
                                                "references": [
                                                    "var.monitor_port"
                                                ]
                                            },
                                            "protocol": {
                                                "references": [
                                                    "var.monitor_protocol"
                                                ]
                                            },
                                            "timeout_in_seconds": {
                                                "references": [
                                                    "var.monitor_timeout"
                                                ]
                                            },
                                            "tolerated_number_of_failures": {
                                                "references": [
                                                    "var.monitor_failures"
                                                ]
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.profile_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "traffic_routing_method": {
                                        "constant_value": "Priority"
                                    }
                                },
                                "mode": "managed",
                                "name": "traffic_profile",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_traffic_manager_profile"
                            }
                        ],
                        "variables": {
                            "location": {
                                "default": "eastus",
                                "description": "Locationn of the resource group"
                            },
                            "monitor_failures": {
                                "default": null,
                                "description": "Number of tolerated failures for monitoring"
                            },
                            "monitor_interval": {
                                "default": null,
                                "description": "Interval in seconds for monitoring"
                            },
                            "monitor_path": {
                                "default": "rhwxhold",
                                "description": "Path used for monitoring"
                            },
                            "monitor_port": {
                                "default": null,
                                "description": "Port used for monitoring"
                            },
                            "monitor_protocol": {
                                "default": "an5rhold",
                                "description": "Protocol used for monitoring"
                            },
                            "monitor_timeout": {
                                "default": null,
                                "description": "Timeout in seconds for monitoring"
                            },
                            "name": {
                                "default": "6r0zhold",
                                "description": "Relative name for DNS configuration"
                            },
                            "primary_target_resource_id": {
                                "default": "as1mhold",
                                "description": "ID of the primary target resource (e.g., App Service)"
                            },
                            "profile_name": {
                                "default": "y027hold",
                                "description": "Name of the Traffic Manager profile"
                            },
                            "rg_name": {
                                "default": "p9e6hold",
                                "description": "Name of the resource group"
                            },
                            "secondary_target_resource_id": {
                                "default": "ug14hold",
                                "description": "ID of the secondary target resource (e.g., App Service)"
                            },
                            "ttl": {
                                "default": null,
                                "description": "Time to live for DNS records"
                            }
                        }
                    },
                    "source": "./modules/traffic_manager"
                },
                "west_app_gateway": {
                    "expressions": {
                        "app_service_fqdn": {
                            "references": [
                                "module.west_webapp.webapp_name",
                                "module.west_webapp"
                            ]
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "public_ip_id": {
                            "references": [
                                "module.west_network.public_ip_id",
                                "module.west_network"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "module.west_network.subnet_id",
                                "module.west_network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_application_gateway.app_gateway",
                                "expressions": {
                                    "backend_address_pool": [
                                        {
                                            "fqdns": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "name": {
                                                "constant_value": "AppService"
                                            }
                                        }
                                    ],
                                    "backend_http_settings": [
                                        {
                                            "cookie_based_affinity": {
                                                "constant_value": "Disabled"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "pick_host_name_from_backend_address": {
                                                "constant_value": "true"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            },
                                            "probe_name": {
                                                "constant_value": "probe"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "request_timeout": {
                                                "constant_value": 1
                                            }
                                        }
                                    ],
                                    "frontend_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "frontend"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "frontend_port": [
                                        {
                                            "name": {
                                                "constant_value": "Http"
                                            },
                                            "port": {
                                                "constant_value": 80
                                            }
                                        }
                                    ],
                                    "gateway_ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "subnet"
                                            },
                                            "subnet_id": {
                                                "references": [
                                                    "var.vnet_subnet_id"
                                                ]
                                            }
                                        }
                                    ],
                                    "http_listener": [
                                        {
                                            "frontend_ip_configuration_name": {
                                                "constant_value": "frontend"
                                            },
                                            "frontend_port_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
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
                                            "var.name"
                                        ]
                                    },
                                    "probe": [
                                        {
                                            "host": {
                                                "references": [
                                                    "var.app_service_fqdn"
                                                ]
                                            },
                                            "interval": {
                                                "constant_value": "30"
                                            },
                                            "name": {
                                                "constant_value": "probe"
                                            },
                                            "path": {
                                                "constant_value": "/"
                                            },
                                            "protocol": {
                                                "constant_value": "Http"
                                            },
                                            "timeout": {
                                                "constant_value": "30"
                                            },
                                            "unhealthy_threshold": {
                                                "constant_value": "3"
                                            }
                                        }
                                    ],
                                    "request_routing_rule": [
                                        {
                                            "backend_address_pool_name": {
                                                "constant_value": "AppService"
                                            },
                                            "backend_http_settings_name": {
                                                "constant_value": "http"
                                            },
                                            "http_listener_name": {
                                                "constant_value": "http"
                                            },
                                            "name": {
                                                "constant_value": "http"
                                            },
                                            "priority": {
                                                "constant_value": 100
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
                                                "constant_value": 2
                                            },
                                            "name": {
                                                "constant_value": "WAF_v2"
                                            },
                                            "tier": {
                                                "constant_value": "WAF_v2"
                                            }
                                        }
                                    ],
                                    "waf_configuration": [
                                        {
                                            "enabled": {
                                                "constant_value": "true"
                                            },
                                            "firewall_mode": {
                                                "constant_value": "Detection"
                                            },
                                            "rule_set_type": {
                                                "constant_value": "OWASP"
                                            },
                                            "rule_set_version": {
                                                "constant_value": "3.0"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_gateway",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "app_service_fqdn": {
                                "default": "9f43hold",
                                "description": "FQDN of the App Service to be used in the Application Gateway configuration"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Application Gateway"
                            },
                            "name": {
                                "default": "t08ghold",
                                "description": "Name for the Application Gateway"
                            },
                            "public_ip_id": {
                                "default": "10.0.0.0/16",
                                "description": "ID of the Public IP for the Application Gateway"
                            },
                            "rg_name": {
                                "default": "m1lhhold",
                                "description": "Name for the Resource Group"
                            },
                            "vnet_subnet_id": {
                                "default": "a534hold",
                                "description": "ID of the VNet Subnet for the Application Gateway"
                            }
                        }
                    },
                    "source": "./modules/app_gateway"
                },
                "west_network": {
                    "expressions": {
                        "domain_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "public_ip_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "vnet_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "public_ip_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.ip.id",
                                        "azurerm_public_ip.ip"
                                    ]
                                }
                            },
                            "subnet_id": {
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
                                "address": "azurerm_public_ip.ip",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "domain_name_label": {
                                        "references": [
                                            "var.domain_name"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.public_ip_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    }
                                },
                                "mode": "managed",
                                "name": "ip",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            },
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
                                            "var.rg_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "azurerm_subnet.subnet",
                                "expressions": {
                                    "address_prefixes": {
                                        "constant_value": [
                                            "10.0.0.0/24"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "default"
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "virtual_network_name": {
                                        "references": [
                                            "azurerm_virtual_network.vnet.name",
                                            "azurerm_virtual_network.vnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            },
                            {
                                "address": "azurerm_virtual_network.vnet",
                                "expressions": {
                                    "address_space": {
                                        "constant_value": [
                                            "10.0.0.0/16"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "domain_name": {
                                "default": "zchjhold",
                                "description": "Domaine Name for the public IP"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "public_ip_name": {
                                "default": "10.0.0.0/16",
                                "description": "Name for the public IP"
                            },
                            "rg_name": {
                                "default": "4j6qhold",
                                "description": "Name for the resource group"
                            },
                            "vnet_name": {
                                "default": "03urhold",
                                "description": "Name for the virtual network"
                            }
                        }
                    },
                    "source": "./modules/Network"
                },
                "west_webapp": {
                    "expressions": {
                        "app_service_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "app_service_plan_name": {
                            "references": [
                                "var.environment"
                            ]
                        },
                        "branch": {
                            "constant_value": "master"
                        },
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "repo_url": {
                            "constant_value": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git"
                        },
                        "rg_name": {
                            "references": [
                                "var.environment"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The ID of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.id",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            },
                            "webapp_name": {
                                "description": "The default hostname of the web app.",
                                "expression": {
                                    "references": [
                                        "azurerm_app_service.webapp.default_site_hostname",
                                        "azurerm_app_service.webapp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_app_service.webapp",
                                "expressions": {
                                    "app_service_plan_id": {
                                        "references": [
                                            "azurerm_app_service_plan.app_service_plan.id",
                                            "azurerm_app_service_plan.app_service_plan"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "site_config": [
                                        {
                                            "dotnet_framework_version": {
                                                "constant_value": "v6.0"
                                            }
                                        }
                                    ],
                                    "source_control": [
                                        {
                                            "branch": {
                                                "references": [
                                                    "var.branch"
                                                ]
                                            },
                                            "manual_integration": {
                                                "constant_value": true
                                            },
                                            "repo_url": {
                                                "references": [
                                                    "var.repo_url"
                                                ]
                                            },
                                            "use_mercurial": {
                                                "constant_value": false
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "webapp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_app_service"
                            },
                            {
                                "address": "azurerm_app_service_plan.app_service_plan",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_resource_group.rg.location",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.app_service_plan_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_resource_group.rg.name",
                                            "azurerm_resource_group.rg"
                                        ]
                                    },
                                    "sku": [
                                        {
                                            "size": {
                                                "constant_value": "S1"
                                            },
                                            "tier": {
                                                "constant_value": "Standard"
                                            }
                                        }
                                    ]
                                },
                                "mode": "managed",
                                "name": "app_service_plan",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_app_service_plan"
                            },
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
                                            "var.rg_name"
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
                            "app_service_name": {
                                "default": "r8wqhold",
                                "description": "Name for the App Service"
                            },
                            "app_service_plan_name": {
                                "default": "v75fhold",
                                "description": "Name for the App Service Plan"
                            },
                            "branch": {
                                "default": "i4uqhold",
                                "description": "Branch of the Git repository"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the resource group"
                            },
                            "repo_url": {
                                "default": "he5whold",
                                "description": "URL of the Git repository"
                            },
                            "rg_name": {
                                "default": "1854hold",
                                "description": "Name for the resource group"
                            }
                        }
                    },
                    "source": "./modules/App_Services"
                }
            },
            "variables": {
                "environment": {
                    "default": "se3xhold",
                    "description": "Environment"
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
                    "address": "module.east_app_gateway",
                    "resources": [
                        {
                            "address": "module.east_app_gateway.azurerm_application_gateway.app_gateway",
                            "mode": "managed",
                            "name": "app_gateway",
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
                                "probe": [
                                    {
                                        "match": []
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
                                "ssl_policy": [],
                                "ssl_profile": [],
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
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
                                "autoscale_configuration": [],
                                "backend_address_pool": [
                                    {
                                        "ip_addresses": [],
                                        "name": "AppService"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "http",
                                        "path": "",
                                        "pick_host_name_from_backend_address": true,
                                        "port": 80,
                                        "probe_name": "probe",
                                        "protocol": "Http",
                                        "request_timeout": 1,
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
                                        "name": "frontend",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "Http",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "subnet"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "frontend",
                                        "frontend_port_name": "http",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "http",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "app-gateway-eastus-se3xhold",
                                "private_link_configuration": [],
                                "probe": [
                                    {
                                        "interval": 30,
                                        "match": [],
                                        "minimum_servers": 0,
                                        "name": "probe",
                                        "path": "/",
                                        "pick_host_name_from_backend_http_settings": false,
                                        "port": null,
                                        "protocol": "Http",
                                        "timeout": 30,
                                        "unhealthy_threshold": 3
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "AppService",
                                        "backend_http_settings_name": "http",
                                        "http_listener_name": "http",
                                        "name": "http",
                                        "priority": 100,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "east_rg-se3xhold",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": 2,
                                        "name": "WAF_v2",
                                        "tier": "WAF_v2"
                                    }
                                ],
                                "ssl_certificate": [],
                                "ssl_profile": [],
                                "tags": null,
                                "timeouts": null,
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
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
                },
                {
                    "address": "module.east_network",
                    "resources": [
                        {
                            "address": "module.east_network.azurerm_public_ip.ip",
                            "mode": "managed",
                            "name": "ip",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_public_ip",
                            "values": {
                                "allocation_method": "Static",
                                "ddos_protection_mode": "VirtualNetworkInherited",
                                "ddos_protection_plan_id": null,
                                "domain_name_label": "ipeastusse3xhold",
                                "edge_zone": null,
                                "idle_timeout_in_minutes": 4,
                                "ip_tags": null,
                                "ip_version": "IPv4",
                                "location": "eastus",
                                "name": "ip-eastus-se3xhold",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "east_rg-se3xhold",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_subnet.subnet",
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
                                    "10.0.0.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "default",
                                "resource_group_name": "east_rg-se3xhold",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "vnet-eastus-se3xhold"
                            }
                        },
                        {
                            "address": "module.east_network.azurerm_virtual_network.vnet",
                            "mode": "managed",
                            "name": "vnet",
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
                                "location": "eastus",
                                "name": "vnet-eastus-se3xhold",
                                "resource_group_name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.east_webapp",
                    "resources": [
                        {
                            "address": "module.east_webapp.azurerm_app_service.webapp",
                            "mode": "managed",
                            "name": "webapp",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "app_settings": {},
                                "auth_settings": [],
                                "backup": [],
                                "connection_string": [],
                                "identity": [],
                                "logs": [],
                                "outbound_ip_address_list": [],
                                "possible_outbound_ip_address_list": [],
                                "site_config": [
                                    {
                                        "cors": [],
                                        "ip_restriction": [],
                                        "scm_ip_restriction": []
                                    }
                                ],
                                "site_credential": [],
                                "source_control": [
                                    {}
                                ],
                                "storage_account": []
                            },
                            "type": "azurerm_app_service",
                            "values": {
                                "backup": [],
                                "client_affinity_enabled": false,
                                "client_cert_enabled": false,
                                "enabled": true,
                                "https_only": false,
                                "identity": [],
                                "location": "eastus",
                                "name": "EastWebApp-se3xhold",
                                "resource_group_name": "east_rg-se3xhold",
                                "site_config": [
                                    {
                                        "acr_use_managed_identity_credentials": false,
                                        "acr_user_managed_identity_client_id": null,
                                        "always_on": false,
                                        "app_command_line": null,
                                        "auto_swap_slot_name": null,
                                        "default_documents": null,
                                        "dotnet_framework_version": "v6.0",
                                        "health_check_path": null,
                                        "http2_enabled": false,
                                        "java_container": null,
                                        "java_container_version": null,
                                        "java_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "remote_debugging_enabled": false,
                                        "scm_use_main_ip_restriction": false,
                                        "use_32_bit_worker_process": null
                                    }
                                ],
                                "source_control": [
                                    {
                                        "branch": "master",
                                        "manual_integration": true,
                                        "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git",
                                        "use_mercurial": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.east_webapp.azurerm_app_service_plan.app_service_plan",
                            "mode": "managed",
                            "name": "app_service_plan",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "sku": [
                                    {}
                                ]
                            },
                            "type": "azurerm_app_service_plan",
                            "values": {
                                "app_service_environment_id": null,
                                "is_xenon": null,
                                "kind": "Windows",
                                "location": "eastus",
                                "name": "EastServicePlan-se3xhold",
                                "per_site_scaling": null,
                                "reserved": null,
                                "resource_group_name": "east_rg-se3xhold",
                                "sku": [
                                    {
                                        "size": "S1",
                                        "tier": "Standard"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "zone_redundant": null
                            }
                        },
                        {
                            "address": "module.east_webapp.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "eastus",
                                "managed_by": null,
                                "name": "east_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.traffic_manager",
                    "resources": [
                        {
                            "address": "module.traffic_manager.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "centralus",
                                "managed_by": null,
                                "name": "traffic_manager_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.primary_endpoint",
                            "mode": "managed",
                            "name": "primary_endpoint",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "custom_header": [],
                                "subnet": []
                            },
                            "type": "azurerm_traffic_manager_azure_endpoint",
                            "values": {
                                "always_serve_enabled": false,
                                "custom_header": [],
                                "enabled": true,
                                "geo_mappings": null,
                                "name": "primary-endpoint",
                                "priority": 1,
                                "subnet": [],
                                "timeouts": null,
                                "weight": 100
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
                            "mode": "managed",
                            "name": "secondary_endpoint",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "custom_header": [],
                                "subnet": []
                            },
                            "type": "azurerm_traffic_manager_azure_endpoint",
                            "values": {
                                "always_serve_enabled": false,
                                "custom_header": [],
                                "enabled": true,
                                "geo_mappings": null,
                                "name": "secondary-endpoint",
                                "priority": 2,
                                "subnet": [],
                                "timeouts": null,
                                "weight": 100
                            }
                        },
                        {
                            "address": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile",
                            "mode": "managed",
                            "name": "traffic_profile",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "dns_config": [
                                    {}
                                ],
                                "monitor_config": [
                                    {
                                        "custom_header": []
                                    }
                                ]
                            },
                            "type": "azurerm_traffic_manager_profile",
                            "values": {
                                "dns_config": [
                                    {
                                        "relative_name": "traffic-profile1937-se3xhold",
                                        "ttl": 100
                                    }
                                ],
                                "max_return": null,
                                "monitor_config": [
                                    {
                                        "custom_header": [],
                                        "expected_status_code_ranges": null,
                                        "interval_in_seconds": 30,
                                        "path": "/",
                                        "port": 443,
                                        "protocol": "HTTPS",
                                        "timeout_in_seconds": 10,
                                        "tolerated_number_of_failures": 2
                                    }
                                ],
                                "name": "traffic-profile1937-se3xhold",
                                "resource_group_name": "traffic_manager_rg-se3xhold",
                                "tags": null,
                                "timeouts": null,
                                "traffic_routing_method": "Priority",
                                "traffic_view_enabled": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.west_app_gateway",
                    "resources": [
                        {
                            "address": "module.west_app_gateway.azurerm_application_gateway.app_gateway",
                            "mode": "managed",
                            "name": "app_gateway",
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
                                "probe": [
                                    {
                                        "match": []
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
                                "ssl_policy": [],
                                "ssl_profile": [],
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
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
                                "autoscale_configuration": [],
                                "backend_address_pool": [
                                    {
                                        "ip_addresses": [],
                                        "name": "AppService"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "http",
                                        "path": "",
                                        "pick_host_name_from_backend_address": true,
                                        "port": 80,
                                        "probe_name": "probe",
                                        "protocol": "Http",
                                        "request_timeout": 1,
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
                                        "name": "frontend",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "Http",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "subnet"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "frontend",
                                        "frontend_port_name": "http",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "http",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "westeurope",
                                "name": "app-gateway-westus-se3xhold",
                                "private_link_configuration": [],
                                "probe": [
                                    {
                                        "interval": 30,
                                        "match": [],
                                        "minimum_servers": 0,
                                        "name": "probe",
                                        "path": "/",
                                        "pick_host_name_from_backend_http_settings": false,
                                        "port": null,
                                        "protocol": "Http",
                                        "timeout": 30,
                                        "unhealthy_threshold": 3
                                    }
                                ],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "AppService",
                                        "backend_http_settings_name": "http",
                                        "http_listener_name": "http",
                                        "name": "http",
                                        "priority": 100,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "west_rg-se3xhold",
                                "rewrite_rule_set": [],
                                "sku": [
                                    {
                                        "capacity": 2,
                                        "name": "WAF_v2",
                                        "tier": "WAF_v2"
                                    }
                                ],
                                "ssl_certificate": [],
                                "ssl_profile": [],
                                "tags": null,
                                "timeouts": null,
                                "trusted_client_certificate": [],
                                "trusted_root_certificate": [],
                                "url_path_map": [],
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
                },
                {
                    "address": "module.west_network",
                    "resources": [
                        {
                            "address": "module.west_network.azurerm_public_ip.ip",
                            "mode": "managed",
                            "name": "ip",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_public_ip",
                            "values": {
                                "allocation_method": "Static",
                                "ddos_protection_mode": "VirtualNetworkInherited",
                                "ddos_protection_plan_id": null,
                                "domain_name_label": "ipwestusse3xhold",
                                "edge_zone": null,
                                "idle_timeout_in_minutes": 4,
                                "ip_tags": null,
                                "ip_version": "IPv4",
                                "location": "westeurope",
                                "name": "ip-westus-se3xhold",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "west_rg-se3xhold",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "westeurope",
                                "managed_by": null,
                                "name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_subnet.subnet",
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
                                    "10.0.0.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "default",
                                "resource_group_name": "west_rg-se3xhold",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "vnet-westus-se3xhold"
                            }
                        },
                        {
                            "address": "module.west_network.azurerm_virtual_network.vnet",
                            "mode": "managed",
                            "name": "vnet",
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
                                "location": "westeurope",
                                "name": "vnet-westus-se3xhold",
                                "resource_group_name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.west_webapp",
                    "resources": [
                        {
                            "address": "module.west_webapp.azurerm_app_service.webapp",
                            "mode": "managed",
                            "name": "webapp",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "app_settings": {},
                                "auth_settings": [],
                                "backup": [],
                                "connection_string": [],
                                "identity": [],
                                "logs": [],
                                "outbound_ip_address_list": [],
                                "possible_outbound_ip_address_list": [],
                                "site_config": [
                                    {
                                        "cors": [],
                                        "ip_restriction": [],
                                        "scm_ip_restriction": []
                                    }
                                ],
                                "site_credential": [],
                                "source_control": [
                                    {}
                                ],
                                "storage_account": []
                            },
                            "type": "azurerm_app_service",
                            "values": {
                                "backup": [],
                                "client_affinity_enabled": false,
                                "client_cert_enabled": false,
                                "enabled": true,
                                "https_only": false,
                                "identity": [],
                                "location": "westeurope",
                                "name": "WestWebApp-se3xhold",
                                "resource_group_name": "west_rg-se3xhold",
                                "site_config": [
                                    {
                                        "acr_use_managed_identity_credentials": false,
                                        "acr_user_managed_identity_client_id": null,
                                        "always_on": false,
                                        "app_command_line": null,
                                        "auto_swap_slot_name": null,
                                        "default_documents": null,
                                        "dotnet_framework_version": "v6.0",
                                        "health_check_path": null,
                                        "http2_enabled": false,
                                        "java_container": null,
                                        "java_container_version": null,
                                        "java_version": null,
                                        "php_version": null,
                                        "python_version": null,
                                        "remote_debugging_enabled": false,
                                        "scm_use_main_ip_restriction": false,
                                        "use_32_bit_worker_process": null
                                    }
                                ],
                                "source_control": [
                                    {
                                        "branch": "master",
                                        "manual_integration": true,
                                        "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git",
                                        "use_mercurial": false
                                    }
                                ],
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.west_webapp.azurerm_app_service_plan.app_service_plan",
                            "mode": "managed",
                            "name": "app_service_plan",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "sku": [
                                    {}
                                ]
                            },
                            "type": "azurerm_app_service_plan",
                            "values": {
                                "app_service_environment_id": null,
                                "is_xenon": null,
                                "kind": "Windows",
                                "location": "westeurope",
                                "name": "WestServicePlan-se3xhold",
                                "per_site_scaling": null,
                                "reserved": null,
                                "resource_group_name": "west_rg-se3xhold",
                                "sku": [
                                    {
                                        "size": "S1",
                                        "tier": "Standard"
                                    }
                                ],
                                "tags": null,
                                "timeouts": null,
                                "zone_redundant": null
                            }
                        },
                        {
                            "address": "module.west_webapp.azurerm_resource_group.rg",
                            "mode": "managed",
                            "name": "rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_resource_group",
                            "values": {
                                "location": "westeurope",
                                "managed_by": null,
                                "name": "west_rg-se3xhold",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "location"
            ],
            "resource": "module.west_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_network.azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_network.azurerm_public_ip.ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.east_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_network.azurerm_public_ip.ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_network.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.traffic_manager.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.east_webapp.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_network.azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_webapp.azurerm_app_service_plan.app_service_plan"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_network.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.east_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.east_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.west_network.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.west_webapp.azurerm_app_service_plan.app_service_plan"
        },
        {
            "attribute": [
                "default_site_hostname"
            ],
            "resource": "module.west_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "default_site_hostname"
            ],
            "resource": "module.east_webapp.azurerm_app_service.webapp"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.west_network.azurerm_resource_group.rg"
        }
    ],
    "resource_changes": [
        {
            "address": "module.east_app_gateway.azurerm_application_gateway.app_gateway",
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
                            "name": "AppService"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 80,
                            "probe_name": "probe",
                            "protocol": "Http",
                            "request_timeout": 1,
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
                            "name": "frontend",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "Http",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "subnet"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend",
                            "frontend_port_name": "http",
                            "host_name": "",
                            "host_names": [],
                            "name": "http",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "app-gateway-eastus-se3xhold",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AppService",
                            "backend_http_settings_name": "http",
                            "http_listener_name": "http",
                            "name": "http",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "east_rg-se3xhold",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
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
                    "probe": [
                        {
                            "match": []
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
                    "ssl_policy": [],
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
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
                    "probe": [
                        {
                            "host": true,
                            "id": true,
                            "match": []
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
            "module_address": "module.east_app_gateway",
            "name": "app_gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.east_network.azurerm_public_ip.ip",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "ipeastusse3xhold",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "eastus",
                    "name": "ip-eastus-se3xhold",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.east_network.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.east_network.azurerm_subnet.subnet",
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
                    "name": "default",
                    "resource_group_name": "east_rg-se3xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-eastus-se3xhold"
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
            "module_address": "module.east_network",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.east_network.azurerm_virtual_network.vnet",
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
                    "location": "eastus",
                    "name": "vnet-eastus-se3xhold",
                    "resource_group_name": "east_rg-se3xhold",
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
            "module_address": "module.east_network",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.east_webapp.azurerm_app_service.webapp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_cert_enabled": false,
                    "enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "eastus",
                    "name": "EastWebApp-se3xhold",
                    "resource_group_name": "east_rg-se3xhold",
                    "site_config": [
                        {
                            "acr_use_managed_identity_credentials": false,
                            "acr_user_managed_identity_client_id": null,
                            "always_on": false,
                            "app_command_line": null,
                            "auto_swap_slot_name": null,
                            "default_documents": null,
                            "dotnet_framework_version": "v6.0",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "java_container": null,
                            "java_container_version": null,
                            "java_version": null,
                            "php_version": null,
                            "python_version": null,
                            "remote_debugging_enabled": false,
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker_process": null
                        }
                    ],
                    "source_control": [
                        {
                            "branch": "master",
                            "manual_integration": true,
                            "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_East.git",
                            "use_mercurial": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "backup": [],
                    "connection_string": [],
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "cors": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": [],
                    "source_control": [
                        {}
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_service_plan_id": true,
                    "app_settings": true,
                    "auth_settings": true,
                    "backup": [],
                    "client_cert_mode": true,
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "default_site_hostname": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "logs": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "cors": true,
                            "ftps_state": true,
                            "ip_restriction": true,
                            "linux_fx_version": true,
                            "local_mysql_enabled": true,
                            "managed_pipeline_mode": true,
                            "min_tls_version": true,
                            "number_of_workers": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": true,
                            "scm_type": true,
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true,
                            "windows_fx_version": true
                        }
                    ],
                    "site_credential": true,
                    "source_control": [
                        {
                            "rollback_enabled": true
                        }
                    ],
                    "storage_account": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.east_webapp",
            "name": "webapp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service"
        },
        {
            "address": "module.east_webapp.azurerm_app_service_plan.app_service_plan",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "is_xenon": null,
                    "kind": "Windows",
                    "location": "eastus",
                    "name": "EastServicePlan-se3xhold",
                    "per_site_scaling": null,
                    "reserved": null,
                    "resource_group_name": "east_rg-se3xhold",
                    "sku": [
                        {
                            "size": "S1",
                            "tier": "Standard"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "zone_redundant": null
                },
                "after_sensitive": {
                    "sku": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "maximum_elastic_worker_count": true,
                    "maximum_number_of_workers": true,
                    "sku": [
                        {
                            "capacity": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.east_webapp",
            "name": "app_service_plan",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_plan"
        },
        {
            "address": "module.east_webapp.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "managed_by": null,
                    "name": "east_rg-se3xhold",
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
            "module_address": "module.east_webapp",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.traffic_manager.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "centralus",
                    "managed_by": null,
                    "name": "traffic_manager_rg-se3xhold",
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
            "module_address": "module.traffic_manager",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.primary_endpoint",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "always_serve_enabled": false,
                    "custom_header": [],
                    "enabled": true,
                    "geo_mappings": null,
                    "name": "primary-endpoint",
                    "priority": 1,
                    "subnet": [],
                    "timeouts": null,
                    "weight": 100
                },
                "after_sensitive": {
                    "custom_header": [],
                    "subnet": []
                },
                "after_unknown": {
                    "custom_header": [],
                    "id": true,
                    "profile_id": true,
                    "subnet": [],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "primary_endpoint",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_azure_endpoint"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_azure_endpoint.secondary_endpoint",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "always_serve_enabled": false,
                    "custom_header": [],
                    "enabled": true,
                    "geo_mappings": null,
                    "name": "secondary-endpoint",
                    "priority": 2,
                    "subnet": [],
                    "timeouts": null,
                    "weight": 100
                },
                "after_sensitive": {
                    "custom_header": [],
                    "subnet": []
                },
                "after_unknown": {
                    "custom_header": [],
                    "id": true,
                    "profile_id": true,
                    "subnet": [],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "secondary_endpoint",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_azure_endpoint"
        },
        {
            "address": "module.traffic_manager.azurerm_traffic_manager_profile.traffic_profile",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dns_config": [
                        {
                            "relative_name": "traffic-profile1937-se3xhold",
                            "ttl": 100
                        }
                    ],
                    "max_return": null,
                    "monitor_config": [
                        {
                            "custom_header": [],
                            "expected_status_code_ranges": null,
                            "interval_in_seconds": 30,
                            "path": "/",
                            "port": 443,
                            "protocol": "HTTPS",
                            "timeout_in_seconds": 10,
                            "tolerated_number_of_failures": 2
                        }
                    ],
                    "name": "traffic-profile1937-se3xhold",
                    "resource_group_name": "traffic_manager_rg-se3xhold",
                    "tags": null,
                    "timeouts": null,
                    "traffic_routing_method": "Priority",
                    "traffic_view_enabled": null
                },
                "after_sensitive": {
                    "dns_config": [
                        {}
                    ],
                    "monitor_config": [
                        {
                            "custom_header": []
                        }
                    ]
                },
                "after_unknown": {
                    "dns_config": [
                        {}
                    ],
                    "fqdn": true,
                    "id": true,
                    "monitor_config": [
                        {
                            "custom_header": []
                        }
                    ],
                    "profile_status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.traffic_manager",
            "name": "traffic_profile",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_traffic_manager_profile"
        },
        {
            "address": "module.west_app_gateway.azurerm_application_gateway.app_gateway",
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
                            "name": "AppService"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http",
                            "path": "",
                            "pick_host_name_from_backend_address": true,
                            "port": 80,
                            "probe_name": "probe",
                            "protocol": "Http",
                            "request_timeout": 1,
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
                            "name": "frontend",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "Http",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "subnet"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "frontend",
                            "frontend_port_name": "http",
                            "host_name": "",
                            "host_names": [],
                            "name": "http",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "app-gateway-westus-se3xhold",
                    "private_link_configuration": [],
                    "probe": [
                        {
                            "interval": 30,
                            "match": [],
                            "minimum_servers": 0,
                            "name": "probe",
                            "path": "/",
                            "pick_host_name_from_backend_http_settings": false,
                            "port": null,
                            "protocol": "Http",
                            "timeout": 30,
                            "unhealthy_threshold": 3
                        }
                    ],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "AppService",
                            "backend_http_settings_name": "http",
                            "http_listener_name": "http",
                            "name": "http",
                            "priority": 100,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "west_rg-se3xhold",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 2,
                            "name": "WAF_v2",
                            "tier": "WAF_v2"
                        }
                    ],
                    "ssl_certificate": [],
                    "ssl_profile": [],
                    "tags": null,
                    "timeouts": null,
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
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
                    "probe": [
                        {
                            "match": []
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
                    "ssl_policy": [],
                    "ssl_profile": [],
                    "trusted_client_certificate": [],
                    "trusted_root_certificate": [],
                    "url_path_map": [],
                    "waf_configuration": [
                        {
                            "disabled_rule_group": [],
                            "exclusion": []
                        }
                    ]
                },
                "after_unknown": {
                    "authentication_certificate": [],
                    "autoscale_configuration": [],
                    "backend_address_pool": [
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
                    "probe": [
                        {
                            "host": true,
                            "id": true,
                            "match": []
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
            "module_address": "module.west_app_gateway",
            "name": "app_gateway",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "module.west_network.azurerm_public_ip.ip",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allocation_method": "Static",
                    "ddos_protection_mode": "VirtualNetworkInherited",
                    "ddos_protection_plan_id": null,
                    "domain_name_label": "ipwestusse3xhold",
                    "edge_zone": null,
                    "idle_timeout_in_minutes": 4,
                    "ip_tags": null,
                    "ip_version": "IPv4",
                    "location": "westeurope",
                    "name": "ip-westus-se3xhold",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "ip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.west_network.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.west_network.azurerm_subnet.subnet",
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
                    "name": "default",
                    "resource_group_name": "west_rg-se3xhold",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-westus-se3xhold"
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
            "module_address": "module.west_network",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.west_network.azurerm_virtual_network.vnet",
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
                    "name": "vnet-westus-se3xhold",
                    "resource_group_name": "west_rg-se3xhold",
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
            "module_address": "module.west_network",
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.west_webapp.azurerm_app_service.webapp",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "backup": [],
                    "client_affinity_enabled": false,
                    "client_cert_enabled": false,
                    "enabled": true,
                    "https_only": false,
                    "identity": [],
                    "location": "westeurope",
                    "name": "WestWebApp-se3xhold",
                    "resource_group_name": "west_rg-se3xhold",
                    "site_config": [
                        {
                            "acr_use_managed_identity_credentials": false,
                            "acr_user_managed_identity_client_id": null,
                            "always_on": false,
                            "app_command_line": null,
                            "auto_swap_slot_name": null,
                            "default_documents": null,
                            "dotnet_framework_version": "v6.0",
                            "health_check_path": null,
                            "http2_enabled": false,
                            "java_container": null,
                            "java_container_version": null,
                            "java_version": null,
                            "php_version": null,
                            "python_version": null,
                            "remote_debugging_enabled": false,
                            "scm_use_main_ip_restriction": false,
                            "use_32_bit_worker_process": null
                        }
                    ],
                    "source_control": [
                        {
                            "branch": "master",
                            "manual_integration": true,
                            "repo_url": "https://github.com/Selmouni-Abdelilah/WebApplication_West.git",
                            "use_mercurial": false
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "app_settings": {},
                    "auth_settings": [],
                    "backup": [],
                    "connection_string": [],
                    "identity": [],
                    "logs": [],
                    "outbound_ip_address_list": [],
                    "possible_outbound_ip_address_list": [],
                    "site_config": [
                        {
                            "cors": [],
                            "ip_restriction": [],
                            "scm_ip_restriction": []
                        }
                    ],
                    "site_credential": [],
                    "source_control": [
                        {}
                    ],
                    "storage_account": []
                },
                "after_unknown": {
                    "app_service_plan_id": true,
                    "app_settings": true,
                    "auth_settings": true,
                    "backup": [],
                    "client_cert_mode": true,
                    "connection_string": true,
                    "custom_domain_verification_id": true,
                    "default_site_hostname": true,
                    "id": true,
                    "identity": [],
                    "key_vault_reference_identity_id": true,
                    "logs": true,
                    "outbound_ip_address_list": true,
                    "outbound_ip_addresses": true,
                    "possible_outbound_ip_address_list": true,
                    "possible_outbound_ip_addresses": true,
                    "site_config": [
                        {
                            "cors": true,
                            "ftps_state": true,
                            "ip_restriction": true,
                            "linux_fx_version": true,
                            "local_mysql_enabled": true,
                            "managed_pipeline_mode": true,
                            "min_tls_version": true,
                            "number_of_workers": true,
                            "remote_debugging_version": true,
                            "scm_ip_restriction": true,
                            "scm_type": true,
                            "vnet_route_all_enabled": true,
                            "websockets_enabled": true,
                            "windows_fx_version": true
                        }
                    ],
                    "site_credential": true,
                    "source_control": [
                        {
                            "rollback_enabled": true
                        }
                    ],
                    "storage_account": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.west_webapp",
            "name": "webapp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service"
        },
        {
            "address": "module.west_webapp.azurerm_app_service_plan.app_service_plan",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "app_service_environment_id": null,
                    "is_xenon": null,
                    "kind": "Windows",
                    "location": "westeurope",
                    "name": "WestServicePlan-se3xhold",
                    "per_site_scaling": null,
                    "reserved": null,
                    "resource_group_name": "west_rg-se3xhold",
                    "sku": [
                        {
                            "size": "S1",
                            "tier": "Standard"
                        }
                    ],
                    "tags": null,
                    "timeouts": null,
                    "zone_redundant": null
                },
                "after_sensitive": {
                    "sku": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "maximum_elastic_worker_count": true,
                    "maximum_number_of_workers": true,
                    "sku": [
                        {
                            "capacity": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.west_webapp",
            "name": "app_service_plan",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_app_service_plan"
        },
        {
            "address": "module.west_webapp.azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "west_rg-se3xhold",
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
            "module_address": "module.west_webapp",
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-17T00:21:09Z",
    "variables": {
        "environment": {
            "value": "se3xhold"
        }
    }
}