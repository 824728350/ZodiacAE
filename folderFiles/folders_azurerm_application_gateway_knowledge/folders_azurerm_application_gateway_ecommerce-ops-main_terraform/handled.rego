
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
            "module.aks_cluster:local": {
                "full_name": "registry.terraform.io/hashicorp/local",
                "module_address": "module.aks_cluster",
                "name": "local"
            },
            "null": {
                "full_name": "registry.terraform.io/hashicorp/null",
                "name": "null"
            }
        },
        "root_module": {
            "module_calls": {
                "AzureBastionSubnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureBastionSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "id of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            },
                            "name": {
                                "description": "name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.name",
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
                                            "var.address_prefixes"
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
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Range of ip for the subnet"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            },
                            "virtual_network_name": {
                                "default": null,
                                "description": "Virtual network or supernet of the subnet"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "access_policy_aks_cluster": {
                    "depends_on": [
                        "module.access_policy_current_user",
                        "module.key_vault",
                        "module.aks_cluster"
                    ],
                    "expressions": {
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
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
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "module.aks_cluster.secret_provider",
                                "module.aks_cluster"
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
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_key_vault_access_policy.access_policy",
                                "expressions": {
                                    "certificate_permissions": {
                                        "references": [
                                            "var.certificate_permissions"
                                        ]
                                    },
                                    "key_permissions": {
                                        "references": [
                                            "var.key_permissions"
                                        ]
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "var.key_vault_id"
                                        ]
                                    },
                                    "object_id": {
                                        "references": [
                                            "var.object_id"
                                        ]
                                    },
                                    "secret_permissions": {
                                        "references": [
                                            "var.secret_permissions"
                                        ]
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "access_policy",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_access_policy"
                            }
                        ],
                        "variables": {
                            "certificate_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_vault_id": {
                                "default": null,
                                "description": "The ID of the Key Vault where the policy should be created"
                            },
                            "object_id": {
                                "default": null,
                                "description": "value"
                            },
                            "secret_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "tenant_id": {
                                "default": null
                            }
                        }
                    },
                    "source": "./modules/access_policy"
                },
                "access_policy_current_user": {
                    "expressions": {
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
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
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "data.azurerm_client_config.current.object_id",
                                "data.azurerm_client_config.current"
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
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_key_vault_access_policy.access_policy",
                                "expressions": {
                                    "certificate_permissions": {
                                        "references": [
                                            "var.certificate_permissions"
                                        ]
                                    },
                                    "key_permissions": {
                                        "references": [
                                            "var.key_permissions"
                                        ]
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "var.key_vault_id"
                                        ]
                                    },
                                    "object_id": {
                                        "references": [
                                            "var.object_id"
                                        ]
                                    },
                                    "secret_permissions": {
                                        "references": [
                                            "var.secret_permissions"
                                        ]
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "access_policy",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_access_policy"
                            }
                        ],
                        "variables": {
                            "certificate_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_vault_id": {
                                "default": null,
                                "description": "The ID of the Key Vault where the policy should be created"
                            },
                            "object_id": {
                                "default": null,
                                "description": "value"
                            },
                            "secret_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "tenant_id": {
                                "default": null
                            }
                        }
                    },
                    "source": "./modules/access_policy"
                },
                "access_policy_identity": {
                    "depends_on": [
                        "module.access_policy_current_user",
                        "module.key_vault",
                        "module.identity"
                    ],
                    "expressions": {
                        "certificate_permissions": {
                            "constant_value": [
                                "Get"
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
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
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
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_key_vault_access_policy.access_policy",
                                "expressions": {
                                    "certificate_permissions": {
                                        "references": [
                                            "var.certificate_permissions"
                                        ]
                                    },
                                    "key_permissions": {
                                        "references": [
                                            "var.key_permissions"
                                        ]
                                    },
                                    "key_vault_id": {
                                        "references": [
                                            "var.key_vault_id"
                                        ]
                                    },
                                    "object_id": {
                                        "references": [
                                            "var.object_id"
                                        ]
                                    },
                                    "secret_permissions": {
                                        "references": [
                                            "var.secret_permissions"
                                        ]
                                    },
                                    "tenant_id": {
                                        "references": [
                                            "var.tenant_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "access_policy",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_access_policy"
                            }
                        ],
                        "variables": {
                            "certificate_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "key_vault_id": {
                                "default": null,
                                "description": "The ID of the Key Vault where the policy should be created"
                            },
                            "object_id": {
                                "default": null,
                                "description": "value"
                            },
                            "secret_permissions": {
                                "default": null,
                                "description": "value"
                            },
                            "tenant_id": {
                                "default": null
                            }
                        }
                    },
                    "source": "./modules/access_policy"
                },
                "aks_cluster": {
                    "expressions": {
                        "dns_prefix": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "identity_type": {
                            "constant_value": "SystemAssigned"
                        },
                        "local_file": {
                            "constant_value": "KubeConfig"
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "network_plugin": {
                            "constant_value": "azure"
                        },
                        "node_count": {
                            "constant_value": 1
                        },
                        "node_pool_name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "os_disk_size_gb": {
                            "constant_value": 40
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
                        "subnet_id": {
                            "references": [
                                "module.aks_subnet.id",
                                "module.aks_subnet"
                            ]
                        },
                        "vm_size": {
                            "constant_value": "Standard_DS2_v2"
                        }
                    },
                    "module": {
                        "outputs": {
                            "name": {
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.name",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            },
                            "principal_id": {
                                "description": "The ID of the created AKS cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.kubelet_identity",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            },
                            "secret_provider": {
                                "description": "The ID of the created AKS cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity[0].object_id",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0].secret_identity",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.aks_cluster.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.aks_cluster"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_kubernetes_cluster.aks_cluster",
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
                                            "os_disk_size_gb": {
                                                "references": [
                                                    "var.os_disk_size_gb"
                                                ]
                                            },
                                            "vm_size": {
                                                "references": [
                                                    "var.vm_size"
                                                ]
                                            },
                                            "vnet_subnet_id": {
                                                "references": [
                                                    "var.subnet_id"
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
                                                "references": [
                                                    "var.identity_type"
                                                ]
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
                                            "var.name"
                                        ]
                                    },
                                    "network_profile": [
                                        {
                                            "network_plugin": {
                                                "references": [
                                                    "var.network_plugin"
                                                ]
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            },
                            {
                                "address": "local_file.kubeconfig",
                                "depends_on": [
                                    "azurerm_kubernetes_cluster.aks_cluster"
                                ],
                                "expressions": {
                                    "content": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
                                            "azurerm_kubernetes_cluster.aks_cluster"
                                        ]
                                    },
                                    "filename": {
                                        "references": [
                                            "var.local_file"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubeconfig",
                                "provider_config_key": "module.aks_cluster:local",
                                "schema_version": 0,
                                "type": "local_file"
                            }
                        ],
                        "variables": {
                            "dns_prefix": {
                                "default": "zodiac",
                                "description": "dns of the AKS cluster"
                            },
                            "identity_type": {
                                "default": null,
                                "description": "identity type of the aks_cluster"
                            },
                            "local_file": {
                                "default": "kubeconfig",
                                "description": "Name of the kuberneter file"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Name of the AKS cluster"
                            },
                            "name": {
                                "default": null,
                                "description": "Name of the AKS cluster"
                            },
                            "network_plugin": {
                                "default": null,
                                "description": "enables you to configure communication within your k8s network"
                            },
                            "node_count": {
                                "default": null,
                                "description": "number of pods replicas for the AKS cluster's node pool"
                            },
                            "node_pool_name": {
                                "default": null,
                                "description": "name of the AKS cluster's node pool"
                            },
                            "os_disk_size_gb": {
                                "default": null,
                                "description": "size of the operative system disk"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "resource group for the AKS cluster"
                            },
                            "secret_rotation_enabled": {
                                "default": null,
                                "description": "Must be specified to enable key_vault_secrets_provider"
                            },
                            "subnet_id": {
                                "default": null,
                                "description": "id of the subnet for the AKS cluster's node pool"
                            },
                            "vm_size": {
                                "default": null,
                                "description": "vm size for the AKS cluster's node pool"
                            }
                        }
                    },
                    "source": "./modules/aks_cluster"
                },
                "aks_subnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.1.2.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "id of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            },
                            "name": {
                                "description": "name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.name",
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
                                            "var.address_prefixes"
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
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Range of ip for the subnet"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            },
                            "virtual_network_name": {
                                "default": null,
                                "description": "Virtual network or supernet of the subnet"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "appgw_subnet": {
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_appigw.name",
                                "module.virtual_network_appigw"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "id of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
                                    ]
                                }
                            },
                            "name": {
                                "description": "name of the subnet",
                                "expression": {
                                    "references": [
                                        "azurerm_subnet.subnet.name",
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
                                            "var.address_prefixes"
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
                                    "virtual_network_name": {
                                        "references": [
                                            "var.virtual_network_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_subnet"
                            }
                        ],
                        "variables": {
                            "address_prefixes": {
                                "default": "10.0.0.0/16",
                                "description": "Range of ip for the subnet"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            },
                            "virtual_network_name": {
                                "default": null,
                                "description": "Virtual network or supernet of the subnet"
                            }
                        }
                    },
                    "source": "./modules/subnet"
                },
                "application_gateway": {
                    "expressions": {
                        "backend_address_pool_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "backend_http_settings_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "backend_http_settings_port": {
                            "constant_value": 80
                        },
                        "backend_http_settings_protocol": {
                            "constant_value": "Http"
                        },
                        "backend_http_settings_request_timeout": {
                            "constant_value": 60
                        },
                        "cookie_based_affinity": {
                            "constant_value": "Disabled"
                        },
                        "frontend_ip_configuration_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "frontend_port_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "frontend_port_port": {
                            "constant_value": 80
                        },
                        "gateway_ip_configuration_name": {
                            "constant_value": "appgwIpConfig"
                        },
                        "http_listener_frontend_ip_configuration_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "http_listener_frontend_port_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "http_listener_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
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
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.ip_appgw.id",
                                "module.ip_appgw"
                            ]
                        },
                        "request_routing_rule_backend_address_pool_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "request_routing_rule_backend_http_settings_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "request_routing_rule_http_listener_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
                        },
                        "request_routing_rule_name": {
                            "references": [
                                "module.appgw_subnet.name",
                                "module.appgw_subnet"
                            ]
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
                                "module.appgw_subnet.id",
                                "module.appgw_subnet"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "application_gateway_id": {
                                "description": "The ID of the created Azure Application Gateway.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.appgw.id",
                                        "azurerm_application_gateway.appgw"
                                    ]
                                }
                            },
                            "application_gateway_name": {
                                "description": "The name of the created Azure Application Gateway.",
                                "expression": {
                                    "references": [
                                        "azurerm_application_gateway.appgw.name",
                                        "azurerm_application_gateway.appgw"
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
                                            "var.name"
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
                                "name": "appgw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_application_gateway"
                            }
                        ],
                        "variables": {
                            "backend_address_pool_name": {
                                "default": null,
                                "description": "The name of the backend address pool."
                            },
                            "backend_http_settings_name": {
                                "default": null,
                                "description": "The name of the backend HTTP settings."
                            },
                            "backend_http_settings_port": {
                                "default": null,
                                "description": "The port number for the backend HTTP settings."
                            },
                            "backend_http_settings_protocol": {
                                "default": null,
                                "description": "The protocol for the backend HTTP settings (e.g., 'Http' or 'Https')."
                            },
                            "backend_http_settings_request_timeout": {
                                "default": null,
                                "description": "The request timeout for the backend HTTP settings (in seconds)."
                            },
                            "cookie_based_affinity": {
                                "default": null
                            },
                            "frontend_ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the frontend IP configuration."
                            },
                            "frontend_port_name": {
                                "default": null,
                                "description": "The name of the frontend port."
                            },
                            "frontend_port_port": {
                                "default": null,
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
                                "default": null,
                                "description": "The name of the frontend port associated with the HTTP listener."
                            },
                            "http_listener_name": {
                                "default": null,
                                "description": "The name of the HTTP listener."
                            },
                            "http_listener_protocol": {
                                "default": null,
                                "description": "The protocol for the HTTP listener (e.g., 'Http' or 'Https')."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location/region where the Application Gateway will be deployed."
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the Application Gateway."
                            },
                            "public_ip_address_id": {
                                "default": "10.0.0.0/16",
                                "description": "The ID of the public IP address to associate with the frontend IP configuration."
                            },
                            "request_routing_rule_backend_address_pool_name": {
                                "default": null,
                                "description": "The name of the backend address pool associated with the request routing rule."
                            },
                            "request_routing_rule_backend_http_settings_name": {
                                "default": null,
                                "description": "The name of the backend HTTP settings associated with the request routing rule."
                            },
                            "request_routing_rule_http_listener_name": {
                                "default": null,
                                "description": "The name of the HTTP listener associated with the request routing rule."
                            },
                            "request_routing_rule_name": {
                                "default": null,
                                "description": "The name of the request routing rule."
                            },
                            "request_routing_rule_priority": {
                                "default": null,
                                "description": "The priority of the request routing rule."
                            },
                            "request_routing_rule_rule_type": {
                                "default": null,
                                "description": "The type of the request routing rule."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Application Gateway."
                            },
                            "sku_capacity": {
                                "default": null,
                                "description": "The capacity (instance count) of the SKU for the Application Gateway."
                            },
                            "sku_name": {
                                "default": null,
                                "description": "The name of the SKU for the Application Gateway."
                            },
                            "sku_tier": {
                                "default": null,
                                "description": "The tier of the SKU for the Application Gateway."
                            },
                            "subnet_id": {
                                "default": null,
                                "description": "The ID of the subnet to which the Application Gateway should be deployed."
                            }
                        }
                    },
                    "source": "./modules/application_gateway"
                },
                "bastion": {
                    "expressions": {
                        "ip_configuration_name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "public_ip_address_id": {
                            "references": [
                                "module.ip_bastion.id",
                                "module.ip_bastion"
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
                                "module.AzureBastionSubnet.id",
                                "module.AzureBastionSubnet"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_bastion_host.bastion",
                                "expressions": {
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "references": [
                                                    "var.ip_configuration_name"
                                                ]
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "var.public_ip_address_id"
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
                                "name": "bastion",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_bastion_host"
                            }
                        ],
                        "variables": {
                            "ip_configuration_name": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the ip_configuration of the Bastion."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the Bastion."
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the Bastion."
                            },
                            "public_ip_address_id": {
                                "default": "10.0.0.0/16",
                                "description": "The name of the ip_configuration of the Bastion."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The location of the Bastion."
                            },
                            "subnet_id": {
                                "default": null,
                                "description": "The name of the ip_configuration of the Bastion."
                            }
                        }
                    },
                    "source": "./modules/bastion"
                },
                "container_registry": {
                    "expressions": {
                        "admin_enabled": {
                            "constant_value": true
                        },
                        "container_name": {
                            "references": [
                                "var.prefix_name"
                            ]
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
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "module": {
                        "outputs": {
                            "scope": {
                                "description": "The ID of the created container registry",
                                "expression": {
                                    "references": [
                                        "azurerm_container_registry.cr.id",
                                        "azurerm_container_registry.cr"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_container_registry.cr",
                                "expressions": {
                                    "admin_enabled": {
                                        "references": [
                                            "var.admin_enabled"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location"
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
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "cr",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_container_registry"
                            }
                        ],
                        "variables": {
                            "admin_enabled": {
                                "default": true,
                                "description": "The SKU name of the Azure Container Registry."
                            },
                            "container_name": {
                                "default": null,
                                "description": "The name of the Azure Container Registry."
                            },
                            "location": {
                                "default": "eastus",
                                "description": "The location of the resource group in which to create the Azure Container Registry."
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the Azure Container Registry."
                            },
                            "sku": {
                                "default": "Basic",
                                "description": "The SKU name of the Azure Container Registry."
                            }
                        }
                    },
                    "source": "./modules/container_registry"
                },
                "identity": {
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
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
                            "client_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.identity.client_id",
                                        "azurerm_user_assigned_identity.identity"
                                    ]
                                }
                            },
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.identity.id",
                                        "azurerm_user_assigned_identity.identity"
                                    ]
                                }
                            },
                            "principal_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_user_assigned_identity.identity.principal_id",
                                        "azurerm_user_assigned_identity.identity"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_user_assigned_identity.identity",
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
                                "name": "identity",
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
                                "default": "upt1hold",
                                "description": "The name of the user-assigned identity."
                            },
                            "resource_group_name": {
                                "default": "s7kehold",
                                "description": "The name of the resource group."
                            }
                        }
                    },
                    "source": "./modules/identity"
                },
                "ip_appgw": {
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The id of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.publicIp.id",
                                        "azurerm_public_ip.publicIp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.publicIp",
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
                                            "var.name"
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
                                "name": "publicIp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "allocation_method": {
                                "default": "eastus",
                                "description": "Azure method to assign an ip"
                            },
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource, is the same as the resource group"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            },
                            "sku": {
                                "default": null,
                                "description": "specific version or offering of the resource"
                            }
                        }
                    },
                    "source": "./modules/public_ip"
                },
                "ip_bastion": {
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "description": "The id of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_public_ip.publicIp.id",
                                        "azurerm_public_ip.publicIp"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_public_ip.publicIp",
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
                                            "var.name"
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
                                "name": "publicIp",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "allocation_method": {
                                "default": "eastus",
                                "description": "Azure method to assign an ip"
                            },
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource, is the same as the resource group"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            },
                            "sku": {
                                "default": null,
                                "description": "specific version or offering of the resource"
                            }
                        }
                    },
                    "source": "./modules/public_ip"
                },
                "key_vault": {
                    "expressions": {
                        "enabled_for_disk_encryption": {
                            "constant_value": true
                        },
                        "key_vault_name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
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
                        }
                    },
                    "module": {
                        "outputs": {
                            "key_vault_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_key_vault.key_vault.id",
                                        "azurerm_key_vault.key_vault"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_key_vault.key_vault",
                                "expressions": {
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
                            }
                        ],
                        "variables": {
                            "enabled_for_disk_encryption": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "key_vault_name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "location": {
                                "default": "eastus",
                                "description": "Location for the Azure Key Vault"
                            },
                            "purge_protection_enabled": {
                                "default": null,
                                "description": "Notify before expiry"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
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
                            }
                        }
                    },
                    "source": "./modules/key_vault"
                },
                "key_vault_secret_webserver-config": {
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "value": {
                            "constant_value": "config-value"
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_key_vault_secret.key_vault_secret",
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "var.key_vault_id"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "value": {
                                        "references": [
                                            "var.value"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault_secret",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_secret"
                            }
                        ],
                        "variables": {
                            "key_vault_id": {
                                "default": null,
                                "description": "The ID of the Key Vault where the policy should be created"
                            },
                            "name": {
                                "default": null
                            },
                            "value": {
                                "default": null
                            }
                        }
                    },
                    "source": "./modules/key_vault_secret"
                },
                "key_vault_secret_webserver_properties": {
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "value": {
                            "constant_value": "properties-value"
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_key_vault_secret.key_vault_secret",
                                "expressions": {
                                    "key_vault_id": {
                                        "references": [
                                            "var.key_vault_id"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "value": {
                                        "references": [
                                            "var.value"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "key_vault_secret",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_key_vault_secret"
                            }
                        ],
                        "variables": {
                            "key_vault_id": {
                                "default": null,
                                "description": "The ID of the Key Vault where the policy should be created"
                            },
                            "name": {
                                "default": null
                            },
                            "value": {
                                "default": null
                            }
                        }
                    },
                    "source": "./modules/key_vault_secret"
                },
                "peeringAppgwToCluster": {
                    "expressions": {
                        "allow_virtual_network_access": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "module.virtual_network_aks.id",
                                "module.virtual_network_aks"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_appigw.name",
                                "module.virtual_network_appigw"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "var.remote_virtual_network_id"
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
                                "name": "ClustertoAppGWVnetPeering",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            }
                        ],
                        "variables": {
                            "allow_virtual_network_access": {
                                "default": true,
                                "description": "Soft delete retention period in days"
                            },
                            "name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "remote_virtual_network_id": {
                                "default": null,
                                "description": "Tenant ID"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "virtual_network_name": {
                                "default": null,
                                "description": "Location for the Azure Key Vault"
                            }
                        }
                    },
                    "source": "./modules/network_peering"
                },
                "peeringClusterToAppgw": {
                    "expressions": {
                        "allow_virtual_network_access": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "module.virtual_network_appigw.id",
                                "module.virtual_network_appigw"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                                "expressions": {
                                    "allow_virtual_network_access": {
                                        "constant_value": true
                                    },
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "remote_virtual_network_id": {
                                        "references": [
                                            "var.remote_virtual_network_id"
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
                                "name": "ClustertoAppGWVnetPeering",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network_peering"
                            }
                        ],
                        "variables": {
                            "allow_virtual_network_access": {
                                "default": true,
                                "description": "Soft delete retention period in days"
                            },
                            "name": {
                                "default": null,
                                "description": "Name of the Azure Key Vault"
                            },
                            "remote_virtual_network_id": {
                                "default": null,
                                "description": "Tenant ID"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Name of the Azure Resource Group"
                            },
                            "virtual_network_name": {
                                "default": null,
                                "description": "Location for the Azure Key Vault"
                            }
                        }
                    },
                    "source": "./modules/network_peering"
                },
                "resource_group": {
                    "expressions": {
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "location": {
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_resource_group.rg.location",
                                        "azurerm_resource_group.rg"
                                    ]
                                }
                            },
                            "name": {
                                "description": "The name of the resource",
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
                                "default": "East US",
                                "description": "The location of the resource group"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource group in which to create the IaC"
                            }
                        }
                    },
                    "source": "./modules/resource_group"
                },
                "role_aks_cluster": {
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks_cluster.principal_id",
                                "module.aks_cluster"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "AcrPull"
                        },
                        "scope": {
                            "references": [
                                "module.container_registry.scope",
                                "module.container_registry"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "constant_value": true
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_role_assignment.role",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "var.principal_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "references": [
                                            "var.role_definition_name"
                                        ]
                                    },
                                    "scope": {
                                        "references": [
                                            "var.scope"
                                        ]
                                    },
                                    "skip_service_principal_aad_check": {
                                        "references": [
                                            "var.skip_service_principal_aad_check"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "role",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            }
                        ],
                        "variables": {
                            "principal_id": {
                                "default": "10.0.0.0/16"
                            },
                            "role_definition_name": {
                                "default": null
                            },
                            "scope": {
                                "default": null
                            },
                            "skip_service_principal_aad_check": {
                                "default": "10.0.0.0/16"
                            }
                        }
                    },
                    "source": "./modules/role_assignment"
                },
                "role_key_vault_access": {
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Reader"
                        },
                        "scope": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "constant_value": false
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_role_assignment.role",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "var.principal_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "references": [
                                            "var.role_definition_name"
                                        ]
                                    },
                                    "scope": {
                                        "references": [
                                            "var.scope"
                                        ]
                                    },
                                    "skip_service_principal_aad_check": {
                                        "references": [
                                            "var.skip_service_principal_aad_check"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "role",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            }
                        ],
                        "variables": {
                            "principal_id": {
                                "default": "10.0.0.0/16"
                            },
                            "role_definition_name": {
                                "default": null
                            },
                            "scope": {
                                "default": null
                            },
                            "skip_service_principal_aad_check": {
                                "default": "10.0.0.0/16"
                            }
                        }
                    },
                    "source": "./modules/role_assignment"
                },
                "virtual_network_aks": {
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.1.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
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
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.vn.id",
                                        "azurerm_virtual_network.vn"
                                    ]
                                }
                            },
                            "name": {
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.vn.name",
                                        "azurerm_virtual_network.vn"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_virtual_network.vn",
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
                                "name": "vn",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Range of ip for the virtual network"
                            },
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource, is the same as the resource group"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            }
                        }
                    },
                    "source": "./modules/virtual_network"
                },
                "virtual_network_appigw": {
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.0.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
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
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.vn.id",
                                        "azurerm_virtual_network.vn"
                                    ]
                                }
                            },
                            "name": {
                                "description": "The name of the resource",
                                "expression": {
                                    "references": [
                                        "azurerm_virtual_network.vn.name",
                                        "azurerm_virtual_network.vn"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_virtual_network.vn",
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
                                "name": "vn",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "address_space": {
                                "default": "10.0.0.0/16",
                                "description": "Range of ip for the virtual network"
                            },
                            "location": {
                                "default": "East US",
                                "description": "The location of the resource, is the same as the resource group"
                            },
                            "name": {
                                "default": null,
                                "description": "The name of the resource"
                            },
                            "resource_group_name": {
                                "default": null,
                                "description": "Resource group of the IaC"
                            }
                        }
                    },
                    "source": "./modules/virtual_network"
                }
            },
            "outputs": {
                "application_gateway_name": {
                    "expression": {
                        "references": [
                            "module.application_gateway.application_gateway_name",
                            "module.application_gateway"
                        ]
                    }
                },
                "cluster_name": {
                    "expression": {
                        "references": [
                            "module.aks_cluster.name",
                            "module.aks_cluster"
                        ]
                    }
                },
                "resource_group_name": {
                    "expression": {
                        "references": [
                            "module.resource_group.name",
                            "module.resource_group"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "null_resource.execute_script",
                    "depends_on": [
                        "module.application_gateway",
                        "module.key_vault",
                        "module.aks_cluster",
                        "module.role_key_vault_access",
                        "module.role_aks_cluster",
                        "module.container_registry",
                        "module.bastion",
                        "module.resource_group",
                        "module.access_policy_aks_cluster",
                        "module.access_policy_identity",
                        "module.access_policy_current_user",
                        "module.key_vault_secret_webserver-config",
                        "module.key_vault_secret_webserver_properties"
                    ],
                    "mode": "managed",
                    "name": "execute_script",
                    "provider_config_key": "null",
                    "provisioners": [
                        {
                            "expressions": {
                                "command": {
                                    "constant_value": "chmod +x script.sh && ./script.sh"
                                }
                            },
                            "type": "local-exec"
                        }
                    ],
                    "schema_version": 0,
                    "type": "null_resource"
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
                    "address": "module.AzureBastionSubnet.azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "root.AzureBastionSubnet.address_prefixes"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.AzureBastionSubnet.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
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
                    "address": "module.access_policy_aks_cluster.azurerm_key_vault_access_policy.access_policy",
                    "expressions": {
                        "certificate_permissions": {
                            "references": [
                                "root.access_policy_aks_cluster.certificate_permissions"
                            ]
                        },
                        "key_permissions": {
                            "references": [
                                "root.access_policy_aks_cluster.key_permissions"
                            ]
                        },
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "module.aks_cluster.secret_provider",
                                "module.aks_cluster"
                            ]
                        },
                        "secret_permissions": {
                            "references": [
                                "root.access_policy_aks_cluster.secret_permissions"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_access_policy"
                },
                {
                    "address": "module.access_policy_current_user.azurerm_key_vault_access_policy.access_policy",
                    "expressions": {
                        "certificate_permissions": {
                            "references": [
                                "root.access_policy_current_user.certificate_permissions"
                            ]
                        },
                        "key_permissions": {
                            "references": [
                                "root.access_policy_current_user.key_permissions"
                            ]
                        },
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "data.azurerm_client_config.current.object_id",
                                "data.azurerm_client_config.current"
                            ]
                        },
                        "secret_permissions": {
                            "references": [
                                "root.access_policy_current_user.secret_permissions"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_access_policy"
                },
                {
                    "address": "module.access_policy_identity.azurerm_key_vault_access_policy.access_policy",
                    "expressions": {
                        "certificate_permissions": {
                            "references": [
                                "root.access_policy_identity.certificate_permissions"
                            ]
                        },
                        "key_permissions": {
                            "references": [
                                "root.access_policy_identity.key_permissions"
                            ]
                        },
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "object_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
                            ]
                        },
                        "secret_permissions": {
                            "references": [
                                "root.access_policy_identity.secret_permissions"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_key_vault_access_policy"
                },
                {
                    "address": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster",
                    "expressions": {
                        "default_node_pool": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix_name"
                                    ]
                                },
                                "node_count": {
                                    "references": [
                                        "root.aks_cluster.node_count"
                                    ]
                                },
                                "os_disk_size_gb": {
                                    "references": [
                                        "root.aks_cluster.os_disk_size_gb"
                                    ]
                                },
                                "vm_size": {
                                    "references": [
                                        "root.aks_cluster.vm_size"
                                    ]
                                },
                                "vnet_subnet_id": {
                                    "references": [
                                        "module.aks_subnet.id",
                                        "module.aks_subnet"
                                    ]
                                }
                            }
                        ],
                        "dns_prefix": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "identity": [
                            {
                                "type": {
                                    "references": [
                                        "root.aks_cluster.identity_type"
                                    ]
                                }
                            }
                        ],
                        "key_vault_secrets_provider": [
                            {
                                "secret_rotation_enabled": {
                                    "references": [
                                        "root.aks_cluster.secret_rotation_enabled"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "network_profile": [
                            {
                                "network_plugin": {
                                    "references": [
                                        "root.aks_cluster.network_plugin"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aks_cluster",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "module.aks_cluster.local_file.kubeconfig",
                    "depends_on": [
                        "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
                    ],
                    "expressions": {
                        "content": {
                            "references": [
                                "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster.kube_config_raw",
                                "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
                            ]
                        },
                        "filename": {
                            "references": [
                                "root.aks_cluster.local_file"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kubeconfig",
                    "provider_config_key": "module.aks_cluster:local",
                    "schema_version": 0,
                    "type": "local_file"
                },
                {
                    "address": "module.aks_subnet.azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "root.aks_subnet.address_prefixes"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
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
                    "address": "module.appgw_subnet.azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "root.appgw_subnet.address_prefixes"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_appigw.name",
                                "module.virtual_network_appigw"
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
                    "address": "module.application_gateway.azurerm_application_gateway.appgw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                }
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "cookie_based_affinity": {
                                    "references": [
                                        "root.application_gateway.cookie_based_affinity"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "port": {
                                    "references": [
                                        "root.application_gateway.backend_http_settings_port"
                                    ]
                                },
                                "protocol": {
                                    "references": [
                                        "root.application_gateway.backend_http_settings_protocol"
                                    ]
                                },
                                "request_timeout": {
                                    "references": [
                                        "root.application_gateway.backend_http_settings_request_timeout"
                                    ]
                                }
                            }
                        ],
                        "frontend_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.ip_appgw.id",
                                        "module.ip_appgw"
                                    ]
                                }
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "port": {
                                    "references": [
                                        "root.application_gateway.frontend_port_port"
                                    ]
                                }
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "root.application_gateway.gateway_ip_configuration_name"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "module.appgw_subnet.id",
                                        "module.appgw_subnet"
                                    ]
                                }
                            }
                        ],
                        "http_listener": [
                            {
                                "frontend_ip_configuration_name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "frontend_port_name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "protocol": {
                                    "references": [
                                        "root.application_gateway.http_listener_protocol"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "backend_http_settings_name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "http_listener_name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "module.appgw_subnet.name",
                                        "module.appgw_subnet"
                                    ]
                                },
                                "priority": {
                                    "references": [
                                        "root.application_gateway.request_routing_rule_priority"
                                    ]
                                },
                                "rule_type": {
                                    "references": [
                                        "root.application_gateway.request_routing_rule_rule_type"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": [
                            {
                                "capacity": {
                                    "references": [
                                        "root.application_gateway.sku_capacity"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "root.application_gateway.sku_name"
                                    ]
                                },
                                "tier": {
                                    "references": [
                                        "root.application_gateway.sku_tier"
                                    ]
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
                    "address": "module.bastion.azurerm_bastion_host.bastion",
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "references": [
                                        "var.prefix_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.ip_bastion.id",
                                        "module.ip_bastion"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "module.AzureBastionSubnet.id",
                                        "module.AzureBastionSubnet"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
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
                    "address": "module.container_registry.azurerm_container_registry.cr",
                    "expressions": {
                        "admin_enabled": {
                            "references": [
                                "root.container_registry.admin_enabled"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "references": [
                                "root.container_registry.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "cr",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_container_registry"
                },
                {
                    "address": "module.identity.azurerm_user_assigned_identity.identity",
                    "expressions": {
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "module.ip_appgw.azurerm_public_ip.publicIp",
                    "expressions": {
                        "allocation_method": {
                            "references": [
                                "root.ip_appgw.allocation_method"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "references": [
                                "root.ip_appgw.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "publicIp",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.ip_bastion.azurerm_public_ip.publicIp",
                    "expressions": {
                        "allocation_method": {
                            "references": [
                                "root.ip_bastion.allocation_method"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku": {
                            "references": [
                                "root.ip_bastion.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "publicIp",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "module.key_vault.azurerm_key_vault.key_vault",
                    "expressions": {
                        "enabled_for_disk_encryption": {
                            "references": [
                                "root.key_vault.enabled_for_disk_encryption"
                            ]
                        },
                        "location": {
                            "references": [
                                "module.resource_group.location",
                                "module.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "purge_protection_enabled": {
                            "references": [
                                "root.key_vault.purge_protection_enabled"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "sku_name": {
                            "references": [
                                "root.key_vault.sku_name"
                            ]
                        },
                        "soft_delete_retention_days": {
                            "references": [
                                "root.key_vault.soft_delete_retention_days"
                            ]
                        },
                        "tenant_id": {
                            "references": [
                                "data.azurerm_client_config.current.tenant_id",
                                "data.azurerm_client_config.current"
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
                    "address": "module.key_vault_secret_webserver-config.azurerm_key_vault_secret.key_vault_secret",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "value": {
                            "references": [
                                "root.key_vault_secret_webserver-config.value"
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
                    "address": "module.key_vault_secret_webserver_properties.azurerm_key_vault_secret.key_vault_secret",
                    "expressions": {
                        "key_vault_id": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "value": {
                            "references": [
                                "root.key_vault_secret_webserver_properties.value"
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
                    "address": "module.peeringAppgwToCluster.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                    "expressions": {
                        "allow_virtual_network_access": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "module.virtual_network_aks.id",
                                "module.virtual_network_aks"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_appigw.name",
                                "module.virtual_network_appigw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ClustertoAppGWVnetPeering",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "module.peeringClusterToAppgw.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                    "expressions": {
                        "allow_virtual_network_access": {
                            "constant_value": true
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "remote_virtual_network_id": {
                            "references": [
                                "module.virtual_network_appigw.id",
                                "module.virtual_network_appigw"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "module.virtual_network_aks.name",
                                "module.virtual_network_aks"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "ClustertoAppGWVnetPeering",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network_peering"
                },
                {
                    "address": "module.resource_group.azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
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
                    "address": "module.role_aks_cluster.azurerm_role_assignment.role",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks_cluster.principal_id",
                                "module.aks_cluster"
                            ]
                        },
                        "role_definition_name": {
                            "references": [
                                "root.role_aks_cluster.role_definition_name"
                            ]
                        },
                        "scope": {
                            "references": [
                                "module.container_registry.scope",
                                "module.container_registry"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "references": [
                                "root.role_aks_cluster.skip_service_principal_aad_check"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.role_key_vault_access.azurerm_role_assignment.role",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.identity.principal_id",
                                "module.identity"
                            ]
                        },
                        "role_definition_name": {
                            "references": [
                                "root.role_key_vault_access.role_definition_name"
                            ]
                        },
                        "scope": {
                            "references": [
                                "module.key_vault.key_vault_id",
                                "module.key_vault"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "references": [
                                "root.role_key_vault_access.skip_service_principal_aad_check"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "role",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.virtual_network_aks.azurerm_virtual_network.vn",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "root.virtual_network_aks.address_space"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vn",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "module.virtual_network_appigw.azurerm_virtual_network.vn",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "root.virtual_network_appigw.address_space"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.region"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.prefix_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.resource_group.name",
                                "module.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vn",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "prefix_name": {
                    "default": "zodiac",
                    "description": "Prefix for resources names"
                },
                "region": {
                    "default": "East US",
                    "description": "Deployment Region"
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "application_gateway_name": {
            "actions": [
                "create"
            ],
            "after": "zodiacAppiGW",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "cluster_name": {
            "actions": [
                "create"
            ],
            "after": "zodiac-aks",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        },
        "resource_group_name": {
            "actions": [
                "create"
            ],
            "after": "zodiac-rg",
            "after_sensitive": false,
            "after_unknown": false,
            "before": null,
            "before_sensitive": false
        }
    },
    "planned_values": {
        "outputs": {
            "application_gateway_name": {
                "sensitive": false,
                "type": "string",
                "value": "zodiacAppiGW"
            },
            "cluster_name": {
                "sensitive": false,
                "type": "string",
                "value": "zodiac-aks"
            },
            "resource_group_name": {
                "sensitive": false,
                "type": "string",
                "value": "zodiac-rg"
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.AzureBastionSubnet",
                    "resources": [
                        {
                            "address": "module.AzureBastionSubnet.azurerm_subnet.subnet",
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
                                    "10.1.1.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "AzureBastionSubnet",
                                "resource_group_name": "zodiac-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zodiac-vn-aks"
                            }
                        }
                    ]
                },
                {
                    "address": "module.access_policy_aks_cluster",
                    "resources": [
                        {
                            "address": "module.access_policy_aks_cluster.azurerm_key_vault_access_policy.access_policy",
                            "mode": "managed",
                            "name": "access_policy",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
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
                            "type": "azurerm_key_vault_access_policy",
                            "values": {
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
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.access_policy_current_user",
                    "resources": [
                        {
                            "address": "module.access_policy_current_user.azurerm_key_vault_access_policy.access_policy",
                            "mode": "managed",
                            "name": "access_policy",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
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
                            "type": "azurerm_key_vault_access_policy",
                            "values": {
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
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.access_policy_identity",
                    "resources": [
                        {
                            "address": "module.access_policy_identity.azurerm_key_vault_access_policy.access_policy",
                            "mode": "managed",
                            "name": "access_policy",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
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
                            "type": "azurerm_key_vault_access_policy",
                            "values": {
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
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.aks_cluster",
                    "resources": [
                        {
                            "address": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster",
                            "mode": "managed",
                            "name": "aks_cluster",
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
                                        "name": "zodiacpool",
                                        "node_count": 1,
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
                                        "os_disk_size_gb": 40,
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
                                        "vm_size": "Standard_DS2_v2",
                                        "zones": null
                                    }
                                ],
                                "disk_encryption_set_id": null,
                                "dns_prefix": "zodiac-aks",
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
                                "name": "zodiac-aks",
                                "network_profile": [
                                    {
                                        "load_balancer_sku": "standard",
                                        "network_plugin": "azure",
                                        "network_plugin_mode": null,
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
                                "resource_group_name": "zodiac-rg",
                                "role_based_access_control_enabled": true,
                                "run_command_enabled": true,
                                "service_mesh_profile": [],
                                "service_principal": [],
                                "sku_tier": "Free",
                                "storage_profile": [],
                                "support_plan": "KubernetesOfficial",
                                "tags": null,
                                "timeouts": null,
                                "web_app_routing": [],
                                "workload_autoscaler_profile": [],
                                "workload_identity_enabled": false
                            }
                        },
                        {
                            "address": "module.aks_cluster.local_file.kubeconfig",
                            "mode": "managed",
                            "name": "kubeconfig",
                            "provider_name": "registry.terraform.io/hashicorp/local",
                            "schema_version": 0,
                            "sensitive_values": {
                                "content": true,
                                "sensitive_content": true
                            },
                            "type": "local_file",
                            "values": {
                                "content_base64": null,
                                "directory_permission": "0777",
                                "file_permission": "0777",
                                "filename": "KubeConfig",
                                "sensitive_content": null,
                                "source": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.aks_subnet",
                    "resources": [
                        {
                            "address": "module.aks_subnet.azurerm_subnet.subnet",
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
                                    "10.1.2.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "zodiac-sn-aks",
                                "resource_group_name": "zodiac-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zodiac-vn-aks"
                            }
                        }
                    ]
                },
                {
                    "address": "module.appgw_subnet",
                    "resources": [
                        {
                            "address": "module.appgw_subnet.azurerm_subnet.subnet",
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
                                    "10.0.1.0/24"
                                ],
                                "default_outbound_access_enabled": true,
                                "delegation": [],
                                "name": "zodiac-sn-appgw",
                                "resource_group_name": "zodiac-rg",
                                "service_endpoint_policy_ids": null,
                                "service_endpoints": null,
                                "timeouts": null,
                                "virtual_network_name": "zodiac-vn-appigw"
                            }
                        }
                    ]
                },
                {
                    "address": "module.application_gateway",
                    "resources": [
                        {
                            "address": "module.application_gateway.azurerm_application_gateway.appgw",
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
                                        "name": "zodiac-sn-appgw-backend-pool"
                                    }
                                ],
                                "backend_http_settings": [
                                    {
                                        "affinity_cookie_name": "",
                                        "authentication_certificate": [],
                                        "connection_draining": [],
                                        "cookie_based_affinity": "Disabled",
                                        "host_name": "",
                                        "name": "zodiac-sn-appgw-backend-http-setting",
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
                                        "name": "zodiac-sn-appgw-front-ipconfig",
                                        "private_ip_address_allocation": "Dynamic",
                                        "private_link_configuration_name": null,
                                        "subnet_id": null
                                    }
                                ],
                                "frontend_port": [
                                    {
                                        "name": "zodiac-sn-appgw-front-http-port",
                                        "port": 80
                                    }
                                ],
                                "gateway_ip_configuration": [
                                    {
                                        "name": "appgwIpConfig"
                                    }
                                ],
                                "global": [],
                                "http_listener": [
                                    {
                                        "custom_error_configuration": [],
                                        "firewall_policy_id": "",
                                        "frontend_ip_configuration_name": "zodiac-sn-appgw-front-ipconfig",
                                        "frontend_port_name": "zodiac-sn-appgw-front-http-port",
                                        "host_name": "",
                                        "host_names": [],
                                        "name": "zodiac-sn-appgw-http-listener",
                                        "protocol": "Http",
                                        "require_sni": null,
                                        "ssl_certificate_name": "",
                                        "ssl_profile_name": ""
                                    }
                                ],
                                "identity": [],
                                "location": "eastus",
                                "name": "zodiacAppiGW",
                                "private_link_configuration": [],
                                "probe": [],
                                "redirect_configuration": [],
                                "request_routing_rule": [
                                    {
                                        "backend_address_pool_name": "zodiac-sn-appgw-backend-pool",
                                        "backend_http_settings_name": "zodiac-sn-appgw-backend-http-setting",
                                        "http_listener_name": "zodiac-sn-appgw-http-listener",
                                        "name": "zodiac-sn-appgw-request-routing-rule",
                                        "priority": 9,
                                        "redirect_configuration_name": "",
                                        "rewrite_rule_set_name": "",
                                        "rule_type": "Basic",
                                        "url_path_map_name": ""
                                    }
                                ],
                                "resource_group_name": "zodiac-rg",
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
                                        "name": "zodiac-config-ip-bastion"
                                    }
                                ],
                                "ip_connect_enabled": false,
                                "kerberos_enabled": false,
                                "location": "eastus",
                                "name": "zodiac-bastion",
                                "resource_group_name": "zodiac-rg",
                                "scale_units": 2,
                                "shareable_link_enabled": false,
                                "sku": "Basic",
                                "tags": null,
                                "timeouts": null,
                                "tunneling_enabled": false,
                                "virtual_network_id": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.container_registry",
                    "resources": [
                        {
                            "address": "module.container_registry.azurerm_container_registry.cr",
                            "mode": "managed",
                            "name": "cr",
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
                                "admin_enabled": true,
                                "anonymous_pull_enabled": null,
                                "data_endpoint_enabled": null,
                                "export_policy_enabled": true,
                                "georeplications": [],
                                "identity": [],
                                "location": "eastus",
                                "name": "zodiaccr",
                                "network_rule_bypass_option": "AzureServices",
                                "public_network_access_enabled": true,
                                "quarantine_policy_enabled": null,
                                "resource_group_name": "zodiac-rg",
                                "sku": "Standard",
                                "tags": null,
                                "timeouts": null,
                                "zone_redundancy_enabled": false
                            }
                        }
                    ]
                },
                {
                    "address": "module.identity",
                    "resources": [
                        {
                            "address": "module.identity.azurerm_user_assigned_identity.identity",
                            "mode": "managed",
                            "name": "identity",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azurerm_user_assigned_identity",
                            "values": {
                                "location": "eastus",
                                "name": "zodiac-identity",
                                "resource_group_name": "zodiac-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.ip_appgw",
                    "resources": [
                        {
                            "address": "module.ip_appgw.azurerm_public_ip.publicIp",
                            "mode": "managed",
                            "name": "publicIp",
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
                                "name": "zodiac-ip-appgw",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "zodiac-rg",
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
                    "address": "module.ip_bastion",
                    "resources": [
                        {
                            "address": "module.ip_bastion.azurerm_public_ip.publicIp",
                            "mode": "managed",
                            "name": "publicIp",
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
                                "name": "zodiac-ip-bastion",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "zodiac-rg",
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
                    "address": "module.key_vault",
                    "resources": [
                        {
                            "address": "module.key_vault.azurerm_key_vault.key_vault",
                            "mode": "managed",
                            "name": "key_vault",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "access_policy": [],
                                "contact": [],
                                "network_acls": []
                            },
                            "type": "azurerm_key_vault",
                            "values": {
                                "enable_rbac_authorization": null,
                                "enabled_for_deployment": null,
                                "enabled_for_disk_encryption": true,
                                "enabled_for_template_deployment": null,
                                "location": "eastus",
                                "name": "zodiacKeyVault",
                                "public_network_access_enabled": true,
                                "purge_protection_enabled": false,
                                "resource_group_name": "zodiac-rg",
                                "sku_name": "standard",
                                "soft_delete_retention_days": 7,
                                "tags": null,
                                "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.key_vault_secret_webserver-config",
                    "resources": [
                        {
                            "address": "module.key_vault_secret_webserver-config.azurerm_key_vault_secret.key_vault_secret",
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
                                "name": "zodiac-conf",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "config-value"
                            }
                        }
                    ]
                },
                {
                    "address": "module.key_vault_secret_webserver_properties",
                    "resources": [
                        {
                            "address": "module.key_vault_secret_webserver_properties.azurerm_key_vault_secret.key_vault_secret",
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
                                "name": "zodiac-prop",
                                "not_before_date": null,
                                "tags": null,
                                "timeouts": null,
                                "value": "properties-value"
                            }
                        }
                    ]
                },
                {
                    "address": "module.peeringAppgwToCluster",
                    "resources": [
                        {
                            "address": "module.peeringAppgwToCluster.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                            "mode": "managed",
                            "name": "ClustertoAppGWVnetPeering",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "zodiac-peer-appgw-cluster",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "zodiac-rg",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "zodiac-vn-appigw"
                            }
                        }
                    ]
                },
                {
                    "address": "module.peeringClusterToAppgw",
                    "resources": [
                        {
                            "address": "module.peeringClusterToAppgw.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                            "mode": "managed",
                            "name": "ClustertoAppGWVnetPeering",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_virtual_network_peering",
                            "values": {
                                "allow_forwarded_traffic": false,
                                "allow_gateway_transit": false,
                                "allow_virtual_network_access": true,
                                "local_subnet_names": null,
                                "name": "zodiac-peer-cluster-appgw",
                                "only_ipv6_peering_enabled": null,
                                "peer_complete_virtual_networks_enabled": true,
                                "remote_subnet_names": null,
                                "resource_group_name": "zodiac-rg",
                                "timeouts": null,
                                "triggers": null,
                                "use_remote_gateways": false,
                                "virtual_network_name": "zodiac-vn-aks"
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
                                "name": "zodiac-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.role_aks_cluster",
                    "resources": [
                        {
                            "address": "module.role_aks_cluster.azurerm_role_assignment.role",
                            "mode": "managed",
                            "name": "role",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_role_assignment",
                            "values": {
                                "condition": null,
                                "condition_version": null,
                                "delegated_managed_identity_resource_id": null,
                                "description": null,
                                "role_definition_name": "AcrPull",
                                "skip_service_principal_aad_check": true,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.role_key_vault_access",
                    "resources": [
                        {
                            "address": "module.role_key_vault_access.azurerm_role_assignment.role",
                            "mode": "managed",
                            "name": "role",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_role_assignment",
                            "values": {
                                "condition": null,
                                "condition_version": null,
                                "delegated_managed_identity_resource_id": null,
                                "description": null,
                                "role_definition_name": "Reader",
                                "skip_service_principal_aad_check": false,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.virtual_network_aks",
                    "resources": [
                        {
                            "address": "module.virtual_network_aks.azurerm_virtual_network.vn",
                            "mode": "managed",
                            "name": "vn",
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
                                "name": "zodiac-vn-aks",
                                "resource_group_name": "zodiac-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.virtual_network_appigw",
                    "resources": [
                        {
                            "address": "module.virtual_network_appigw.azurerm_virtual_network.vn",
                            "mode": "managed",
                            "name": "vn",
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
                                "name": "zodiac-vn-appigw",
                                "resource_group_name": "zodiac-rg",
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "null_resource.execute_script",
                    "mode": "managed",
                    "name": "execute_script",
                    "provider_name": "registry.terraform.io/hashicorp/null",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "null_resource",
                    "values": {
                        "triggers": null
                    }
                },
                {
                    "address": "module.AzureBastionSubnet.azurerm_subnet.subnet",
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
                            "10.1.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureBastionSubnet",
                        "resource_group_name": "zodiac-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-vn-aks"
                    }
                },
                {
                    "address": "module.access_policy_aks_cluster.azurerm_key_vault_access_policy.access_policy",
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
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
                    "type": "azurerm_key_vault_access_policy",
                    "values": {
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
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.access_policy_current_user.azurerm_key_vault_access_policy.access_policy",
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
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
                    "type": "azurerm_key_vault_access_policy",
                    "values": {
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
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.access_policy_identity.azurerm_key_vault_access_policy.access_policy",
                    "mode": "managed",
                    "name": "access_policy",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
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
                    "type": "azurerm_key_vault_access_policy",
                    "values": {
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
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster",
                    "mode": "managed",
                    "name": "aks_cluster",
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
                                "name": "zodiacpool",
                                "node_count": 1,
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_size_gb": 40,
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
                                "vm_size": "Standard_DS2_v2",
                                "zones": null
                            }
                        ],
                        "disk_encryption_set_id": null,
                        "dns_prefix": "zodiac-aks",
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
                        "name": "zodiac-aks",
                        "network_profile": [
                            {
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
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
                        "resource_group_name": "zodiac-rg",
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Free",
                        "storage_profile": [],
                        "support_plan": "KubernetesOfficial",
                        "tags": null,
                        "timeouts": null,
                        "web_app_routing": [],
                        "workload_autoscaler_profile": [],
                        "workload_identity_enabled": false
                    }
                },
                {
                    "address": "module.aks_cluster.local_file.kubeconfig",
                    "mode": "managed",
                    "name": "kubeconfig",
                    "provider_name": "registry.terraform.io/hashicorp/local",
                    "schema_version": 0,
                    "sensitive_values": {
                        "content": true,
                        "sensitive_content": true
                    },
                    "type": "local_file",
                    "values": {
                        "content_base64": null,
                        "directory_permission": "0777",
                        "file_permission": "0777",
                        "filename": "KubeConfig",
                        "sensitive_content": null,
                        "source": null
                    }
                },
                {
                    "address": "module.aks_subnet.azurerm_subnet.subnet",
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
                            "10.1.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "zodiac-sn-aks",
                        "resource_group_name": "zodiac-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-vn-aks"
                    }
                },
                {
                    "address": "module.appgw_subnet.azurerm_subnet.subnet",
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
                            "10.0.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "zodiac-sn-appgw",
                        "resource_group_name": "zodiac-rg",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "zodiac-vn-appigw"
                    }
                },
                {
                    "address": "module.application_gateway.azurerm_application_gateway.appgw",
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
                                "name": "zodiac-sn-appgw-backend-pool"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "zodiac-sn-appgw-backend-http-setting",
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
                                "name": "zodiac-sn-appgw-front-ipconfig",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "zodiac-sn-appgw-front-http-port",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "appgwIpConfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "zodiac-sn-appgw-front-ipconfig",
                                "frontend_port_name": "zodiac-sn-appgw-front-http-port",
                                "host_name": "",
                                "host_names": [],
                                "name": "zodiac-sn-appgw-http-listener",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "eastus",
                        "name": "zodiacAppiGW",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "zodiac-sn-appgw-backend-pool",
                                "backend_http_settings_name": "zodiac-sn-appgw-backend-http-setting",
                                "http_listener_name": "zodiac-sn-appgw-http-listener",
                                "name": "zodiac-sn-appgw-request-routing-rule",
                                "priority": 9,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "zodiac-rg",
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
                                "name": "zodiac-config-ip-bastion"
                            }
                        ],
                        "ip_connect_enabled": false,
                        "kerberos_enabled": false,
                        "location": "eastus",
                        "name": "zodiac-bastion",
                        "resource_group_name": "zodiac-rg",
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
                    "address": "module.container_registry.azurerm_container_registry.cr",
                    "mode": "managed",
                    "name": "cr",
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
                        "admin_enabled": true,
                        "anonymous_pull_enabled": null,
                        "data_endpoint_enabled": null,
                        "export_policy_enabled": true,
                        "georeplications": [],
                        "identity": [],
                        "location": "eastus",
                        "name": "zodiaccr",
                        "network_rule_bypass_option": "AzureServices",
                        "public_network_access_enabled": true,
                        "quarantine_policy_enabled": null,
                        "resource_group_name": "zodiac-rg",
                        "sku": "Standard",
                        "tags": null,
                        "timeouts": null,
                        "zone_redundancy_enabled": false
                    }
                },
                {
                    "address": "module.identity.azurerm_user_assigned_identity.identity",
                    "mode": "managed",
                    "name": "identity",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azurerm_user_assigned_identity",
                    "values": {
                        "location": "eastus",
                        "name": "zodiac-identity",
                        "resource_group_name": "zodiac-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.ip_appgw.azurerm_public_ip.publicIp",
                    "mode": "managed",
                    "name": "publicIp",
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
                        "name": "zodiac-ip-appgw",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "zodiac-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.ip_bastion.azurerm_public_ip.publicIp",
                    "mode": "managed",
                    "name": "publicIp",
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
                        "name": "zodiac-ip-bastion",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "zodiac-rg",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.key_vault.azurerm_key_vault.key_vault",
                    "mode": "managed",
                    "name": "key_vault",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "access_policy": [],
                        "contact": [],
                        "network_acls": []
                    },
                    "type": "azurerm_key_vault",
                    "values": {
                        "enable_rbac_authorization": null,
                        "enabled_for_deployment": null,
                        "enabled_for_disk_encryption": true,
                        "enabled_for_template_deployment": null,
                        "location": "eastus",
                        "name": "zodiacKeyVault",
                        "public_network_access_enabled": true,
                        "purge_protection_enabled": false,
                        "resource_group_name": "zodiac-rg",
                        "sku_name": "standard",
                        "soft_delete_retention_days": 7,
                        "tags": null,
                        "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.key_vault_secret_webserver-config.azurerm_key_vault_secret.key_vault_secret",
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
                        "name": "zodiac-conf",
                        "not_before_date": null,
                        "tags": null,
                        "timeouts": null,
                        "value": "config-value"
                    }
                },
                {
                    "address": "module.key_vault_secret_webserver_properties.azurerm_key_vault_secret.key_vault_secret",
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
                        "name": "zodiac-prop",
                        "not_before_date": null,
                        "tags": null,
                        "timeouts": null,
                        "value": "properties-value"
                    }
                },
                {
                    "address": "module.peeringAppgwToCluster.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                    "mode": "managed",
                    "name": "ClustertoAppGWVnetPeering",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "zodiac-peer-appgw-cluster",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "zodiac-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "zodiac-vn-appigw"
                    }
                },
                {
                    "address": "module.peeringClusterToAppgw.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
                    "mode": "managed",
                    "name": "ClustertoAppGWVnetPeering",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_virtual_network_peering",
                    "values": {
                        "allow_forwarded_traffic": false,
                        "allow_gateway_transit": false,
                        "allow_virtual_network_access": true,
                        "local_subnet_names": null,
                        "name": "zodiac-peer-cluster-appgw",
                        "only_ipv6_peering_enabled": null,
                        "peer_complete_virtual_networks_enabled": true,
                        "remote_subnet_names": null,
                        "resource_group_name": "zodiac-rg",
                        "timeouts": null,
                        "triggers": null,
                        "use_remote_gateways": false,
                        "virtual_network_name": "zodiac-vn-aks"
                    }
                },
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
                        "name": "zodiac-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.role_aks_cluster.azurerm_role_assignment.role",
                    "mode": "managed",
                    "name": "role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "AcrPull",
                        "skip_service_principal_aad_check": true,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.role_key_vault_access.azurerm_role_assignment.role",
                    "mode": "managed",
                    "name": "role",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Reader",
                        "skip_service_principal_aad_check": false,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.virtual_network_aks.azurerm_virtual_network.vn",
                    "mode": "managed",
                    "name": "vn",
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
                        "name": "zodiac-vn-aks",
                        "resource_group_name": "zodiac-rg",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.virtual_network_appigw.azurerm_virtual_network.vn",
                    "mode": "managed",
                    "name": "vn",
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
                        "name": "zodiac-vn-appigw",
                        "resource_group_name": "zodiac-rg",
                        "tags": null,
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "prior_state": {
        "format_version": "1.0",
        "terraform_version": "1.9.4",
        "values": {
            "outputs": {
                "application_gateway_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zodiacAppiGW"
                },
                "cluster_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zodiac-aks"
                },
                "resource_group_name": {
                    "sensitive": false,
                    "type": "string",
                    "value": "zodiac-rg"
                }
            },
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
                "principal_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtual_network_aks.azurerm_virtual_network.vn"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.virtual_network_aks.azurerm_virtual_network.vn"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.AzureBastionSubnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.resource_group.azurerm_resource_group.rg"
        },
        {
            "attribute": [
                "object_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.appgw_subnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.appgw_subnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.key_vault.azurerm_key_vault.key_vault"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.AzureBastionSubnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0,
                "secret_identity",
                0,
                "object_id"
            ],
            "resource": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "tenant_id"
            ],
            "resource": "data.azurerm_client_config.current"
        },
        {
            "attribute": [
                "client_id"
            ],
            "resource": "module.identity.azurerm_user_assigned_identity.identity"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.virtual_network_appigw.azurerm_virtual_network.vn"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks_subnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.container_registry.azurerm_container_registry.cr"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.virtual_network_appigw.azurerm_virtual_network.vn"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.ip_bastion.azurerm_public_ip.publicIp"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.ip_appgw.azurerm_public_ip.publicIp"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.application_gateway.azurerm_application_gateway.appgw"
        },
        {
            "attribute": [
                "kubelet_identity",
                0,
                "object_id"
            ],
            "resource": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks_subnet.azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.resource_group.azurerm_resource_group.rg"
        }
    ],
    "resource_changes": [
        {
            "address": "null_resource.execute_script",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "triggers": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "execute_script",
            "provider_name": "registry.terraform.io/hashicorp/null",
            "type": "null_resource"
        },
        {
            "address": "module.AzureBastionSubnet.azurerm_subnet.subnet",
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
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "zodiac-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-vn-aks"
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
            "module_address": "module.AzureBastionSubnet",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.access_policy_aks_cluster.azurerm_key_vault_access_policy.access_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
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
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
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
                "after_unknown": {
                    "certificate_permissions": [
                        false
                    ],
                    "id": true,
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
                    "key_vault_id": true,
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
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.access_policy_aks_cluster",
            "name": "access_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_access_policy"
        },
        {
            "address": "module.access_policy_current_user.azurerm_key_vault_access_policy.access_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
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
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
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
                "after_unknown": {
                    "certificate_permissions": [
                        false
                    ],
                    "id": true,
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
                    "key_vault_id": true,
                    "secret_permissions": [
                        false,
                        false,
                        false,
                        false,
                        false,
                        false
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.access_policy_current_user",
            "name": "access_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_access_policy"
        },
        {
            "address": "module.access_policy_identity.azurerm_key_vault_access_policy.access_policy",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
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
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
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
                "after_unknown": {
                    "certificate_permissions": [
                        false
                    ],
                    "id": true,
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
                    "key_vault_id": true,
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
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.access_policy_identity",
            "name": "access_policy",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_access_policy"
        },
        {
            "address": "module.aks_cluster.azurerm_kubernetes_cluster.aks_cluster",
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
                            "name": "zodiacpool",
                            "node_count": 1,
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_size_gb": 40,
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
                            "vm_size": "Standard_DS2_v2",
                            "zones": null
                        }
                    ],
                    "disk_encryption_set_id": null,
                    "dns_prefix": "zodiac-aks",
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
                    "name": "zodiac-aks",
                    "network_profile": [
                        {
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
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
                    "resource_group_name": "zodiac-rg",
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Free",
                    "storage_profile": [],
                    "support_plan": "KubernetesOfficial",
                    "tags": null,
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
                            "network_policy": true,
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
                    "web_app_routing": [],
                    "windows_profile": true,
                    "workload_autoscaler_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks_cluster",
            "name": "aks_cluster",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.aks_cluster.local_file.kubeconfig",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_base64": null,
                    "directory_permission": "0777",
                    "file_permission": "0777",
                    "filename": "KubeConfig",
                    "sensitive_content": null,
                    "source": null
                },
                "after_sensitive": {
                    "content": true,
                    "sensitive_content": true
                },
                "after_unknown": {
                    "content": true,
                    "content_base64sha256": true,
                    "content_base64sha512": true,
                    "content_md5": true,
                    "content_sha1": true,
                    "content_sha256": true,
                    "content_sha512": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks_cluster",
            "name": "kubeconfig",
            "provider_name": "registry.terraform.io/hashicorp/local",
            "type": "local_file"
        },
        {
            "address": "module.aks_subnet.azurerm_subnet.subnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.1.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "zodiac-sn-aks",
                    "resource_group_name": "zodiac-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-vn-aks"
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
            "module_address": "module.aks_subnet",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.appgw_subnet.azurerm_subnet.subnet",
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
                    "name": "zodiac-sn-appgw",
                    "resource_group_name": "zodiac-rg",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "zodiac-vn-appigw"
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
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "module.application_gateway.azurerm_application_gateway.appgw",
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
                            "name": "zodiac-sn-appgw-backend-pool"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "zodiac-sn-appgw-backend-http-setting",
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
                            "name": "zodiac-sn-appgw-front-ipconfig",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "zodiac-sn-appgw-front-http-port",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "appgwIpConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "zodiac-sn-appgw-front-ipconfig",
                            "frontend_port_name": "zodiac-sn-appgw-front-http-port",
                            "host_name": "",
                            "host_names": [],
                            "name": "zodiac-sn-appgw-http-listener",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "eastus",
                    "name": "zodiacAppiGW",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "zodiac-sn-appgw-backend-pool",
                            "backend_http_settings_name": "zodiac-sn-appgw-backend-http-setting",
                            "http_listener_name": "zodiac-sn-appgw-http-listener",
                            "name": "zodiac-sn-appgw-request-routing-rule",
                            "priority": 9,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.application_gateway",
            "name": "appgw",
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
                            "name": "zodiac-config-ip-bastion"
                        }
                    ],
                    "ip_connect_enabled": false,
                    "kerberos_enabled": false,
                    "location": "eastus",
                    "name": "zodiac-bastion",
                    "resource_group_name": "zodiac-rg",
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
            "address": "module.container_registry.azurerm_container_registry.cr",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "admin_enabled": true,
                    "anonymous_pull_enabled": null,
                    "data_endpoint_enabled": null,
                    "export_policy_enabled": true,
                    "georeplications": [],
                    "identity": [],
                    "location": "eastus",
                    "name": "zodiaccr",
                    "network_rule_bypass_option": "AzureServices",
                    "public_network_access_enabled": true,
                    "quarantine_policy_enabled": null,
                    "resource_group_name": "zodiac-rg",
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
            "name": "cr",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_registry"
        },
        {
            "address": "module.identity.azurerm_user_assigned_identity.identity",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
                    "name": "zodiac-identity",
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.identity",
            "name": "identity",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_user_assigned_identity"
        },
        {
            "address": "module.ip_appgw.azurerm_public_ip.publicIp",
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
                    "name": "zodiac-ip-appgw",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.ip_appgw",
            "name": "publicIp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.ip_bastion.azurerm_public_ip.publicIp",
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
                    "name": "zodiac-ip-bastion",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.ip_bastion",
            "name": "publicIp",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.key_vault.azurerm_key_vault.key_vault",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "enable_rbac_authorization": null,
                    "enabled_for_deployment": null,
                    "enabled_for_disk_encryption": true,
                    "enabled_for_template_deployment": null,
                    "location": "eastus",
                    "name": "zodiacKeyVault",
                    "public_network_access_enabled": true,
                    "purge_protection_enabled": false,
                    "resource_group_name": "zodiac-rg",
                    "sku_name": "standard",
                    "soft_delete_retention_days": 7,
                    "tags": null,
                    "tenant_id": "e66e77b4-5724-44d7-8721-06df160450ce",
                    "timeouts": null
                },
                "after_sensitive": {
                    "access_policy": [],
                    "contact": [],
                    "network_acls": []
                },
                "after_unknown": {
                    "access_policy": true,
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
            "address": "module.key_vault_secret_webserver-config.azurerm_key_vault_secret.key_vault_secret",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "zodiac-conf",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "config-value"
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
            "mode": "managed",
            "module_address": "module.key_vault_secret_webserver-config",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.key_vault_secret_webserver_properties.azurerm_key_vault_secret.key_vault_secret",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "content_type": null,
                    "expiration_date": null,
                    "name": "zodiac-prop",
                    "not_before_date": null,
                    "tags": null,
                    "timeouts": null,
                    "value": "properties-value"
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
            "mode": "managed",
            "module_address": "module.key_vault_secret_webserver_properties",
            "name": "key_vault_secret",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_key_vault_secret"
        },
        {
            "address": "module.peeringAppgwToCluster.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "zodiac-peer-appgw-cluster",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "zodiac-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "zodiac-vn-appigw"
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
            "module_address": "module.peeringAppgwToCluster",
            "name": "ClustertoAppGWVnetPeering",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network_peering"
        },
        {
            "address": "module.peeringClusterToAppgw.azurerm_virtual_network_peering.ClustertoAppGWVnetPeering",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "allow_forwarded_traffic": false,
                    "allow_gateway_transit": false,
                    "allow_virtual_network_access": true,
                    "local_subnet_names": null,
                    "name": "zodiac-peer-cluster-appgw",
                    "only_ipv6_peering_enabled": null,
                    "peer_complete_virtual_networks_enabled": true,
                    "remote_subnet_names": null,
                    "resource_group_name": "zodiac-rg",
                    "timeouts": null,
                    "triggers": null,
                    "use_remote_gateways": false,
                    "virtual_network_name": "zodiac-vn-aks"
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
            "module_address": "module.peeringClusterToAppgw",
            "name": "ClustertoAppGWVnetPeering",
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
                    "name": "zodiac-rg",
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
            "address": "module.role_aks_cluster.azurerm_role_assignment.role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "AcrPull",
                    "skip_service_principal_aad_check": true,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.role_aks_cluster",
            "name": "role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.role_key_vault_access.azurerm_role_assignment.role",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Reader",
                    "skip_service_principal_aad_check": false,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.role_key_vault_access",
            "name": "role",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.virtual_network_aks.azurerm_virtual_network.vn",
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
                    "name": "zodiac-vn-aks",
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.virtual_network_aks",
            "name": "vn",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "module.virtual_network_appigw.azurerm_virtual_network.vn",
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
                    "name": "zodiac-vn-appigw",
                    "resource_group_name": "zodiac-rg",
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
            "module_address": "module.virtual_network_appigw",
            "name": "vn",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:59:16Z",
    "variables": {
        "prefix_name": {
            "value": "zodiac"
        },
        "region": {
            "value": "East US"
        }
    }
}