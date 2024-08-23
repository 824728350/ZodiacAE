
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
    "checks": [
        {
            "address": {
                "kind": "var",
                "name": "pattern",
                "to_display": "var.pattern"
            },
            "instances": [
                {
                    "address": {
                        "to_display": "var.pattern"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        }
    ],
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
            }
        },
        "root_module": {
            "module_calls": {
                "afw_diag": {
                    "expressions": {
                        "diagnostic_logs": {
                            "references": [
                                "data.azurerm_monitor_diagnostic_categories.azfw_diag_category.logs",
                                "data.azurerm_monitor_diagnostic_categories.azfw_diag_category"
                            ]
                        },
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "name": {
                            "constant_value": "diag"
                        },
                        "retention": {
                            "constant_value": 30
                        },
                        "target_resource_id": {
                            "references": [
                                "module.fe_azfw.id",
                                "module.fe_azfw"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_monitor_diagnostic_setting.diagnostic_logs",
                                "expressions": {
                                    "log_analytics_workspace_id": {
                                        "references": [
                                            "var.log_analytics_workspace_id"
                                        ]
                                    },
                                    "metric": [
                                        {
                                            "category": {
                                                "constant_value": "AllMetrics"
                                            },
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.target_resource_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "diagnostic_logs",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_monitor_diagnostic_setting"
                            }
                        ],
                        "variables": {
                            "diagnostic_logs": {
                                "description": "The list of diagnostic logs that should be enabled"
                            },
                            "log_analytics_workspace_id": {
                                "description": "The resource id of the Storage Account where the diagnostic logs will be stored"
                            },
                            "name": {
                                "description": "The name of the diagnostic logs configuration"
                            },
                            "retention": {
                                "description": "The retention time for all diagnostic logs"
                            },
                            "target_resource_id": {
                                "description": "The resource id of the target resource for which diagnostic logs will be enabled"
                            }
                        }
                    },
                    "source": "../modules/diagnostic_logs"
                },
                "appgw_diag": {
                    "expressions": {
                        "diagnostic_logs": {
                            "references": [
                                "data.azurerm_monitor_diagnostic_categories.appgw_diag_category.logs",
                                "data.azurerm_monitor_diagnostic_categories.appgw_diag_category"
                            ]
                        },
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "name": {
                            "constant_value": "diag"
                        },
                        "retention": {
                            "constant_value": 30
                        },
                        "target_resource_id": {
                            "references": [
                                "azurerm_application_gateway.network.id",
                                "azurerm_application_gateway.network"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_monitor_diagnostic_setting.diagnostic_logs",
                                "expressions": {
                                    "log_analytics_workspace_id": {
                                        "references": [
                                            "var.log_analytics_workspace_id"
                                        ]
                                    },
                                    "metric": [
                                        {
                                            "category": {
                                                "constant_value": "AllMetrics"
                                            },
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.target_resource_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "diagnostic_logs",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_monitor_diagnostic_setting"
                            }
                        ],
                        "variables": {
                            "diagnostic_logs": {
                                "description": "The list of diagnostic logs that should be enabled"
                            },
                            "log_analytics_workspace_id": {
                                "description": "The resource id of the Storage Account where the diagnostic logs will be stored"
                            },
                            "name": {
                                "description": "The name of the diagnostic logs configuration"
                            },
                            "retention": {
                                "description": "The retention time for all diagnostic logs"
                            },
                            "target_resource_id": {
                                "description": "The resource id of the target resource for which diagnostic logs will be enabled"
                            }
                        }
                    },
                    "source": "../modules/diagnostic_logs"
                },
                "azfw": {
                    "expressions": {
                        "id": {
                            "constant_value": "example"
                        },
                        "rg": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": {
                            "constant_value": "Premium"
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.azfw.id",
                                "azurerm_subnet.azfw"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.id",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "name": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.name",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.ip_configuration[0].private_ip_address",
                                        "azurerm_firewall.example.ip_configuration[0]",
                                        "azurerm_firewall.example.ip_configuration",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "public_ip_address": {
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
                                "address": "azurerm_firewall.example",
                                "expressions": {
                                    "firewall_policy_id": {
                                        "references": [
                                            "azurerm_firewall_policy.example.id",
                                            "azurerm_firewall_policy.example"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.example.id",
                                                    "azurerm_public_ip.example"
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
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "AZFW_VNet"
                                    },
                                    "sku_tier": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.zones"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall"
                            },
                            {
                                "address": "azurerm_firewall_policy.example",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall_policy"
                            },
                            {
                                "address": "azurerm_firewall_policy_rule_collection_group.example",
                                "expressions": {
                                    "firewall_policy_id": {
                                        "references": [
                                            "azurerm_firewall_policy.example.id",
                                            "azurerm_firewall_policy.example"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "RuleCollectionGroup"
                                    },
                                    "priority": {
                                        "constant_value": 1000
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall_policy_rule_collection_group"
                            },
                            {
                                "address": "azurerm_public_ip.example",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "location": {
                                        "references": [
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "local.firewall.name",
                                            "local.firewall"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    },
                                    "zones": {
                                        "references": [
                                            "var.zones"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "azurefirewall_application_rule": {
                                "default": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowApplicationRuleCollection",
                                        "priority": 2000,
                                        "rule": [
                                            {
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    "*"
                                                ],
                                                "destination_urls": [],
                                                "name": "All",
                                                "protocols": [
                                                    {
                                                        "port": 80,
                                                        "type": "Http"
                                                    },
                                                    {
                                                        "port": 443,
                                                        "type": "Https"
                                                    }
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": [],
                                                "terminate_tls": false,
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ]
                            },
                            "azurefirewall_nat_rule": {
                                "default": [
                                    {
                                        "action": "Dnat",
                                        "name": "TestDnatRule_SSH-SpokeVM",
                                        "priority": 500,
                                        "rule": [
                                            {
                                                "destination_ports": [
                                                    "22"
                                                ],
                                                "name": "SSH",
                                                "protocols": [
                                                    "TCP"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "translated_address": "1.1.1.1",
                                                "translated_port": "22"
                                            }
                                        ]
                                    }
                                ]
                            },
                            "azurefirewall_network_rule": {
                                "default": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowNetworkRuleCollection",
                                        "priority": 1000,
                                        "rule": [
                                            {
                                                "destination_addresses": [
                                                    "*"
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ports": [
                                                    "*"
                                                ],
                                                "name": "All",
                                                "protocols": [
                                                    "Any"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            "id": {
                                "default": "dev"
                            },
                            "name": {
                                "default": "fw-example"
                            },
                            "rg": {},
                            "sku": {
                                "default": "Premium"
                            },
                            "subnet_id": {},
                            "zones": {
                                "default": [
                                    "1",
                                    "2",
                                    "3"
                                ]
                            }
                        }
                    },
                    "source": "../modules/azurefirewall-premium"
                },
                "azfw_diag": {
                    "expressions": {
                        "diagnostic_logs": {
                            "references": [
                                "data.azurerm_monitor_diagnostic_categories.azfw_diag_category.logs",
                                "data.azurerm_monitor_diagnostic_categories.azfw_diag_category"
                            ]
                        },
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "name": {
                            "constant_value": "diag"
                        },
                        "retention": {
                            "constant_value": 30
                        },
                        "target_resource_id": {
                            "references": [
                                "module.azfw.id",
                                "module.azfw"
                            ]
                        }
                    },
                    "module": {
                        "resources": [
                            {
                                "address": "azurerm_monitor_diagnostic_setting.diagnostic_logs",
                                "expressions": {
                                    "log_analytics_workspace_id": {
                                        "references": [
                                            "var.log_analytics_workspace_id"
                                        ]
                                    },
                                    "metric": [
                                        {
                                            "category": {
                                                "constant_value": "AllMetrics"
                                            },
                                            "enabled": {
                                                "constant_value": false
                                            }
                                        }
                                    ],
                                    "name": {
                                        "references": [
                                            "var.name"
                                        ]
                                    },
                                    "target_resource_id": {
                                        "references": [
                                            "var.target_resource_id"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "diagnostic_logs",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_monitor_diagnostic_setting"
                            }
                        ],
                        "variables": {
                            "diagnostic_logs": {
                                "description": "The list of diagnostic logs that should be enabled"
                            },
                            "log_analytics_workspace_id": {
                                "description": "The resource id of the Storage Account where the diagnostic logs will be stored"
                            },
                            "name": {
                                "description": "The name of the diagnostic logs configuration"
                            },
                            "retention": {
                                "description": "The retention time for all diagnostic logs"
                            },
                            "target_resource_id": {
                                "description": "The resource id of the target resource for which diagnostic logs will be enabled"
                            }
                        }
                    },
                    "source": "../modules/diagnostic_logs"
                },
                "azure_subnet_addrs": {
                    "expressions": {
                        "base_cidr_block": {
                            "references": [
                                "var.backend_base_cidr_block"
                            ]
                        },
                        "networks": {
                            "constant_value": [
                                {
                                    "name": "default",
                                    "new_bits": 8
                                },
                                {
                                    "name": "pls",
                                    "new_bits": 8
                                },
                                {
                                    "name": "bastion",
                                    "new_bits": 8
                                },
                                {
                                    "name": "azfw",
                                    "new_bits": 8
                                },
                                {
                                    "name": "appgw",
                                    "new_bits": 8
                                },
                                {
                                    "name": "default2",
                                    "new_bits": 8
                                }
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "base_cidr_block": {
                                "description": "Echoes back the base_cidr_block input variable value, for convenience if passing the result of this module elsewhere as an object.",
                                "expression": {
                                    "references": [
                                        "var.base_cidr_block"
                                    ]
                                }
                            },
                            "network_cidr_blocks": {
                                "description": "A map from network names to allocated address prefixes in CIDR notation.",
                                "expression": {
                                    "references": [
                                        "local.addrs_by_name"
                                    ]
                                }
                            },
                            "networks": {
                                "description": "A list of objects corresponding to each of the objects in the input variable 'networks', each extended with a new attribute 'cidr_block' giving the network's allocated address prefix.",
                                "expression": {
                                    "references": [
                                        "local.network_objs"
                                    ]
                                }
                            }
                        },
                        "variables": {
                            "base_cidr_block": {
                                "description": "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
                            },
                            "networks": {
                                "description": "A list of objects describing requested subnetwork prefixes. new_bits is the number of additional network prefix bits to add, in addition to the existing prefix on base_cidr_block."
                            }
                        }
                    },
                    "source": "hashicorp/subnets/cidr"
                },
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
                "fe_azfw": {
                    "expressions": {
                        "azurefirewall_application_rule": {
                            "constant_value": [
                                {
                                    "action": "Allow",
                                    "name": "AllowApplicationRuleCollection",
                                    "priority": 2000,
                                    "rule": [
                                        {
                                            "destination_addresses": [],
                                            "destination_fqdn_tags": [],
                                            "destination_fqdns": [
                                                "*"
                                            ],
                                            "destination_urls": [],
                                            "name": "All",
                                            "protocols": [
                                                {
                                                    "port": 80,
                                                    "type": "Http"
                                                },
                                                {
                                                    "port": 8080,
                                                    "type": "Http"
                                                },
                                                {
                                                    "port": 443,
                                                    "type": "Https"
                                                }
                                            ],
                                            "source_addresses": [
                                                "*"
                                            ],
                                            "source_ip_groups": [],
                                            "terminate_tls": false,
                                            "web_categories": []
                                        }
                                    ]
                                }
                            ]
                        },
                        "azurefirewall_network_rule": {
                            "constant_value": [
                                {
                                    "action": "Allow",
                                    "name": "AllowNetworkRuleCollection",
                                    "priority": 1000,
                                    "rule": [
                                        {
                                            "destination_addresses": [
                                                "*"
                                            ],
                                            "destination_fqdns": [],
                                            "destination_ports": [
                                                "*"
                                            ],
                                            "name": "All",
                                            "protocols": [
                                                "TCP"
                                            ],
                                            "source_addresses": [
                                                "1.2.3.4"
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        "id": {
                            "references": [
                                "random_string.uniqstr.result",
                                "random_string.uniqstr"
                            ]
                        },
                        "rg": {
                            "references": [
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "sku": {
                            "constant_value": "Premium"
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.fe_azfw.id",
                                "azurerm_subnet.fe_azfw"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.id",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "name": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.name",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "private_ip_address": {
                                "expression": {
                                    "references": [
                                        "azurerm_firewall.example.ip_configuration[0].private_ip_address",
                                        "azurerm_firewall.example.ip_configuration[0]",
                                        "azurerm_firewall.example.ip_configuration",
                                        "azurerm_firewall.example"
                                    ]
                                }
                            },
                            "public_ip_address": {
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
                                "address": "azurerm_firewall.example",
                                "expressions": {
                                    "firewall_policy_id": {
                                        "references": [
                                            "azurerm_firewall_policy.example.id",
                                            "azurerm_firewall_policy.example"
                                        ]
                                    },
                                    "ip_configuration": [
                                        {
                                            "name": {
                                                "constant_value": "configuration"
                                            },
                                            "public_ip_address_id": {
                                                "references": [
                                                    "azurerm_public_ip.example.id",
                                                    "azurerm_public_ip.example"
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
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku_name": {
                                        "constant_value": "AZFW_VNet"
                                    },
                                    "sku_tier": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "var.zones"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall"
                            },
                            {
                                "address": "azurerm_firewall_policy.example",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall_policy"
                            },
                            {
                                "address": "azurerm_firewall_policy_rule_collection_group.example",
                                "expressions": {
                                    "firewall_policy_id": {
                                        "references": [
                                            "azurerm_firewall_policy.example.id",
                                            "azurerm_firewall_policy.example"
                                        ]
                                    },
                                    "name": {
                                        "constant_value": "RuleCollectionGroup"
                                    },
                                    "priority": {
                                        "constant_value": 1000
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_firewall_policy_rule_collection_group"
                            },
                            {
                                "address": "azurerm_public_ip.example",
                                "expressions": {
                                    "allocation_method": {
                                        "constant_value": "Static"
                                    },
                                    "location": {
                                        "references": [
                                            "var.rg.location",
                                            "var.rg"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "local.firewall.name",
                                            "local.firewall"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.rg.name",
                                            "var.rg"
                                        ]
                                    },
                                    "sku": {
                                        "constant_value": "Standard"
                                    },
                                    "zones": {
                                        "references": [
                                            "var.zones"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "example",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_public_ip"
                            }
                        ],
                        "variables": {
                            "azurefirewall_application_rule": {
                                "default": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowApplicationRuleCollection",
                                        "priority": 2000,
                                        "rule": [
                                            {
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    "*"
                                                ],
                                                "destination_urls": [],
                                                "name": "All",
                                                "protocols": [
                                                    {
                                                        "port": 80,
                                                        "type": "Http"
                                                    },
                                                    {
                                                        "port": 443,
                                                        "type": "Https"
                                                    }
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": [],
                                                "terminate_tls": false,
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ]
                            },
                            "azurefirewall_nat_rule": {
                                "default": [
                                    {
                                        "action": "Dnat",
                                        "name": "TestDnatRule_SSH-SpokeVM",
                                        "priority": 500,
                                        "rule": [
                                            {
                                                "destination_ports": [
                                                    "22"
                                                ],
                                                "name": "SSH",
                                                "protocols": [
                                                    "TCP"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "translated_address": "1.1.1.1",
                                                "translated_port": "22"
                                            }
                                        ]
                                    }
                                ]
                            },
                            "azurefirewall_network_rule": {
                                "default": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowNetworkRuleCollection",
                                        "priority": 1000,
                                        "rule": [
                                            {
                                                "destination_addresses": [
                                                    "*"
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ports": [
                                                    "*"
                                                ],
                                                "name": "All",
                                                "protocols": [
                                                    "Any"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            "id": {
                                "default": "dev"
                            },
                            "name": {
                                "default": "fw-example"
                            },
                            "rg": {},
                            "sku": {
                                "default": "Premium"
                            },
                            "subnet_id": {},
                            "zones": {
                                "default": [
                                    "1",
                                    "2",
                                    "3"
                                ]
                            }
                        }
                    },
                    "source": "../modules/azurefirewall-premium"
                },
                "fe_bastion": {
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "constant_value": "bastion-frontend"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.fe_bastion.id",
                                "azurerm_subnet.fe_bastion"
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
                "frontend_azure_subnet_addrs": {
                    "expressions": {
                        "base_cidr_block": {
                            "references": [
                                "var.frontend_base_cidr_block"
                            ]
                        },
                        "networks": {
                            "constant_value": [
                                {
                                    "name": "vm",
                                    "new_bits": 8
                                },
                                {
                                    "name": "azfw",
                                    "new_bits": 8
                                },
                                {
                                    "name": "pe",
                                    "new_bits": 8
                                },
                                {
                                    "name": "bastion",
                                    "new_bits": 8
                                }
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "base_cidr_block": {
                                "description": "Echoes back the base_cidr_block input variable value, for convenience if passing the result of this module elsewhere as an object.",
                                "expression": {
                                    "references": [
                                        "var.base_cidr_block"
                                    ]
                                }
                            },
                            "network_cidr_blocks": {
                                "description": "A map from network names to allocated address prefixes in CIDR notation.",
                                "expression": {
                                    "references": [
                                        "local.addrs_by_name"
                                    ]
                                }
                            },
                            "networks": {
                                "description": "A list of objects corresponding to each of the objects in the input variable 'networks', each extended with a new attribute 'cidr_block' giving the network's allocated address prefix.",
                                "expression": {
                                    "references": [
                                        "local.network_objs"
                                    ]
                                }
                            }
                        },
                        "variables": {
                            "base_cidr_block": {
                                "description": "A network address prefix in CIDR notation that all of the requested subnetwork prefixes will be allocated within."
                            },
                            "networks": {
                                "description": "A list of objects describing requested subnetwork prefixes. new_bits is the number of additional network prefix bits to add, in addition to the existing prefix on base_cidr_block."
                            }
                        }
                    },
                    "source": "hashicorp/subnets/cidr"
                },
                "la": {
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
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "id": {
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.log_analytics.id",
                                        "azurerm_log_analytics_workspace.log_analytics"
                                    ]
                                }
                            },
                            "workspace_id": {
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.log_analytics.workspace_id",
                                        "azurerm_log_analytics_workspace.log_analytics"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azurerm_log_analytics_solution.container",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.location",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "plan": [
                                        {
                                            "product": {
                                                "constant_value": "OMSGallery/ContainerInsights"
                                            },
                                            "publisher": {
                                                "constant_value": "Microsoft"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.resource_group_name",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "solution_name": {
                                        "constant_value": "ContainerInsights"
                                    },
                                    "workspace_name": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.name",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "workspace_resource_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.id",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "container",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_log_analytics_solution"
                            },
                            {
                                "address": "azurerm_log_analytics_solution.vms",
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.location",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "plan": [
                                        {
                                            "product": {
                                                "constant_value": "OMSGallery/VMInsights"
                                            },
                                            "publisher": {
                                                "constant_value": "Microsoft"
                                            }
                                        }
                                    ],
                                    "resource_group_name": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.resource_group_name",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "solution_name": {
                                        "constant_value": "VMInsights"
                                    },
                                    "workspace_name": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.name",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    },
                                    "workspace_resource_id": {
                                        "references": [
                                            "azurerm_log_analytics_workspace.log_analytics.id",
                                            "azurerm_log_analytics_workspace.log_analytics"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "vms",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_log_analytics_solution"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.log_analytics",
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
                                    "retention_in_days": {
                                        "references": [
                                            "var.retention"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.sku"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "log_analytics",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            }
                        ],
                        "variables": {
                            "location": {
                                "description": "Azure region of the Log Analytics workspace"
                            },
                            "name": {
                                "description": "The name of the Log Analytics workspace"
                            },
                            "resource_group_name": {
                                "description": "Name of the Log Analytics workspace resource group"
                            },
                            "retention": {
                                "default": 30,
                                "description": "The retention time of the Log Analytics workspace"
                            },
                            "sku": {
                                "default": null,
                                "description": "The SKU of the Log Analytics workspace"
                            }
                        }
                    },
                    "source": "../modules/log_analytics"
                },
                "vm_appgw": {
                    "count_expression": {
                        "references": [
                            "var.numberOfVMs"
                        ]
                    },
                    "expressions": {
                        "admin_username": {
                            "constant_value": "adminuser"
                        },
                        "custom_data": {
                            "references": [
                                "count.index"
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
                                "count.index"
                            ]
                        },
                        "public_key": {
                            "references": [
                                "var.ssh_public_key"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.default.id",
                                "azurerm_subnet.default"
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
                            "constant_value": "#cloud-config\n  package_upgrade: true\n  packages:\n    - nginx\n"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "constant_value": "vmfrontend"
                        },
                        "public_key": {
                            "references": [
                                "var.ssh_public_key"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.fe_vm.id",
                                "azurerm_subnet.fe_vm"
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
                                        "module.vm_appgw"
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
                                    "constant_value": "Enabled"
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
                                        "azurerm_public_ip.appgw.id",
                                        "azurerm_public_ip.appgw"
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
                                "private_link_configuration_name": {
                                    "references": [
                                        "local.private_link_configuration_name"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appgw.id",
                                        "azurerm_subnet.appgw"
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
                                        "azurerm_subnet.appgw.id",
                                        "azurerm_subnet.appgw"
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
                        "private_link_configuration": [
                            {
                                "ip_configuration": [
                                    {
                                        "name": {
                                            "constant_value": "my-private-link-config-ip-config"
                                        },
                                        "primary": {
                                            "constant_value": true
                                        },
                                        "private_ip_address_allocation": {
                                            "constant_value": "Dynamic"
                                        },
                                        "subnet_id": {
                                            "references": [
                                                "azurerm_subnet.pls.id",
                                                "azurerm_subnet.pls"
                                            ]
                                        }
                                    }
                                ],
                                "name": {
                                    "references": [
                                        "local.private_link_configuration_name"
                                    ]
                                }
                            }
                        ],
                        "request_routing_rule": [
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
                                    "constant_value": "1000"
                                },
                                "rule_type": {
                                    "constant_value": "PathBasedRouting"
                                },
                                "url_path_map_name": {
                                    "constant_value": "my-url-path-map"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "rewrite_rule_set": [
                            {
                                "name": {
                                    "constant_value": "add-x-forwarded-for-to-url"
                                },
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {
                                                "ignore_case": {
                                                    "constant_value": true
                                                },
                                                "negate": {
                                                    "constant_value": false
                                                },
                                                "pattern": {
                                                    "constant_value": "(\\d+\\.\\d+\\.\\d+\\.\\d+)"
                                                },
                                                "variable": {
                                                    "constant_value": "http_req_X-Forwarded-For"
                                                }
                                            }
                                        ],
                                        "name": {
                                            "constant_value": "NewRewrite"
                                        },
                                        "rule_sequence": {
                                            "constant_value": 100
                                        },
                                        "url": [
                                            {
                                                "components": {
                                                    "constant_value": "query_string_only"
                                                },
                                                "query_string": {
                                                    "constant_value": "{var_query_string}&c={http_req_X-Forwarded-For_1}"
                                                },
                                                "reroute": {
                                                    "constant_value": false
                                                }
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
                        "sku": [
                            {
                                "capacity": {
                                    "constant_value": 2
                                },
                                "name": {
                                    "references": [
                                        "local.sku_name"
                                    ]
                                },
                                "tier": {
                                    "references": [
                                        "local.sku_name"
                                    ]
                                }
                            }
                        ],
                        "url_path_map": [
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
                                "default_rewrite_rule_set_name": {
                                    "constant_value": "add-x-forwarded-for-to-url"
                                },
                                "name": {
                                    "constant_value": "my-url-path-map"
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
                    "address": "azurerm_private_endpoint.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "constant_value": "pe-to-backend-appgw"
                        },
                        "private_service_connection": [
                            {
                                "is_manual_connection": {
                                    "constant_value": false
                                },
                                "name": {
                                    "constant_value": "example-privateserviceconnection"
                                },
                                "private_connection_resource_id": {
                                    "references": [
                                        "azurerm_application_gateway.network.id",
                                        "azurerm_application_gateway.network"
                                    ]
                                },
                                "subresource_names": {
                                    "references": [
                                        "local.frontend_ip_configuration_private_name"
                                    ]
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.pe.id",
                                "azurerm_subnet.pe"
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
                    "address": "azurerm_public_ip.appgw",
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
                    "name": "appgw",
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
                    "address": "azurerm_resource_group.frontend",
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
                    "name": "frontend",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_route_table.appgw",
                    "expressions": {
                        "disable_bgp_route_propagation": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "rt-appgw"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "route": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"default\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs",
                                "module.azfw.private_ip_address",
                                "module.azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_route_table.azfw",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "route-azfw"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "route": {
                            "constant_value": [
                                {
                                    "address_prefix": "0.0.0.0/0",
                                    "name": "default",
                                    "next_hop_in_ip_address": null,
                                    "next_hop_type": "Internet"
                                }
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "azfw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_route_table.default",
                    "expressions": {
                        "disable_bgp_route_propagation": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "constant_value": "rt-default"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "route": {
                            "references": [
                                "module.azfw.private_ip_address",
                                "module.azfw",
                                "module.azure_subnet_addrs.network_cidr_blocks[\"appgw\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs",
                                "module.azfw.private_ip_address",
                                "module.azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "default",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_route_table.vm",
                    "expressions": {
                        "disable_bgp_route_propagation": {
                            "constant_value": false
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "constant_value": "rt-fe-vm"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "route": {
                            "references": [
                                "module.fe_azfw.private_ip_address",
                                "module.fe_azfw",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks[\"pe\"]",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks",
                                "module.frontend_azure_subnet_addrs",
                                "module.fe_azfw.private_ip_address",
                                "module.fe_azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_route_table"
                },
                {
                    "address": "azurerm_subnet.appgw",
                    "depends_on": [
                        "azurerm_subnet.azfw"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"appgw\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-appgw"
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
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.azfw",
                    "depends_on": [
                        "azurerm_subnet.pls"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"azfw\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureFirewallSubnet"
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
                    "name": "azfw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.bastion",
                    "depends_on": [
                        "azurerm_subnet.default"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"bastion\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
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
                    "address": "azurerm_subnet.default",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"default\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-default"
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
                    "name": "default",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.default2",
                    "depends_on": [
                        "azurerm_subnet.appgw"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"default2\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-default-backend-appgw"
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
                    "name": "default2",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.fe_azfw",
                    "depends_on": [
                        "azurerm_subnet.fe_vm"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks[\"azfw\"]",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks",
                                "module.frontend_azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureFirewallSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.frontend.name",
                                "azurerm_virtual_network.frontend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fe_azfw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.fe_bastion",
                    "depends_on": [
                        "azurerm_subnet.azfw"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks[\"bastion\"]",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks",
                                "module.frontend_azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "AzureBastionSubnet"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.frontend.name",
                                "azurerm_virtual_network.frontend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fe_bastion",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.fe_vm",
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks[\"vm\"]",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks",
                                "module.frontend_azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-vm"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.frontend.name",
                                "azurerm_virtual_network.frontend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fe_vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.pe",
                    "depends_on": [
                        "azurerm_subnet.fe_vm"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks[\"pe\"]",
                                "module.frontend_azure_subnet_addrs.network_cidr_blocks",
                                "module.frontend_azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-pe"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.frontend.name",
                                "azurerm_virtual_network.frontend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "pe",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.pls",
                    "depends_on": [
                        "azurerm_subnet.bastion"
                    ],
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "module.azure_subnet_addrs.network_cidr_blocks[\"pls\"]",
                                "module.azure_subnet_addrs.network_cidr_blocks",
                                "module.azure_subnet_addrs"
                            ]
                        },
                        "name": {
                            "constant_value": "snet-pls"
                        },
                        "private_endpoint_network_policies_enabled": {
                            "constant_value": false
                        },
                        "private_link_service_network_policies_enabled": {
                            "constant_value": false
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
                    "name": "pls",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet_route_table_association.appgw",
                    "count_expression": {
                        "references": [
                            "var.pattern"
                        ]
                    },
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.appgw.id",
                                "azurerm_route_table.appgw"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.appgw.id",
                                "azurerm_subnet.appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "appgw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.azfw",
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.azfw.id",
                                "azurerm_route_table.azfw"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.azfw.id",
                                "azurerm_subnet.azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "azfw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.default",
                    "count_expression": {
                        "references": [
                            "var.pattern"
                        ]
                    },
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.default.id",
                                "azurerm_route_table.default"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.default.id",
                                "azurerm_subnet.default"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "default",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_subnet_route_table_association.fe_vm",
                    "count_expression": {
                        "references": [
                            "var.pattern"
                        ]
                    },
                    "expressions": {
                        "route_table_id": {
                            "references": [
                                "azurerm_route_table.vm.id",
                                "azurerm_route_table.vm"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.fe_vm.id",
                                "azurerm_subnet.fe_vm"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "fe_vm",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet_route_table_association"
                },
                {
                    "address": "azurerm_virtual_network.example",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "module.azure_subnet_addrs.base_cidr_block",
                                "module.azure_subnet_addrs"
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
                    "address": "azurerm_virtual_network.frontend",
                    "expressions": {
                        "address_space": {
                            "references": [
                                "module.frontend_azure_subnet_addrs.base_cidr_block",
                                "module.frontend_azure_subnet_addrs"
                            ]
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "constant_value": "vnet-azfwprem"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "frontend",
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
                    "address": "data.azurerm_monitor_diagnostic_categories.appgw_diag_category",
                    "expressions": {
                        "resource_id": {
                            "references": [
                                "azurerm_application_gateway.network.id",
                                "azurerm_application_gateway.network"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "appgw_diag_category",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_categories"
                },
                {
                    "address": "data.azurerm_monitor_diagnostic_categories.azfw_diag_category",
                    "expressions": {
                        "resource_id": {
                            "references": [
                                "module.azfw.id",
                                "module.azfw"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "azfw_diag_category",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_categories"
                },
                {
                    "address": "module.afw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "expressions": {
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "metric": [
                            {
                                "category": {
                                    "constant_value": "AllMetrics"
                                },
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "name": {
                            "references": [
                                "root.afw_diag.name"
                            ]
                        },
                        "target_resource_id": {
                            "references": [
                                "module.fe_azfw.id",
                                "module.fe_azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_setting"
                },
                {
                    "address": "module.appgw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "expressions": {
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "metric": [
                            {
                                "category": {
                                    "constant_value": "AllMetrics"
                                },
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "name": {
                            "references": [
                                "root.appgw_diag.name"
                            ]
                        },
                        "target_resource_id": {
                            "references": [
                                "azurerm_application_gateway.network.id",
                                "azurerm_application_gateway.network"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_setting"
                },
                {
                    "address": "module.azfw.azurerm_firewall.example",
                    "expressions": {
                        "firewall_policy_id": {
                            "references": [
                                "module.azfw.azurerm_firewall_policy.example.id",
                                "module.azfw.azurerm_firewall_policy.example"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.azfw.azurerm_public_ip.example.id",
                                        "module.azfw.azurerm_public_ip.example"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.azfw.id",
                                        "azurerm_subnet.azfw"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "root.azfw.rg.location",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.azfw.id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "root.azfw.rg.name",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "AZFW_VNet"
                        },
                        "sku_tier": {
                            "references": [
                                "root.azfw.sku"
                            ]
                        },
                        "zones": {
                            "references": [
                                "var.zones"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall"
                },
                {
                    "address": "module.azfw.azurerm_firewall_policy.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "root.azfw.rg.location",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.azfw.id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "root.azfw.rg.name",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": {
                            "references": [
                                "root.azfw.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall_policy"
                },
                {
                    "address": "module.azfw.azurerm_firewall_policy_rule_collection_group.example",
                    "expressions": {
                        "firewall_policy_id": {
                            "references": [
                                "module.azfw.azurerm_firewall_policy.example.id",
                                "module.azfw.azurerm_firewall_policy.example"
                            ]
                        },
                        "name": {
                            "constant_value": "RuleCollectionGroup"
                        },
                        "priority": {
                            "constant_value": 1000
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall_policy_rule_collection_group"
                },
                {
                    "address": "module.azfw.azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "root.azfw.rg.location",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.firewall.name",
                                "local.firewall"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "root.azfw.rg.name",
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example",
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "zones": {
                            "references": [
                                "var.zones"
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
                    "address": "module.azfw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "expressions": {
                        "log_analytics_workspace_id": {
                            "references": [
                                "module.la.id",
                                "module.la"
                            ]
                        },
                        "metric": [
                            {
                                "category": {
                                    "constant_value": "AllMetrics"
                                },
                                "enabled": {
                                    "constant_value": false
                                }
                            }
                        ],
                        "name": {
                            "references": [
                                "root.azfw_diag.name"
                            ]
                        },
                        "target_resource_id": {
                            "references": [
                                "module.azfw.id",
                                "module.azfw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_monitor_diagnostic_setting"
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
                    "address": "module.fe_azfw.azurerm_firewall.example",
                    "expressions": {
                        "firewall_policy_id": {
                            "references": [
                                "module.fe_azfw.azurerm_firewall_policy.example.id",
                                "module.fe_azfw.azurerm_firewall_policy.example"
                            ]
                        },
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.fe_azfw.azurerm_public_ip.example.id",
                                        "module.fe_azfw.azurerm_public_ip.example"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.fe_azfw.id",
                                        "azurerm_subnet.fe_azfw"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "root.fe_azfw.rg.location",
                                "azurerm_resource_group.frontend"
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
                                "root.fe_azfw.rg.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "sku_name": {
                            "constant_value": "AZFW_VNet"
                        },
                        "sku_tier": {
                            "references": [
                                "root.fe_azfw.sku"
                            ]
                        },
                        "zones": {
                            "references": [
                                "var.zones"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall"
                },
                {
                    "address": "module.fe_azfw.azurerm_firewall_policy.example",
                    "expressions": {
                        "location": {
                            "references": [
                                "root.fe_azfw.rg.location",
                                "azurerm_resource_group.frontend"
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
                                "root.fe_azfw.rg.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "sku": {
                            "references": [
                                "root.fe_azfw.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall_policy"
                },
                {
                    "address": "module.fe_azfw.azurerm_firewall_policy_rule_collection_group.example",
                    "expressions": {
                        "firewall_policy_id": {
                            "references": [
                                "module.fe_azfw.azurerm_firewall_policy.example.id",
                                "module.fe_azfw.azurerm_firewall_policy.example"
                            ]
                        },
                        "name": {
                            "constant_value": "RuleCollectionGroup"
                        },
                        "priority": {
                            "constant_value": 1000
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_firewall_policy_rule_collection_group"
                },
                {
                    "address": "module.fe_azfw.azurerm_public_ip.example",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "root.fe_azfw.rg.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.firewall.name",
                                "local.firewall"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "root.fe_azfw.rg.name",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "zones": {
                            "references": [
                                "var.zones"
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
                    "address": "module.fe_bastion.azurerm_bastion_host.bastion",
                    "depends_on": [
                        "module.fe_bastion.azurerm_subnet_network_security_group_association.hub-bastion"
                    ],
                    "expressions": {
                        "ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "configuration"
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "module.fe_bastion.azurerm_public_ip.bastion.id",
                                        "module.fe_bastion.azurerm_public_ip.bastion"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.fe_bastion.id",
                                        "azurerm_subnet.fe_bastion"
                                    ]
                                }
                            }
                        ],
                        "ip_connect_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.fe_bastion.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_group.bastion",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.fe_bastion.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-azurecloud-out",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gsi-out",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gwm",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-hc",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-https",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-lb",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-sshrdp-out",
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
                                "module.fe_bastion.azurerm_network_security_group.bastion.name",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_public_ip.bastion",
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.fe_bastion.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                    "address": "module.fe_bastion.azurerm_subnet_network_security_group_association.hub-bastion",
                    "depends_on": [
                        "module.fe_bastion.azurerm_network_security_rule.bastion-azurecloud-out",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-gsi-out",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-gwm",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-https",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-hc",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-lb",
                        "module.fe_bastion.azurerm_network_security_rule.bastion-sshrdp-out"
                    ],
                    "expressions": {
                        "network_security_group_id": {
                            "references": [
                                "module.fe_bastion.azurerm_network_security_group.bastion.id",
                                "module.fe_bastion.azurerm_network_security_group.bastion"
                            ]
                        },
                        "subnet_id": {
                            "references": [
                                "azurerm_subnet.fe_bastion.id",
                                "azurerm_subnet.fe_bastion"
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
                    "address": "module.la.azurerm_log_analytics_solution.container",
                    "expressions": {
                        "location": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.location",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "plan": [
                            {
                                "product": {
                                    "constant_value": "OMSGallery/ContainerInsights"
                                },
                                "publisher": {
                                    "constant_value": "Microsoft"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.resource_group_name",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "solution_name": {
                            "constant_value": "ContainerInsights"
                        },
                        "workspace_name": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.name",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "workspace_resource_id": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.id",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "container",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_log_analytics_solution"
                },
                {
                    "address": "module.la.azurerm_log_analytics_solution.vms",
                    "expressions": {
                        "location": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.location",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "plan": [
                            {
                                "product": {
                                    "constant_value": "OMSGallery/VMInsights"
                                },
                                "publisher": {
                                    "constant_value": "Microsoft"
                                }
                            }
                        ],
                        "resource_group_name": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.resource_group_name",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "solution_name": {
                            "constant_value": "VMInsights"
                        },
                        "workspace_name": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.name",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        },
                        "workspace_resource_id": {
                            "references": [
                                "module.la.azurerm_log_analytics_workspace.log_analytics.id",
                                "module.la.azurerm_log_analytics_workspace.log_analytics"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "vms",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_log_analytics_solution"
                },
                {
                    "address": "module.la.azurerm_log_analytics_workspace.log_analytics",
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
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.example.name",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "retention_in_days": {
                            "references": [
                                "var.retention"
                            ]
                        },
                        "sku": {
                            "references": [
                                "var.sku"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "log_analytics",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.vm_appgw.azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
                    "expressions": {
                        "daily_recurrence_time": {
                            "constant_value": "0200"
                        },
                        "enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "module.vm_appgw.azurerm_linux_virtual_machine.linux.location",
                                "module.vm_appgw.azurerm_linux_virtual_machine.linux"
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
                                "module.vm_appgw.azurerm_linux_virtual_machine.linux.id",
                                "module.vm_appgw.azurerm_linux_virtual_machine.linux"
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
                    "address": "module.vm_appgw.azurerm_linux_virtual_machine.linux",
                    "expressions": {
                        "admin_password": {
                            "references": [
                                "var.admin_password"
                            ]
                        },
                        "admin_username": {
                            "references": [
                                "root.vm_appgw.admin_username"
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
                                "count.index",
                                "count.index"
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
                                "count.index"
                            ]
                        },
                        "network_interface_ids": {
                            "references": [
                                "module.vm_appgw.azurerm_network_interface.nic.id",
                                "module.vm_appgw.azurerm_network_interface.nic"
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
                    "address": "module.vm_appgw.azurerm_network_interface.nic",
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
                                        "module.vm_appgw.azurerm_public_ip.pip.id",
                                        "module.vm_appgw.azurerm_public_ip.pip"
                                    ]
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.default.id",
                                        "azurerm_subnet.default"
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
                                "count.index"
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
                    "address": "module.vm_appgw.azurerm_network_interface_security_group_association.example",
                    "expressions": {
                        "network_interface_id": {
                            "references": [
                                "module.vm_appgw.azurerm_network_interface.nic.id",
                                "module.vm_appgw.azurerm_network_interface.nic"
                            ]
                        },
                        "network_security_group_id": {
                            "references": [
                                "module.vm_appgw.azurerm_network_security_group.nsg.id",
                                "module.vm_appgw.azurerm_network_security_group.nsg"
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
                    "address": "module.vm_appgw.azurerm_network_security_group.nsg",
                    "expressions": {
                        "location": {
                            "references": [
                                "azurerm_resource_group.example.location",
                                "azurerm_resource_group.example"
                            ]
                        },
                        "name": {
                            "references": [
                                "count.index"
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
                    "address": "module.vm_appgw.azurerm_network_security_rule.nsg-rule",
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
                                "module.vm_appgw.azurerm_network_security_group.nsg.name",
                                "module.vm_appgw.azurerm_network_security_group.nsg"
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
                    "address": "module.vm_appgw.azurerm_public_ip.pip",
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
                                "count.index"
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
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                                        "azurerm_subnet.fe_vm.id",
                                        "azurerm_subnet.fe_vm"
                                    ]
                                }
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                                "azurerm_resource_group.frontend.location",
                                "azurerm_resource_group.frontend"
                            ]
                        },
                        "name": {
                            "references": [
                                "root.webserver.name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.frontend.name",
                                "azurerm_resource_group.frontend"
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
                "backend_base_cidr_block": {
                    "default": "172.16.0.0/16"
                },
                "frontend_base_cidr_block": {
                    "default": "10.254.0.0/16"
                },
                "numberOfVMs": {
                    "default": 2
                },
                "pattern": {
                    "default": "AppGW-with-PLS"
                },
                "rg": {},
                "ssh_public_key": {}
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
        "root_module": {
            "child_modules": [
                {
                    "address": "module.afw_diag",
                    "resources": [
                        {
                            "address": "module.afw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                            "mode": "managed",
                            "name": "diagnostic_logs",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "enabled_log": [],
                                "log": [],
                                "metric": [
                                    {
                                        "retention_policy": []
                                    }
                                ]
                            },
                            "type": "azurerm_monitor_diagnostic_setting",
                            "values": {
                                "eventhub_authorization_rule_id": null,
                                "eventhub_name": null,
                                "metric": [
                                    {
                                        "category": "AllMetrics",
                                        "enabled": false,
                                        "retention_policy": []
                                    }
                                ],
                                "name": "diag",
                                "partner_solution_id": null,
                                "storage_account_id": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.appgw_diag",
                    "resources": [
                        {
                            "address": "module.appgw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                            "mode": "managed",
                            "name": "diagnostic_logs",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "enabled_log": [],
                                "log": [],
                                "metric": [
                                    {
                                        "retention_policy": []
                                    }
                                ]
                            },
                            "type": "azurerm_monitor_diagnostic_setting",
                            "values": {
                                "eventhub_authorization_rule_id": null,
                                "eventhub_name": null,
                                "metric": [
                                    {
                                        "category": "AllMetrics",
                                        "enabled": false,
                                        "retention_policy": []
                                    }
                                ],
                                "name": "diag",
                                "partner_solution_id": null,
                                "storage_account_id": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.azfw",
                    "resources": [
                        {
                            "address": "module.azfw.azurerm_firewall.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "ip_configuration": [
                                    {}
                                ],
                                "management_ip_configuration": [],
                                "virtual_hub": [],
                                "zones": [
                                    false,
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_firewall",
                            "values": {
                                "dns_servers": null,
                                "ip_configuration": [
                                    {
                                        "name": "configuration"
                                    }
                                ],
                                "location": "japaneast",
                                "management_ip_configuration": [],
                                "name": "afw-example",
                                "private_ip_ranges": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "sku_name": "AZFW_VNet",
                                "sku_tier": "Premium",
                                "tags": null,
                                "timeouts": null,
                                "virtual_hub": [],
                                "zones": [
                                    "1",
                                    "2",
                                    "3"
                                ]
                            }
                        },
                        {
                            "address": "module.azfw.azurerm_firewall_policy.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "child_policies": [],
                                "dns": [],
                                "explicit_proxy": [],
                                "firewalls": [],
                                "identity": [],
                                "insights": [],
                                "intrusion_detection": [],
                                "rule_collection_groups": [],
                                "threat_intelligence_allowlist": [],
                                "tls_certificate": []
                            },
                            "type": "azurerm_firewall_policy",
                            "values": {
                                "auto_learn_private_ranges_enabled": null,
                                "base_policy_id": null,
                                "dns": [],
                                "explicit_proxy": [],
                                "identity": [],
                                "insights": [],
                                "intrusion_detection": [],
                                "location": "japaneast",
                                "name": "afwp-example",
                                "private_ip_ranges": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "sku": "Premium",
                                "sql_redirect_allowed": null,
                                "tags": null,
                                "threat_intelligence_allowlist": [],
                                "threat_intelligence_mode": "Alert",
                                "timeouts": null,
                                "tls_certificate": []
                            }
                        },
                        {
                            "address": "module.azfw.azurerm_firewall_policy_rule_collection_group.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "application_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    false
                                                ],
                                                "destination_urls": [],
                                                "http_headers": [],
                                                "protocols": [
                                                    {},
                                                    {}
                                                ],
                                                "source_addresses": [
                                                    false
                                                ],
                                                "source_ip_groups": [],
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ],
                                "nat_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_ports": [
                                                    false
                                                ],
                                                "protocols": [
                                                    false
                                                ],
                                                "source_addresses": [
                                                    false
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "network_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_addresses": [
                                                    false
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ports": [
                                                    false
                                                ],
                                                "protocols": [
                                                    false
                                                ],
                                                "source_addresses": [
                                                    false
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_firewall_policy_rule_collection_group",
                            "values": {
                                "application_rule_collection": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowApplicationRuleCollection",
                                        "priority": 2000,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    "*"
                                                ],
                                                "destination_urls": [],
                                                "http_headers": [],
                                                "name": "All",
                                                "protocols": [
                                                    {
                                                        "port": 80,
                                                        "type": "Http"
                                                    },
                                                    {
                                                        "port": 443,
                                                        "type": "Https"
                                                    }
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": [],
                                                "terminate_tls": false,
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ],
                                "name": "RuleCollectionGroup",
                                "nat_rule_collection": [
                                    {
                                        "action": "Dnat",
                                        "name": "TestDnatRule_SSH-SpokeVM",
                                        "priority": 500,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_ports": [
                                                    "22"
                                                ],
                                                "name": "SSH",
                                                "protocols": [
                                                    "TCP"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": null,
                                                "translated_address": "1.1.1.1",
                                                "translated_fqdn": null,
                                                "translated_port": 22
                                            }
                                        ]
                                    }
                                ],
                                "network_rule_collection": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowNetworkRuleCollection",
                                        "priority": 1000,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_addresses": [
                                                    "*"
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ip_groups": null,
                                                "destination_ports": [
                                                    "*"
                                                ],
                                                "name": "All",
                                                "protocols": [
                                                    "Any"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": null
                                            }
                                        ]
                                    }
                                ],
                                "priority": 1000,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.azfw.azurerm_public_ip.example",
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
                                "name": "pip-fw-example",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        }
                    ]
                },
                {
                    "address": "module.azfw_diag",
                    "resources": [
                        {
                            "address": "module.azfw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                            "mode": "managed",
                            "name": "diagnostic_logs",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "enabled_log": [],
                                "log": [],
                                "metric": [
                                    {
                                        "retention_policy": []
                                    }
                                ]
                            },
                            "type": "azurerm_monitor_diagnostic_setting",
                            "values": {
                                "eventhub_authorization_rule_id": null,
                                "eventhub_name": null,
                                "metric": [
                                    {
                                        "category": "AllMetrics",
                                        "enabled": false,
                                        "retention_policy": []
                                    }
                                ],
                                "name": "diag",
                                "partner_solution_id": null,
                                "storage_account_id": null,
                                "timeouts": null
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
                                "ip_connect_enabled": true,
                                "kerberos_enabled": false,
                                "location": "japaneast",
                                "name": "bastion",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.fe_azfw",
                    "resources": [
                        {
                            "address": "module.fe_azfw.azurerm_firewall.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "ip_configuration": [
                                    {}
                                ],
                                "management_ip_configuration": [],
                                "virtual_hub": [],
                                "zones": [
                                    false,
                                    false,
                                    false
                                ]
                            },
                            "type": "azurerm_firewall",
                            "values": {
                                "dns_servers": null,
                                "ip_configuration": [
                                    {
                                        "name": "configuration"
                                    }
                                ],
                                "location": "japaneast",
                                "management_ip_configuration": [],
                                "private_ip_ranges": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "sku_name": "AZFW_VNet",
                                "sku_tier": "Premium",
                                "tags": null,
                                "timeouts": null,
                                "virtual_hub": [],
                                "zones": [
                                    "1",
                                    "2",
                                    "3"
                                ]
                            }
                        },
                        {
                            "address": "module.fe_azfw.azurerm_firewall_policy.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "child_policies": [],
                                "dns": [],
                                "explicit_proxy": [],
                                "firewalls": [],
                                "identity": [],
                                "insights": [],
                                "intrusion_detection": [],
                                "rule_collection_groups": [],
                                "threat_intelligence_allowlist": [],
                                "tls_certificate": []
                            },
                            "type": "azurerm_firewall_policy",
                            "values": {
                                "auto_learn_private_ranges_enabled": null,
                                "base_policy_id": null,
                                "dns": [],
                                "explicit_proxy": [],
                                "identity": [],
                                "insights": [],
                                "intrusion_detection": [],
                                "location": "japaneast",
                                "private_ip_ranges": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "sku": "Premium",
                                "sql_redirect_allowed": null,
                                "tags": null,
                                "threat_intelligence_allowlist": [],
                                "threat_intelligence_mode": "Alert",
                                "timeouts": null,
                                "tls_certificate": []
                            }
                        },
                        {
                            "address": "module.fe_azfw.azurerm_firewall_policy_rule_collection_group.example",
                            "mode": "managed",
                            "name": "example",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "application_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    false
                                                ],
                                                "destination_urls": [],
                                                "http_headers": [],
                                                "protocols": [
                                                    {},
                                                    {},
                                                    {}
                                                ],
                                                "source_addresses": [
                                                    false
                                                ],
                                                "source_ip_groups": [],
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ],
                                "nat_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_ports": [
                                                    false
                                                ],
                                                "protocols": [
                                                    false
                                                ],
                                                "source_addresses": [
                                                    false
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "network_rule_collection": [
                                    {
                                        "rule": [
                                            {
                                                "destination_addresses": [
                                                    false
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ports": [
                                                    false
                                                ],
                                                "protocols": [
                                                    false
                                                ],
                                                "source_addresses": [
                                                    false
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            "type": "azurerm_firewall_policy_rule_collection_group",
                            "values": {
                                "application_rule_collection": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowApplicationRuleCollection",
                                        "priority": 2000,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_addresses": [],
                                                "destination_fqdn_tags": [],
                                                "destination_fqdns": [
                                                    "*"
                                                ],
                                                "destination_urls": [],
                                                "http_headers": [],
                                                "name": "All",
                                                "protocols": [
                                                    {
                                                        "port": 80,
                                                        "type": "Http"
                                                    },
                                                    {
                                                        "port": 8080,
                                                        "type": "Http"
                                                    },
                                                    {
                                                        "port": 443,
                                                        "type": "Https"
                                                    }
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": [],
                                                "terminate_tls": false,
                                                "web_categories": []
                                            }
                                        ]
                                    }
                                ],
                                "name": "RuleCollectionGroup",
                                "nat_rule_collection": [
                                    {
                                        "action": "Dnat",
                                        "name": "TestDnatRule_SSH-SpokeVM",
                                        "priority": 500,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_ports": [
                                                    "22"
                                                ],
                                                "name": "SSH",
                                                "protocols": [
                                                    "TCP"
                                                ],
                                                "source_addresses": [
                                                    "*"
                                                ],
                                                "source_ip_groups": null,
                                                "translated_address": "1.1.1.1",
                                                "translated_fqdn": null,
                                                "translated_port": 22
                                            }
                                        ]
                                    }
                                ],
                                "network_rule_collection": [
                                    {
                                        "action": "Allow",
                                        "name": "AllowNetworkRuleCollection",
                                        "priority": 1000,
                                        "rule": [
                                            {
                                                "description": null,
                                                "destination_addresses": [
                                                    "*"
                                                ],
                                                "destination_fqdns": [],
                                                "destination_ip_groups": null,
                                                "destination_ports": [
                                                    "*"
                                                ],
                                                "name": "All",
                                                "protocols": [
                                                    "TCP"
                                                ],
                                                "source_addresses": [
                                                    "1.2.3.4"
                                                ],
                                                "source_ip_groups": null
                                            }
                                        ]
                                    }
                                ],
                                "priority": 1000,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_azfw.azurerm_public_ip.example",
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
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        }
                    ]
                },
                {
                    "address": "module.fe_bastion",
                    "resources": [
                        {
                            "address": "module.fe_bastion.azurerm_bastion_host.bastion",
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
                                "name": "bastion-frontend",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                            "address": "module.fe_bastion.azurerm_network_security_group.bastion",
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
                                "name": "nsg-bastion-frontend",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-azurecloud-out",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 130,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 140,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "VirtualNetwork",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gsi-out",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 150,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gwm",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 130,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "GatewayManager",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-hc",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 150,
                                "protocol": "*",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "VirtualNetwork",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-https",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 120,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "Internet",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-lb",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 140,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "AzureLoadBalancer",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-sshrdp-out",
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
                                "network_security_group_name": "nsg-bastion-frontend",
                                "priority": 120,
                                "protocol": "*",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_public_ip.bastion",
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
                                "name": "pip-bastion-frontend",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                                "reverse_fqdn": null,
                                "sku": "Standard",
                                "sku_tier": "Regional",
                                "tags": null,
                                "timeouts": null,
                                "zones": null
                            }
                        },
                        {
                            "address": "module.fe_bastion.azurerm_subnet_network_security_group_association.hub-bastion",
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
                    "address": "module.la",
                    "resources": [
                        {
                            "address": "module.la.azurerm_log_analytics_solution.container",
                            "mode": "managed",
                            "name": "container",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "plan": [
                                    {}
                                ]
                            },
                            "type": "azurerm_log_analytics_solution",
                            "values": {
                                "location": "japaneast",
                                "plan": [
                                    {
                                        "product": "OMSGallery/ContainerInsights",
                                        "promotion_code": null,
                                        "publisher": "Microsoft"
                                    }
                                ],
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "solution_name": "ContainerInsights",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.la.azurerm_log_analytics_solution.vms",
                            "mode": "managed",
                            "name": "vms",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 1,
                            "sensitive_values": {
                                "plan": [
                                    {}
                                ]
                            },
                            "type": "azurerm_log_analytics_solution",
                            "values": {
                                "location": "japaneast",
                                "plan": [
                                    {
                                        "product": "OMSGallery/VMInsights",
                                        "promotion_code": null,
                                        "publisher": "Microsoft"
                                    }
                                ],
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "solution_name": "VMInsights",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.la.azurerm_log_analytics_workspace.log_analytics",
                            "mode": "managed",
                            "name": "log_analytics",
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
                                "location": "japaneast",
                                "reservation_capacity_in_gb_per_day": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "retention_in_days": 30,
                                "tags": null,
                                "timeouts": null
                            }
                        }
                    ]
                },
                {
                    "address": "module.vm_appgw[0]",
                    "resources": [
                        {
                            "address": "module.vm_appgw[0].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
                            "address": "module.vm_appgw[0].azurerm_linux_virtual_machine.linux",
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
                                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                                "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzA8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                                "name": "vmappgw0",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                            "address": "module.vm_appgw[0].azurerm_network_interface.nic",
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
                                "name": "nic-vmappgw0",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[0].azurerm_network_interface_security_group_association.example",
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
                            "address": "module.vm_appgw[0].azurerm_network_security_group.nsg",
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
                                "name": "nsg-vmappgw0",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[0].azurerm_network_security_rule.nsg-rule",
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
                                "network_security_group_name": "nsg-vmappgw0",
                                "priority": 100,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[0].azurerm_public_ip.pip",
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
                                "name": "pip-vmappgw0",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.vm_appgw[1]",
                    "resources": [
                        {
                            "address": "module.vm_appgw[1].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
                            "address": "module.vm_appgw[1].azurerm_linux_virtual_machine.linux",
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
                                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                                "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzE8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                                "name": "vmappgw1",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                            "address": "module.vm_appgw[1].azurerm_network_interface.nic",
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
                                "name": "nic-vmappgw1",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[1].azurerm_network_interface_security_group_association.example",
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
                            "address": "module.vm_appgw[1].azurerm_network_security_group.nsg",
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
                                "name": "nsg-vmappgw1",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "tags": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[1].azurerm_network_security_rule.nsg-rule",
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
                                "network_security_group_name": "nsg-vmappgw1",
                                "priority": 100,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
                                "source_address_prefix": "*",
                                "source_address_prefixes": null,
                                "source_application_security_group_ids": null,
                                "source_port_range": "*",
                                "source_port_ranges": null,
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.vm_appgw[1].azurerm_public_ip.pip",
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
                                "name": "pip-vmappgw1",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                        "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                                "custom_data": "I2Nsb3VkLWNvbmZpZwogIHBhY2thZ2VfdXBncmFkZTogdHJ1ZQogIHBhY2thZ2VzOgogICAgLSBuZ2lueAo=",
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
                                "name": "vmfrontend",
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
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                                "name": "nic-vmfrontend",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                                "name": "nsg-vmfrontend",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                                "network_security_group_name": "nsg-vmfrontend",
                                "priority": 100,
                                "protocol": "Tcp",
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                                "name": "pip-vmfrontend",
                                "public_ip_prefix_id": null,
                                "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        "private_link_configuration": [
                            {
                                "ip_configuration": [
                                    {}
                                ]
                            }
                        ],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {}
                        ],
                        "rewrite_rule_set": [
                            {
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {}
                                        ],
                                        "request_header_configuration": [],
                                        "response_header_configuration": [],
                                        "url": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ],
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
                        "autoscale_configuration": [],
                        "backend_address_pool": [
                            {
                                "ip_addresses": [],
                                "name": "vnet-example-beap-vm"
                            }
                        ],
                        "backend_http_settings": [
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
                            },
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Enabled",
                                "host_name": "",
                                "name": "vnet-example-be-htst",
                                "path": "",
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
                                "private_ip_address": "172.16.4.4",
                                "private_ip_address_allocation": "Static",
                                "private_link_configuration_name": "my-private-link-config",
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
                        "private_link_configuration": [
                            {
                                "ip_configuration": [
                                    {
                                        "name": "my-private-link-config-ip-config",
                                        "primary": true,
                                        "private_ip_address_allocation": "Dynamic"
                                    }
                                ],
                                "name": "my-private-link-config"
                            }
                        ],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "",
                                "backend_http_settings_name": "",
                                "http_listener_name": "vnet-example-httplstn-private",
                                "name": "vnet-example-private-rqrt",
                                "priority": 1000,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "PathBasedRouting",
                                "url_path_map_name": "my-url-path-map"
                            }
                        ],
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "rewrite_rule_set": [
                            {
                                "name": "add-x-forwarded-for-to-url",
                                "rewrite_rule": [
                                    {
                                        "condition": [
                                            {
                                                "ignore_case": true,
                                                "negate": false,
                                                "pattern": "(\\d+\\.\\d+\\.\\d+\\.\\d+)",
                                                "variable": "http_req_X-Forwarded-For"
                                            }
                                        ],
                                        "name": "NewRewrite",
                                        "request_header_configuration": [],
                                        "response_header_configuration": [],
                                        "rule_sequence": 100,
                                        "url": [
                                            {
                                                "components": "query_string_only",
                                                "path": null,
                                                "query_string": "{var_query_string}&c={http_req_X-Forwarded-For_1}",
                                                "reroute": false
                                            }
                                        ]
                                    }
                                ]
                            }
                        ],
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
                        "url_path_map": [
                            {
                                "default_backend_address_pool_name": "vnet-example-beap-vm",
                                "default_backend_http_settings_name": "vnet-example-be-htst",
                                "default_redirect_configuration_name": null,
                                "default_rewrite_rule_set_name": "add-x-forwarded-for-to-url",
                                "name": "my-url-path-map",
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
                                "rule_set_version": "3.2"
                            }
                        ],
                        "zones": null
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
                        "custom_network_interface_name": null,
                        "ip_configuration": [],
                        "location": "japaneast",
                        "name": "pe-to-backend-appgw",
                        "private_dns_zone_group": [],
                        "private_service_connection": [
                            {
                                "is_manual_connection": false,
                                "name": "example-privateserviceconnection",
                                "private_connection_resource_alias": null,
                                "request_message": null,
                                "subresource_names": [
                                    "vnet-example-feip-private"
                                ]
                            }
                        ],
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.appgw",
                    "mode": "managed",
                    "name": "appgw",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_resource_group.frontend",
                    "mode": "managed",
                    "name": "frontend",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "japaneast",
                        "managed_by": null,
                        "name": "rg-idps-appgw-azfw-0511-frontend",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.appgw",
                    "mode": "managed",
                    "name": "appgw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [
                            {}
                        ],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "disable_bgp_route_propagation": true,
                        "location": "japaneast",
                        "name": "rt-appgw",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "route": [
                            {
                                "address_prefix": "172.16.0.0/24",
                                "name": "to-default",
                                "next_hop_type": "VirtualAppliance"
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.azfw",
                    "mode": "managed",
                    "name": "azfw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [
                            {}
                        ],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "location": "japaneast",
                        "name": "route-azfw",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "route": [
                            {
                                "address_prefix": "0.0.0.0/0",
                                "name": "default",
                                "next_hop_in_ip_address": "",
                                "next_hop_type": "Internet"
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.default",
                    "mode": "managed",
                    "name": "default",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [
                            {},
                            {}
                        ],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "disable_bgp_route_propagation": true,
                        "location": "japaneast",
                        "name": "rt-default",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "route": [
                            {
                                "address_prefix": "0.0.0.0/0",
                                "name": "default",
                                "next_hop_type": "VirtualAppliance"
                            },
                            {
                                "address_prefix": "172.16.4.0/24",
                                "name": "to-appgw",
                                "next_hop_type": "VirtualAppliance"
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_route_table.vm",
                    "mode": "managed",
                    "name": "vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "route": [
                            {},
                            {}
                        ],
                        "subnets": []
                    },
                    "type": "azurerm_route_table",
                    "values": {
                        "disable_bgp_route_propagation": false,
                        "location": "japaneast",
                        "name": "rt-fe-vm",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "route": [
                            {
                                "address_prefix": "0.0.0.0/0",
                                "name": "default",
                                "next_hop_type": "VirtualAppliance"
                            },
                            {
                                "address_prefix": "10.254.2.0/24",
                                "name": "backend",
                                "next_hop_type": "VirtualAppliance"
                            }
                        ],
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.appgw",
                    "mode": "managed",
                    "name": "appgw",
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
                            "172.16.4.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-appgw",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet.azfw",
                    "mode": "managed",
                    "name": "azfw",
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
                            "172.16.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureFirewallSubnet",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                            "172.16.2.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureBastionSubnet",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet.default",
                    "mode": "managed",
                    "name": "default",
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
                            "172.16.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-default",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet.default2",
                    "mode": "managed",
                    "name": "default2",
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
                            "172.16.5.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-default-backend-appgw",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet.fe_azfw",
                    "mode": "managed",
                    "name": "fe_azfw",
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
                            "10.254.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureFirewallSubnet",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azfwprem"
                    }
                },
                {
                    "address": "azurerm_subnet.fe_bastion",
                    "mode": "managed",
                    "name": "fe_bastion",
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
                            "10.254.3.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "AzureBastionSubnet",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azfwprem"
                    }
                },
                {
                    "address": "azurerm_subnet.fe_vm",
                    "mode": "managed",
                    "name": "fe_vm",
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
                        "name": "snet-vm",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azfwprem"
                    }
                },
                {
                    "address": "azurerm_subnet.pe",
                    "mode": "managed",
                    "name": "pe",
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
                        "name": "snet-pe",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-azfwprem"
                    }
                },
                {
                    "address": "azurerm_subnet.pls",
                    "mode": "managed",
                    "name": "pls",
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
                            "172.16.1.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "snet-pls",
                        "private_endpoint_network_policies_enabled": false,
                        "private_link_service_network_policies_enabled": false,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "vnet-example"
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.azfw",
                    "mode": "managed",
                    "name": "azfw",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet_route_table_association.fe_vm[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "fe_vm",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_subnet_route_table_association",
                    "values": {
                        "timeouts": null
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
                            "172.16.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "japaneast",
                        "name": "vnet-example",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.frontend",
                    "mode": "managed",
                    "name": "frontend",
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
                        "name": "vnet-azfwprem",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "data.azurerm_monitor_diagnostic_categories.appgw_diag_category",
                    "mode": "data",
                    "name": "appgw_diag_category",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "log_category_groups": [],
                        "log_category_types": [],
                        "logs": [],
                        "metrics": []
                    },
                    "type": "azurerm_monitor_diagnostic_categories",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "data.azurerm_monitor_diagnostic_categories.azfw_diag_category",
                    "mode": "data",
                    "name": "azfw_diag_category",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "log_category_groups": [],
                        "log_category_types": [],
                        "logs": [],
                        "metrics": []
                    },
                    "type": "azurerm_monitor_diagnostic_categories",
                    "values": {
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
                            "resource_group_name": "rg-idps-appgw-azfw-0511"
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
                    "address": "module.afw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "enabled_log": [],
                        "log": [],
                        "metric": [
                            {
                                "retention_policy": []
                            }
                        ]
                    },
                    "type": "azurerm_monitor_diagnostic_setting",
                    "values": {
                        "eventhub_authorization_rule_id": null,
                        "eventhub_name": null,
                        "metric": [
                            {
                                "category": "AllMetrics",
                                "enabled": false,
                                "retention_policy": []
                            }
                        ],
                        "name": "diag",
                        "partner_solution_id": null,
                        "storage_account_id": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.appgw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "enabled_log": [],
                        "log": [],
                        "metric": [
                            {
                                "retention_policy": []
                            }
                        ]
                    },
                    "type": "azurerm_monitor_diagnostic_setting",
                    "values": {
                        "eventhub_authorization_rule_id": null,
                        "eventhub_name": null,
                        "metric": [
                            {
                                "category": "AllMetrics",
                                "enabled": false,
                                "retention_policy": []
                            }
                        ],
                        "name": "diag",
                        "partner_solution_id": null,
                        "storage_account_id": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.azfw.azurerm_firewall.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "ip_configuration": [
                            {}
                        ],
                        "management_ip_configuration": [],
                        "virtual_hub": [],
                        "zones": [
                            false,
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_firewall",
                    "values": {
                        "dns_servers": null,
                        "ip_configuration": [
                            {
                                "name": "configuration"
                            }
                        ],
                        "location": "japaneast",
                        "management_ip_configuration": [],
                        "name": "afw-example",
                        "private_ip_ranges": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "sku_name": "AZFW_VNet",
                        "sku_tier": "Premium",
                        "tags": null,
                        "timeouts": null,
                        "virtual_hub": [],
                        "zones": [
                            "1",
                            "2",
                            "3"
                        ]
                    }
                },
                {
                    "address": "module.azfw.azurerm_firewall_policy.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "child_policies": [],
                        "dns": [],
                        "explicit_proxy": [],
                        "firewalls": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "rule_collection_groups": [],
                        "threat_intelligence_allowlist": [],
                        "tls_certificate": []
                    },
                    "type": "azurerm_firewall_policy",
                    "values": {
                        "auto_learn_private_ranges_enabled": null,
                        "base_policy_id": null,
                        "dns": [],
                        "explicit_proxy": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "location": "japaneast",
                        "name": "afwp-example",
                        "private_ip_ranges": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "sku": "Premium",
                        "sql_redirect_allowed": null,
                        "tags": null,
                        "threat_intelligence_allowlist": [],
                        "threat_intelligence_mode": "Alert",
                        "timeouts": null,
                        "tls_certificate": []
                    }
                },
                {
                    "address": "module.azfw.azurerm_firewall_policy_rule_collection_group.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "application_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_addresses": [],
                                        "destination_fqdn_tags": [],
                                        "destination_fqdns": [
                                            false
                                        ],
                                        "destination_urls": [],
                                        "http_headers": [],
                                        "protocols": [
                                            {},
                                            {}
                                        ],
                                        "source_addresses": [
                                            false
                                        ],
                                        "source_ip_groups": [],
                                        "web_categories": []
                                    }
                                ]
                            }
                        ],
                        "nat_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_ports": [
                                            false
                                        ],
                                        "protocols": [
                                            false
                                        ],
                                        "source_addresses": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "network_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_addresses": [
                                            false
                                        ],
                                        "destination_fqdns": [],
                                        "destination_ports": [
                                            false
                                        ],
                                        "protocols": [
                                            false
                                        ],
                                        "source_addresses": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_firewall_policy_rule_collection_group",
                    "values": {
                        "application_rule_collection": [
                            {
                                "action": "Allow",
                                "name": "AllowApplicationRuleCollection",
                                "priority": 2000,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_addresses": [],
                                        "destination_fqdn_tags": [],
                                        "destination_fqdns": [
                                            "*"
                                        ],
                                        "destination_urls": [],
                                        "http_headers": [],
                                        "name": "All",
                                        "protocols": [
                                            {
                                                "port": 80,
                                                "type": "Http"
                                            },
                                            {
                                                "port": 443,
                                                "type": "Https"
                                            }
                                        ],
                                        "source_addresses": [
                                            "*"
                                        ],
                                        "source_ip_groups": [],
                                        "terminate_tls": false,
                                        "web_categories": []
                                    }
                                ]
                            }
                        ],
                        "name": "RuleCollectionGroup",
                        "nat_rule_collection": [
                            {
                                "action": "Dnat",
                                "name": "TestDnatRule_SSH-SpokeVM",
                                "priority": 500,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_ports": [
                                            "22"
                                        ],
                                        "name": "SSH",
                                        "protocols": [
                                            "TCP"
                                        ],
                                        "source_addresses": [
                                            "*"
                                        ],
                                        "source_ip_groups": null,
                                        "translated_address": "1.1.1.1",
                                        "translated_fqdn": null,
                                        "translated_port": 22
                                    }
                                ]
                            }
                        ],
                        "network_rule_collection": [
                            {
                                "action": "Allow",
                                "name": "AllowNetworkRuleCollection",
                                "priority": 1000,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_addresses": [
                                            "*"
                                        ],
                                        "destination_fqdns": [],
                                        "destination_ip_groups": null,
                                        "destination_ports": [
                                            "*"
                                        ],
                                        "name": "All",
                                        "protocols": [
                                            "Any"
                                        ],
                                        "source_addresses": [
                                            "*"
                                        ],
                                        "source_ip_groups": null
                                    }
                                ]
                            }
                        ],
                        "priority": 1000,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.azfw.azurerm_public_ip.example",
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
                        "name": "pip-fw-example",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.azfw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
                    "mode": "managed",
                    "name": "diagnostic_logs",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "enabled_log": [],
                        "log": [],
                        "metric": [
                            {
                                "retention_policy": []
                            }
                        ]
                    },
                    "type": "azurerm_monitor_diagnostic_setting",
                    "values": {
                        "eventhub_authorization_rule_id": null,
                        "eventhub_name": null,
                        "metric": [
                            {
                                "category": "AllMetrics",
                                "enabled": false,
                                "retention_policy": []
                            }
                        ],
                        "name": "diag",
                        "partner_solution_id": null,
                        "storage_account_id": null,
                        "timeouts": null
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.fe_azfw.azurerm_firewall.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "ip_configuration": [
                            {}
                        ],
                        "management_ip_configuration": [],
                        "virtual_hub": [],
                        "zones": [
                            false,
                            false,
                            false
                        ]
                    },
                    "type": "azurerm_firewall",
                    "values": {
                        "dns_servers": null,
                        "ip_configuration": [
                            {
                                "name": "configuration"
                            }
                        ],
                        "location": "japaneast",
                        "management_ip_configuration": [],
                        "private_ip_ranges": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "sku_name": "AZFW_VNet",
                        "sku_tier": "Premium",
                        "tags": null,
                        "timeouts": null,
                        "virtual_hub": [],
                        "zones": [
                            "1",
                            "2",
                            "3"
                        ]
                    }
                },
                {
                    "address": "module.fe_azfw.azurerm_firewall_policy.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "child_policies": [],
                        "dns": [],
                        "explicit_proxy": [],
                        "firewalls": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "rule_collection_groups": [],
                        "threat_intelligence_allowlist": [],
                        "tls_certificate": []
                    },
                    "type": "azurerm_firewall_policy",
                    "values": {
                        "auto_learn_private_ranges_enabled": null,
                        "base_policy_id": null,
                        "dns": [],
                        "explicit_proxy": [],
                        "identity": [],
                        "insights": [],
                        "intrusion_detection": [],
                        "location": "japaneast",
                        "private_ip_ranges": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "sku": "Premium",
                        "sql_redirect_allowed": null,
                        "tags": null,
                        "threat_intelligence_allowlist": [],
                        "threat_intelligence_mode": "Alert",
                        "timeouts": null,
                        "tls_certificate": []
                    }
                },
                {
                    "address": "module.fe_azfw.azurerm_firewall_policy_rule_collection_group.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "application_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_addresses": [],
                                        "destination_fqdn_tags": [],
                                        "destination_fqdns": [
                                            false
                                        ],
                                        "destination_urls": [],
                                        "http_headers": [],
                                        "protocols": [
                                            {},
                                            {},
                                            {}
                                        ],
                                        "source_addresses": [
                                            false
                                        ],
                                        "source_ip_groups": [],
                                        "web_categories": []
                                    }
                                ]
                            }
                        ],
                        "nat_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_ports": [
                                            false
                                        ],
                                        "protocols": [
                                            false
                                        ],
                                        "source_addresses": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ],
                        "network_rule_collection": [
                            {
                                "rule": [
                                    {
                                        "destination_addresses": [
                                            false
                                        ],
                                        "destination_fqdns": [],
                                        "destination_ports": [
                                            false
                                        ],
                                        "protocols": [
                                            false
                                        ],
                                        "source_addresses": [
                                            false
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "type": "azurerm_firewall_policy_rule_collection_group",
                    "values": {
                        "application_rule_collection": [
                            {
                                "action": "Allow",
                                "name": "AllowApplicationRuleCollection",
                                "priority": 2000,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_addresses": [],
                                        "destination_fqdn_tags": [],
                                        "destination_fqdns": [
                                            "*"
                                        ],
                                        "destination_urls": [],
                                        "http_headers": [],
                                        "name": "All",
                                        "protocols": [
                                            {
                                                "port": 80,
                                                "type": "Http"
                                            },
                                            {
                                                "port": 8080,
                                                "type": "Http"
                                            },
                                            {
                                                "port": 443,
                                                "type": "Https"
                                            }
                                        ],
                                        "source_addresses": [
                                            "*"
                                        ],
                                        "source_ip_groups": [],
                                        "terminate_tls": false,
                                        "web_categories": []
                                    }
                                ]
                            }
                        ],
                        "name": "RuleCollectionGroup",
                        "nat_rule_collection": [
                            {
                                "action": "Dnat",
                                "name": "TestDnatRule_SSH-SpokeVM",
                                "priority": 500,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_ports": [
                                            "22"
                                        ],
                                        "name": "SSH",
                                        "protocols": [
                                            "TCP"
                                        ],
                                        "source_addresses": [
                                            "*"
                                        ],
                                        "source_ip_groups": null,
                                        "translated_address": "1.1.1.1",
                                        "translated_fqdn": null,
                                        "translated_port": 22
                                    }
                                ]
                            }
                        ],
                        "network_rule_collection": [
                            {
                                "action": "Allow",
                                "name": "AllowNetworkRuleCollection",
                                "priority": 1000,
                                "rule": [
                                    {
                                        "description": null,
                                        "destination_addresses": [
                                            "*"
                                        ],
                                        "destination_fqdns": [],
                                        "destination_ip_groups": null,
                                        "destination_ports": [
                                            "*"
                                        ],
                                        "name": "All",
                                        "protocols": [
                                            "TCP"
                                        ],
                                        "source_addresses": [
                                            "1.2.3.4"
                                        ],
                                        "source_ip_groups": null
                                    }
                                ]
                            }
                        ],
                        "priority": 1000,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_azfw.azurerm_public_ip.example",
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
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "address": "module.fe_bastion.azurerm_bastion_host.bastion",
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
                        "name": "bastion-frontend",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "address": "module.fe_bastion.azurerm_network_security_group.bastion",
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
                        "name": "nsg-bastion-frontend",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-azurecloud-out",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 130,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 140,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "VirtualNetwork",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gsi-out",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 150,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gwm",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 130,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "GatewayManager",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-hc",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 150,
                        "protocol": "*",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "VirtualNetwork",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-https",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 120,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "Internet",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-lb",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 140,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "AzureLoadBalancer",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_network_security_rule.bastion-sshrdp-out",
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
                        "network_security_group_name": "nsg-bastion-frontend",
                        "priority": 120,
                        "protocol": "*",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_public_ip.bastion",
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
                        "name": "pip-bastion-frontend",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.fe_bastion.azurerm_subnet_network_security_group_association.hub-bastion",
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
                    "address": "module.la.azurerm_log_analytics_solution.container",
                    "mode": "managed",
                    "name": "container",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "plan": [
                            {}
                        ]
                    },
                    "type": "azurerm_log_analytics_solution",
                    "values": {
                        "location": "japaneast",
                        "plan": [
                            {
                                "product": "OMSGallery/ContainerInsights",
                                "promotion_code": null,
                                "publisher": "Microsoft"
                            }
                        ],
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "solution_name": "ContainerInsights",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.la.azurerm_log_analytics_solution.vms",
                    "mode": "managed",
                    "name": "vms",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 1,
                    "sensitive_values": {
                        "plan": [
                            {}
                        ]
                    },
                    "type": "azurerm_log_analytics_solution",
                    "values": {
                        "location": "japaneast",
                        "plan": [
                            {
                                "product": "OMSGallery/VMInsights",
                                "promotion_code": null,
                                "publisher": "Microsoft"
                            }
                        ],
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "solution_name": "VMInsights",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.la.azurerm_log_analytics_workspace.log_analytics",
                    "mode": "managed",
                    "name": "log_analytics",
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
                        "location": "japaneast",
                        "reservation_capacity_in_gb_per_day": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "retention_in_days": 30,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[0].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
                    "address": "module.vm_appgw[0].azurerm_linux_virtual_machine.linux",
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
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                        "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzA8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                        "name": "vmappgw0",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.vm_appgw[0].azurerm_network_interface.nic",
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
                        "name": "nic-vmappgw0",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[0].azurerm_network_interface_security_group_association.example",
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
                    "address": "module.vm_appgw[0].azurerm_network_security_group.nsg",
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
                        "name": "nsg-vmappgw0",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[0].azurerm_network_security_rule.nsg-rule",
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
                        "network_security_group_name": "nsg-vmappgw0",
                        "priority": 100,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[0].azurerm_public_ip.pip",
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
                        "name": "pip-vmappgw0",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": null,
                        "timeouts": null,
                        "zones": null
                    }
                },
                {
                    "address": "module.vm_appgw[1].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
                    "address": "module.vm_appgw[1].azurerm_linux_virtual_machine.linux",
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
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                        "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzE8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                        "name": "vmappgw1",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "address": "module.vm_appgw[1].azurerm_network_interface.nic",
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
                        "name": "nic-vmappgw1",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[1].azurerm_network_interface_security_group_association.example",
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
                    "address": "module.vm_appgw[1].azurerm_network_security_group.nsg",
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
                        "name": "nsg-vmappgw1",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[1].azurerm_network_security_rule.nsg-rule",
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
                        "network_security_group_name": "nsg-vmappgw1",
                        "priority": 100,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
                        "source_address_prefix": "*",
                        "source_address_prefixes": null,
                        "source_application_security_group_ids": null,
                        "source_port_range": "*",
                        "source_port_ranges": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "module.vm_appgw[1].azurerm_public_ip.pip",
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
                        "name": "pip-vmappgw1",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                                "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                        "custom_data": "I2Nsb3VkLWNvbmZpZwogIHBhY2thZ2VfdXBncmFkZTogdHJ1ZQogIHBhY2thZ2VzOgogICAgLSBuZ2lueAo=",
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
                        "name": "vmfrontend",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        "name": "nic-vmfrontend",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        "name": "nsg-vmfrontend",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        "network_security_group_name": "nsg-vmfrontend",
                        "priority": 100,
                        "protocol": "Tcp",
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                        "name": "pip-vmfrontend",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                "result"
            ],
            "resource": "random_string.uniqstr"
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
            "resource": "azurerm_application_gateway.network"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.fe_azfw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.fe_bastion.azurerm_network_security_group.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.fe_azfw.azurerm_firewall.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.frontend"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.webserver.azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "name"
            ],
            "resource": "module.vm_appgw.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.vm"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.la.azurerm_log_analytics_workspace.log_analytics"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.la.azurerm_log_analytics_workspace.log_analytics"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[1].azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_public_ip.bastion"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "name"
            ],
            "resource": "module.vm_appgw[1].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "name"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
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
            "resource": "module.vm_appgw[1].azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.fe_azfw.azurerm_firewall_policy.example"
        },
        {
            "attribute": [
                "logs"
            ],
            "resource": "data.azurerm_monitor_diagnostic_categories.azfw_diag_category"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.fe_bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[1].azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.pls"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.azfw.azurerm_firewall.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appgw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.appgw"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.vm_appgw[1].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "private_ip_address"
            ],
            "resource": "module.fe_azfw.azurerm_firewall.example"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.fe_bastion.azurerm_network_security_group.bastion"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.azfw.azurerm_public_ip.example"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.vm_appgw.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.fe_bastion.azurerm_public_ip.bastion"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.vm_appgw[1].azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.vm_appgw[0].azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "logs"
            ],
            "resource": "data.azurerm_monitor_diagnostic_categories.appgw_diag_category"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.fe_azfw.azurerm_firewall.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.azfw.azurerm_firewall.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.bastion.azurerm_network_security_group.bastion"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.la.azurerm_log_analytics_workspace.log_analytics"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_configuration",
                0,
                "private_ip_address"
            ],
            "resource": "module.azfw.azurerm_firewall.example"
        },
        {
            "attribute": [],
            "resource": "azurerm_resource_group.frontend"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw.azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.fe_vm"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.la.azurerm_log_analytics_workspace.log_analytics"
        },
        {
            "attribute": [
                "ip_configuration"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[0].azurerm_public_ip.pip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.azfw.azurerm_public_ip.example"
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
            "resource": "azurerm_subnet.default"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.frontend"
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
            "resource": "module.vm_appgw.azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[1].azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[0].azurerm_linux_virtual_machine.linux"
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
                "name"
            ],
            "resource": "module.vm_appgw[0].azurerm_network_security_group.nsg"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_route_table.azfw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.azfw.azurerm_firewall_policy.example"
        },
        {
            "attribute": [
                "workspace_id"
            ],
            "resource": "module.la.azurerm_log_analytics_workspace.log_analytics"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.vm_appgw.azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.bastion"
        },
        {
            "attribute": [
                "ip_address"
            ],
            "resource": "module.fe_azfw.azurerm_public_ip.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.pe"
        },
        {
            "attribute": [
                "private_ip_address"
            ],
            "resource": "module.vm_appgw[1].azurerm_network_interface.nic"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.fe_azfw.azurerm_public_ip.example"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.vm_appgw[1].azurerm_network_interface.nic"
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
            "resource": "azurerm_subnet.azfw"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.webserver.azurerm_linux_virtual_machine.linux"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.frontend"
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
            "resource": "azurerm_resource_group.example"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_monitor_diagnostic_categories.appgw_diag_category",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "log_category_groups": [],
                    "log_category_types": [],
                    "logs": [],
                    "metrics": []
                },
                "after_unknown": {
                    "id": true,
                    "log_category_groups": true,
                    "log_category_types": true,
                    "logs": true,
                    "metrics": true,
                    "resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "appgw_diag_category",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_categories"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "data.azurerm_monitor_diagnostic_categories.azfw_diag_category",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "log_category_groups": [],
                    "log_category_types": [],
                    "logs": [],
                    "metrics": []
                },
                "after_unknown": {
                    "id": true,
                    "log_category_groups": true,
                    "log_category_types": true,
                    "logs": true,
                    "metrics": true,
                    "resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "azfw_diag_category",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_categories"
        },
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
                        }
                    ],
                    "backend_http_settings": [
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
                        },
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Enabled",
                            "host_name": "",
                            "name": "vnet-example-be-htst",
                            "path": "",
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
                            "private_ip_address": "172.16.4.4",
                            "private_ip_address_allocation": "Static",
                            "private_link_configuration_name": "my-private-link-config",
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
                    "private_link_configuration": [
                        {
                            "ip_configuration": [
                                {
                                    "name": "my-private-link-config-ip-config",
                                    "primary": true,
                                    "private_ip_address_allocation": "Dynamic"
                                }
                            ],
                            "name": "my-private-link-config"
                        }
                    ],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "",
                            "backend_http_settings_name": "",
                            "http_listener_name": "vnet-example-httplstn-private",
                            "name": "vnet-example-private-rqrt",
                            "priority": 1000,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "PathBasedRouting",
                            "url_path_map_name": "my-url-path-map"
                        }
                    ],
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "rewrite_rule_set": [
                        {
                            "name": "add-x-forwarded-for-to-url",
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {
                                            "ignore_case": true,
                                            "negate": false,
                                            "pattern": "(\\d+\\.\\d+\\.\\d+\\.\\d+)",
                                            "variable": "http_req_X-Forwarded-For"
                                        }
                                    ],
                                    "name": "NewRewrite",
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "rule_sequence": 100,
                                    "url": [
                                        {
                                            "components": "query_string_only",
                                            "path": null,
                                            "query_string": "{var_query_string}&c={http_req_X-Forwarded-For_1}",
                                            "reroute": false
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
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
                    "url_path_map": [
                        {
                            "default_backend_address_pool_name": "vnet-example-beap-vm",
                            "default_backend_http_settings_name": "vnet-example-be-htst",
                            "default_redirect_configuration_name": null,
                            "default_rewrite_rule_set_name": "add-x-forwarded-for-to-url",
                            "name": "my-url-path-map",
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
                            "rule_set_version": "3.2"
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
                    "private_link_configuration": [
                        {
                            "ip_configuration": [
                                {}
                            ]
                        }
                    ],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {}
                    ],
                    "rewrite_rule_set": [
                        {
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {}
                                    ],
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "url": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
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
                    "private_link_configuration": [
                        {
                            "id": true,
                            "ip_configuration": [
                                {
                                    "private_ip_address": true,
                                    "subnet_id": true
                                }
                            ]
                        }
                    ],
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
                    "rewrite_rule_set": [
                        {
                            "id": true,
                            "rewrite_rule": [
                                {
                                    "condition": [
                                        {}
                                    ],
                                    "request_header_configuration": [],
                                    "response_header_configuration": [],
                                    "url": [
                                        {}
                                    ]
                                }
                            ]
                        }
                    ],
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
            "name": "network",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_private_endpoint.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "custom_network_interface_name": null,
                    "ip_configuration": [],
                    "location": "japaneast",
                    "name": "pe-to-backend-appgw",
                    "private_dns_zone_group": [],
                    "private_service_connection": [
                        {
                            "is_manual_connection": false,
                            "name": "example-privateserviceconnection",
                            "private_connection_resource_alias": null,
                            "request_message": null,
                            "subresource_names": [
                                "vnet-example-feip-private"
                            ]
                        }
                    ],
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "id": true,
                    "ip_configuration": [],
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
            "address": "azurerm_public_ip.appgw",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "name": "appgw",
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
                    "name": "rg-idps-appgw-azfw-0511",
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
            "address": "azurerm_resource_group.frontend",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "managed_by": null,
                    "name": "rg-idps-appgw-azfw-0511-frontend",
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
            "name": "frontend",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_route_table.appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "disable_bgp_route_propagation": true,
                    "location": "japaneast",
                    "name": "rt-appgw",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "route": [
                        {
                            "address_prefix": "172.16.0.0/24",
                            "name": "to-default",
                            "next_hop_type": "VirtualAppliance"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [
                        {}
                    ],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "id": true,
                    "route": [
                        {
                            "next_hop_in_ip_address": true
                        }
                    ],
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_route_table.azfw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "route-azfw",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "route": [
                        {
                            "address_prefix": "0.0.0.0/0",
                            "name": "default",
                            "next_hop_in_ip_address": "",
                            "next_hop_type": "Internet"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [
                        {}
                    ],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "disable_bgp_route_propagation": true,
                    "id": true,
                    "route": [
                        {}
                    ],
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azfw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_route_table.default",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "disable_bgp_route_propagation": true,
                    "location": "japaneast",
                    "name": "rt-default",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "route": [
                        {
                            "address_prefix": "0.0.0.0/0",
                            "name": "default",
                            "next_hop_type": "VirtualAppliance"
                        },
                        {
                            "address_prefix": "172.16.4.0/24",
                            "name": "to-appgw",
                            "next_hop_type": "VirtualAppliance"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [
                        {},
                        {}
                    ],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "id": true,
                    "route": [
                        {
                            "next_hop_in_ip_address": true
                        },
                        {
                            "next_hop_in_ip_address": true
                        }
                    ],
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "default",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_route_table.vm",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "disable_bgp_route_propagation": false,
                    "location": "japaneast",
                    "name": "rt-fe-vm",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "route": [
                        {
                            "address_prefix": "0.0.0.0/0",
                            "name": "default",
                            "next_hop_type": "VirtualAppliance"
                        },
                        {
                            "address_prefix": "10.254.2.0/24",
                            "name": "backend",
                            "next_hop_type": "VirtualAppliance"
                        }
                    ],
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "route": [
                        {},
                        {}
                    ],
                    "subnets": []
                },
                "after_unknown": {
                    "bgp_route_propagation_enabled": true,
                    "id": true,
                    "route": [
                        {
                            "next_hop_in_ip_address": true
                        },
                        {
                            "next_hop_in_ip_address": true
                        }
                    ],
                    "subnets": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_route_table"
        },
        {
            "address": "azurerm_subnet.appgw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.16.4.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-appgw",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.azfw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.16.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureFirewallSubnet",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "name": "azfw",
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
                        "172.16.2.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "address": "azurerm_subnet.default",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.16.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-default",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "name": "default",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.default2",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.16.5.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-default-backend-appgw",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "name": "default2",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.fe_azfw",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureFirewallSubnet",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azfwprem"
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
            "name": "fe_azfw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.fe_bastion",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.254.3.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "AzureBastionSubnet",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azfwprem"
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
            "name": "fe_bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.fe_vm",
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
                    "name": "snet-vm",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azfwprem"
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
            "name": "fe_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.pe",
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
                    "name": "snet-pe",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "vnet-azfwprem"
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
            "name": "pe",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.pls",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "172.16.1.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "snet-pls",
                    "private_endpoint_network_policies_enabled": false,
                    "private_link_service_network_policies_enabled": false,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "private_endpoint_network_policies": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "pls",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet_route_table_association.azfw",
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
                    "route_table_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "azfw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_subnet_route_table_association.fe_vm[0]",
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
                    "route_table_id": true,
                    "subnet_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "fe_vm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_route_table_association"
        },
        {
            "address": "azurerm_virtual_network.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "172.16.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "japaneast",
                    "name": "vnet-example",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "address": "azurerm_virtual_network.frontend",
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
                    "name": "vnet-azfwprem",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "name": "frontend",
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
                        "resource_group_name": "rg-idps-appgw-azfw-0511"
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
            "address": "module.afw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "eventhub_authorization_rule_id": null,
                    "eventhub_name": null,
                    "metric": [
                        {
                            "category": "AllMetrics",
                            "enabled": false,
                            "retention_policy": []
                        }
                    ],
                    "name": "diag",
                    "partner_solution_id": null,
                    "storage_account_id": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "enabled_log": [],
                    "log": [],
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ]
                },
                "after_unknown": {
                    "enabled_log": true,
                    "id": true,
                    "log": true,
                    "log_analytics_destination_type": true,
                    "log_analytics_workspace_id": true,
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.afw_diag",
            "name": "diagnostic_logs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_setting"
        },
        {
            "address": "module.appgw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "eventhub_authorization_rule_id": null,
                    "eventhub_name": null,
                    "metric": [
                        {
                            "category": "AllMetrics",
                            "enabled": false,
                            "retention_policy": []
                        }
                    ],
                    "name": "diag",
                    "partner_solution_id": null,
                    "storage_account_id": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "enabled_log": [],
                    "log": [],
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ]
                },
                "after_unknown": {
                    "enabled_log": true,
                    "id": true,
                    "log": true,
                    "log_analytics_destination_type": true,
                    "log_analytics_workspace_id": true,
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.appgw_diag",
            "name": "diagnostic_logs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_setting"
        },
        {
            "address": "module.azfw.azurerm_firewall.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dns_servers": null,
                    "ip_configuration": [
                        {
                            "name": "configuration"
                        }
                    ],
                    "location": "japaneast",
                    "management_ip_configuration": [],
                    "name": "afw-example",
                    "private_ip_ranges": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "sku_name": "AZFW_VNet",
                    "sku_tier": "Premium",
                    "tags": null,
                    "timeouts": null,
                    "virtual_hub": [],
                    "zones": [
                        "1",
                        "2",
                        "3"
                    ]
                },
                "after_sensitive": {
                    "ip_configuration": [
                        {}
                    ],
                    "management_ip_configuration": [],
                    "virtual_hub": [],
                    "zones": [
                        false,
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "dns_proxy_enabled": true,
                    "firewall_policy_id": true,
                    "id": true,
                    "ip_configuration": [
                        {
                            "private_ip_address": true,
                            "public_ip_address_id": true,
                            "subnet_id": true
                        }
                    ],
                    "management_ip_configuration": [],
                    "threat_intel_mode": true,
                    "virtual_hub": [],
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
            "module_address": "module.azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall"
        },
        {
            "address": "module.azfw.azurerm_firewall_policy.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_learn_private_ranges_enabled": null,
                    "base_policy_id": null,
                    "dns": [],
                    "explicit_proxy": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "location": "japaneast",
                    "name": "afwp-example",
                    "private_ip_ranges": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "sku": "Premium",
                    "sql_redirect_allowed": null,
                    "tags": null,
                    "threat_intelligence_allowlist": [],
                    "threat_intelligence_mode": "Alert",
                    "timeouts": null,
                    "tls_certificate": []
                },
                "after_sensitive": {
                    "child_policies": [],
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "rule_collection_groups": [],
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                },
                "after_unknown": {
                    "child_policies": true,
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": true,
                    "id": true,
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "rule_collection_groups": true,
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall_policy"
        },
        {
            "address": "module.azfw.azurerm_firewall_policy_rule_collection_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_rule_collection": [
                        {
                            "action": "Allow",
                            "name": "AllowApplicationRuleCollection",
                            "priority": 2000,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        "*"
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "name": "All",
                                    "protocols": [
                                        {
                                            "port": 80,
                                            "type": "Http"
                                        },
                                        {
                                            "port": 443,
                                            "type": "Https"
                                        }
                                    ],
                                    "source_addresses": [
                                        "*"
                                    ],
                                    "source_ip_groups": [],
                                    "terminate_tls": false,
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "name": "RuleCollectionGroup",
                    "nat_rule_collection": [
                        {
                            "action": "Dnat",
                            "name": "TestDnatRule_SSH-SpokeVM",
                            "priority": 500,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_ports": [
                                        "22"
                                    ],
                                    "name": "SSH",
                                    "protocols": [
                                        "TCP"
                                    ],
                                    "source_addresses": [
                                        "*"
                                    ],
                                    "source_ip_groups": null,
                                    "translated_address": "1.1.1.1",
                                    "translated_fqdn": null,
                                    "translated_port": 22
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "action": "Allow",
                            "name": "AllowNetworkRuleCollection",
                            "priority": 1000,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_addresses": [
                                        "*"
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ip_groups": null,
                                    "destination_ports": [
                                        "*"
                                    ],
                                    "name": "All",
                                    "protocols": [
                                        "Any"
                                    ],
                                    "source_addresses": [
                                        "*"
                                    ],
                                    "source_ip_groups": null
                                }
                            ]
                        }
                    ],
                    "priority": 1000,
                    "timeouts": null
                },
                "after_sensitive": {
                    "application_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        false
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "protocols": [
                                        {},
                                        {}
                                    ],
                                    "source_addresses": [
                                        false
                                    ],
                                    "source_ip_groups": [],
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "nat_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [
                                        false
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "application_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        false
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "protocols": [
                                        {},
                                        {}
                                    ],
                                    "source_addresses": [
                                        false
                                    ],
                                    "source_ip_groups": [],
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "firewall_policy_id": true,
                    "id": true,
                    "nat_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_address": true,
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [
                                        false
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall_policy_rule_collection_group"
        },
        {
            "address": "module.azfw.azurerm_public_ip.example",
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
                    "name": "pip-fw-example",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.azfw_diag.azurerm_monitor_diagnostic_setting.diagnostic_logs",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "eventhub_authorization_rule_id": null,
                    "eventhub_name": null,
                    "metric": [
                        {
                            "category": "AllMetrics",
                            "enabled": false,
                            "retention_policy": []
                        }
                    ],
                    "name": "diag",
                    "partner_solution_id": null,
                    "storage_account_id": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "enabled_log": [],
                    "log": [],
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ]
                },
                "after_unknown": {
                    "enabled_log": true,
                    "id": true,
                    "log": true,
                    "log_analytics_destination_type": true,
                    "log_analytics_workspace_id": true,
                    "metric": [
                        {
                            "retention_policy": []
                        }
                    ],
                    "target_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.azfw_diag",
            "name": "diagnostic_logs",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_monitor_diagnostic_setting"
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "address": "module.fe_azfw.azurerm_firewall.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dns_servers": null,
                    "ip_configuration": [
                        {
                            "name": "configuration"
                        }
                    ],
                    "location": "japaneast",
                    "management_ip_configuration": [],
                    "private_ip_ranges": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "sku_name": "AZFW_VNet",
                    "sku_tier": "Premium",
                    "tags": null,
                    "timeouts": null,
                    "virtual_hub": [],
                    "zones": [
                        "1",
                        "2",
                        "3"
                    ]
                },
                "after_sensitive": {
                    "ip_configuration": [
                        {}
                    ],
                    "management_ip_configuration": [],
                    "virtual_hub": [],
                    "zones": [
                        false,
                        false,
                        false
                    ]
                },
                "after_unknown": {
                    "dns_proxy_enabled": true,
                    "firewall_policy_id": true,
                    "id": true,
                    "ip_configuration": [
                        {
                            "private_ip_address": true,
                            "public_ip_address_id": true,
                            "subnet_id": true
                        }
                    ],
                    "management_ip_configuration": [],
                    "name": true,
                    "threat_intel_mode": true,
                    "virtual_hub": [],
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
            "module_address": "module.fe_azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall"
        },
        {
            "address": "module.fe_azfw.azurerm_firewall_policy.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "auto_learn_private_ranges_enabled": null,
                    "base_policy_id": null,
                    "dns": [],
                    "explicit_proxy": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "location": "japaneast",
                    "private_ip_ranges": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
                    "sku": "Premium",
                    "sql_redirect_allowed": null,
                    "tags": null,
                    "threat_intelligence_allowlist": [],
                    "threat_intelligence_mode": "Alert",
                    "timeouts": null,
                    "tls_certificate": []
                },
                "after_sensitive": {
                    "child_policies": [],
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": [],
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "rule_collection_groups": [],
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                },
                "after_unknown": {
                    "child_policies": true,
                    "dns": [],
                    "explicit_proxy": [],
                    "firewalls": true,
                    "id": true,
                    "identity": [],
                    "insights": [],
                    "intrusion_detection": [],
                    "name": true,
                    "rule_collection_groups": true,
                    "threat_intelligence_allowlist": [],
                    "tls_certificate": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.fe_azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall_policy"
        },
        {
            "address": "module.fe_azfw.azurerm_firewall_policy_rule_collection_group.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "application_rule_collection": [
                        {
                            "action": "Allow",
                            "name": "AllowApplicationRuleCollection",
                            "priority": 2000,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        "*"
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "name": "All",
                                    "protocols": [
                                        {
                                            "port": 80,
                                            "type": "Http"
                                        },
                                        {
                                            "port": 8080,
                                            "type": "Http"
                                        },
                                        {
                                            "port": 443,
                                            "type": "Https"
                                        }
                                    ],
                                    "source_addresses": [
                                        "*"
                                    ],
                                    "source_ip_groups": [],
                                    "terminate_tls": false,
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "name": "RuleCollectionGroup",
                    "nat_rule_collection": [
                        {
                            "action": "Dnat",
                            "name": "TestDnatRule_SSH-SpokeVM",
                            "priority": 500,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_ports": [
                                        "22"
                                    ],
                                    "name": "SSH",
                                    "protocols": [
                                        "TCP"
                                    ],
                                    "source_addresses": [
                                        "*"
                                    ],
                                    "source_ip_groups": null,
                                    "translated_address": "1.1.1.1",
                                    "translated_fqdn": null,
                                    "translated_port": 22
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "action": "Allow",
                            "name": "AllowNetworkRuleCollection",
                            "priority": 1000,
                            "rule": [
                                {
                                    "description": null,
                                    "destination_addresses": [
                                        "*"
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ip_groups": null,
                                    "destination_ports": [
                                        "*"
                                    ],
                                    "name": "All",
                                    "protocols": [
                                        "TCP"
                                    ],
                                    "source_addresses": [
                                        "1.2.3.4"
                                    ],
                                    "source_ip_groups": null
                                }
                            ]
                        }
                    ],
                    "priority": 1000,
                    "timeouts": null
                },
                "after_sensitive": {
                    "application_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        false
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "protocols": [
                                        {},
                                        {},
                                        {}
                                    ],
                                    "source_addresses": [
                                        false
                                    ],
                                    "source_ip_groups": [],
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "nat_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [
                                        false
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "after_unknown": {
                    "application_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [],
                                    "destination_fqdn_tags": [],
                                    "destination_fqdns": [
                                        false
                                    ],
                                    "destination_urls": [],
                                    "http_headers": [],
                                    "protocols": [
                                        {},
                                        {},
                                        {}
                                    ],
                                    "source_addresses": [
                                        false
                                    ],
                                    "source_ip_groups": [],
                                    "web_categories": []
                                }
                            ]
                        }
                    ],
                    "firewall_policy_id": true,
                    "id": true,
                    "nat_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_address": true,
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ],
                    "network_rule_collection": [
                        {
                            "rule": [
                                {
                                    "destination_addresses": [
                                        false
                                    ],
                                    "destination_fqdns": [],
                                    "destination_ports": [
                                        false
                                    ],
                                    "protocols": [
                                        false
                                    ],
                                    "source_addresses": [
                                        false
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.fe_azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_firewall_policy_rule_collection_group"
        },
        {
            "address": "module.fe_azfw.azurerm_public_ip.example",
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
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_azfw",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.fe_bastion.azurerm_bastion_host.bastion",
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
                    "name": "bastion-frontend",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_bastion_host"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_group.bastion",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-bastion-frontend",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-azurecloud-out",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 130,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-azurecloud-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-bastioncommunication-out",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 140,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-bastioncommunication-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gsi-out",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 150,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-gsi-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-gwm",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 130,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-gwm",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-hc",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 150,
                    "protocol": "*",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-hc",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-https",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 120,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-https",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-lb",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 140,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-lb",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_network_security_rule.bastion-sshrdp-out",
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
                    "network_security_group_name": "nsg-bastion-frontend",
                    "priority": 120,
                    "protocol": "*",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion-sshrdp-out",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.fe_bastion.azurerm_public_ip.bastion",
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
                    "name": "pip-bastion-frontend",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
            "module_address": "module.fe_bastion",
            "name": "bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.fe_bastion.azurerm_subnet_network_security_group_association.hub-bastion",
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
            "module_address": "module.fe_bastion",
            "name": "hub-bastion",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet_network_security_group_association"
        },
        {
            "address": "module.la.azurerm_log_analytics_solution.container",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "plan": [
                        {
                            "product": "OMSGallery/ContainerInsights",
                            "promotion_code": null,
                            "publisher": "Microsoft"
                        }
                    ],
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "solution_name": "ContainerInsights",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "plan": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "plan": [
                        {
                            "name": true
                        }
                    ],
                    "workspace_name": true,
                    "workspace_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.la",
            "name": "container",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_solution"
        },
        {
            "address": "module.la.azurerm_log_analytics_solution.vms",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "plan": [
                        {
                            "product": "OMSGallery/VMInsights",
                            "promotion_code": null,
                            "publisher": "Microsoft"
                        }
                    ],
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "solution_name": "VMInsights",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "plan": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "plan": [
                        {
                            "name": true
                        }
                    ],
                    "workspace_name": true,
                    "workspace_resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.la",
            "name": "vms",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_solution"
        },
        {
            "address": "module.la.azurerm_log_analytics_workspace.log_analytics",
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
                    "location": "japaneast",
                    "reservation_capacity_in_gb_per_day": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
                    "retention_in_days": 30,
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
                    "name": true,
                    "primary_shared_key": true,
                    "secondary_shared_key": true,
                    "sku": true,
                    "workspace_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.la",
            "name": "log_analytics",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_log_analytics_workspace"
        },
        {
            "address": "module.vm_appgw[0].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
            "module_address": "module.vm_appgw[0]",
            "name": "autoshutdown",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dev_test_global_vm_shutdown_schedule"
        },
        {
            "address": "module.vm_appgw[0].azurerm_linux_virtual_machine.linux",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Password1!",
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                    "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzA8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                    "name": "vmappgw0",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[0]",
            "name": "linux",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "module.vm_appgw[0].azurerm_network_interface.nic",
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
                    "name": "nic-vmappgw0",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[0]",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.vm_appgw[0].azurerm_network_interface_security_group_association.example",
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
            "module_address": "module.vm_appgw[0]",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_security_group_association"
        },
        {
            "address": "module.vm_appgw[0].azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-vmappgw0",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[0]",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.vm_appgw[0].azurerm_network_security_rule.nsg-rule",
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
                    "network_security_group_name": "nsg-vmappgw0",
                    "priority": 100,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[0]",
            "name": "nsg-rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.vm_appgw[0].azurerm_public_ip.pip",
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
                    "name": "pip-vmappgw0",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[0]",
            "name": "pip",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_public_ip"
        },
        {
            "address": "module.vm_appgw[1].azurerm_dev_test_global_vm_shutdown_schedule.autoshutdown",
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
            "module_address": "module.vm_appgw[1]",
            "name": "autoshutdown",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_dev_test_global_vm_shutdown_schedule"
        },
        {
            "address": "module.vm_appgw[1].azurerm_linux_virtual_machine.linux",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "additional_capabilities": [],
                    "admin_password": "Password1!",
                    "admin_ssh_key": [
                        {
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                    "custom_data": "I2Nsb3VkLWNvbmZpZwpwYWNrYWdlc191cGRhdGU6IHRydWUKcGFja2FnZXNfdXBncmFkZTogdHJ1ZQpwYWNrYWdlczoKICAtIG5naW54CiAgLSBub2RlanMKICAtIG5wbQpydW5jbWQ6CiAgLSBlY2hvICI8aDE+dm1hcHBndzE8L2gxPiIgfCB0ZWUgL3Zhci93d3cvaHRtbC9pbmRleC5uZ2lueC1kZWJpYW4uaHRtbAo=",
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
                    "name": "vmappgw1",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[1]",
            "name": "linux",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_linux_virtual_machine"
        },
        {
            "address": "module.vm_appgw[1].azurerm_network_interface.nic",
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
                    "name": "nic-vmappgw1",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[1]",
            "name": "nic",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface"
        },
        {
            "address": "module.vm_appgw[1].azurerm_network_interface_security_group_association.example",
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
            "module_address": "module.vm_appgw[1]",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_interface_security_group_association"
        },
        {
            "address": "module.vm_appgw[1].azurerm_network_security_group.nsg",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "japaneast",
                    "name": "nsg-vmappgw1",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[1]",
            "name": "nsg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_group"
        },
        {
            "address": "module.vm_appgw[1].azurerm_network_security_rule.nsg-rule",
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
                    "network_security_group_name": "nsg-vmappgw1",
                    "priority": 100,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[1]",
            "name": "nsg-rule",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_network_security_rule"
        },
        {
            "address": "module.vm_appgw[1].azurerm_public_ip.pip",
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
                    "name": "pip-vmappgw1",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511",
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
            "module_address": "module.vm_appgw[1]",
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
                            "public_key": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v",
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
                    "custom_data": "I2Nsb3VkLWNvbmZpZwogIHBhY2thZ2VfdXBncmFkZTogdHJ1ZQogIHBhY2thZ2VzOgogICAgLSBuZ2lueAo=",
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
                    "name": "vmfrontend",
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
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "name": "nic-vmfrontend",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "name": "nsg-vmfrontend",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "network_security_group_name": "nsg-vmfrontend",
                    "priority": 100,
                    "protocol": "Tcp",
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
                    "name": "pip-vmfrontend",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "rg-idps-appgw-azfw-0511-frontend",
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
    "timestamp": "2024-08-22T23:57:05Z",
    "variables": {
        "backend_base_cidr_block": {
            "value": "172.16.0.0/16"
        },
        "frontend_base_cidr_block": {
            "value": "10.254.0.0/16"
        },
        "numberOfVMs": {
            "value": 2
        },
        "pattern": {
            "value": "AppGW-with-PLS-and-WAF-and-FrontAzFW"
        },
        "rg": {
            "value": {
                "location": "japaneast",
                "name": "rg-idps-appgw-azfw-0511"
            }
        },
        "ssh_public_key": {
            "value": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCythmaDMBX8Eatx5mqlF0JJ1pNGXePUreGuuAe3yQb+bWbxQJRFuMpYBpKZjZesIUfA86qwaK+c+mD2Sw5GKKIOca6Jj228gYBEBaEzFYZy5Pc3IyZL/3q41OS4kQD27+xIneDGmUnZBXCiuqsXdrw8cSMY6/Cj1tn6UsB4eN1ZZ3AJsTjoZwJSqSmApvavlYl+nPaHlN3fZFF0vwomeLKF3KWahcgIhqxpK5hnjDHWHb0S3bcBwO7NeBIeZqdDAP3Zc17jbgBWKdKy73AZrSRKJh/f8Hvx6qBTRD/IomD+jYOLBPb/gDUYACOyKxB9szwmG/8wQY1dzZNGURCpL3v"
        }
    }
}