
package assemble
import data.fugue.resource_view.resource_view_input
import future.keywords.in
resourceTypeLabel := "azurerm_application_gateway"
repoViewTop := {
    "azurerm_application_gateway": {
        "autoscale_configuration.max_capacity": [],
        "autoscale_configuration.min_capacity": [],
        "backend_address_pool.ip_addresses": [],
        "backend_http_settings.cookie_based_affinity": [
            "Disabled",
            "Enabled"
        ],
        "backend_http_settings.path": [],
        "backend_http_settings.protocol": [
            "Https"
        ],
        "backend_http_settings.request_timeout": [],
        "frontend_ip_configuration.private_ip_address_allocation": [
            "Dynamic",
            "Static"
        ],
        "frontend_port.port": [],
        "http_listener.protocol": [
            "Https"
        ],
        "location": [
            "westeurope",
            "centralus",
            "uaenorth",
            "westus2",
            "uksouth",
            "northeurope",
            "centralindia",
            "japaneast",
            "eastus2",
            "southeastasia",
            "canadacentral",
            "southafricanorth",
            "westus3"
        ],
        "probe.interval": [],
        "probe.match.body": [
            "Welcome",
            "App1",
            "App2"
        ],
        "probe.match.status_code": [
            "200-400",
            "200-399"
        ],
        "probe.path": [],
        "probe.protocol": [
            "Https"
        ],
        "probe.timeout": [],
        "redirect_configuration.include_path": [
            true,
            false
        ],
        "redirect_configuration.include_query_string": [
            true,
            false
        ],
        "redirect_configuration.target_url": [],
        "request_routing_rule.priority": [
            null
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
        "rewrite_rule_set.rewrite_rule.condition.pattern": [],
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
        "sku.capacity": [],
        "sku.name": [
            "Standard_v2",
            "Standard_Small",
            "WAF_v2",
            "Standard_Medium"
        ],
        "sku.tier": [
            "Standard_v2",
            "WAF_v2"
        ],
        "ssl_certificate.data": [],
        "ssl_certificate.password": [
            "export",
            "bukhari"
        ],
        "url_path_map.path_rule.paths": [],
        "waf_configuration.enabled": [
            true,
            false
        ],
        "waf_configuration.firewall_mode": [
            "Prevention",
            "Detection"
        ],
        "waf_configuration.rule_set_version": []
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
    not contains(idAttr1, "fqdn")
    not contains(idAttr2, "fqdn")
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
                "name": "azurerm",
                "version_constraint": "3.116.0"
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            },
            "template": {
                "full_name": "registry.terraform.io/hashicorp/template",
                "name": "template"
            }
        },
        "root_module": {
            "outputs": {
                "testing_command": {
                    "expression": {
                        "references": [
                            "azurerm_public_ip.pip.ip_address",
                            "azurerm_public_ip.pip"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.backend_address_pool_name"
                                    ]
                                }
                            },
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
                                    "constant_value": "Disabled"
                                },
                                "name": {
                                    "references": [
                                        "var.backend_http_settings_name"
                                    ]
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
                                        "var.frontend_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.pip.id",
                                        "azurerm_public_ip.pip"
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
                                        "var.frontend_ip_configuration_name"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "var.frontend_port_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.http_listener_name"
                                    ]
                                },
                                "protocol": {
                                    "constant_value": "Http"
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "AppGateway"
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "var.backend_address_pool_name"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "var.backend_http_settings_name"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "var.http_listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "var.request_routing_rule_name"
                                    ]
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
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
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
                        ]
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_application_gateway"
                },
                {
                    "address": "azurerm_linux_virtual_machine.web-worker",
                    "count_expression": {
                        "references": [
                            "var.web_workers_count"
                        ]
                    },
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "random_password.password.result",
                                "random_password.password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "var.vm_admin_username"
                            ]
                        },
                        "custom_data": {
                            "references": [
                                "data.template_file.test-cloud-init.rendered",
                                "data.template_file.test-cloud-init"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.nic",
                                "count.index"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "references": [
                                        "var.vm_storage_account_type"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                                        "var.vm_offer"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.vm_publisher"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.vm_sku"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.vm_version"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "web-worker",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "azurerm_linux_virtual_machine.web-worker-failback",
                    "count_expression": {
                        "references": [
                            "var.failback_workers_count"
                        ]
                    },
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "random_password.password.result",
                                "random_password.password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "var.vm_admin_username"
                            ]
                        },
                        "custom_data": {
                            "references": [
                                "data.template_file.test-cloud-init.rendered",
                                "data.template_file.test-cloud-init"
                            ]
                        },
                        "disable_password_authentication": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "azurerm_network_interface.nic-failback",
                                "count.index"
                            ]
                        },
                        "os_disk": [
                            {
                                "caching": {
                                    "constant_value": "ReadWrite"
                                },
                                "storage_account_type": {
                                    "references": [
                                        "var.vm_storage_account_type"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
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
                                        "var.vm_offer"
                                    ]
                                },
                                "publisher": {
                                    "references": [
                                        "var.vm_publisher"
                                    ]
                                },
                                "sku": {
                                    "references": [
                                        "var.vm_sku"
                                    ]
                                },
                                "version": {
                                    "references": [
                                        "var.vm_version"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "web-worker-failback",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_linux_virtual_machine"
                },
                {
                    "address": "azurerm_network_interface.nic",
                    "count_expression": {
                        "references": [
                            "var.web_workers_count"
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
                                        "azurerm_subnet.backend.id",
                                        "azurerm_subnet.backend"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
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
                    "name": "nic",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_interface.nic-failback",
                    "count_expression": {
                        "references": [
                            "var.failback_workers_count"
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
                                        "azurerm_subnet.backend.id",
                                        "azurerm_subnet.backend"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
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
                    "name": "nic-failback",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface"
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc01",
                    "count_expression": {
                        "references": [
                            "var.web_workers_count"
                        ]
                    },
                    "expressions": {
                        "backend_address_pool_id": {
                            "references": [
                                "azurerm_application_gateway.appgw.backend_address_pool",
                                "azurerm_application_gateway.appgw"
                            ]
                        },
                        "ip_configuration_name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_id": {
                            "references": [
                                "azurerm_network_interface.nic",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nic-assoc01",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-failback-assoc01",
                    "count_expression": {
                        "references": [
                            "var.failback_workers_count"
                        ]
                    },
                    "expressions": {
                        "backend_address_pool_id": {
                            "references": [
                                "azurerm_application_gateway.appgw.backend_address_pool",
                                "azurerm_application_gateway.appgw"
                            ]
                        },
                        "ip_configuration_name": {
                            "references": [
                                "count.index"
                            ]
                        },
                        "network_interface_id": {
                            "references": [
                                "azurerm_network_interface.nic-failback",
                                "count.index"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "nic-failback-assoc01",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
                },
                {
                    "address": "azurerm_network_security_group.backend_nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "backend-nsg"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "security_rule": {
                            "constant_value": [
                                {
                                    "access": "Allow",
                                    "description": "Allow HTTP",
                                    "destination_address_prefix": "*",
                                    "destination_address_prefixes": [],
                                    "destination_application_security_group_ids": [],
                                    "destination_port_range": "80",
                                    "destination_port_ranges": [],
                                    "direction": "Inbound",
                                    "name": "HTTP",
                                    "priority": 1001,
                                    "protocol": "Tcp",
                                    "source_address_prefix": "10.1.0.0/16",
                                    "source_address_prefixes": [],
                                    "source_application_security_group_ids": [],
                                    "source_port_range": "*",
                                    "source_port_ranges": []
                                }
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "backend_nsg",
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
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-pip"
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
                    "name": "pip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.main_region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.rg"
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
                    "address": "azurerm_subnet.backend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-backend"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.appgw-vnet.name",
                                "azurerm_virtual_network.appgw-vnet"
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
                    "address": "azurerm_subnet.frontend",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.0.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-frontend"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.appgw-vnet.name",
                                "azurerm_virtual_network.appgw-vnet"
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
                    "address": "azurerm_subnet_network_security_group_association.backend_nsg",
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "azurerm_network_security_group.backend_nsg.id",
                                "azurerm_network_security_group.backend_nsg"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.backend.id",
                                "azurerm_subnet.backend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "backend_nsg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_network_security_group_association"
                },
                {
                    "address": "azurerm_virtual_network.appgw-vnet",
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-vnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw-vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "random_password.password",
                    "expressions": {
                        "length": {
                            "constant_value": 16
                        },
                        "lower": {
                            "constant_value": true
                        },
                        "numeric": {
                            "constant_value": true
                        },
                        "special": {
                            "constant_value": true
                        },
                        "upper": {
                            "constant_value": true
                        }
                    },
                    "mode": "managed",
                    "name": "password",
                    "provider_config_key": "random",
                    "schema_version": 3,
                    "type": "random_password"
                },
                {
                    "address": "data.azurerm_client_config.current",
                    "mode": "data",
                    "name": "current",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "data.template_file.test-cloud-init",
                    "expressions": {
                        "template": {
                            "constant_value": "FILENAME PLACEHOLDER"
                        }
                    },
                    "mode": "data",
                    "name": "test-cloud-init",
                    "provider_config_key": "template",
                    "schema_version": 0,
                    "type": "template_file"
                }
            ],
            "variables": {
                "backend_address_pool_name": {
                    "default": "backend-address-pool"
                },
                "backend_http_settings_name": {
                    "default": "http-settings"
                },
                "failback_workers_count": {
                    "default": 0
                },
                "frontend_ip_configuration_name": {
                    "default": "frontend-ip-configuration"
                },
                "frontend_port_name": {
                    "default": "FrontHTTP"
                },
                "http_listener_name": {
                    "default": "http-listener"
                },
                "main_region": {},
                "redirect_configuration_name": {
                    "default": "myRedirectConfig"
                },
                "request_routing_rule_name": {
                    "default": "request_routing_rule"
                },
                "rg": {},
                "subscription_id": {},
                "subscription_name": {},
                "vm_admin_username": {
                    "default": "azureuser"
                },
                "vm_offer": {
                    "default": "0001-com-ubuntu-server-jammy"
                },
                "vm_publisher": {
                    "default": "Canonical"
                },
                "vm_size": {
                    "default": "Standard_B1s"
                },
                "vm_sku": {
                    "default": "22_04-lts-gen2"
                },
                "vm_storage_account_type": {
                    "default": "Standard_LRS"
                },
                "vm_version": {
                    "default": "latest"
                },
                "web_workers_count": {
                    "default": 2
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "testing_command": {
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
            "testing_command": {
                "sensitive": false
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "mode": "managed",
                    "name": "appgw",
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
                                "name": "backend-address-pool"
                            },
                            {
                                "fqdns": [],
                                "ip_addresses": [],
                                "name": "backend-address-pool-failback"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "http-settings",
                                "path": "",
                                "pick_host_name_from_backend_address": false,
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
                                "name": "frontend-ip-configuration",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "FrontHTTP",
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
                                "frontend_ip_configuration_name": "frontend-ip-configuration",
                                "frontend_port_name": "FrontHTTP",
                                "host_name": "",
                                "host_names": [],
                                "name": "http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "AppGateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "backend-address-pool",
                                "backend_http_settings_name": "http-settings",
                                "http_listener_name": "http-listener",
                                "name": "request_routing_rule",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "appgw-test-RG",
                        "rewrite_rule_set": [],
                        "sku": [
                            {
                                "capacity": 1,
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
                    "address": "azurerm_linux_virtual_machine.web-worker-failback[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "web-worker-failback",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_ssh_key": [],
                        "admin_username": "azureuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                        "location": "westeurope",
                        "max_bid_price": -1,
                        "name": "web-failback-1",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
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
                        "resource_group_name": "appgw-test-RG",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B1s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-jammy",
                                "publisher": "Canonical",
                                "sku": "22_04-lts-gen2",
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
                    "address": "azurerm_linux_virtual_machine.web-worker-failback[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "web-worker-failback",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_ssh_key": [],
                        "admin_username": "azureuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                        "location": "westeurope",
                        "max_bid_price": -1,
                        "name": "web-failback-2",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
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
                        "resource_group_name": "appgw-test-RG",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B1s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-jammy",
                                "publisher": "Canonical",
                                "sku": "22_04-lts-gen2",
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
                    "address": "azurerm_linux_virtual_machine.web-worker[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "web-worker",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_ssh_key": [],
                        "admin_username": "azureuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                        "location": "westeurope",
                        "max_bid_price": -1,
                        "name": "web-1",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
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
                        "resource_group_name": "appgw-test-RG",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B1s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-jammy",
                                "publisher": "Canonical",
                                "sku": "22_04-lts-gen2",
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
                    "address": "azurerm_linux_virtual_machine.web-worker[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "web-worker",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "additional_capabilities": [],
                        "admin_password": true,
                        "admin_ssh_key": [],
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
                        "termination_notification": []
                    },
                    "type": "azurerm_linux_virtual_machine",
                    "values": {
                        "additional_capabilities": [],
                        "admin_ssh_key": [],
                        "admin_username": "azureuser",
                        "allow_extension_operations": true,
                        "availability_set_id": null,
                        "boot_diagnostics": [],
                        "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                        "capacity_reservation_group_id": null,
                        "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                        "location": "westeurope",
                        "max_bid_price": -1,
                        "name": "web-2",
                        "os_disk": [
                            {
                                "caching": "ReadWrite",
                                "diff_disk_settings": [],
                                "disk_encryption_set_id": null,
                                "secure_vm_disk_encryption_set_id": null,
                                "security_encryption_type": null,
                                "storage_account_type": "Standard_LRS",
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
                        "resource_group_name": "appgw-test-RG",
                        "secret": [],
                        "secure_boot_enabled": null,
                        "size": "Standard_B1s",
                        "source_image_id": null,
                        "source_image_reference": [
                            {
                                "offer": "0001-com-ubuntu-server-jammy",
                                "publisher": "Canonical",
                                "sku": "22_04-lts-gen2",
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
                    "address": "azurerm_network_interface.nic-failback[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic-failback",
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
                                "name": "nic-ipconfig-1",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westeurope",
                        "name": "nic-failback-1",
                        "resource_group_name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic-failback[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic-failback",
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
                                "name": "nic-ipconfig-2",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westeurope",
                        "name": "nic-failback-2",
                        "resource_group_name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[0]",
                    "index": 0,
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
                                "name": "nic-ipconfig-1",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westeurope",
                        "name": "nic-1",
                        "resource_group_name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface.nic[1]",
                    "index": 1,
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
                                "name": "nic-ipconfig-2",
                                "private_ip_address_allocation": "Dynamic",
                                "private_ip_address_version": "IPv4",
                                "public_ip_address_id": null
                            }
                        ],
                        "location": "westeurope",
                        "name": "nic-2",
                        "resource_group_name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc01[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic-assoc01",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-1",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc01[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic-assoc01",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-2",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-failback-assoc01[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "nic-failback-assoc01",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-1",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-failback-assoc01[1]",
                    "index": 1,
                    "mode": "managed",
                    "name": "nic-failback-assoc01",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_network_interface_application_gateway_backend_address_pool_association",
                    "values": {
                        "ip_configuration_name": "nic-ipconfig-2",
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_network_security_group.backend_nsg",
                    "mode": "managed",
                    "name": "backend_nsg",
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
                        "location": "westeurope",
                        "name": "backend-nsg",
                        "resource_group_name": "appgw-test-RG",
                        "security_rule": [
                            {
                                "access": "Allow",
                                "description": "Allow HTTP",
                                "destination_address_prefix": "*",
                                "destination_address_prefixes": [],
                                "destination_application_security_group_ids": [],
                                "destination_port_range": "80",
                                "destination_port_ranges": [],
                                "direction": "Inbound",
                                "name": "HTTP",
                                "priority": 1001,
                                "protocol": "Tcp",
                                "source_address_prefix": "10.1.0.0/16",
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
                    "address": "azurerm_public_ip.pip",
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
                        "location": "westeurope",
                        "name": "appgw-pip",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "appgw-test-RG",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "mode": "managed",
                    "name": "rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
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
                            "10.1.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "appgw-backend",
                        "resource_group_name": "appgw-test-RG",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appgw-vnet"
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
                            "10.1.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "appgw-frontend",
                        "resource_group_name": "appgw-test-RG",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appgw-vnet"
                    }
                },
                {
                    "address": "azurerm_subnet_network_security_group_association.backend_nsg",
                    "mode": "managed",
                    "name": "backend_nsg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_network_security_group_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.appgw-vnet",
                    "mode": "managed",
                    "name": "appgw-vnet",
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
                        "location": "westeurope",
                        "name": "appgw-vnet",
                        "resource_group_name": "appgw-test-RG",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "random_password.password",
                    "mode": "managed",
                    "name": "password",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 3,
                    "sensitive_values": {
                        "bcrypt_hash": true,
                        "result": true
                    },
                    "type": "random_password",
                    "values": {
                        "keepers": null,
                        "length": 16,
                        "lower": true,
                        "min_lower": 0,
                        "min_numeric": 0,
                        "min_special": 0,
                        "min_upper": 0,
                        "number": true,
                        "numeric": true,
                        "override_special": null,
                        "special": true,
                        "upper": true
                    }
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
                    },
                    {
                        "address": "data.template_file.test-cloud-init",
                        "mode": "data",
                        "name": "test-cloud-init",
                        "provider_name": "registry.terraform.io/hashicorp/template",
                        "schema_version": 0,
                        "sensitive_values": {},
                        "type": "template_file",
                        "values": {
                            "filename": null,
                            "id": "2af1186a7fdf38f65237ac6af80c72c4313ab889fca594cd3e0aa60ceee57b62",
                            "rendered": "FILENAME PLACEHOLDER",
                            "template": "FILENAME PLACEHOLDER",
                            "vars": null
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
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
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
            "resource": "azurerm_network_security_group.backend_nsg"
        },
        {
            "attribute": [],
            "resource": "azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "result"
            ],
            "resource": "random_password.password"
        },
        {
            "attribute": [
                "rendered"
            ],
            "resource": "data.template_file.test-cloud-init"
        },
        {
            "attribute": [],
            "resource": "azurerm_network_interface.nic-failback"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.appgw-vnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.frontend"
        },
        {
            "attribute": [
                "backend_address_pool"
            ],
            "resource": "azurerm_application_gateway.appgw"
        }
    ],
    "resource_changes": [
        {
            "address": "azurerm_application_gateway.appgw",
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
                            "name": "backend-address-pool"
                        },
                        {
                            "fqdns": [],
                            "ip_addresses": [],
                            "name": "backend-address-pool-failback"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "http-settings",
                            "path": "",
                            "pick_host_name_from_backend_address": false,
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
                            "name": "frontend-ip-configuration",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "FrontHTTP",
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
                            "frontend_ip_configuration_name": "frontend-ip-configuration",
                            "frontend_port_name": "FrontHTTP",
                            "host_name": "",
                            "host_names": [],
                            "name": "http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "AppGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "backend-address-pool",
                            "backend_http_settings_name": "http-settings",
                            "http_listener_name": "http-listener",
                            "name": "request_routing_rule",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "appgw-test-RG",
                    "rewrite_rule_set": [],
                    "sku": [
                        {
                            "capacity": 1,
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
                        },
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
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_linux_virtual_machine.web-worker[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "admin_username": "azureuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                    "location": "westeurope",
                    "max_bid_price": -1,
                    "name": "web-1",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
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
                    "resource_group_name": "appgw-test-RG",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B1s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-jammy",
                            "publisher": "Canonical",
                            "sku": "22_04-lts-gen2",
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
                    "admin_ssh_key": [],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "web-worker",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_linux_virtual_machine.web-worker[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "admin_username": "azureuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                    "location": "westeurope",
                    "max_bid_price": -1,
                    "name": "web-2",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
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
                    "resource_group_name": "appgw-test-RG",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B1s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-jammy",
                            "publisher": "Canonical",
                            "sku": "22_04-lts-gen2",
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
                    "admin_ssh_key": [],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "web-worker",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_linux_virtual_machine.web-worker-failback[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "admin_username": "azureuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                    "location": "westeurope",
                    "max_bid_price": -1,
                    "name": "web-failback-1",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
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
                    "resource_group_name": "appgw-test-RG",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B1s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-jammy",
                            "publisher": "Canonical",
                            "sku": "22_04-lts-gen2",
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
                    "admin_ssh_key": [],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "web-worker-failback",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_linux_virtual_machine.web-worker-failback[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_ssh_key": [],
                    "admin_username": "azureuser",
                    "allow_extension_operations": true,
                    "availability_set_id": null,
                    "boot_diagnostics": [],
                    "bypass_platform_safety_checks_on_user_schedule_enabled": false,
                    "capacity_reservation_group_id": null,
                    "custom_data": "RklMRU5BTUUgUExBQ0VIT0xERVI=",
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
                    "location": "westeurope",
                    "max_bid_price": -1,
                    "name": "web-failback-2",
                    "os_disk": [
                        {
                            "caching": "ReadWrite",
                            "diff_disk_settings": [],
                            "disk_encryption_set_id": null,
                            "secure_vm_disk_encryption_set_id": null,
                            "security_encryption_type": null,
                            "storage_account_type": "Standard_LRS",
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
                    "resource_group_name": "appgw-test-RG",
                    "secret": [],
                    "secure_boot_enabled": null,
                    "size": "Standard_B1s",
                    "source_image_id": null,
                    "source_image_reference": [
                        {
                            "offer": "0001-com-ubuntu-server-jammy",
                            "publisher": "Canonical",
                            "sku": "22_04-lts-gen2",
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
                    "admin_ssh_key": [],
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
                    "termination_notification": []
                },
                "after_unknown": {
                    "additional_capabilities": [],
                    "admin_password": true,
                    "admin_ssh_key": [],
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
                    "virtual_machine_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "web-worker-failback",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "azurerm_network_interface.nic[0]",
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
                            "name": "nic-ipconfig-1",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westeurope",
                    "name": "nic-1",
                    "resource_group_name": "appgw-test-RG",
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
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.nic[1]",
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
                            "name": "nic-ipconfig-2",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westeurope",
                    "name": "nic-2",
                    "resource_group_name": "appgw-test-RG",
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
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.nic-failback[0]",
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
                            "name": "nic-ipconfig-1",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westeurope",
                    "name": "nic-failback-1",
                    "resource_group_name": "appgw-test-RG",
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
            "name": "nic-failback",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface.nic-failback[1]",
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
                            "name": "nic-ipconfig-2",
                            "private_ip_address_allocation": "Dynamic",
                            "private_ip_address_version": "IPv4",
                            "public_ip_address_id": null
                        }
                    ],
                    "location": "westeurope",
                    "name": "nic-failback-2",
                    "resource_group_name": "appgw-test-RG",
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
            "name": "nic-failback",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc01[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-1",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "nic-assoc01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-assoc01[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-2",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "nic-assoc01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-failback-assoc01[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-1",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "nic-failback-assoc01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
            "address": "azurerm_network_interface_application_gateway_backend_address_pool_association.nic-failback-assoc01[1]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "ip_configuration_name": "nic-ipconfig-2",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "backend_address_pool_id": true,
                    "id": true,
                    "network_interface_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 1,
            "mode": "managed",
            "name": "nic-failback-assoc01",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_application_gateway_backend_address_pool_association"
        },
        {
            "address": "azurerm_network_security_group.backend_nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "name": "backend-nsg",
                    "resource_group_name": "appgw-test-RG",
                    "security_rule": [
                        {
                            "access": "Allow",
                            "description": "Allow HTTP",
                            "destination_address_prefix": "*",
                            "destination_address_prefixes": [],
                            "destination_application_security_group_ids": [],
                            "destination_port_range": "80",
                            "destination_port_ranges": [],
                            "direction": "Inbound",
                            "name": "HTTP",
                            "priority": 1001,
                            "protocol": "Tcp",
                            "source_address_prefix": "10.1.0.0/16",
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
            "name": "backend_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "azurerm_public_ip.pip",
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
                    "name": "appgw-pip",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "appgw-test-RG",
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
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "azurerm_resource_group.rg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "westeurope",
                    "managed_by": null,
                    "name": "appgw-test-RG",
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
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.backend",
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
                    "name": "appgw-backend",
                    "resource_group_name": "appgw-test-RG",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appgw-vnet"
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
            "address": "azurerm_subnet.frontend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "appgw-frontend",
                    "resource_group_name": "appgw-test-RG",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appgw-vnet"
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
            "address": "azurerm_subnet_network_security_group_association.backend_nsg",
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
            "name": "backend_nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "azurerm_virtual_network.appgw-vnet",
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
                    "location": "westeurope",
                    "name": "appgw-vnet",
                    "resource_group_name": "appgw-test-RG",
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
            "name": "appgw-vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "random_password.password",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "keepers": null,
                    "length": 16,
                    "lower": true,
                    "min_lower": 0,
                    "min_numeric": 0,
                    "min_special": 0,
                    "min_upper": 0,
                    "number": true,
                    "numeric": true,
                    "override_special": null,
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
            "name": "password",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_password"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:16:01Z",
    "variables": {
        "backend_address_pool_name": {
            "value": "backend-address-pool"
        },
        "backend_http_settings_name": {
            "value": "http-settings"
        },
        "failback_workers_count": {
            "value": 2
        },
        "frontend_ip_configuration_name": {
            "value": "frontend-ip-configuration"
        },
        "frontend_port_name": {
            "value": "FrontHTTP"
        },
        "http_listener_name": {
            "value": "http-listener"
        },
        "main_region": {
            "value": "westeurope"
        },
        "redirect_configuration_name": {
            "value": "myRedirectConfig"
        },
        "request_routing_rule_name": {
            "value": "request_routing_rule"
        },
        "rg": {
            "value": "appgw-test-RG"
        },
        "subscription_id": {
            "value": "to-be-changed"
        },
        "subscription_name": {
            "value": "to-be-changed"
        },
        "vm_admin_username": {
            "value": "azureuser"
        },
        "vm_offer": {
            "value": "0001-com-ubuntu-server-jammy"
        },
        "vm_publisher": {
            "value": "Canonical"
        },
        "vm_size": {
            "value": "Standard_B1s"
        },
        "vm_sku": {
            "value": "22_04-lts-gen2"
        },
        "vm_storage_account_type": {
            "value": "Standard_LRS"
        },
        "vm_version": {
            "value": "latest"
        },
        "web_workers_count": {
            "value": 2
        }
    }
}