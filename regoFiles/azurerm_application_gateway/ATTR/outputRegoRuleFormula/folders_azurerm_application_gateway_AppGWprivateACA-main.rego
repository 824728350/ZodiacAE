
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
globalAncestorDict := {
    "azurerm_application_gateway": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_bastion_host": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_express_route_circuit": [
        "azurerm_resource_group"
    ],
    "azurerm_firewall": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_virtual_wan",
        "azurerm_virtual_hub"
    ],
    "azurerm_firewall_network_rule_collection": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_firewall",
        "azurerm_virtual_wan",
        "azurerm_virtual_hub"
    ],
    "azurerm_lb": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_lb_backend_address_pool": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb"
    ],
    "azurerm_lb_nat_pool": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb"
    ],
    "azurerm_lb_nat_rule": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb",
        "azurerm_lb_backend_address_pool"
    ],
    "azurerm_lb_outbound_rule": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb",
        "azurerm_lb_backend_address_pool"
    ],
    "azurerm_lb_probe": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb"
    ],
    "azurerm_lb_rule": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb",
        "azurerm_lb_backend_address_pool",
        "azurerm_lb_probe"
    ],
    "azurerm_linux_virtual_machine": [
        "azurerm_subnet",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_local_network_gateway": [
        "azurerm_resource_group"
    ],
    "azurerm_managed_disk": [
        "azurerm_resource_group"
    ],
    "azurerm_nat_gateway": [
        "azurerm_resource_group"
    ],
    "azurerm_nat_gateway_public_ip_association": [
        "azurerm_public_ip",
        "azurerm_resource_group",
        "azurerm_nat_gateway"
    ],
    "azurerm_network_interface": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_network_interface_nat_rule_association": [
        "azurerm_subnet",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_lb",
        "azurerm_lb_backend_address_pool",
        "azurerm_lb_nat_rule"
    ],
    "azurerm_network_interface_security_group_association": [
        "azurerm_subnet",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_network_security_group"
    ],
    "azurerm_network_security_group": [
        "azurerm_resource_group"
    ],
    "azurerm_network_security_rule": [
        "azurerm_resource_group",
        "azurerm_network_security_group"
    ],
    "azurerm_private_dns_resolver": [
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_private_dns_resolver",
        "azurerm_private_dns_resolver_outbound_endpoint"
    ],
    "azurerm_private_dns_resolver_inbound_endpoint": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_private_dns_resolver"
    ],
    "azurerm_private_dns_resolver_outbound_endpoint": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_private_dns_resolver"
    ],
    "azurerm_private_dns_resolver_virtual_network_link": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_private_dns_resolver",
        "azurerm_private_dns_resolver_outbound_endpoint",
        "azurerm_private_dns_resolver_dns_forwarding_ruleset"
    ],
    "azurerm_private_endpoint": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_storage_account",
        "azurerm_private_link_service",
        "azurerm_application_gateway"
    ],
    "azurerm_private_link_service": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_public_ip": [
        "azurerm_resource_group"
    ],
    "azurerm_resource_group": [],
    "azurerm_route": [
        "azurerm_resource_group",
        "azurerm_route_table"
    ],
    "azurerm_route_server": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_route_table": [
        "azurerm_resource_group"
    ],
    "azurerm_storage_account": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_storage_account_network_rules": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_storage_account"
    ],
    "azurerm_subnet": [
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_subnet_nat_gateway_association": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_nat_gateway"
    ],
    "azurerm_subnet_network_security_group_association": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_network_security_group"
    ],
    "azurerm_subnet_route_table_association": [
        "azurerm_subnet",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_route_table"
    ],
    "azurerm_virtual_hub": [
        "azurerm_resource_group",
        "azurerm_virtual_wan"
    ],
    "azurerm_virtual_hub_connection": [
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_virtual_wan",
        "azurerm_virtual_hub"
    ],
    "azurerm_virtual_machine": [
        "azurerm_subnet",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        "azurerm_subnet",
        "azurerm_linux_virtual_machine",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_managed_disk",
        "azurerm_virtual_machine",
        "azurerm_windows_virtual_machine"
    ],
    "azurerm_virtual_network": [
        "azurerm_resource_group"
    ],
    "azurerm_virtual_network_gateway": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_virtual_network_gateway_connection": [
        "azurerm_subnet",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group",
        "azurerm_virtual_network_gateway",
        "azurerm_local_network_gateway",
        "azurerm_express_route_circuit"
    ],
    "azurerm_virtual_network_peering": [
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ],
    "azurerm_virtual_wan": [
        "azurerm_resource_group"
    ],
    "azurerm_windows_virtual_machine": [
        "azurerm_subnet",
        "azurerm_network_interface",
        "azurerm_public_ip",
        "azurerm_virtual_network",
        "azurerm_resource_group"
    ]
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
    any([type1 in globalAncestorDict[resourceTypeLabel], type1 == resourceTypeLabel])
    walk(config[id1], [path1, value1])
    address2 := config[id2]["address"]
    type2 := config[id2]["type"]
    type2 in object.keys(repoViewTop)
    any([type2 in globalAncestorDict[resourceTypeLabel], type2 == resourceTypeLabel])
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
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | artificialDependencyList[e][0] == address; neighbor := artificialDependencyList[e][1]}
}

artificialAncestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(artificialPredDict, [address])
}

referencesPredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | dependencyList[e][0] == address; neighbor := dependencyList[e][1]}
}

combinedPredDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | neighbor := artificialPredDict[address][_]} | {neighbor | neighbor := referencesPredDict[address][_]}
}

referencesSuccDict[address] := edges {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    edges := {neighbor | dependencyList[e][1] == address; neighbor := dependencyList[e][0]}
}

ancestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(combinedPredDict, [address])
}

naiveAncestorDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(referencesPredDict, [address])
}

offspringDict[address] := reachable {
    address := config[n]["address"]
    type := config[n]["type"]
    any([type in globalAncestorDict[resourceTypeLabel], type == resourceTypeLabel])
    reachable := graph.reachable(referencesSuccDict, [address])
}

resourceDict[address] := [address_config, address_plan] {
    address := config[a]["address"]
    address == plan[b]["address"]
    address_config := config[a]
    address_plan := plan[b]
}
ancestorList := ["azurerm_application_gateway","azurerm_resource_group","azurerm_subnet","azurerm_virtual_network","azurerm_public_ip"]
resourceDetail := {
    "azurerm_application_gateway": {
        "authentication_certificate": "optional",
        "authentication_certificate.data": "required",
        "authentication_certificate.name": "required",
        "autoscale_configuration": "optional",
        "autoscale_configuration.max_capacity": "optional",
        "autoscale_configuration.min_capacity": "required",
        "backend_address_pool": "required",
        "backend_address_pool.fqdns": "optional",
        "backend_address_pool.ip_addresses": "optional",
        "backend_address_pool.name": "required",
        "backend_http_settings": "required",
        "backend_http_settings.affinity_cookie_name": "optional",
        "backend_http_settings.authentication_certificate": "optional",
        "backend_http_settings.authentication_certificate.name": "required",
        "backend_http_settings.connection_draining": "optional",
        "backend_http_settings.connection_draining.drain_timeout_sec": "required",
        "backend_http_settings.connection_draining.enabled": "required",
        "backend_http_settings.cookie_based_affinity": "required",
        "backend_http_settings.host_name": "optional",
        "backend_http_settings.name": "required",
        "backend_http_settings.path": "optional",
        "backend_http_settings.pick_host_name_from_backend_address": "optional",
        "backend_http_settings.port": "required",
        "backend_http_settings.probe_name": "optional",
        "backend_http_settings.protocol": "required",
        "backend_http_settings.request_timeout": "optional",
        "backend_http_settings.trusted_root_certificate_names": "optional",
        "custom_error_configuration": "optional",
        "custom_error_configuration.custom_error_page_url": "required",
        "custom_error_configuration.status_code": "required",
        "enable_http2": "optional",
        "fips_enabled": "optional",
        "firewall_policy_id": "optional",
        "force_firewall_policy_association": "optional",
        "frontend_ip_configuration": "required",
        "frontend_ip_configuration.name": "required",
        "frontend_ip_configuration.private_ip_address": "optional",
        "frontend_ip_configuration.private_ip_address_allocation": "optional",
        "frontend_ip_configuration.private_link_configuration_name": "optional",
        "frontend_ip_configuration.public_ip_address_id": "optional",
        "frontend_ip_configuration.subnet_id": "optional",
        "frontend_port": "required",
        "frontend_port.name": "required",
        "frontend_port.port": "required",
        "gateway_ip_configuration": "required",
        "gateway_ip_configuration.name": "required",
        "gateway_ip_configuration.subnet_id": "required",
        "global": "optional",
        "global.request_buffering_enabled": "required",
        "global.response_buffering_enabled": "required",
        "http_listener": "required",
        "http_listener.custom_error_configuration": "optional",
        "http_listener.custom_error_configuration.custom_error_page_url": "required",
        "http_listener.custom_error_configuration.status_code": "required",
        "http_listener.firewall_policy_id": "optional",
        "http_listener.frontend_ip_configuration_name": "required",
        "http_listener.frontend_port_name": "required",
        "http_listener.host_name": "optional",
        "http_listener.host_names": "optional",
        "http_listener.name": "required",
        "http_listener.protocol": "required",
        "http_listener.require_sni": "optional",
        "http_listener.ssl_certificate_name": "optional",
        "http_listener.ssl_profile_name": "optional",
        "id": "optional",
        "identity": "optional",
        "identity.identity_ids": "required",
        "identity.type": "required",
        "location": "required",
        "name": "required",
        "private_endpoint_connection.id": "required",
        "private_endpoint_connection.name": "required",
        "private_link_configuration": "optional",
        "private_link_configuration.ip_configuration": "required",
        "private_link_configuration.ip_configuration.name": "required",
        "private_link_configuration.ip_configuration.primary": "required",
        "private_link_configuration.ip_configuration.private_ip_address": "optional",
        "private_link_configuration.ip_configuration.private_ip_address_allocation": "required",
        "private_link_configuration.ip_configuration.subnet_id": "required",
        "private_link_configuration.name": "required",
        "probe": "optional",
        "probe.host": "optional",
        "probe.interval": "required",
        "probe.match": "optional",
        "probe.match.body": "optional",
        "probe.match.status_code": "required",
        "probe.minimum_servers": "optional",
        "probe.name": "required",
        "probe.path": "required",
        "probe.pick_host_name_from_backend_http_settings": "optional",
        "probe.port": "optional",
        "probe.protocol": "required",
        "probe.timeout": "required",
        "probe.unhealthy_threshold": "required",
        "redirect_configuration": "optional",
        "redirect_configuration.include_path": "optional",
        "redirect_configuration.include_query_string": "optional",
        "redirect_configuration.name": "required",
        "redirect_configuration.redirect_type": "required",
        "redirect_configuration.target_listener_name": "optional",
        "redirect_configuration.target_url": "optional",
        "request_routing_rule": "required",
        "request_routing_rule.backend_address_pool_name": "optional",
        "request_routing_rule.backend_http_settings_name": "optional",
        "request_routing_rule.http_listener_name": "required",
        "request_routing_rule.name": "required",
        "request_routing_rule.priority": "optional",
        "request_routing_rule.redirect_configuration_name": "optional",
        "request_routing_rule.rewrite_rule_set_name": "optional",
        "request_routing_rule.rule_type": "required",
        "request_routing_rule.url_path_map_name": "optional",
        "resource_group_name": "required",
        "rewrite_rule_set": "optional",
        "rewrite_rule_set.name": "required",
        "rewrite_rule_set.rewrite_rule": "optional",
        "rewrite_rule_set.rewrite_rule.condition": "optional",
        "rewrite_rule_set.rewrite_rule.condition.ignore_case": "optional",
        "rewrite_rule_set.rewrite_rule.condition.negate": "optional",
        "rewrite_rule_set.rewrite_rule.condition.pattern": "required",
        "rewrite_rule_set.rewrite_rule.condition.variable": "required",
        "rewrite_rule_set.rewrite_rule.name": "required",
        "rewrite_rule_set.rewrite_rule.request_header_configuration": "optional",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_name": "required",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_value": "required",
        "rewrite_rule_set.rewrite_rule.response_header_configuration": "optional",
        "rewrite_rule_set.rewrite_rule.response_header_configuration.header_name": "required",
        "rewrite_rule_set.rewrite_rule.response_header_configuration.header_value": "required",
        "rewrite_rule_set.rewrite_rule.rule_sequence": "required",
        "rewrite_rule_set.rewrite_rule.url": "optional",
        "rewrite_rule_set.rewrite_rule.url.components": "optional",
        "rewrite_rule_set.rewrite_rule.url.path": "optional",
        "rewrite_rule_set.rewrite_rule.url.query_string": "optional",
        "rewrite_rule_set.rewrite_rule.url.reroute": "optional",
        "sku": "required",
        "sku.capacity": "optional",
        "sku.name": "required",
        "sku.tier": "required",
        "ssl_certificate": "optional",
        "ssl_certificate.data": "optional",
        "ssl_certificate.key_vault_secret_id": "optional",
        "ssl_certificate.name": "required",
        "ssl_certificate.password": "optional",
        "ssl_policy": "optional",
        "ssl_policy.cipher_suites": "optional",
        "ssl_policy.disabled_protocols": "optional",
        "ssl_policy.min_protocol_version": "optional",
        "ssl_policy.policy_name": "optional",
        "ssl_policy.policy_type": "optional",
        "ssl_profile": "optional",
        "ssl_profile.name": "required",
        "ssl_profile.ssl_policy": "optional",
        "ssl_profile.ssl_policy.cipher_suites": "optional",
        "ssl_profile.ssl_policy.disabled_protocols": "optional",
        "ssl_profile.ssl_policy.min_protocol_version": "optional",
        "ssl_profile.ssl_policy.policy_name": "optional",
        "ssl_profile.ssl_policy.policy_type": "optional",
        "ssl_profile.trusted_client_certificate_names": "optional",
        "ssl_profile.verify_client_cert_issuer_dn": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "trusted_client_certificate": "optional",
        "trusted_client_certificate.data": "required",
        "trusted_client_certificate.name": "required",
        "trusted_root_certificate": "optional",
        "trusted_root_certificate.data": "optional",
        "trusted_root_certificate.key_vault_secret_id": "optional",
        "trusted_root_certificate.name": "required",
        "url_path_map": "optional",
        "url_path_map.default_backend_address_pool_name": "optional",
        "url_path_map.default_backend_http_settings_name": "optional",
        "url_path_map.default_redirect_configuration_name": "optional",
        "url_path_map.default_rewrite_rule_set_name": "optional",
        "url_path_map.name": "required",
        "url_path_map.path_rule": "required",
        "url_path_map.path_rule.backend_address_pool_name": "optional",
        "url_path_map.path_rule.backend_http_settings_name": "optional",
        "url_path_map.path_rule.firewall_policy_id": "optional",
        "url_path_map.path_rule.name": "required",
        "url_path_map.path_rule.paths": "required",
        "url_path_map.path_rule.redirect_configuration_name": "optional",
        "url_path_map.path_rule.rewrite_rule_set_name": "optional",
        "waf_configuration": "optional",
        "waf_configuration.disabled_rule_group": "optional",
        "waf_configuration.disabled_rule_group.rule_group_name": "required",
        "waf_configuration.disabled_rule_group.rules": "optional",
        "waf_configuration.enabled": "required",
        "waf_configuration.exclusion": "optional",
        "waf_configuration.exclusion.match_variable": "required",
        "waf_configuration.exclusion.selector": "optional",
        "waf_configuration.exclusion.selector_match_operator": "optional",
        "waf_configuration.file_upload_limit_mb": "optional",
        "waf_configuration.firewall_mode": "required",
        "waf_configuration.max_request_body_size_kb": "optional",
        "waf_configuration.request_body_check": "optional",
        "waf_configuration.rule_set_type": "optional",
        "waf_configuration.rule_set_version": "required",
        "zones": "optional"
    },
    "azurerm_bastion_host": {
        "copy_paste_enabled": "optional",
        "file_copy_enabled": "optional",
        "id": "optional",
        "ip_configuration": "optional",
        "ip_configuration.name": "required",
        "ip_configuration.public_ip_address_id": "required",
        "ip_configuration.subnet_id": "required",
        "ip_connect_enabled": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "scale_units": "optional",
        "shareable_link_enabled": "optional",
        "sku": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "tunneling_enabled": "optional"
    },
    "azurerm_express_route_circuit": {
        "allow_classic_operations": "optional",
        "bandwidth_in_gbps": "optional",
        "bandwidth_in_mbps": "optional",
        "express_route_port_id": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "peering_location": "optional",
        "resource_group_name": "required",
        "service_provider_name": "optional",
        "sku": "required",
        "sku.family": "required",
        "sku.tier": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_firewall": {
        "dns_servers": "optional",
        "firewall_policy_id": "optional",
        "id": "optional",
        "ip_configuration": "optional",
        "ip_configuration.name": "required",
        "ip_configuration.public_ip_address_id": "required",
        "ip_configuration.subnet_id": "optional",
        "location": "required",
        "management_ip_configuration": "optional",
        "management_ip_configuration.name": "required",
        "management_ip_configuration.public_ip_address_id": "required",
        "management_ip_configuration.subnet_id": "required",
        "name": "required",
        "private_ip_ranges": "optional",
        "resource_group_name": "required",
        "sku_name": "required",
        "sku_tier": "required",
        "tags": "optional",
        "threat_intel_mode": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_hub": "optional",
        "virtual_hub.public_ip_count": "optional",
        "virtual_hub.virtual_hub_id": "required",
        "zones": "optional"
    },
    "azurerm_firewall_network_rule_collection": {
        "action": "required",
        "azure_firewall_name": "required",
        "id": "optional",
        "name": "required",
        "priority": "required",
        "resource_group_name": "required",
        "rule": "required",
        "rule.description": "optional",
        "rule.destination_addresses": "optional",
        "rule.destination_fqdns": "optional",
        "rule.destination_ip_groups": "optional",
        "rule.destination_ports": "required",
        "rule.name": "required",
        "rule.protocols": "required",
        "rule.source_addresses": "optional",
        "rule.source_ip_groups": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb": {
        "edge_zone": "optional",
        "frontend_ip_configuration": "optional",
        "frontend_ip_configuration.gateway_load_balancer_frontend_ip_configuration_id": "optional",
        "frontend_ip_configuration.name": "required",
        "frontend_ip_configuration.private_ip_address": "optional",
        "frontend_ip_configuration.private_ip_address_allocation": "optional",
        "frontend_ip_configuration.private_ip_address_version": "optional",
        "frontend_ip_configuration.public_ip_address_id": "optional",
        "frontend_ip_configuration.public_ip_prefix_id": "optional",
        "frontend_ip_configuration.subnet_id": "optional",
        "frontend_ip_configuration.zones": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "sku": "optional",
        "sku_tier": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb_backend_address_pool": {
        "id": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "tunnel_interface": "optional",
        "tunnel_interface.identifier": "required",
        "tunnel_interface.port": "required",
        "tunnel_interface.protocol": "required",
        "tunnel_interface.type": "required"
    },
    "azurerm_lb_nat_pool": {
        "backend_port": "required",
        "floating_ip_enabled": "optional",
        "frontend_ip_configuration_name": "required",
        "frontend_port_end": "required",
        "frontend_port_start": "required",
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "protocol": "required",
        "resource_group_name": "required",
        "tcp_reset_enabled": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb_nat_rule": {
        "backend_address_pool_id": "optional",
        "backend_port": "required",
        "enable_floating_ip": "optional",
        "enable_tcp_reset": "optional",
        "frontend_ip_configuration_name": "required",
        "frontend_port": "optional",
        "frontend_port_end": "optional",
        "frontend_port_start": "optional",
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "protocol": "required",
        "resource_group_name": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb_outbound_rule": {
        "allocated_outbound_ports": "optional",
        "backend_address_pool_id": "required",
        "enable_tcp_reset": "optional",
        "frontend_ip_configuration": "optional",
        "frontend_ip_configuration.name": "required",
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "protocol": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb_probe": {
        "id": "optional",
        "interval_in_seconds": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "number_of_probes": "optional",
        "port": "required",
        "probe_threshold": "optional",
        "protocol": "optional",
        "request_path": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_lb_rule": {
        "backend_address_pool_ids": "optional",
        "backend_port": "required",
        "disable_outbound_snat": "optional",
        "enable_floating_ip": "optional",
        "enable_tcp_reset": "optional",
        "frontend_ip_configuration_name": "required",
        "frontend_port": "required",
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "load_distribution": "optional",
        "loadbalancer_id": "required",
        "name": "required",
        "probe_id": "optional",
        "protocol": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_linux_virtual_machine": {
        "additional_capabilities": "optional",
        "additional_capabilities.ultra_ssd_enabled": "optional",
        "admin_password": "optional",
        "admin_ssh_key": "optional",
        "admin_ssh_key.public_key": "required",
        "admin_ssh_key.username": "required",
        "admin_username": "required",
        "allow_extension_operations": "optional",
        "availability_set_id": "optional",
        "boot_diagnostics": "optional",
        "boot_diagnostics.storage_account_uri": "optional",
        "capacity_reservation_group_id": "optional",
        "computer_name": "optional",
        "custom_data": "optional",
        "dedicated_host_group_id": "optional",
        "dedicated_host_id": "optional",
        "disable_password_authentication": "optional",
        "edge_zone": "optional",
        "encryption_at_host_enabled": "optional",
        "eviction_policy": "optional",
        "extensions_time_budget": "optional",
        "gallery_application": "optional",
        "gallery_application.configuration_blob_uri": "optional",
        "gallery_application.order": "optional",
        "gallery_application.tag": "optional",
        "gallery_application.version_id": "required",
        "id": "optional",
        "identity": "optional",
        "identity.identity_ids": "optional",
        "identity.type": "required",
        "license_type": "optional",
        "location": "required",
        "max_bid_price": "optional",
        "name": "required",
        "network_interface_ids": "required",
        "os_disk": "required",
        "os_disk.caching": "required",
        "os_disk.diff_disk_settings": "optional",
        "os_disk.diff_disk_settings.option": "required",
        "os_disk.diff_disk_settings.placement": "optional",
        "os_disk.disk_encryption_set_id": "optional",
        "os_disk.disk_size_gb": "optional",
        "os_disk.name": "optional",
        "os_disk.secure_vm_disk_encryption_set_id": "optional",
        "os_disk.security_encryption_type": "optional",
        "os_disk.storage_account_type": "required",
        "os_disk.write_accelerator_enabled": "optional",
        "patch_assessment_mode": "optional",
        "patch_mode": "optional",
        "plan": "optional",
        "plan.name": "required",
        "plan.product": "required",
        "plan.publisher": "required",
        "platform_fault_domain": "optional",
        "priority": "optional",
        "provision_vm_agent": "optional",
        "proximity_placement_group_id": "optional",
        "resource_group_name": "required",
        "secret": "optional",
        "secret.certificate": "required",
        "secret.certificate.url": "required",
        "secret.key_vault_id": "required",
        "secure_boot_enabled": "optional",
        "size": "required",
        "source_image_id": "optional",
        "source_image_reference": "optional",
        "source_image_reference.offer": "required",
        "source_image_reference.publisher": "required",
        "source_image_reference.sku": "required",
        "source_image_reference.version": "required",
        "tags": "optional",
        "termination_notification": "optional",
        "termination_notification.enabled": "required",
        "termination_notification.timeout": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "user_data": "optional",
        "virtual_machine_scale_set_id": "optional",
        "vtpm_enabled": "optional",
        "zone": "optional"
    },
    "azurerm_local_network_gateway": {
        "address_space": "optional",
        "bgp_settings": "optional",
        "bgp_settings.asn": "required",
        "bgp_settings.bgp_peering_address": "required",
        "bgp_settings.peer_weight": "optional",
        "gateway_address": "optional",
        "gateway_fqdn": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_managed_disk": {
        "create_option": "required",
        "disk_access_id": "optional",
        "disk_encryption_set_id": "optional",
        "disk_iops_read_only": "optional",
        "disk_iops_read_write": "optional",
        "disk_mbps_read_only": "optional",
        "disk_mbps_read_write": "optional",
        "disk_size_gb": "optional",
        "edge_zone": "optional",
        "encryption_settings": "optional",
        "encryption_settings.disk_encryption_key": "optional",
        "encryption_settings.disk_encryption_key.secret_url": "required",
        "encryption_settings.disk_encryption_key.source_vault_id": "required",
        "encryption_settings.enabled": "optional",
        "encryption_settings.key_encryption_key": "optional",
        "encryption_settings.key_encryption_key.key_url": "required",
        "encryption_settings.key_encryption_key.source_vault_id": "required",
        "gallery_image_reference_id": "optional",
        "hyper_v_generation": "optional",
        "id": "optional",
        "image_reference_id": "optional",
        "location": "required",
        "logical_sector_size": "optional",
        "max_shares": "optional",
        "name": "required",
        "network_access_policy": "optional",
        "on_demand_bursting_enabled": "optional",
        "os_type": "optional",
        "public_network_access_enabled": "optional",
        "resource_group_name": "required",
        "secure_vm_disk_encryption_set_id": "optional",
        "security_type": "optional",
        "source_resource_id": "optional",
        "source_uri": "optional",
        "storage_account_id": "optional",
        "storage_account_type": "required",
        "tags": "optional",
        "tier": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "trusted_launch_enabled": "optional",
        "upload_size_bytes": "optional",
        "zone": "optional"
    },
    "azurerm_nat_gateway": {
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "sku_name": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "zones": "optional"
    },
    "azurerm_nat_gateway_public_ip_association": {
        "id": "optional",
        "nat_gateway_id": "required",
        "public_ip_address_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional"
    },
    "azurerm_network_interface": {
        "dns_servers": "optional",
        "edge_zone": "optional",
        "enable_accelerated_networking": "optional",
        "enable_ip_forwarding": "optional",
        "id": "optional",
        "internal_dns_name_label": "optional",
        "ip_configuration": "required",
        "ip_configuration.gateway_load_balancer_frontend_ip_configuration_id": "optional",
        "ip_configuration.name": "required",
        "ip_configuration.primary": "optional",
        "ip_configuration.private_ip_address": "optional",
        "ip_configuration.private_ip_address_allocation": "required",
        "ip_configuration.private_ip_address_version": "optional",
        "ip_configuration.public_ip_address_id": "optional",
        "ip_configuration.subnet_id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_network_interface_nat_rule_association": {
        "id": "optional",
        "ip_configuration_name": "required",
        "nat_rule_id": "required",
        "network_interface_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_network_interface_security_group_association": {
        "id": "optional",
        "network_interface_id": "required",
        "network_security_group_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_network_security_group": {
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "security_rule": "optional",
        "security_rule.access": "required",
        "security_rule.description": "required",
        "security_rule.destination_address_prefix": "required",
        "security_rule.destination_address_prefixes": "required",
        "security_rule.destination_application_security_group_ids": "required",
        "security_rule.destination_port_range": "required",
        "security_rule.destination_port_ranges": "required",
        "security_rule.direction": "required",
        "security_rule.name": "required",
        "security_rule.priority": "required",
        "security_rule.protocol": "required",
        "security_rule.source_address_prefix": "required",
        "security_rule.source_address_prefixes": "required",
        "security_rule.source_application_security_group_ids": "required",
        "security_rule.source_port_range": "required",
        "security_rule.source_port_ranges": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_network_security_rule": {
        "access": "required",
        "description": "optional",
        "destination_address_prefix": "optional",
        "destination_address_prefixes": "optional",
        "destination_application_security_group_ids": "optional",
        "destination_port_range": "optional",
        "destination_port_ranges": "optional",
        "direction": "required",
        "id": "optional",
        "name": "required",
        "network_security_group_name": "required",
        "priority": "required",
        "protocol": "required",
        "resource_group_name": "required",
        "source_address_prefix": "optional",
        "source_address_prefixes": "optional",
        "source_application_security_group_ids": "optional",
        "source_port_range": "optional",
        "source_port_ranges": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_private_dns_resolver": {
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_network_id": "required"
    },
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": {
        "id": "optional",
        "location": "required",
        "name": "required",
        "private_dns_resolver_outbound_endpoint_ids": "required",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_private_dns_resolver_inbound_endpoint": {
        "id": "optional",
        "ip_configurations": "required",
        "ip_configurations.private_ip_allocation_method": "optional",
        "ip_configurations.subnet_id": "required",
        "location": "required",
        "name": "required",
        "private_dns_resolver_id": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_private_dns_resolver_outbound_endpoint": {
        "id": "optional",
        "location": "required",
        "name": "required",
        "private_dns_resolver_id": "required",
        "subnet_id": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_private_dns_resolver_virtual_network_link": {
        "dns_forwarding_ruleset_id": "required",
        "id": "optional",
        "metadata": "optional",
        "name": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_network_id": "required"
    },
    "azurerm_private_endpoint": {
        "custom_network_interface_name": "optional",
        "id": "optional",
        "ip_configuration": "optional",
        "ip_configuration.member_name": "optional",
        "ip_configuration.name": "required",
        "ip_configuration.private_ip_address": "required",
        "ip_configuration.subresource_name": "required",
        "location": "required",
        "name": "required",
        "private_dns_zone_group": "optional",
        "private_dns_zone_group.name": "required",
        "private_dns_zone_group.private_dns_zone_ids": "required",
        "private_service_connection": "required",
        "private_service_connection.is_manual_connection": "required",
        "private_service_connection.name": "required",
        "private_service_connection.private_connection_resource_alias": "optional",
        "private_service_connection.private_connection_resource_id": "optional",
        "private_service_connection.request_message": "optional",
        "private_service_connection.subresource_names": "optional",
        "resource_group_name": "required",
        "subnet_id": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_private_link_service": {
        "auto_approval_subscription_ids": "optional",
        "enable_proxy_protocol": "optional",
        "fqdns": "optional",
        "id": "optional",
        "load_balancer_frontend_ip_configuration_ids": "required",
        "location": "required",
        "name": "required",
        "nat_ip_configuration": "required",
        "nat_ip_configuration.name": "required",
        "nat_ip_configuration.primary": "required",
        "nat_ip_configuration.private_ip_address": "optional",
        "nat_ip_configuration.private_ip_address_version": "optional",
        "nat_ip_configuration.subnet_id": "required",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "visibility_subscription_ids": "optional"
    },
    "azurerm_public_ip": {
        "allocation_method": "required",
        "ddos_protection_mode": "optional",
        "ddos_protection_plan_id": "optional",
        "domain_name_label": "optional",
        "edge_zone": "optional",
        "id": "optional",
        "idle_timeout_in_minutes": "optional",
        "ip_tags": "optional",
        "ip_version": "optional",
        "location": "required",
        "name": "required",
        "public_ip_prefix_id": "optional",
        "resource_group_name": "required",
        "reverse_fqdn": "optional",
        "sku": "optional",
        "sku_tier": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "zones": "optional"
    },
    "azurerm_resource_group": {
        "id": "optional",
        "location": "required",
        "name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_route": {
        "address_prefix": "required",
        "id": "optional",
        "name": "required",
        "next_hop_in_ip_address": "optional",
        "next_hop_type": "required",
        "resource_group_name": "required",
        "route_table_name": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_route_server": {
        "branch_to_branch_traffic_enabled": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "public_ip_address_id": "required",
        "resource_group_name": "required",
        "sku": "required",
        "subnet_id": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_route_table": {
        "disable_bgp_route_propagation": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "route": "optional",
        "route.address_prefix": "required",
        "route.name": "required",
        "route.next_hop_in_ip_address": "required",
        "route.next_hop_type": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_storage_account": {
        "access_tier": "optional",
        "account_kind": "optional",
        "account_replication_type": "required",
        "account_tier": "required",
        "allow_nested_items_to_be_public": "optional",
        "azure_files_authentication": "optional",
        "azure_files_authentication.active_directory": "optional",
        "azure_files_authentication.active_directory.domain_guid": "required",
        "azure_files_authentication.active_directory.domain_name": "required",
        "azure_files_authentication.active_directory.domain_sid": "required",
        "azure_files_authentication.active_directory.forest_name": "required",
        "azure_files_authentication.active_directory.netbios_domain_name": "required",
        "azure_files_authentication.active_directory.storage_sid": "required",
        "azure_files_authentication.directory_type": "required",
        "blob_properties": "optional",
        "blob_properties.change_feed_enabled": "optional",
        "blob_properties.change_feed_retention_in_days": "optional",
        "blob_properties.container_delete_retention_policy": "optional",
        "blob_properties.container_delete_retention_policy.days": "optional",
        "blob_properties.cors_rule": "optional",
        "blob_properties.cors_rule.allowed_headers": "required",
        "blob_properties.cors_rule.allowed_methods": "required",
        "blob_properties.cors_rule.allowed_origins": "required",
        "blob_properties.cors_rule.exposed_headers": "required",
        "blob_properties.cors_rule.max_age_in_seconds": "required",
        "blob_properties.default_service_version": "optional",
        "blob_properties.delete_retention_policy": "optional",
        "blob_properties.delete_retention_policy.days": "optional",
        "blob_properties.last_access_time_enabled": "optional",
        "blob_properties.restore_policy": "optional",
        "blob_properties.restore_policy.days": "required",
        "blob_properties.versioning_enabled": "optional",
        "cross_tenant_replication_enabled": "optional",
        "custom_domain": "optional",
        "custom_domain.name": "required",
        "custom_domain.use_subdomain": "optional",
        "customer_managed_key": "optional",
        "customer_managed_key.key_vault_key_id": "required",
        "customer_managed_key.user_assigned_identity_id": "required",
        "default_to_oauth_authentication": "optional",
        "edge_zone": "optional",
        "enable_https_traffic_only": "optional",
        "id": "optional",
        "identity": "optional",
        "identity.identity_ids": "optional",
        "identity.type": "required",
        "immutability_policy": "optional",
        "immutability_policy.allow_protected_append_writes": "required",
        "immutability_policy.period_since_creation_in_days": "required",
        "immutability_policy.state": "required",
        "infrastructure_encryption_enabled": "optional",
        "is_hns_enabled": "optional",
        "large_file_share_enabled": "optional",
        "location": "required",
        "min_tls_version": "optional",
        "name": "required",
        "network_rules": "optional",
        "network_rules.bypass": "optional",
        "network_rules.default_action": "required",
        "network_rules.ip_rules": "optional",
        "network_rules.private_link_access": "optional",
        "network_rules.private_link_access.endpoint_resource_id": "required",
        "network_rules.private_link_access.endpoint_tenant_id": "optional",
        "network_rules.virtual_network_subnet_ids": "optional",
        "nfsv3_enabled": "optional",
        "public_network_access_enabled": "optional",
        "queue_encryption_key_type": "optional",
        "queue_properties": "optional",
        "queue_properties.cors_rule": "optional",
        "queue_properties.cors_rule.allowed_headers": "required",
        "queue_properties.cors_rule.allowed_methods": "required",
        "queue_properties.cors_rule.allowed_origins": "required",
        "queue_properties.cors_rule.exposed_headers": "required",
        "queue_properties.cors_rule.max_age_in_seconds": "required",
        "queue_properties.hour_metrics": "optional",
        "queue_properties.hour_metrics.enabled": "required",
        "queue_properties.hour_metrics.include_apis": "optional",
        "queue_properties.hour_metrics.retention_policy_days": "optional",
        "queue_properties.hour_metrics.version": "required",
        "queue_properties.logging": "optional",
        "queue_properties.logging.delete": "required",
        "queue_properties.logging.read": "required",
        "queue_properties.logging.retention_policy_days": "optional",
        "queue_properties.logging.version": "required",
        "queue_properties.logging.write": "required",
        "queue_properties.minute_metrics": "optional",
        "queue_properties.minute_metrics.enabled": "required",
        "queue_properties.minute_metrics.include_apis": "optional",
        "queue_properties.minute_metrics.retention_policy_days": "optional",
        "queue_properties.minute_metrics.version": "required",
        "resource_group_name": "required",
        "routing": "optional",
        "routing.choice": "optional",
        "routing.publish_internet_endpoints": "optional",
        "routing.publish_microsoft_endpoints": "optional",
        "sas_policy": "optional",
        "sas_policy.expiration_action": "optional",
        "sas_policy.expiration_period": "required",
        "sftp_enabled": "optional",
        "share_properties": "optional",
        "share_properties.cors_rule": "optional",
        "share_properties.cors_rule.allowed_headers": "required",
        "share_properties.cors_rule.allowed_methods": "required",
        "share_properties.cors_rule.allowed_origins": "required",
        "share_properties.cors_rule.exposed_headers": "required",
        "share_properties.cors_rule.max_age_in_seconds": "required",
        "share_properties.retention_policy": "optional",
        "share_properties.retention_policy.days": "optional",
        "share_properties.smb": "optional",
        "share_properties.smb.authentication_types": "optional",
        "share_properties.smb.channel_encryption_type": "optional",
        "share_properties.smb.kerberos_ticket_encryption_type": "optional",
        "share_properties.smb.multichannel_enabled": "optional",
        "share_properties.smb.versions": "optional",
        "shared_access_key_enabled": "optional",
        "static_website": "optional",
        "static_website.error_404_document": "optional",
        "static_website.index_document": "optional",
        "table_encryption_key_type": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_storage_account_network_rules": {
        "bypass": "optional",
        "default_action": "required",
        "id": "optional",
        "ip_rules": "optional",
        "private_link_access": "optional",
        "private_link_access.endpoint_resource_id": "required",
        "private_link_access.endpoint_tenant_id": "optional",
        "storage_account_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_network_subnet_ids": "optional"
    },
    "azurerm_subnet": {
        "address_prefixes": "required",
        "delegation": "optional",
        "delegation.name": "required",
        "delegation.service_delegation": "required",
        "delegation.service_delegation.actions": "optional",
        "delegation.service_delegation.name": "required",
        "enforce_private_link_endpoint_network_policies": "optional",
        "enforce_private_link_service_network_policies": "optional",
        "id": "optional",
        "name": "required",
        "private_endpoint_network_policies_enabled": "optional",
        "private_link_service_network_policies_enabled": "optional",
        "resource_group_name": "required",
        "service_endpoint_policy_ids": "optional",
        "service_endpoints": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_network_name": "required"
    },
    "azurerm_subnet_nat_gateway_association": {
        "id": "optional",
        "nat_gateway_id": "required",
        "subnet_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_subnet_network_security_group_association": {
        "id": "optional",
        "network_security_group_id": "required",
        "subnet_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_subnet_route_table_association": {
        "id": "optional",
        "route_table_id": "required",
        "subnet_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_virtual_hub": {
        "address_prefix": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "route": "optional",
        "route.address_prefixes": "required",
        "route.next_hop_ip_address": "required",
        "sku": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_wan_id": "optional"
    },
    "azurerm_virtual_hub_connection": {
        "id": "optional",
        "internet_security_enabled": "optional",
        "name": "required",
        "remote_virtual_network_id": "required",
        "routing": "optional",
        "routing.associated_route_table_id": "optional",
        "routing.propagated_route_table": "optional",
        "routing.propagated_route_table.labels": "optional",
        "routing.propagated_route_table.route_table_ids": "optional",
        "routing.static_vnet_route": "optional",
        "routing.static_vnet_route.address_prefixes": "optional",
        "routing.static_vnet_route.name": "optional",
        "routing.static_vnet_route.next_hop_ip_address": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_hub_id": "required"
    },
    "azurerm_virtual_machine": {
        "additional_capabilities": "optional",
        "additional_capabilities.ultra_ssd_enabled": "required",
        "availability_set_id": "optional",
        "boot_diagnostics": "optional",
        "boot_diagnostics.enabled": "required",
        "boot_diagnostics.storage_uri": "required",
        "delete_data_disks_on_termination": "optional",
        "delete_os_disk_on_termination": "optional",
        "id": "optional",
        "identity": "optional",
        "identity.identity_ids": "optional",
        "identity.type": "required",
        "license_type": "optional",
        "location": "required",
        "name": "required",
        "network_interface_ids": "required",
        "os_profile": "optional",
        "os_profile.admin_password": "optional",
        "os_profile.admin_username": "required",
        "os_profile.computer_name": "required",
        "os_profile.custom_data": "optional",
        "os_profile_linux_config": "optional",
        "os_profile_linux_config.disable_password_authentication": "required",
        "os_profile_linux_config.ssh_keys": "optional",
        "os_profile_linux_config.ssh_keys.key_data": "required",
        "os_profile_linux_config.ssh_keys.path": "required",
        "os_profile_secrets": "optional",
        "os_profile_secrets.source_vault_id": "required",
        "os_profile_secrets.vault_certificates": "optional",
        "os_profile_secrets.vault_certificates.certificate_store": "optional",
        "os_profile_secrets.vault_certificates.certificate_url": "required",
        "os_profile_windows_config": "optional",
        "os_profile_windows_config.additional_unattend_config": "optional",
        "os_profile_windows_config.additional_unattend_config.component": "required",
        "os_profile_windows_config.additional_unattend_config.content": "required",
        "os_profile_windows_config.additional_unattend_config.pass": "required",
        "os_profile_windows_config.additional_unattend_config.setting_name": "required",
        "os_profile_windows_config.enable_automatic_upgrades": "optional",
        "os_profile_windows_config.provision_vm_agent": "optional",
        "os_profile_windows_config.timezone": "optional",
        "os_profile_windows_config.winrm": "optional",
        "os_profile_windows_config.winrm.certificate_url": "optional",
        "os_profile_windows_config.winrm.protocol": "required",
        "plan": "optional",
        "plan.name": "required",
        "plan.product": "required",
        "plan.publisher": "required",
        "primary_network_interface_id": "optional",
        "proximity_placement_group_id": "optional",
        "resource_group_name": "required",
        "storage_data_disk": "optional",
        "storage_data_disk.caching": "optional",
        "storage_data_disk.create_option": "required",
        "storage_data_disk.disk_size_gb": "optional",
        "storage_data_disk.lun": "required",
        "storage_data_disk.managed_disk_id": "optional",
        "storage_data_disk.managed_disk_type": "optional",
        "storage_data_disk.name": "required",
        "storage_data_disk.vhd_uri": "optional",
        "storage_data_disk.write_accelerator_enabled": "optional",
        "storage_image_reference": "optional",
        "storage_image_reference.id": "optional",
        "storage_image_reference.offer": "optional",
        "storage_image_reference.publisher": "optional",
        "storage_image_reference.sku": "optional",
        "storage_image_reference.version": "optional",
        "storage_os_disk": "required",
        "storage_os_disk.caching": "optional",
        "storage_os_disk.create_option": "required",
        "storage_os_disk.disk_size_gb": "optional",
        "storage_os_disk.image_uri": "optional",
        "storage_os_disk.managed_disk_id": "optional",
        "storage_os_disk.managed_disk_type": "optional",
        "storage_os_disk.name": "required",
        "storage_os_disk.os_type": "optional",
        "storage_os_disk.vhd_uri": "optional",
        "storage_os_disk.write_accelerator_enabled": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "vm_size": "required",
        "zones": "optional"
    },
    "azurerm_virtual_machine_data_disk_attachment": {
        "caching": "required",
        "create_option": "optional",
        "id": "optional",
        "lun": "required",
        "managed_disk_id": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "virtual_machine_id": "required",
        "write_accelerator_enabled": "optional"
    },
    "azurerm_virtual_network": {
        "address_space": "required",
        "bgp_community": "optional",
        "ddos_protection_plan": "optional",
        "ddos_protection_plan.enable": "required",
        "ddos_protection_plan.id": "required",
        "dns_servers": "optional",
        "edge_zone": "optional",
        "flow_timeout_in_minutes": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "resource_group_name": "required",
        "subnet": "optional",
        "subnet.address_prefix": "required",
        "subnet.id": "required",
        "subnet.name": "required",
        "subnet.security_group": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional"
    },
    "azurerm_virtual_network_gateway": {
        "active_active": "optional",
        "bgp_settings": "optional",
        "bgp_settings.asn": "optional",
        "bgp_settings.peer_weight": "optional",
        "bgp_settings.peering_addresses": "optional",
        "bgp_settings.peering_addresses.apipa_addresses": "optional",
        "bgp_settings.peering_addresses.ip_configuration_name": "optional",
        "custom_route": "optional",
        "custom_route.address_prefixes": "optional",
        "default_local_network_gateway_id": "optional",
        "edge_zone": "optional",
        "enable_bgp": "optional",
        "generation": "optional",
        "id": "optional",
        "ip_configuration": "required",
        "ip_configuration.name": "optional",
        "ip_configuration.private_ip_address_allocation": "optional",
        "ip_configuration.public_ip_address_id": "required",
        "ip_configuration.subnet_id": "required",
        "location": "required",
        "name": "required",
        "private_ip_address_enabled": "optional",
        "resource_group_name": "required",
        "sku": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "type": "required",
        "vpn_client_configuration": "optional",
        "vpn_client_configuration.aad_audience": "optional",
        "vpn_client_configuration.aad_issuer": "optional",
        "vpn_client_configuration.aad_tenant": "optional",
        "vpn_client_configuration.address_space": "required",
        "vpn_client_configuration.radius_server_address": "optional",
        "vpn_client_configuration.radius_server_secret": "optional",
        "vpn_client_configuration.revoked_certificate": "optional",
        "vpn_client_configuration.revoked_certificate.name": "required",
        "vpn_client_configuration.revoked_certificate.thumbprint": "required",
        "vpn_client_configuration.root_certificate": "optional",
        "vpn_client_configuration.root_certificate.name": "required",
        "vpn_client_configuration.root_certificate.public_cert_data": "required",
        "vpn_client_configuration.vpn_auth_types": "optional",
        "vpn_client_configuration.vpn_client_protocols": "optional",
        "vpn_type": "optional"
    },
    "azurerm_virtual_network_gateway_connection": {
        "authorization_key": "optional",
        "connection_mode": "optional",
        "connection_protocol": "optional",
        "custom_bgp_addresses": "optional",
        "custom_bgp_addresses.primary": "required",
        "custom_bgp_addresses.secondary": "required",
        "dpd_timeout_seconds": "optional",
        "egress_nat_rule_ids": "optional",
        "enable_bgp": "optional",
        "express_route_circuit_id": "optional",
        "express_route_gateway_bypass": "optional",
        "id": "optional",
        "ingress_nat_rule_ids": "optional",
        "ipsec_policy": "optional",
        "ipsec_policy.dh_group": "required",
        "ipsec_policy.ike_encryption": "required",
        "ipsec_policy.ike_integrity": "required",
        "ipsec_policy.ipsec_encryption": "required",
        "ipsec_policy.ipsec_integrity": "required",
        "ipsec_policy.pfs_group": "required",
        "ipsec_policy.sa_datasize": "optional",
        "ipsec_policy.sa_lifetime": "optional",
        "local_azure_ip_address_enabled": "optional",
        "local_network_gateway_id": "optional",
        "location": "required",
        "name": "required",
        "peer_virtual_network_gateway_id": "optional",
        "resource_group_name": "required",
        "routing_weight": "optional",
        "shared_key": "optional",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "traffic_selector_policy": "optional",
        "traffic_selector_policy.local_address_cidrs": "required",
        "traffic_selector_policy.remote_address_cidrs": "required",
        "type": "required",
        "use_policy_based_traffic_selectors": "optional",
        "virtual_network_gateway_id": "required"
    },
    "azurerm_virtual_network_peering": {
        "allow_forwarded_traffic": "optional",
        "allow_gateway_transit": "optional",
        "allow_virtual_network_access": "optional",
        "id": "optional",
        "name": "required",
        "remote_virtual_network_id": "required",
        "resource_group_name": "required",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "use_remote_gateways": "optional",
        "virtual_network_name": "required"
    },
    "azurerm_virtual_wan": {
        "allow_branch_to_branch_traffic": "optional",
        "disable_vpn_encryption": "optional",
        "id": "optional",
        "location": "required",
        "name": "required",
        "office365_local_breakout_category": "optional",
        "resource_group_name": "required",
        "tags": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "type": "optional"
    },
    "azurerm_windows_virtual_machine": {
        "additional_capabilities": "optional",
        "additional_capabilities.ultra_ssd_enabled": "optional",
        "additional_unattend_content": "optional",
        "additional_unattend_content.content": "required",
        "additional_unattend_content.setting": "required",
        "admin_password": "required",
        "admin_username": "required",
        "allow_extension_operations": "optional",
        "availability_set_id": "optional",
        "boot_diagnostics": "optional",
        "boot_diagnostics.storage_account_uri": "optional",
        "capacity_reservation_group_id": "optional",
        "computer_name": "optional",
        "custom_data": "optional",
        "dedicated_host_group_id": "optional",
        "dedicated_host_id": "optional",
        "edge_zone": "optional",
        "enable_automatic_updates": "optional",
        "encryption_at_host_enabled": "optional",
        "eviction_policy": "optional",
        "extensions_time_budget": "optional",
        "gallery_application": "optional",
        "gallery_application.configuration_blob_uri": "optional",
        "gallery_application.order": "optional",
        "gallery_application.tag": "optional",
        "gallery_application.version_id": "required",
        "hotpatching_enabled": "optional",
        "id": "optional",
        "identity": "optional",
        "identity.identity_ids": "optional",
        "identity.type": "required",
        "license_type": "optional",
        "location": "required",
        "max_bid_price": "optional",
        "name": "required",
        "network_interface_ids": "required",
        "os_disk": "required",
        "os_disk.caching": "required",
        "os_disk.diff_disk_settings": "optional",
        "os_disk.diff_disk_settings.option": "required",
        "os_disk.diff_disk_settings.placement": "optional",
        "os_disk.disk_encryption_set_id": "optional",
        "os_disk.disk_size_gb": "optional",
        "os_disk.name": "optional",
        "os_disk.secure_vm_disk_encryption_set_id": "optional",
        "os_disk.security_encryption_type": "optional",
        "os_disk.storage_account_type": "required",
        "os_disk.write_accelerator_enabled": "optional",
        "patch_assessment_mode": "optional",
        "patch_mode": "optional",
        "plan": "optional",
        "plan.name": "required",
        "plan.product": "required",
        "plan.publisher": "required",
        "platform_fault_domain": "optional",
        "priority": "optional",
        "provision_vm_agent": "optional",
        "proximity_placement_group_id": "optional",
        "resource_group_name": "required",
        "secret": "optional",
        "secret.certificate": "required",
        "secret.certificate.store": "required",
        "secret.certificate.url": "required",
        "secret.key_vault_id": "required",
        "secure_boot_enabled": "optional",
        "size": "required",
        "source_image_id": "optional",
        "source_image_reference": "optional",
        "source_image_reference.offer": "required",
        "source_image_reference.publisher": "required",
        "source_image_reference.sku": "required",
        "source_image_reference.version": "required",
        "tags": "optional",
        "termination_notification": "optional",
        "termination_notification.enabled": "required",
        "termination_notification.timeout": "optional",
        "timeouts": "optional",
        "timeouts.create": "optional",
        "timeouts.delete": "optional",
        "timeouts.read": "optional",
        "timeouts.update": "optional",
        "timezone": "optional",
        "user_data": "optional",
        "virtual_machine_scale_set_id": "optional",
        "vtpm_enabled": "optional",
        "winrm_listener": "optional",
        "winrm_listener.certificate_url": "optional",
        "winrm_listener.protocol": "required",
        "zone": "optional"
    }
}
resourceView := {
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
resourceDefaultView := {
    "azurerm_application_gateway": [
        "backend_http_settings.pick_host_name_from_backend_address",
        "frontend_ip_configuration.private_ip_address_allocation",
        "http_listener.frontend_ip_configuration_name",
        "http_listener.frontend_port_name",
        "request_routing_rule.backend_address_pool_name",
        "request_routing_rule.backend_http_settings_name",
        "request_routing_rule.http_listener_name",
        "backend_http_settings.request_timeout",
        "backend_http_settings.host_name",
        "backend_http_settings.probe_name",
        "http_listener.host_name",
        "name",
        "probe.minimum_servers",
        "probe.pick_host_name_from_backend_http_settings",
        "waf_configuration.request_body_check",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_name",
        "http_listener.ssl_certificate_name",
        "waf_configuration.file_upload_limit_mb",
        "waf_configuration.max_request_body_size_kb",
        "redirect_configuration.target_listener_name",
        "request_routing_rule.redirect_configuration_name",
        "frontend_ip_configuration.private_link_configuration_name",
        "request_routing_rule.url_path_map_name",
        "url_path_map.default_backend_address_pool_name",
        "url_path_map.default_backend_http_settings_name",
        "url_path_map.default_rewrite_rule_set_name",
        "url_path_map.path_rule.backend_address_pool_name",
        "url_path_map.path_rule.backend_http_settings_name",
        "waf_configuration.enabled",
        "waf_configuration.firewall_mode",
        "waf_configuration.rule_set_type",
        "waf_configuration.rule_set_version",
        "backend_address_pool.name",
        "url_path_map.path_rule.name",
        "redirect_configuration.include_path",
        "redirect_configuration.include_query_string",
        "url_path_map.default_redirect_configuration_name",
        "frontend_port.name",
        "frontend_port.port",
        "http_listener.name",
        "http_listener.protocol",
        "request_routing_rule.name",
        "request_routing_rule.rule_type",
        "waf_configuration.disabled_rule_group.rule_group_name",
        "request_routing_rule.rewrite_rule_set_name",
        "rewrite_rule_set.rewrite_rule.condition.ignore_case",
        "rewrite_rule_set.rewrite_rule.url.reroute",
        "backend_http_settings.affinity_cookie_name",
        "frontend_ip_configuration.public_ip_address_id",
        "gateway_ip_configuration.subnet_id",
        "resource_group_name",
        "ssl_policy.policy_name"
    ],
    "azurerm_bastion_host": [
        "file_copy_enabled",
        "ip_connect_enabled",
        "scale_units",
        "shareable_link_enabled",
        "tunneling_enabled",
        "copy_paste_enabled",
        "name",
        "sku",
        "kerberos_enabled"
    ],
    "azurerm_express_route_circuit": [
        "allow_classic_operations",
        "name",
        "service_provider_name"
    ],
    "azurerm_firewall": [
        "sku_name",
        "name"
    ],
    "azurerm_firewall_network_rule_collection": [
        "name"
    ],
    "azurerm_lb": [
        "sku_tier",
        "name",
        "sku",
        "frontend_ip_configuration.name",
        "frontend_ip_configuration.private_ip_address",
        "frontend_ip_configuration.private_ip_address_allocation",
        "resource_group_name"
    ],
    "azurerm_lb_backend_address_pool": [
        "name"
    ],
    "azurerm_lb_nat_pool": [
        "frontend_ip_configuration_name",
        "idle_timeout_in_minutes",
        "name"
    ],
    "azurerm_lb_nat_rule": [
        "frontend_ip_configuration_name",
        "name"
    ],
    "azurerm_lb_outbound_rule": [
        "allocated_outbound_ports",
        "enable_tcp_reset",
        "idle_timeout_in_minutes",
        "name"
    ],
    "azurerm_lb_probe": [
        "name",
        "probe_threshold",
        "interval_in_seconds",
        "number_of_probes",
        "protocol"
    ],
    "azurerm_lb_rule": [
        "name",
        "disable_outbound_snat",
        "enable_floating_ip",
        "frontend_ip_configuration_name"
    ],
    "azurerm_linux_virtual_machine": [
        "allow_extension_operations",
        "bypass_platform_safety_checks_on_user_schedule_enabled",
        "extensions_time_budget",
        "max_bid_price",
        "os_disk.write_accelerator_enabled",
        "patch_assessment_mode",
        "patch_mode",
        "platform_fault_domain",
        "priority",
        "provision_vm_agent",
        "disable_password_authentication",
        "computer_name",
        "name",
        "os_disk.diff_disk_settings.placement",
        "resource_group_name",
        "source_image_id",
        "source_image_reference.offer",
        "source_image_reference.publisher",
        "source_image_reference.sku",
        "source_image_reference.version",
        "vm_agent_platform_updates_enabled"
    ],
    "azurerm_local_network_gateway": [
        "name"
    ],
    "azurerm_managed_disk": [
        "name",
        "optimized_frequent_attach_enabled",
        "performance_plus_enabled",
        "public_network_access_enabled",
        "resource_group_name"
    ],
    "azurerm_mysql_server": [
        "auto_grow_enabled",
        "create_mode",
        "name",
        "public_network_access_enabled",
        "sku_name",
        "ssl_minimal_tls_version_enforced",
        "resource_group_name"
    ],
    "azurerm_mysql_virtual_network_rule": [
        "name"
    ],
    "azurerm_nat_gateway": [
        "sku_name",
        "name",
        "idle_timeout_in_minutes"
    ],
    "azurerm_nat_gateway_public_ip_association": [],
    "azurerm_network_interface": [
        "enable_accelerated_networking",
        "enable_ip_forwarding",
        "ip_configuration.private_ip_address_version",
        "name",
        "ip_configuration.name",
        "ip_configuration.primary",
        "ip_configuration.private_ip_address_allocation",
        "resource_group_name",
        "ip_configuration.subnet_id",
        "ip_configuration.public_ip_address_id"
    ],
    "azurerm_network_interface_nat_rule_association": [
        "ip_configuration_name"
    ],
    "azurerm_network_interface_security_group_association": [],
    "azurerm_network_security_group": [
        "security_rule.access",
        "security_rule.destination_address_prefix",
        "security_rule.destination_port_range",
        "security_rule.direction",
        "security_rule.name",
        "security_rule.priority",
        "security_rule.protocol",
        "security_rule.source_address_prefix",
        "security_rule.source_port_range",
        "security_rule.destination_port_ranges",
        "security_rule.source_address_prefixes",
        "name",
        "security_rule.description",
        "security_rule.destination_address_prefixes",
        "resource_group_name"
    ],
    "azurerm_network_security_rule": [
        "name"
    ],
    "azurerm_private_dns_resolver": [
        "name"
    ],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [
        "name"
    ],
    "azurerm_private_dns_resolver_inbound_endpoint": [
        "name"
    ],
    "azurerm_private_dns_resolver_outbound_endpoint": [
        "name"
    ],
    "azurerm_private_dns_resolver_virtual_network_link": [
        "name"
    ],
    "azurerm_private_endpoint": [
        "name",
        "ip_configuration.subresource_name",
        "private_service_connection.private_connection_resource_id",
        "resource_group_name",
        "subnet_id"
    ],
    "azurerm_private_link_service": [
        "nat_ip_configuration.private_ip_address_version",
        "name"
    ],
    "azurerm_public_ip": [
        "ddos_protection_mode",
        "idle_timeout_in_minutes",
        "ip_version",
        "name",
        "sku",
        "sku_tier",
        "domain_name_label",
        "resource_group_name"
    ],
    "azurerm_resource_group": [
        "name"
    ],
    "azurerm_route": [
        "name"
    ],
    "azurerm_route_server": [
        "name"
    ],
    "azurerm_route_table": [
        "disable_bgp_route_propagation",
        "route.address_prefix",
        "route.name",
        "route.next_hop_type",
        "name",
        "route.next_hop_in_ip_address"
    ],
    "azurerm_storage_account": [
        "account_kind",
        "allow_nested_items_to_be_public",
        "cross_tenant_replication_enabled",
        "default_to_oauth_authentication",
        "enable_https_traffic_only",
        "infrastructure_encryption_enabled",
        "is_hns_enabled",
        "min_tls_version",
        "nfsv3_enabled",
        "public_network_access_enabled",
        "queue_encryption_key_type",
        "sftp_enabled",
        "shared_access_key_enabled",
        "table_encryption_key_type",
        "local_user_enabled",
        "name",
        "blob_properties.change_feed_enabled",
        "blob_properties.last_access_time_enabled",
        "blob_properties.versioning_enabled",
        "resource_group_name",
        "custom_domain.use_subdomain",
        "dns_endpoint_type"
    ],
    "azurerm_storage_account_network_rules": [],
    "azurerm_subnet": [
        "name",
        "resource_group_name",
        "virtual_network_name",
        "enforce_private_link_endpoint_network_policies",
        "enforce_private_link_service_network_policies",
        "default_outbound_access_enabled"
    ],
    "azurerm_subnet_nat_gateway_association": [],
    "azurerm_subnet_network_security_group_association": [],
    "azurerm_subnet_route_table_association": [],
    "azurerm_virtual_hub": [
        "hub_routing_preference",
        "name",
        "virtual_router_auto_scale_min_capacity"
    ],
    "azurerm_virtual_hub_connection": [
        "internet_security_enabled",
        "name",
        "routing.static_vnet_local_route_override_criteria"
    ],
    "azurerm_virtual_machine": [
        "os_profile.computer_name",
        "storage_os_disk.write_accelerator_enabled",
        "delete_data_disks_on_termination",
        "delete_os_disk_on_termination",
        "name",
        "os_profile_windows_config.enable_automatic_upgrades",
        "os_profile_windows_config.provision_vm_agent",
        "resource_group_name",
        "os_profile_windows_config.additional_unattend_config.setting_name"
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        "create_option",
        "write_accelerator_enabled"
    ],
    "azurerm_virtual_network": [
        "name",
        "resource_group_name",
        "subnet.address_prefix",
        "subnet.name"
    ],
    "azurerm_virtual_network_gateway": [
        "bgp_route_translation_for_nat_enabled",
        "ip_configuration.name",
        "ip_sec_replay_protection_enabled",
        "name",
        "remote_vnet_traffic_enabled",
        "virtual_wan_traffic_enabled",
        "bgp_settings.peering_addresses.ip_configuration_name",
        "vpn_type",
        "ip_configuration.private_ip_address_allocation",
        "ip_configuration.subnet_id"
    ],
    "azurerm_virtual_network_gateway_connection": [
        "connection_mode",
        "name"
    ],
    "azurerm_virtual_network_peering": [
        "use_remote_gateways",
        "allow_forwarded_traffic",
        "allow_gateway_transit",
        "allow_virtual_network_access",
        "name",
        "peer_complete_virtual_networks_enabled"
    ],
    "azurerm_virtual_wan": [
        "allow_branch_to_branch_traffic",
        "disable_vpn_encryption",
        "name",
        "office365_local_breakout_category",
        "type"
    ],
    "azurerm_windows_virtual_machine": [
        "allow_extension_operations",
        "bypass_platform_safety_checks_on_user_schedule_enabled",
        "enable_automatic_updates",
        "extensions_time_budget",
        "hotpatching_enabled",
        "max_bid_price",
        "os_disk.write_accelerator_enabled",
        "patch_assessment_mode",
        "patch_mode",
        "platform_fault_domain",
        "priority",
        "provision_vm_agent",
        "computer_name",
        "name",
        "os_disk.diff_disk_settings.placement",
        "resource_group_name",
        "vm_agent_platform_updates_enabled"
    ]
}
resourceCompleteView := {
    "azurerm_application_gateway": {
        "authentication_certificate": "block",
        "authentication_certificate.data": "string",
        "authentication_certificate.id": "string",
        "authentication_certificate.name": "string",
        "autoscale_configuration": "block",
        "autoscale_configuration.max_capacity": "number",
        "autoscale_configuration.min_capacity": "number",
        "backend_address_pool": "block",
        "backend_address_pool.fqdns": "list",
        "backend_address_pool.id": "string",
        "backend_address_pool.ip_addresses": "list",
        "backend_address_pool.name": "string",
        "backend_http_settings": "block",
        "backend_http_settings.affinity_cookie_name": "string",
        "backend_http_settings.authentication_certificate": "block",
        "backend_http_settings.authentication_certificate.id": "string",
        "backend_http_settings.authentication_certificate.name": "string",
        "backend_http_settings.connection_draining": "block",
        "backend_http_settings.connection_draining.drain_timeout_sec": "number",
        "backend_http_settings.connection_draining.enabled": "bool",
        "backend_http_settings.cookie_based_affinity": "string",
        "backend_http_settings.host_name": "string",
        "backend_http_settings.id": "string",
        "backend_http_settings.name": "string",
        "backend_http_settings.path": "string",
        "backend_http_settings.pick_host_name_from_backend_address": "bool",
        "backend_http_settings.port": "number",
        "backend_http_settings.probe_id": "string",
        "backend_http_settings.probe_name": "string",
        "backend_http_settings.protocol": "string",
        "backend_http_settings.request_timeout": "number",
        "backend_http_settings.trusted_root_certificate_names": "list",
        "custom_error_configuration": "block",
        "custom_error_configuration.custom_error_page_url": "string",
        "custom_error_configuration.id": "string",
        "custom_error_configuration.status_code": "string",
        "enable_http2": "bool",
        "fips_enabled": "bool",
        "firewall_policy_id": "string",
        "force_firewall_policy_association": "bool",
        "frontend_ip_configuration": "block",
        "frontend_ip_configuration.id": "string",
        "frontend_ip_configuration.name": "string",
        "frontend_ip_configuration.private_ip_address": "string",
        "frontend_ip_configuration.private_ip_address_allocation": "string",
        "frontend_ip_configuration.private_link_configuration_id": "string",
        "frontend_ip_configuration.private_link_configuration_name": "string",
        "frontend_ip_configuration.public_ip_address_id": "string",
        "frontend_ip_configuration.subnet_id": "string",
        "frontend_port": "block",
        "frontend_port.id": "string",
        "frontend_port.name": "string",
        "frontend_port.port": "number",
        "gateway_ip_configuration": "block",
        "gateway_ip_configuration.id": "string",
        "gateway_ip_configuration.name": "string",
        "gateway_ip_configuration.subnet_id": "string",
        "global": "block",
        "global.request_buffering_enabled": "bool",
        "global.response_buffering_enabled": "bool",
        "http_listener": "block",
        "http_listener.custom_error_configuration": "block",
        "http_listener.custom_error_configuration.custom_error_page_url": "string",
        "http_listener.custom_error_configuration.id": "string",
        "http_listener.custom_error_configuration.status_code": "string",
        "http_listener.firewall_policy_id": "string",
        "http_listener.frontend_ip_configuration_id": "string",
        "http_listener.frontend_ip_configuration_name": "string",
        "http_listener.frontend_port_id": "string",
        "http_listener.frontend_port_name": "string",
        "http_listener.host_name": "string",
        "http_listener.host_names": "list",
        "http_listener.id": "string",
        "http_listener.name": "string",
        "http_listener.protocol": "string",
        "http_listener.require_sni": "bool",
        "http_listener.ssl_certificate_id": "string",
        "http_listener.ssl_certificate_name": "string",
        "http_listener.ssl_profile_id": "string",
        "http_listener.ssl_profile_name": "string",
        "id": "string",
        "identity": "block",
        "identity.identity_ids": "list",
        "identity.type": "string",
        "location": "string",
        "name": "string",
        "private_endpoint_connection": "list",
        "private_link_configuration": "block",
        "private_link_configuration.id": "string",
        "private_link_configuration.ip_configuration": "block",
        "private_link_configuration.ip_configuration.name": "string",
        "private_link_configuration.ip_configuration.primary": "bool",
        "private_link_configuration.ip_configuration.private_ip_address": "string",
        "private_link_configuration.ip_configuration.private_ip_address_allocation": "string",
        "private_link_configuration.ip_configuration.subnet_id": "string",
        "private_link_configuration.name": "string",
        "probe": "block",
        "probe.host": "string",
        "probe.id": "string",
        "probe.interval": "number",
        "probe.match": "block",
        "probe.match.body": "string",
        "probe.match.status_code": "list",
        "probe.minimum_servers": "number",
        "probe.name": "string",
        "probe.path": "string",
        "probe.pick_host_name_from_backend_http_settings": "bool",
        "probe.port": "number",
        "probe.protocol": "string",
        "probe.timeout": "number",
        "probe.unhealthy_threshold": "number",
        "redirect_configuration": "block",
        "redirect_configuration.id": "string",
        "redirect_configuration.include_path": "bool",
        "redirect_configuration.include_query_string": "bool",
        "redirect_configuration.name": "string",
        "redirect_configuration.redirect_type": "string",
        "redirect_configuration.target_listener_id": "string",
        "redirect_configuration.target_listener_name": "string",
        "redirect_configuration.target_url": "string",
        "request_routing_rule": "block",
        "request_routing_rule.backend_address_pool_id": "string",
        "request_routing_rule.backend_address_pool_name": "string",
        "request_routing_rule.backend_http_settings_id": "string",
        "request_routing_rule.backend_http_settings_name": "string",
        "request_routing_rule.http_listener_id": "string",
        "request_routing_rule.http_listener_name": "string",
        "request_routing_rule.id": "string",
        "request_routing_rule.name": "string",
        "request_routing_rule.priority": "number",
        "request_routing_rule.redirect_configuration_id": "string",
        "request_routing_rule.redirect_configuration_name": "string",
        "request_routing_rule.rewrite_rule_set_id": "string",
        "request_routing_rule.rewrite_rule_set_name": "string",
        "request_routing_rule.rule_type": "string",
        "request_routing_rule.url_path_map_id": "string",
        "request_routing_rule.url_path_map_name": "string",
        "resource_group_name": "string",
        "rewrite_rule_set": "block",
        "rewrite_rule_set.id": "string",
        "rewrite_rule_set.name": "string",
        "rewrite_rule_set.rewrite_rule": "block",
        "rewrite_rule_set.rewrite_rule.condition": "block",
        "rewrite_rule_set.rewrite_rule.condition.ignore_case": "bool",
        "rewrite_rule_set.rewrite_rule.condition.negate": "bool",
        "rewrite_rule_set.rewrite_rule.condition.pattern": "string",
        "rewrite_rule_set.rewrite_rule.condition.variable": "string",
        "rewrite_rule_set.rewrite_rule.name": "string",
        "rewrite_rule_set.rewrite_rule.request_header_configuration": "block",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_name": "string",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_value": "string",
        "rewrite_rule_set.rewrite_rule.response_header_configuration": "block",
        "rewrite_rule_set.rewrite_rule.response_header_configuration.header_name": "string",
        "rewrite_rule_set.rewrite_rule.response_header_configuration.header_value": "string",
        "rewrite_rule_set.rewrite_rule.rule_sequence": "number",
        "rewrite_rule_set.rewrite_rule.url": "block",
        "rewrite_rule_set.rewrite_rule.url.components": "string",
        "rewrite_rule_set.rewrite_rule.url.path": "string",
        "rewrite_rule_set.rewrite_rule.url.query_string": "string",
        "rewrite_rule_set.rewrite_rule.url.reroute": "bool",
        "sku": "block",
        "sku.capacity": "number",
        "sku.name": "string",
        "sku.tier": "string",
        "ssl_certificate": "block",
        "ssl_certificate.data": "string",
        "ssl_certificate.id": "string",
        "ssl_certificate.key_vault_secret_id": "string",
        "ssl_certificate.name": "string",
        "ssl_certificate.password": "string",
        "ssl_certificate.public_cert_data": "string",
        "ssl_policy": "block",
        "ssl_policy.cipher_suites": "list",
        "ssl_policy.disabled_protocols": "list",
        "ssl_policy.min_protocol_version": "string",
        "ssl_policy.policy_name": "string",
        "ssl_policy.policy_type": "string",
        "ssl_profile": "block",
        "ssl_profile.id": "string",
        "ssl_profile.name": "string",
        "ssl_profile.ssl_policy": "block",
        "ssl_profile.ssl_policy.cipher_suites": "list",
        "ssl_profile.ssl_policy.disabled_protocols": "list",
        "ssl_profile.ssl_policy.min_protocol_version": "string",
        "ssl_profile.ssl_policy.policy_name": "string",
        "ssl_profile.ssl_policy.policy_type": "string",
        "ssl_profile.trusted_client_certificate_names": "list",
        "ssl_profile.verify_client_cert_issuer_dn": "bool",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "trusted_client_certificate": "block",
        "trusted_client_certificate.data": "string",
        "trusted_client_certificate.id": "string",
        "trusted_client_certificate.name": "string",
        "trusted_root_certificate": "block",
        "trusted_root_certificate.data": "string",
        "trusted_root_certificate.id": "string",
        "trusted_root_certificate.key_vault_secret_id": "string",
        "trusted_root_certificate.name": "string",
        "url_path_map": "block",
        "url_path_map.default_backend_address_pool_id": "string",
        "url_path_map.default_backend_address_pool_name": "string",
        "url_path_map.default_backend_http_settings_id": "string",
        "url_path_map.default_backend_http_settings_name": "string",
        "url_path_map.default_redirect_configuration_id": "string",
        "url_path_map.default_redirect_configuration_name": "string",
        "url_path_map.default_rewrite_rule_set_id": "string",
        "url_path_map.default_rewrite_rule_set_name": "string",
        "url_path_map.id": "string",
        "url_path_map.name": "string",
        "url_path_map.path_rule": "block",
        "url_path_map.path_rule.backend_address_pool_id": "string",
        "url_path_map.path_rule.backend_address_pool_name": "string",
        "url_path_map.path_rule.backend_http_settings_id": "string",
        "url_path_map.path_rule.backend_http_settings_name": "string",
        "url_path_map.path_rule.firewall_policy_id": "string",
        "url_path_map.path_rule.id": "string",
        "url_path_map.path_rule.name": "string",
        "url_path_map.path_rule.paths": "list",
        "url_path_map.path_rule.redirect_configuration_id": "string",
        "url_path_map.path_rule.redirect_configuration_name": "string",
        "url_path_map.path_rule.rewrite_rule_set_id": "string",
        "url_path_map.path_rule.rewrite_rule_set_name": "string",
        "waf_configuration": "block",
        "waf_configuration.disabled_rule_group": "block",
        "waf_configuration.disabled_rule_group.rule_group_name": "string",
        "waf_configuration.disabled_rule_group.rules": "list",
        "waf_configuration.enabled": "bool",
        "waf_configuration.exclusion": "block",
        "waf_configuration.exclusion.match_variable": "string",
        "waf_configuration.exclusion.selector": "string",
        "waf_configuration.exclusion.selector_match_operator": "string",
        "waf_configuration.file_upload_limit_mb": "number",
        "waf_configuration.firewall_mode": "string",
        "waf_configuration.max_request_body_size_kb": "number",
        "waf_configuration.request_body_check": "bool",
        "waf_configuration.rule_set_type": "string",
        "waf_configuration.rule_set_version": "string",
        "zones": "list"
    },
    "azurerm_bastion_host": {
        "copy_paste_enabled": "bool",
        "dns_name": "string",
        "file_copy_enabled": "bool",
        "id": "string",
        "ip_configuration": "block",
        "ip_configuration.name": "string",
        "ip_configuration.public_ip_address_id": "string",
        "ip_configuration.subnet_id": "string",
        "ip_connect_enabled": "bool",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "scale_units": "number",
        "shareable_link_enabled": "bool",
        "sku": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "tunneling_enabled": "bool"
    },
    "azurerm_express_route_circuit": {
        "allow_classic_operations": "bool",
        "bandwidth_in_gbps": "number",
        "bandwidth_in_mbps": "number",
        "express_route_port_id": "string",
        "id": "string",
        "location": "string",
        "name": "string",
        "peering_location": "string",
        "resource_group_name": "string",
        "service_key": "string",
        "service_provider_name": "string",
        "service_provider_provisioning_state": "string",
        "sku": "block",
        "sku.family": "string",
        "sku.tier": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_firewall": {
        "dns_servers": "list",
        "firewall_policy_id": "string",
        "id": "string",
        "ip_configuration": "block",
        "ip_configuration.name": "string",
        "ip_configuration.private_ip_address": "string",
        "ip_configuration.public_ip_address_id": "string",
        "ip_configuration.subnet_id": "string",
        "location": "string",
        "management_ip_configuration": "block",
        "management_ip_configuration.name": "string",
        "management_ip_configuration.private_ip_address": "string",
        "management_ip_configuration.public_ip_address_id": "string",
        "management_ip_configuration.subnet_id": "string",
        "name": "string",
        "private_ip_ranges": "list",
        "resource_group_name": "string",
        "sku_name": "string",
        "sku_tier": "string",
        "tags": "list",
        "threat_intel_mode": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_hub": "block",
        "virtual_hub.private_ip_address": "string",
        "virtual_hub.public_ip_addresses": "list",
        "virtual_hub.public_ip_count": "number",
        "virtual_hub.virtual_hub_id": "string",
        "zones": "list"
    },
    "azurerm_firewall_network_rule_collection": {
        "action": "string",
        "azure_firewall_name": "string",
        "id": "string",
        "name": "string",
        "priority": "number",
        "resource_group_name": "string",
        "rule": "block",
        "rule.description": "string",
        "rule.destination_addresses": "list",
        "rule.destination_fqdns": "list",
        "rule.destination_ip_groups": "list",
        "rule.destination_ports": "list",
        "rule.name": "string",
        "rule.protocols": "list",
        "rule.source_addresses": "list",
        "rule.source_ip_groups": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb": {
        "edge_zone": "string",
        "frontend_ip_configuration": "block",
        "frontend_ip_configuration.gateway_load_balancer_frontend_ip_configuration_id": "string",
        "frontend_ip_configuration.id": "string",
        "frontend_ip_configuration.inbound_nat_rules": "list",
        "frontend_ip_configuration.load_balancer_rules": "list",
        "frontend_ip_configuration.name": "string",
        "frontend_ip_configuration.outbound_rules": "list",
        "frontend_ip_configuration.private_ip_address": "string",
        "frontend_ip_configuration.private_ip_address_allocation": "string",
        "frontend_ip_configuration.private_ip_address_version": "string",
        "frontend_ip_configuration.public_ip_address_id": "string",
        "frontend_ip_configuration.public_ip_prefix_id": "string",
        "frontend_ip_configuration.subnet_id": "string",
        "frontend_ip_configuration.zones": "list",
        "id": "string",
        "location": "string",
        "name": "string",
        "private_ip_address": "string",
        "private_ip_addresses": "list",
        "resource_group_name": "string",
        "sku": "string",
        "sku_tier": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb_backend_address_pool": {
        "backend_ip_configurations": "list",
        "id": "string",
        "inbound_nat_rules": "list",
        "load_balancing_rules": "list",
        "loadbalancer_id": "string",
        "name": "string",
        "outbound_rules": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "tunnel_interface": "block",
        "tunnel_interface.identifier": "number",
        "tunnel_interface.port": "number",
        "tunnel_interface.protocol": "string",
        "tunnel_interface.type": "string"
    },
    "azurerm_lb_nat_pool": {
        "backend_port": "number",
        "floating_ip_enabled": "bool",
        "frontend_ip_configuration_id": "string",
        "frontend_ip_configuration_name": "string",
        "frontend_port_end": "number",
        "frontend_port_start": "number",
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "loadbalancer_id": "string",
        "name": "string",
        "protocol": "string",
        "resource_group_name": "string",
        "tcp_reset_enabled": "bool",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb_nat_rule": {
        "backend_address_pool_id": "string",
        "backend_ip_configuration_id": "string",
        "backend_port": "number",
        "enable_floating_ip": "bool",
        "enable_tcp_reset": "bool",
        "frontend_ip_configuration_id": "string",
        "frontend_ip_configuration_name": "string",
        "frontend_port": "number",
        "frontend_port_end": "number",
        "frontend_port_start": "number",
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "loadbalancer_id": "string",
        "name": "string",
        "protocol": "string",
        "resource_group_name": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb_outbound_rule": {
        "allocated_outbound_ports": "number",
        "backend_address_pool_id": "string",
        "enable_tcp_reset": "bool",
        "frontend_ip_configuration": "block",
        "frontend_ip_configuration.id": "string",
        "frontend_ip_configuration.name": "string",
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "loadbalancer_id": "string",
        "name": "string",
        "protocol": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb_probe": {
        "id": "string",
        "interval_in_seconds": "number",
        "load_balancer_rules": "list",
        "loadbalancer_id": "string",
        "name": "string",
        "number_of_probes": "number",
        "port": "number",
        "probe_threshold": "number",
        "protocol": "string",
        "request_path": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_lb_rule": {
        "backend_address_pool_ids": "list",
        "backend_port": "number",
        "disable_outbound_snat": "bool",
        "enable_floating_ip": "bool",
        "enable_tcp_reset": "bool",
        "frontend_ip_configuration_id": "string",
        "frontend_ip_configuration_name": "string",
        "frontend_port": "number",
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "load_distribution": "string",
        "loadbalancer_id": "string",
        "name": "string",
        "probe_id": "string",
        "protocol": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_linux_virtual_machine": {
        "additional_capabilities": "block",
        "additional_capabilities.ultra_ssd_enabled": "bool",
        "admin_password": "string",
        "admin_ssh_key": "block",
        "admin_ssh_key.public_key": "string",
        "admin_ssh_key.username": "string",
        "admin_username": "string",
        "allow_extension_operations": "bool",
        "availability_set_id": "string",
        "boot_diagnostics": "block",
        "boot_diagnostics.storage_account_uri": "string",
        "capacity_reservation_group_id": "string",
        "computer_name": "string",
        "custom_data": "string",
        "dedicated_host_group_id": "string",
        "dedicated_host_id": "string",
        "disable_password_authentication": "bool",
        "edge_zone": "string",
        "encryption_at_host_enabled": "bool",
        "eviction_policy": "string",
        "extensions_time_budget": "string",
        "gallery_application": "block",
        "gallery_application.configuration_blob_uri": "string",
        "gallery_application.order": "number",
        "gallery_application.tag": "string",
        "gallery_application.version_id": "string",
        "id": "string",
        "identity": "block",
        "identity.identity_ids": "list",
        "identity.principal_id": "string",
        "identity.tenant_id": "string",
        "identity.type": "string",
        "license_type": "string",
        "location": "string",
        "max_bid_price": "number",
        "name": "string",
        "network_interface_ids": "list",
        "os_disk": "block",
        "os_disk.caching": "string",
        "os_disk.diff_disk_settings": "block",
        "os_disk.diff_disk_settings.option": "string",
        "os_disk.diff_disk_settings.placement": "string",
        "os_disk.disk_encryption_set_id": "string",
        "os_disk.disk_size_gb": "number",
        "os_disk.name": "string",
        "os_disk.secure_vm_disk_encryption_set_id": "string",
        "os_disk.security_encryption_type": "string",
        "os_disk.storage_account_type": "string",
        "os_disk.write_accelerator_enabled": "bool",
        "patch_assessment_mode": "string",
        "patch_mode": "string",
        "plan": "block",
        "plan.name": "string",
        "plan.product": "string",
        "plan.publisher": "string",
        "platform_fault_domain": "number",
        "priority": "string",
        "private_ip_address": "string",
        "private_ip_addresses": "list",
        "provision_vm_agent": "bool",
        "proximity_placement_group_id": "string",
        "public_ip_address": "string",
        "public_ip_addresses": "list",
        "resource_group_name": "string",
        "secret": "block",
        "secret.certificate": "block",
        "secret.certificate.url": "string",
        "secret.key_vault_id": "string",
        "secure_boot_enabled": "bool",
        "size": "string",
        "source_image_id": "string",
        "source_image_reference": "block",
        "source_image_reference.offer": "string",
        "source_image_reference.publisher": "string",
        "source_image_reference.sku": "string",
        "source_image_reference.version": "string",
        "tags": "list",
        "termination_notification": "block",
        "termination_notification.enabled": "bool",
        "termination_notification.timeout": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "user_data": "string",
        "virtual_machine_id": "string",
        "virtual_machine_scale_set_id": "string",
        "vtpm_enabled": "bool",
        "zone": "string"
    },
    "azurerm_local_network_gateway": {
        "address_space": "list",
        "bgp_settings": "block",
        "bgp_settings.asn": "number",
        "bgp_settings.bgp_peering_address": "string",
        "bgp_settings.peer_weight": "number",
        "gateway_address": "string",
        "gateway_fqdn": "string",
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_managed_disk": {
        "create_option": "string",
        "disk_access_id": "string",
        "disk_encryption_set_id": "string",
        "disk_iops_read_only": "number",
        "disk_iops_read_write": "number",
        "disk_mbps_read_only": "number",
        "disk_mbps_read_write": "number",
        "disk_size_gb": "number",
        "edge_zone": "string",
        "encryption_settings": "block",
        "encryption_settings.disk_encryption_key": "block",
        "encryption_settings.disk_encryption_key.secret_url": "string",
        "encryption_settings.disk_encryption_key.source_vault_id": "string",
        "encryption_settings.enabled": "bool",
        "encryption_settings.key_encryption_key": "block",
        "encryption_settings.key_encryption_key.key_url": "string",
        "encryption_settings.key_encryption_key.source_vault_id": "string",
        "gallery_image_reference_id": "string",
        "hyper_v_generation": "string",
        "id": "string",
        "image_reference_id": "string",
        "location": "string",
        "logical_sector_size": "number",
        "max_shares": "number",
        "name": "string",
        "network_access_policy": "string",
        "on_demand_bursting_enabled": "bool",
        "os_type": "string",
        "public_network_access_enabled": "bool",
        "resource_group_name": "string",
        "secure_vm_disk_encryption_set_id": "string",
        "security_type": "string",
        "source_resource_id": "string",
        "source_uri": "string",
        "storage_account_id": "string",
        "storage_account_type": "string",
        "tags": "list",
        "tier": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "trusted_launch_enabled": "bool",
        "upload_size_bytes": "number",
        "zone": "string"
    },
    "azurerm_nat_gateway": {
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "resource_guid": "string",
        "sku_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "zones": "list"
    },
    "azurerm_nat_gateway_public_ip_association": {
        "id": "string",
        "nat_gateway_id": "string",
        "public_ip_address_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string"
    },
    "azurerm_network_interface": {
        "applied_dns_servers": "list",
        "dns_servers": "list",
        "edge_zone": "string",
        "enable_accelerated_networking": "bool",
        "enable_ip_forwarding": "bool",
        "id": "string",
        "internal_dns_name_label": "string",
        "internal_domain_name_suffix": "string",
        "ip_configuration": "block",
        "ip_configuration.gateway_load_balancer_frontend_ip_configuration_id": "string",
        "ip_configuration.name": "string",
        "ip_configuration.primary": "bool",
        "ip_configuration.private_ip_address": "string",
        "ip_configuration.private_ip_address_allocation": "string",
        "ip_configuration.private_ip_address_version": "string",
        "ip_configuration.public_ip_address_id": "string",
        "ip_configuration.subnet_id": "string",
        "location": "string",
        "mac_address": "string",
        "name": "string",
        "private_ip_address": "string",
        "private_ip_addresses": "list",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_machine_id": "string"
    },
    "azurerm_network_interface_nat_rule_association": {
        "id": "string",
        "ip_configuration_name": "string",
        "nat_rule_id": "string",
        "network_interface_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_network_interface_security_group_association": {
        "id": "string",
        "network_interface_id": "string",
        "network_security_group_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_network_security_group": {
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "security_rule": "list",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_network_security_rule": {
        "access": "string",
        "description": "string",
        "destination_address_prefix": "string",
        "destination_address_prefixes": "list",
        "destination_application_security_group_ids": "list",
        "destination_port_range": "string",
        "destination_port_ranges": "list",
        "direction": "string",
        "id": "string",
        "name": "string",
        "network_security_group_name": "string",
        "priority": "number",
        "protocol": "string",
        "resource_group_name": "string",
        "source_address_prefix": "string",
        "source_address_prefixes": "list",
        "source_application_security_group_ids": "list",
        "source_port_range": "string",
        "source_port_ranges": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_private_dns_resolver": {
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_network_id": "string"
    },
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": {
        "id": "string",
        "location": "string",
        "name": "string",
        "private_dns_resolver_outbound_endpoint_ids": "list",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_private_dns_resolver_inbound_endpoint": {
        "id": "string",
        "ip_configurations": "block",
        "ip_configurations.private_ip_address": "string",
        "ip_configurations.private_ip_allocation_method": "string",
        "ip_configurations.subnet_id": "string",
        "location": "string",
        "name": "string",
        "private_dns_resolver_id": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_private_dns_resolver_outbound_endpoint": {
        "id": "string",
        "location": "string",
        "name": "string",
        "private_dns_resolver_id": "string",
        "subnet_id": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_private_dns_resolver_virtual_network_link": {
        "dns_forwarding_ruleset_id": "string",
        "id": "string",
        "metadata": "list",
        "name": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_network_id": "string"
    },
    "azurerm_private_endpoint": {
        "custom_dns_configs": "list",
        "custom_network_interface_name": "string",
        "id": "string",
        "ip_configuration": "block",
        "ip_configuration.member_name": "string",
        "ip_configuration.name": "string",
        "ip_configuration.private_ip_address": "string",
        "ip_configuration.subresource_name": "string",
        "location": "string",
        "name": "string",
        "network_interface": "list",
        "private_dns_zone_configs": "list",
        "private_dns_zone_configs.type.record_sets": "string",
        "private_dns_zone_group": "block",
        "private_dns_zone_group.id": "string",
        "private_dns_zone_group.name": "string",
        "private_dns_zone_group.private_dns_zone_ids": "list",
        "private_service_connection": "block",
        "private_service_connection.is_manual_connection": "bool",
        "private_service_connection.name": "string",
        "private_service_connection.private_connection_resource_alias": "string",
        "private_service_connection.private_connection_resource_id": "string",
        "private_service_connection.private_ip_address": "string",
        "private_service_connection.request_message": "string",
        "private_service_connection.subresource_names": "list",
        "resource_group_name": "string",
        "subnet_id": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_private_link_service": {
        "alias": "string",
        "auto_approval_subscription_ids": "list",
        "enable_proxy_protocol": "bool",
        "fqdns": "list",
        "id": "string",
        "load_balancer_frontend_ip_configuration_ids": "list",
        "location": "string",
        "name": "string",
        "nat_ip_configuration": "block",
        "nat_ip_configuration.name": "string",
        "nat_ip_configuration.primary": "bool",
        "nat_ip_configuration.private_ip_address": "string",
        "nat_ip_configuration.private_ip_address_version": "string",
        "nat_ip_configuration.subnet_id": "string",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "visibility_subscription_ids": "list"
    },
    "azurerm_public_ip": {
        "allocation_method": "string",
        "ddos_protection_mode": "string",
        "ddos_protection_plan_id": "string",
        "domain_name_label": "string",
        "edge_zone": "string",
        "fqdn": "string",
        "id": "string",
        "idle_timeout_in_minutes": "number",
        "ip_address": "string",
        "ip_tags": "list",
        "ip_version": "string",
        "location": "string",
        "name": "string",
        "public_ip_prefix_id": "string",
        "resource_group_name": "string",
        "reverse_fqdn": "string",
        "sku": "string",
        "sku_tier": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "zones": "list"
    },
    "azurerm_resource_group": {
        "id": "string",
        "location": "string",
        "name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_route": {
        "address_prefix": "string",
        "id": "string",
        "name": "string",
        "next_hop_in_ip_address": "string",
        "next_hop_type": "string",
        "resource_group_name": "string",
        "route_table_name": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_route_server": {
        "branch_to_branch_traffic_enabled": "bool",
        "id": "string",
        "location": "string",
        "name": "string",
        "public_ip_address_id": "string",
        "resource_group_name": "string",
        "routing_state": "string",
        "sku": "string",
        "subnet_id": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_router_asn": "number",
        "virtual_router_ips": "list"
    },
    "azurerm_route_table": {
        "disable_bgp_route_propagation": "bool",
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "route": "list",
        "subnets": "list",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_storage_account": {
        "access_tier": "string",
        "account_kind": "string",
        "account_replication_type": "string",
        "account_tier": "string",
        "allow_nested_items_to_be_public": "bool",
        "azure_files_authentication": "block",
        "azure_files_authentication.active_directory": "block",
        "azure_files_authentication.active_directory.domain_guid": "string",
        "azure_files_authentication.active_directory.domain_name": "string",
        "azure_files_authentication.active_directory.domain_sid": "string",
        "azure_files_authentication.active_directory.forest_name": "string",
        "azure_files_authentication.active_directory.netbios_domain_name": "string",
        "azure_files_authentication.active_directory.storage_sid": "string",
        "azure_files_authentication.directory_type": "string",
        "blob_properties": "block",
        "blob_properties.change_feed_enabled": "bool",
        "blob_properties.change_feed_retention_in_days": "number",
        "blob_properties.container_delete_retention_policy": "block",
        "blob_properties.container_delete_retention_policy.days": "number",
        "blob_properties.cors_rule": "block",
        "blob_properties.cors_rule.allowed_headers": "list",
        "blob_properties.cors_rule.allowed_methods": "list",
        "blob_properties.cors_rule.allowed_origins": "list",
        "blob_properties.cors_rule.exposed_headers": "list",
        "blob_properties.cors_rule.max_age_in_seconds": "number",
        "blob_properties.default_service_version": "string",
        "blob_properties.delete_retention_policy": "block",
        "blob_properties.delete_retention_policy.days": "number",
        "blob_properties.last_access_time_enabled": "bool",
        "blob_properties.restore_policy": "block",
        "blob_properties.restore_policy.days": "number",
        "blob_properties.versioning_enabled": "bool",
        "cross_tenant_replication_enabled": "bool",
        "custom_domain": "block",
        "custom_domain.name": "string",
        "custom_domain.use_subdomain": "bool",
        "customer_managed_key": "block",
        "customer_managed_key.key_vault_key_id": "string",
        "customer_managed_key.user_assigned_identity_id": "string",
        "default_to_oauth_authentication": "bool",
        "edge_zone": "string",
        "enable_https_traffic_only": "bool",
        "id": "string",
        "identity": "block",
        "identity.identity_ids": "list",
        "identity.principal_id": "string",
        "identity.tenant_id": "string",
        "identity.type": "string",
        "immutability_policy": "block",
        "immutability_policy.allow_protected_append_writes": "bool",
        "immutability_policy.period_since_creation_in_days": "number",
        "immutability_policy.state": "string",
        "infrastructure_encryption_enabled": "bool",
        "is_hns_enabled": "bool",
        "large_file_share_enabled": "bool",
        "location": "string",
        "min_tls_version": "string",
        "name": "string",
        "network_rules": "block",
        "network_rules.bypass": "list",
        "network_rules.default_action": "string",
        "network_rules.ip_rules": "list",
        "network_rules.private_link_access": "block",
        "network_rules.private_link_access.endpoint_resource_id": "string",
        "network_rules.private_link_access.endpoint_tenant_id": "string",
        "network_rules.virtual_network_subnet_ids": "list",
        "nfsv3_enabled": "bool",
        "primary_access_key": "string",
        "primary_blob_connection_string": "string",
        "primary_blob_endpoint": "string",
        "primary_blob_host": "string",
        "primary_connection_string": "string",
        "primary_dfs_endpoint": "string",
        "primary_dfs_host": "string",
        "primary_file_endpoint": "string",
        "primary_file_host": "string",
        "primary_location": "string",
        "primary_queue_endpoint": "string",
        "primary_queue_host": "string",
        "primary_table_endpoint": "string",
        "primary_table_host": "string",
        "primary_web_endpoint": "string",
        "primary_web_host": "string",
        "public_network_access_enabled": "bool",
        "queue_encryption_key_type": "string",
        "queue_properties": "block",
        "queue_properties.cors_rule": "block",
        "queue_properties.cors_rule.allowed_headers": "list",
        "queue_properties.cors_rule.allowed_methods": "list",
        "queue_properties.cors_rule.allowed_origins": "list",
        "queue_properties.cors_rule.exposed_headers": "list",
        "queue_properties.cors_rule.max_age_in_seconds": "number",
        "queue_properties.hour_metrics": "block",
        "queue_properties.hour_metrics.enabled": "bool",
        "queue_properties.hour_metrics.include_apis": "bool",
        "queue_properties.hour_metrics.retention_policy_days": "number",
        "queue_properties.hour_metrics.version": "string",
        "queue_properties.logging": "block",
        "queue_properties.logging.delete": "bool",
        "queue_properties.logging.read": "bool",
        "queue_properties.logging.retention_policy_days": "number",
        "queue_properties.logging.version": "string",
        "queue_properties.logging.write": "bool",
        "queue_properties.minute_metrics": "block",
        "queue_properties.minute_metrics.enabled": "bool",
        "queue_properties.minute_metrics.include_apis": "bool",
        "queue_properties.minute_metrics.retention_policy_days": "number",
        "queue_properties.minute_metrics.version": "string",
        "resource_group_name": "string",
        "routing": "block",
        "routing.choice": "string",
        "routing.publish_internet_endpoints": "bool",
        "routing.publish_microsoft_endpoints": "bool",
        "sas_policy": "block",
        "sas_policy.expiration_action": "string",
        "sas_policy.expiration_period": "string",
        "secondary_access_key": "string",
        "secondary_blob_connection_string": "string",
        "secondary_blob_endpoint": "string",
        "secondary_blob_host": "string",
        "secondary_connection_string": "string",
        "secondary_dfs_endpoint": "string",
        "secondary_dfs_host": "string",
        "secondary_file_endpoint": "string",
        "secondary_file_host": "string",
        "secondary_location": "string",
        "secondary_queue_endpoint": "string",
        "secondary_queue_host": "string",
        "secondary_table_endpoint": "string",
        "secondary_table_host": "string",
        "secondary_web_endpoint": "string",
        "secondary_web_host": "string",
        "sftp_enabled": "bool",
        "share_properties": "block",
        "share_properties.cors_rule": "block",
        "share_properties.cors_rule.allowed_headers": "list",
        "share_properties.cors_rule.allowed_methods": "list",
        "share_properties.cors_rule.allowed_origins": "list",
        "share_properties.cors_rule.exposed_headers": "list",
        "share_properties.cors_rule.max_age_in_seconds": "number",
        "share_properties.retention_policy": "block",
        "share_properties.retention_policy.days": "number",
        "share_properties.smb": "block",
        "share_properties.smb.authentication_types": "list",
        "share_properties.smb.channel_encryption_type": "list",
        "share_properties.smb.kerberos_ticket_encryption_type": "list",
        "share_properties.smb.multichannel_enabled": "bool",
        "share_properties.smb.versions": "list",
        "shared_access_key_enabled": "bool",
        "static_website": "block",
        "static_website.error_404_document": "string",
        "static_website.index_document": "string",
        "table_encryption_key_type": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_storage_account_network_rules": {
        "bypass": "list",
        "default_action": "string",
        "id": "string",
        "ip_rules": "list",
        "private_link_access": "block",
        "private_link_access.endpoint_resource_id": "string",
        "private_link_access.endpoint_tenant_id": "string",
        "storage_account_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_network_subnet_ids": "list"
    },
    "azurerm_subnet": {
        "address_prefixes": "list",
        "delegation": "block",
        "delegation.name": "string",
        "delegation.service_delegation": "block",
        "delegation.service_delegation.actions": "list",
        "delegation.service_delegation.name": "string",
        "enforce_private_link_endpoint_network_policies": "bool",
        "enforce_private_link_service_network_policies": "bool",
        "id": "string",
        "name": "string",
        "private_endpoint_network_policies_enabled": "bool",
        "private_link_service_network_policies_enabled": "bool",
        "resource_group_name": "string",
        "service_endpoint_policy_ids": "list",
        "service_endpoints": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_network_name": "string"
    },
    "azurerm_subnet_nat_gateway_association": {
        "id": "string",
        "nat_gateway_id": "string",
        "subnet_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_subnet_network_security_group_association": {
        "id": "string",
        "network_security_group_id": "string",
        "subnet_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_subnet_route_table_association": {
        "id": "string",
        "route_table_id": "string",
        "subnet_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_virtual_hub": {
        "address_prefix": "string",
        "default_route_table_id": "string",
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "route": "block",
        "route.address_prefixes": "list",
        "route.next_hop_ip_address": "string",
        "sku": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_router_asn": "number",
        "virtual_router_ips": "list",
        "virtual_wan_id": "string"
    },
    "azurerm_virtual_hub_connection": {
        "id": "string",
        "internet_security_enabled": "bool",
        "name": "string",
        "remote_virtual_network_id": "string",
        "routing": "block",
        "routing.associated_route_table_id": "string",
        "routing.propagated_route_table": "block",
        "routing.propagated_route_table.labels": "list",
        "routing.propagated_route_table.route_table_ids": "list",
        "routing.static_vnet_route": "block",
        "routing.static_vnet_route.address_prefixes": "list",
        "routing.static_vnet_route.name": "string",
        "routing.static_vnet_route.next_hop_ip_address": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_hub_id": "string"
    },
    "azurerm_virtual_machine": {
        "additional_capabilities": "block",
        "additional_capabilities.ultra_ssd_enabled": "bool",
        "availability_set_id": "string",
        "boot_diagnostics": "block",
        "boot_diagnostics.enabled": "bool",
        "boot_diagnostics.storage_uri": "string",
        "delete_data_disks_on_termination": "bool",
        "delete_os_disk_on_termination": "bool",
        "id": "string",
        "identity": "block",
        "identity.identity_ids": "list",
        "identity.principal_id": "string",
        "identity.type": "string",
        "license_type": "string",
        "location": "string",
        "name": "string",
        "network_interface_ids": "list",
        "os_profile": "block",
        "os_profile.admin_password": "string",
        "os_profile.admin_username": "string",
        "os_profile.computer_name": "string",
        "os_profile.custom_data": "string",
        "os_profile_linux_config": "block",
        "os_profile_linux_config.disable_password_authentication": "bool",
        "os_profile_linux_config.ssh_keys": "block",
        "os_profile_linux_config.ssh_keys.key_data": "string",
        "os_profile_linux_config.ssh_keys.path": "string",
        "os_profile_secrets": "block",
        "os_profile_secrets.source_vault_id": "string",
        "os_profile_secrets.vault_certificates": "block",
        "os_profile_secrets.vault_certificates.certificate_store": "string",
        "os_profile_secrets.vault_certificates.certificate_url": "string",
        "os_profile_windows_config": "block",
        "os_profile_windows_config.additional_unattend_config": "block",
        "os_profile_windows_config.additional_unattend_config.component": "string",
        "os_profile_windows_config.additional_unattend_config.content": "string",
        "os_profile_windows_config.additional_unattend_config.pass": "string",
        "os_profile_windows_config.additional_unattend_config.setting_name": "string",
        "os_profile_windows_config.enable_automatic_upgrades": "bool",
        "os_profile_windows_config.provision_vm_agent": "bool",
        "os_profile_windows_config.timezone": "string",
        "os_profile_windows_config.winrm": "block",
        "os_profile_windows_config.winrm.certificate_url": "string",
        "os_profile_windows_config.winrm.protocol": "string",
        "plan": "block",
        "plan.name": "string",
        "plan.product": "string",
        "plan.publisher": "string",
        "primary_network_interface_id": "string",
        "proximity_placement_group_id": "string",
        "resource_group_name": "string",
        "storage_data_disk": "block",
        "storage_data_disk.caching": "string",
        "storage_data_disk.create_option": "string",
        "storage_data_disk.disk_size_gb": "number",
        "storage_data_disk.lun": "number",
        "storage_data_disk.managed_disk_id": "string",
        "storage_data_disk.managed_disk_type": "string",
        "storage_data_disk.name": "string",
        "storage_data_disk.vhd_uri": "string",
        "storage_data_disk.write_accelerator_enabled": "bool",
        "storage_image_reference": "block",
        "storage_image_reference.id": "string",
        "storage_image_reference.offer": "string",
        "storage_image_reference.publisher": "string",
        "storage_image_reference.sku": "string",
        "storage_image_reference.version": "string",
        "storage_os_disk": "block",
        "storage_os_disk.caching": "string",
        "storage_os_disk.create_option": "string",
        "storage_os_disk.disk_size_gb": "number",
        "storage_os_disk.image_uri": "string",
        "storage_os_disk.managed_disk_id": "string",
        "storage_os_disk.managed_disk_type": "string",
        "storage_os_disk.name": "string",
        "storage_os_disk.os_type": "string",
        "storage_os_disk.vhd_uri": "string",
        "storage_os_disk.write_accelerator_enabled": "bool",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "vm_size": "string",
        "zones": "list"
    },
    "azurerm_virtual_machine_data_disk_attachment": {
        "caching": "string",
        "create_option": "string",
        "id": "string",
        "lun": "number",
        "managed_disk_id": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "virtual_machine_id": "string",
        "write_accelerator_enabled": "bool"
    },
    "azurerm_virtual_network": {
        "address_space": "list",
        "bgp_community": "string",
        "ddos_protection_plan": "block",
        "ddos_protection_plan.enable": "bool",
        "ddos_protection_plan.id": "string",
        "dns_servers": "list",
        "edge_zone": "string",
        "flow_timeout_in_minutes": "number",
        "guid": "string",
        "id": "string",
        "location": "string",
        "name": "string",
        "resource_group_name": "string",
        "subnet": "list",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string"
    },
    "azurerm_virtual_network_gateway": {
        "active_active": "bool",
        "bgp_settings": "block",
        "bgp_settings.asn": "number",
        "bgp_settings.peer_weight": "number",
        "bgp_settings.peering_addresses": "block",
        "bgp_settings.peering_addresses.apipa_addresses": "list",
        "bgp_settings.peering_addresses.default_addresses": "list",
        "bgp_settings.peering_addresses.ip_configuration_name": "string",
        "bgp_settings.peering_addresses.tunnel_ip_addresses": "list",
        "custom_route": "block",
        "custom_route.address_prefixes": "list",
        "default_local_network_gateway_id": "string",
        "edge_zone": "string",
        "enable_bgp": "bool",
        "generation": "string",
        "id": "string",
        "ip_configuration": "block",
        "ip_configuration.name": "string",
        "ip_configuration.private_ip_address_allocation": "string",
        "ip_configuration.public_ip_address_id": "string",
        "ip_configuration.subnet_id": "string",
        "location": "string",
        "name": "string",
        "private_ip_address_enabled": "bool",
        "resource_group_name": "string",
        "sku": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "type": "string",
        "vpn_client_configuration": "block",
        "vpn_client_configuration.aad_audience": "string",
        "vpn_client_configuration.aad_issuer": "string",
        "vpn_client_configuration.aad_tenant": "string",
        "vpn_client_configuration.address_space": "list",
        "vpn_client_configuration.radius_server_address": "string",
        "vpn_client_configuration.radius_server_secret": "string",
        "vpn_client_configuration.revoked_certificate": "block",
        "vpn_client_configuration.revoked_certificate.name": "string",
        "vpn_client_configuration.revoked_certificate.thumbprint": "string",
        "vpn_client_configuration.root_certificate": "block",
        "vpn_client_configuration.root_certificate.name": "string",
        "vpn_client_configuration.root_certificate.public_cert_data": "string",
        "vpn_client_configuration.vpn_auth_types": "list",
        "vpn_client_configuration.vpn_client_protocols": "list",
        "vpn_type": "string"
    },
    "azurerm_virtual_network_gateway_connection": {
        "authorization_key": "string",
        "connection_mode": "string",
        "connection_protocol": "string",
        "custom_bgp_addresses": "block",
        "custom_bgp_addresses.primary": "string",
        "custom_bgp_addresses.secondary": "string",
        "dpd_timeout_seconds": "number",
        "egress_nat_rule_ids": "list",
        "enable_bgp": "bool",
        "express_route_circuit_id": "string",
        "express_route_gateway_bypass": "bool",
        "id": "string",
        "ingress_nat_rule_ids": "list",
        "ipsec_policy": "block",
        "ipsec_policy.dh_group": "string",
        "ipsec_policy.ike_encryption": "string",
        "ipsec_policy.ike_integrity": "string",
        "ipsec_policy.ipsec_encryption": "string",
        "ipsec_policy.ipsec_integrity": "string",
        "ipsec_policy.pfs_group": "string",
        "ipsec_policy.sa_datasize": "number",
        "ipsec_policy.sa_lifetime": "number",
        "local_azure_ip_address_enabled": "bool",
        "local_network_gateway_id": "string",
        "location": "string",
        "name": "string",
        "peer_virtual_network_gateway_id": "string",
        "resource_group_name": "string",
        "routing_weight": "number",
        "shared_key": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "traffic_selector_policy": "block",
        "traffic_selector_policy.local_address_cidrs": "list",
        "traffic_selector_policy.remote_address_cidrs": "list",
        "type": "string",
        "use_policy_based_traffic_selectors": "bool",
        "virtual_network_gateway_id": "string"
    },
    "azurerm_virtual_network_peering": {
        "allow_forwarded_traffic": "bool",
        "allow_gateway_transit": "bool",
        "allow_virtual_network_access": "bool",
        "id": "string",
        "name": "string",
        "remote_virtual_network_id": "string",
        "resource_group_name": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "use_remote_gateways": "bool",
        "virtual_network_name": "string"
    },
    "azurerm_virtual_wan": {
        "allow_branch_to_branch_traffic": "bool",
        "disable_vpn_encryption": "bool",
        "id": "string",
        "location": "string",
        "name": "string",
        "office365_local_breakout_category": "string",
        "resource_group_name": "string",
        "tags": "list",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "type": "string"
    },
    "azurerm_windows_virtual_machine": {
        "additional_capabilities": "block",
        "additional_capabilities.ultra_ssd_enabled": "bool",
        "additional_unattend_content": "block",
        "additional_unattend_content.content": "string",
        "additional_unattend_content.setting": "string",
        "admin_password": "string",
        "admin_username": "string",
        "allow_extension_operations": "bool",
        "availability_set_id": "string",
        "boot_diagnostics": "block",
        "boot_diagnostics.storage_account_uri": "string",
        "capacity_reservation_group_id": "string",
        "computer_name": "string",
        "custom_data": "string",
        "dedicated_host_group_id": "string",
        "dedicated_host_id": "string",
        "edge_zone": "string",
        "enable_automatic_updates": "bool",
        "encryption_at_host_enabled": "bool",
        "eviction_policy": "string",
        "extensions_time_budget": "string",
        "gallery_application": "block",
        "gallery_application.configuration_blob_uri": "string",
        "gallery_application.order": "number",
        "gallery_application.tag": "string",
        "gallery_application.version_id": "string",
        "hotpatching_enabled": "bool",
        "id": "string",
        "identity": "block",
        "identity.identity_ids": "list",
        "identity.principal_id": "string",
        "identity.tenant_id": "string",
        "identity.type": "string",
        "license_type": "string",
        "location": "string",
        "max_bid_price": "number",
        "name": "string",
        "network_interface_ids": "list",
        "os_disk": "block",
        "os_disk.caching": "string",
        "os_disk.diff_disk_settings": "block",
        "os_disk.diff_disk_settings.option": "string",
        "os_disk.diff_disk_settings.placement": "string",
        "os_disk.disk_encryption_set_id": "string",
        "os_disk.disk_size_gb": "number",
        "os_disk.name": "string",
        "os_disk.secure_vm_disk_encryption_set_id": "string",
        "os_disk.security_encryption_type": "string",
        "os_disk.storage_account_type": "string",
        "os_disk.write_accelerator_enabled": "bool",
        "patch_assessment_mode": "string",
        "patch_mode": "string",
        "plan": "block",
        "plan.name": "string",
        "plan.product": "string",
        "plan.publisher": "string",
        "platform_fault_domain": "number",
        "priority": "string",
        "private_ip_address": "string",
        "private_ip_addresses": "list",
        "provision_vm_agent": "bool",
        "proximity_placement_group_id": "string",
        "public_ip_address": "string",
        "public_ip_addresses": "list",
        "resource_group_name": "string",
        "secret": "block",
        "secret.certificate": "block",
        "secret.certificate.store": "string",
        "secret.certificate.url": "string",
        "secret.key_vault_id": "string",
        "secure_boot_enabled": "bool",
        "size": "string",
        "source_image_id": "string",
        "source_image_reference": "block",
        "source_image_reference.offer": "string",
        "source_image_reference.publisher": "string",
        "source_image_reference.sku": "string",
        "source_image_reference.version": "string",
        "tags": "list",
        "termination_notification": "block",
        "termination_notification.enabled": "bool",
        "termination_notification.timeout": "string",
        "timeouts": "block",
        "timeouts.create": "string",
        "timeouts.delete": "string",
        "timeouts.read": "string",
        "timeouts.update": "string",
        "timezone": "string",
        "user_data": "string",
        "virtual_machine_id": "string",
        "virtual_machine_scale_set_id": "string",
        "vtpm_enabled": "bool",
        "winrm_listener": "block",
        "winrm_listener.certificate_url": "string",
        "winrm_listener.protocol": "string",
        "zone": "string"
    }
}
resourceImportanceView := {
    "azurerm_application_gateway": [
        "",
        "autoscale_configuration",
        "autoscale_configuration.max_capacity",
        "autoscale_configuration.min_capacity",
        "backend_address_pool",
        "backend_address_pool.name",
        "backend_http_settings",
        "backend_http_settings.cookie_based_affinity",
        "backend_http_settings.name",
        "backend_http_settings.path",
        "backend_http_settings.port",
        "backend_http_settings.protocol",
        "backend_http_settings.request_timeout",
        "frontend_ip_configuration",
        "frontend_ip_configuration.0.public_ip_address_id",
        "frontend_ip_configuration.name",
        "frontend_port",
        "frontend_port.name",
        "frontend_port.port",
        "gateway_ip_configuration",
        "gateway_ip_configuration.0.subnet_id",
        "gateway_ip_configuration.name",
        "http_listener",
        "http_listener.name",
        "http_listener.protocol",
        "location",
        "name",
        "probe",
        "probe.interval",
        "probe.name",
        "probe.path",
        "probe.protocol",
        "probe.timeout",
        "probe.unhealthy_threshold",
        "request_routing_rule",
        "request_routing_rule.name",
        "request_routing_rule.priority",
        "request_routing_rule.rule_type",
        "resource_group_name",
        "sku",
        "sku.name",
        "sku.tier",
        "http_listener.0.frontend_ip_configuration_name",
        "http_listener.0.frontend_port_name",
        "request_routing_rule.0.backend_address_pool_name",
        "request_routing_rule.0.backend_http_settings_name",
        "request_routing_rule.0.http_listener_name",
        "sku.capacity"
    ],
    "azurerm_bastion_host": [
        "",
        "ip_configuration",
        "ip_configuration.0.public_ip_address_id",
        "ip_configuration.0.subnet_id",
        "ip_configuration.name",
        "location",
        "name",
        "resource_group_name",
        "sku"
    ],
    "azurerm_express_route_circuit": [
        "",
        "bandwidth_in_mbps",
        "location",
        "peering_location",
        "resource_group_name",
        "sku",
        "sku.family",
        "sku.tier",
        "allow_classic_operations",
        "bandwidth_in_gbps",
        "express_route_port_id"
    ],
    "azurerm_firewall": [
        "",
        "firewall_policy_id",
        "location",
        "name",
        "resource_group_name",
        "sku_tier",
        "ip_configuration",
        "ip_configuration.0.public_ip_address_id",
        "ip_configuration.0.subnet_id",
        "ip_configuration.name"
    ],
    "azurerm_firewall_network_rule_collection": [
        "",
        "action",
        "azure_firewall_name",
        "name",
        "priority",
        "resource_group_name",
        "rule",
        "rule.destination_addresses",
        "rule.destination_ports",
        "rule.name",
        "rule.protocols",
        "rule.source_addresses"
    ],
    "azurerm_lb": [
        "",
        "frontend_ip_configuration",
        "frontend_ip_configuration.0.public_ip_address_id",
        "frontend_ip_configuration.name",
        "location",
        "resource_group_name",
        "sku",
        "name"
    ],
    "azurerm_lb_backend_address_pool": [
        "",
        "loadbalancer_id",
        "name"
    ],
    "azurerm_lb_nat_pool": [
        "",
        "backend_port",
        "frontend_port_end",
        "frontend_port_start",
        "loadbalancer_id",
        "protocol",
        "resource_group_name",
        "frontend_ip_configuration_name",
        "name"
    ],
    "azurerm_lb_nat_rule": [
        "",
        "backend_port",
        "frontend_port",
        "loadbalancer_id",
        "protocol",
        "resource_group_name",
        "frontend_ip_configuration_name",
        "name"
    ],
    "azurerm_lb_outbound_rule": [
        "",
        "backend_address_pool_id",
        "frontend_ip_configuration",
        "frontend_ip_configuration.name",
        "loadbalancer_id",
        "protocol",
        "allocated_outbound_ports",
        "enable_tcp_reset",
        "idle_timeout_in_minutes",
        "name"
    ],
    "azurerm_lb_probe": [
        "",
        "loadbalancer_id",
        "port",
        "protocol",
        "request_path"
    ],
    "azurerm_lb_rule": [
        "",
        "backend_address_pool_ids",
        "backend_port",
        "frontend_port",
        "loadbalancer_id",
        "probe_id",
        "protocol",
        "disable_outbound_snat",
        "frontend_ip_configuration_name"
    ],
    "azurerm_linux_virtual_machine": [
        "",
        "admin_ssh_key",
        "admin_ssh_key.public_key",
        "admin_ssh_key.username",
        "admin_username",
        "boot_diagnostics",
        "boot_diagnostics.storage_account_uri",
        "disable_password_authentication",
        "location",
        "name",
        "network_interface_ids",
        "os_disk",
        "os_disk.caching",
        "os_disk.name",
        "os_disk.storage_account_type",
        "resource_group_name",
        "size",
        "source_image_reference",
        "source_image_reference.offer",
        "source_image_reference.publisher",
        "source_image_reference.sku",
        "source_image_reference.version",
        "admin_password"
    ],
    "azurerm_local_network_gateway": [
        "",
        "address_space",
        "gateway_address",
        "location",
        "name",
        "resource_group_name",
        "bgp_settings",
        "bgp_settings.asn",
        "bgp_settings.bgp_peering_address"
    ],
    "azurerm_managed_disk": [
        "",
        "create_option",
        "disk_size_gb",
        "location",
        "max_shares",
        "resource_group_name",
        "storage_account_type",
        "name"
    ],
    "azurerm_mysql_server": [
        "",
        "administrator_login",
        "administrator_login_password",
        "auto_grow_enabled",
        "backup_retention_days",
        "geo_redundant_backup_enabled",
        "infrastructure_encryption_enabled",
        "location",
        "name",
        "public_network_access_enabled",
        "resource_group_name",
        "ssl_enforcement_enabled",
        "ssl_minimal_tls_version_enforced",
        "storage_mb",
        "version"
    ],
    "azurerm_mysql_virtual_network_rule": [
        "",
        "resource_group_name",
        "server_name",
        "subnet_id"
    ],
    "azurerm_nat_gateway": [
        "",
        "idle_timeout_in_minutes",
        "location",
        "name",
        "resource_group_name",
        "zones"
    ],
    "azurerm_nat_gateway_public_ip_association": [
        "",
        "nat_gateway_id",
        "public_ip_address_id"
    ],
    "azurerm_network_interface": [
        "",
        "ip_configuration",
        "ip_configuration.0.public_ip_address_id",
        "ip_configuration.0.subnet_id",
        "ip_configuration.name",
        "ip_configuration.private_ip_address_allocation",
        "location",
        "resource_group_name",
        "name"
    ],
    "azurerm_network_interface_nat_rule_association": [
        "",
        "nat_rule_id",
        "network_interface_id",
        "ip_configuration_name"
    ],
    "azurerm_network_interface_security_group_association": [
        "",
        "network_interface_id",
        "network_security_group_id"
    ],
    "azurerm_network_security_group": [
        "",
        "location",
        "resource_group_name",
        "security_rule",
        "security_rule.access",
        "security_rule.destination_address_prefix",
        "security_rule.destination_port_range",
        "security_rule.direction",
        "security_rule.name",
        "security_rule.priority",
        "security_rule.protocol",
        "security_rule.source_address_prefix",
        "security_rule.source_port_range",
        "name"
    ],
    "azurerm_network_security_rule": [
        "",
        "access",
        "destination_address_prefix",
        "destination_port_range",
        "direction",
        "network_security_group_name",
        "priority",
        "protocol",
        "resource_group_name",
        "source_address_prefix",
        "source_port_range",
        "name",
        "description"
    ],
    "azurerm_private_dns_resolver": [
        "",
        "location",
        "resource_group_name",
        "virtual_network_id"
    ],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [
        "",
        "location",
        "private_dns_resolver_outbound_endpoint_ids",
        "resource_group_name"
    ],
    "azurerm_private_dns_resolver_inbound_endpoint": [
        "",
        "ip_configurations",
        "ip_configurations.0.subnet_id",
        "ip_configurations.private_ip_allocation_method",
        "location",
        "private_dns_resolver_id"
    ],
    "azurerm_private_dns_resolver_outbound_endpoint": [
        "",
        "location",
        "private_dns_resolver_id",
        "subnet_id"
    ],
    "azurerm_private_dns_resolver_virtual_network_link": [
        "",
        "dns_forwarding_ruleset_id",
        "virtual_network_id",
        "metadata",
        "metadata.key"
    ],
    "azurerm_private_endpoint": [
        "",
        "location",
        "name",
        "private_dns_zone_group",
        "private_dns_zone_group.0.private_dns_zone_ids",
        "private_dns_zone_group.name",
        "private_service_connection",
        "private_service_connection.0.private_connection_resource_id",
        "private_service_connection.is_manual_connection",
        "private_service_connection.name",
        "resource_group_name",
        "subnet_id"
    ],
    "azurerm_private_link_service": [
        "",
        "load_balancer_frontend_ip_configuration_ids",
        "location",
        "nat_ip_configuration",
        "nat_ip_configuration.0.subnet_id",
        "nat_ip_configuration.name",
        "nat_ip_configuration.primary",
        "nat_ip_configuration.private_ip_address",
        "nat_ip_configuration.private_ip_address_version",
        "resource_group_name",
        "visibility_subscription_ids",
        "auto_approval_subscription_ids"
    ],
    "azurerm_public_ip": [
        "",
        "allocation_method",
        "location",
        "name",
        "resource_group_name",
        "sku"
    ],
    "azurerm_resource_group": [
        "",
        "location",
        "name"
    ],
    "azurerm_route": [
        "",
        "address_prefix",
        "next_hop_type",
        "resource_group_name",
        "route_table_name",
        "name",
        "next_hop_in_ip_address"
    ],
    "azurerm_route_server": [
        "",
        "branch_to_branch_traffic_enabled",
        "location",
        "public_ip_address_id",
        "resource_group_name",
        "sku",
        "subnet_id"
    ],
    "azurerm_route_table": [
        "",
        "location",
        "name",
        "resource_group_name",
        "route",
        "route.address_prefix",
        "route.name",
        "route.next_hop_type",
        "disable_bgp_route_propagation"
    ],
    "azurerm_storage_account": [
        "",
        "account_replication_type",
        "account_tier",
        "location",
        "name",
        "resource_group_name"
    ],
    "azurerm_storage_account_network_rules": [
        "",
        "default_action",
        "ip_rules",
        "storage_account_id",
        "virtual_network_subnet_ids",
        "bypass"
    ],
    "azurerm_subnet": [
        "",
        "address_prefixes",
        "name",
        "resource_group_name",
        "virtual_network_name"
    ],
    "azurerm_subnet_nat_gateway_association": [
        "",
        "nat_gateway_id",
        "subnet_id"
    ],
    "azurerm_subnet_network_security_group_association": [
        "",
        "network_security_group_id",
        "subnet_id"
    ],
    "azurerm_subnet_route_table_association": [
        "",
        "route_table_id",
        "subnet_id"
    ],
    "azurerm_virtual_hub": [
        "",
        "address_prefix",
        "location",
        "resource_group_name",
        "virtual_wan_id",
        "name"
    ],
    "azurerm_virtual_hub_connection": [
        "",
        "name",
        "remote_virtual_network_id",
        "virtual_hub_id",
        "internet_security_enabled"
    ],
    "azurerm_virtual_machine": [
        "",
        "location",
        "name",
        "network_interface_ids",
        "os_profile",
        "os_profile.admin_password",
        "os_profile.admin_username",
        "os_profile_linux_config",
        "os_profile_linux_config.disable_password_authentication",
        "resource_group_name",
        "storage_image_reference",
        "storage_image_reference.offer",
        "storage_image_reference.publisher",
        "storage_image_reference.sku",
        "storage_image_reference.version",
        "storage_os_disk",
        "storage_os_disk.caching",
        "storage_os_disk.create_option",
        "storage_os_disk.managed_disk_type",
        "storage_os_disk.name",
        "vm_size",
        "delete_data_disks_on_termination",
        "delete_os_disk_on_termination",
        "os_profile.0.computer_name"
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        "",
        "caching",
        "lun",
        "managed_disk_id",
        "virtual_machine_id"
    ],
    "azurerm_virtual_network": [
        "",
        "address_space",
        "location",
        "resource_group_name",
        "name"
    ],
    "azurerm_virtual_network_gateway": [
        "",
        "active_active",
        "enable_bgp",
        "ip_configuration",
        "ip_configuration.0.public_ip_address_id",
        "ip_configuration.0.subnet_id",
        "ip_configuration.name",
        "ip_configuration.private_ip_address_allocation",
        "location",
        "resource_group_name",
        "sku",
        "type",
        "vpn_type",
        "vpn_client_configuration",
        "vpn_client_configuration.address_space"
    ],
    "azurerm_virtual_network_gateway_connection": [
        "",
        "local_network_gateway_id",
        "location",
        "resource_group_name",
        "shared_key",
        "type",
        "virtual_network_gateway_id",
        "peer_virtual_network_gateway_id",
        "routing_weight",
        "enable_bgp"
    ],
    "azurerm_virtual_network_peering": [
        "",
        "allow_forwarded_traffic",
        "allow_gateway_transit",
        "allow_virtual_network_access",
        "remote_virtual_network_id",
        "resource_group_name",
        "virtual_network_name",
        "name"
    ],
    "azurerm_virtual_wan": [
        "",
        "location",
        "resource_group_name"
    ],
    "azurerm_windows_virtual_machine": [
        "",
        "admin_password",
        "admin_username",
        "computer_name",
        "location",
        "name",
        "network_interface_ids",
        "os_disk",
        "os_disk.caching",
        "os_disk.storage_account_type",
        "resource_group_name",
        "size",
        "source_image_reference",
        "source_image_reference.offer",
        "source_image_reference.publisher",
        "source_image_reference.sku",
        "source_image_reference.version",
        "os_disk.name"
    ]
}
resourceReferenceView := {
    "azurerm_application_gateway": [
        "frontend_ip_configuration.public_ip_address_id",
        "gateway_ip_configuration.subnet_id",
        "resource_group_name",
        "frontend_ip_configuration.subnet_id",
        "private_link_configuration.subnet_id"
    ],
    "azurerm_bastion_host": [
        "ip_configuration.public_ip_address_id",
        "ip_configuration.subnet_id",
        "resource_group_name"
    ],
    "azurerm_express_route_circuit": [
        "resource_group_name"
    ],
    "azurerm_firewall": [
        "ip_configuration.public_ip_address_id",
        "ip_configuration.subnet_id",
        "resource_group_name",
        "virtual_hub.virtual_hub_id",
        "management_ip_configuration.public_ip_address_id",
        "management_ip_configuration.subnet_id"
    ],
    "azurerm_firewall_network_rule_collection": [
        "azure_firewall_name",
        "resource_group_name"
    ],
    "azurerm_image": [
        "resource_group_name",
        "source_virtual_machine_id"
    ],
    "azurerm_lb": [
        "frontend_ip_configuration.public_ip_address_id",
        "resource_group_name",
        "frontend_ip_configuration.subnet_id"
    ],
    "azurerm_lb_backend_address_pool": [
        "loadbalancer_id"
    ],
    "azurerm_lb_backend_address_pool_address": [
        "backend_address_pool_id",
        "virtual_network_id"
    ],
    "azurerm_lb_nat_pool": [
        "loadbalancer_id",
        "resource_group_name"
    ],
    "azurerm_lb_nat_rule": [
        "loadbalancer_id",
        "resource_group_name",
        "frontend_ip_configuration_name",
        "backend_address_pool_id"
    ],
    "azurerm_lb_outbound_rule": [
        "backend_address_pool_id",
        "loadbalancer_id"
    ],
    "azurerm_lb_probe": [
        "loadbalancer_id"
    ],
    "azurerm_lb_rule": [
        "backend_address_pool_ids",
        "loadbalancer_id",
        "probe_id"
    ],
    "azurerm_linux_virtual_machine": [
        "network_interface_ids",
        "resource_group_name",
        "source_image_id"
    ],
    "azurerm_local_network_gateway": [
        "resource_group_name"
    ],
    "azurerm_managed_disk": [
        "resource_group_name",
        "source_resource_id"
    ],
    "azurerm_mysql_database": [
        "resource_group_name",
        "server_name"
    ],
    "azurerm_mysql_firewall_rule": [
        "resource_group_name",
        "server_name"
    ],
    "azurerm_mysql_server": [
        "resource_group_name"
    ],
    "azurerm_mysql_virtual_network_rule": [
        "resource_group_name",
        "server_name",
        "subnet_id"
    ],
    "azurerm_nat_gateway": [
        "resource_group_name"
    ],
    "azurerm_nat_gateway_public_ip_association": [
        "nat_gateway_id",
        "public_ip_address_id"
    ],
    "azurerm_network_interface": [
        "ip_configuration.public_ip_address_id",
        "ip_configuration.subnet_id",
        "resource_group_name"
    ],
    "azurerm_network_interface_nat_rule_association": [
        "nat_rule_id",
        "network_interface_id"
    ],
    "azurerm_network_interface_security_group_association": [
        "network_interface_id",
        "network_security_group_id"
    ],
    "azurerm_network_security_group": [
        "resource_group_name"
    ],
    "azurerm_network_security_rule": [
        "resource_group_name",
        "network_security_group_name"
    ],
    "azurerm_private_dns_resolver": [
        "resource_group_name",
        "virtual_network_id"
    ],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [
        "private_dns_resolver_outbound_endpoint_ids",
        "resource_group_name"
    ],
    "azurerm_private_dns_resolver_inbound_endpoint": [
        "ip_configurations.subnet_id",
        "private_dns_resolver_id"
    ],
    "azurerm_private_dns_resolver_outbound_endpoint": [
        "private_dns_resolver_id",
        "subnet_id"
    ],
    "azurerm_private_dns_resolver_virtual_network_link": [
        "dns_forwarding_ruleset_id",
        "virtual_network_id"
    ],
    "azurerm_private_endpoint": [
        "private_service_connection.private_connection_resource_id",
        "resource_group_name",
        "subnet_id"
    ],
    "azurerm_private_link_service": [
        "nat_ip_configuration.subnet_id",
        "resource_group_name"
    ],
    "azurerm_public_ip": [
        "resource_group_name",
        "domain_name_label"
    ],
    "azurerm_resource_group": [],
    "azurerm_route": [
        "resource_group_name",
        "route_table_name"
    ],
    "azurerm_route_server": [
        "public_ip_address_id",
        "resource_group_name",
        "subnet_id"
    ],
    "azurerm_route_table": [
        "resource_group_name"
    ],
    "azurerm_storage_account": [
        "resource_group_name",
        "network_rules.virtual_network_subnet_ids"
    ],
    "azurerm_storage_account_network_rules": [
        "storage_account_id",
        "virtual_network_subnet_ids"
    ],
    "azurerm_storage_account_network_rulesazurerm_virtual_machine": [],
    "azurerm_storage_blob": [
        "storage_account_name",
        "storage_container_name"
    ],
    "azurerm_storage_container": [
        "storage_account_name"
    ],
    "azurerm_subnet": [
        "resource_group_name",
        "virtual_network_name"
    ],
    "azurerm_subnet_nat_gateway_association": [
        "nat_gateway_id",
        "subnet_id"
    ],
    "azurerm_subnet_network_security_group_association": [
        "network_security_group_id",
        "subnet_id"
    ],
    "azurerm_subnet_route_table_association": [
        "route_table_id",
        "subnet_id"
    ],
    "azurerm_virtual_hub": [
        "resource_group_name",
        "virtual_wan_id"
    ],
    "azurerm_virtual_hub_connection": [
        "remote_virtual_network_id",
        "virtual_hub_id"
    ],
    "azurerm_virtual_machine": [
        "network_interface_ids",
        "resource_group_name",
        "primary_network_interface_id"
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        "managed_disk_id",
        "virtual_machine_id"
    ],
    "azurerm_virtual_network": [
        "resource_group_name"
    ],
    "azurerm_virtual_network_gateway": [
        "ip_configuration.public_ip_address_id",
        "ip_configuration.subnet_id",
        "resource_group_name"
    ],
    "azurerm_virtual_network_gateway_connection": [
        "local_network_gateway_id",
        "resource_group_name",
        "peer_virtual_network_gateway_id",
        "virtual_network_gateway_id",
        "express_route_circuit_id"
    ],
    "azurerm_virtual_network_peering": [
        "resource_group_name",
        "remote_virtual_network_id",
        "virtual_network_name"
    ],
    "azurerm_virtual_wan": [
        "resource_group_name"
    ],
    "azurerm_windows_virtual_machine": [
        "network_interface_ids",
        "resource_group_name"
    ]
}
resourceTrivialView := {
    "azurerm_application_gateway": [
        "backend_address_pool.fqdns",
        "backend_address_pool.ip_addresses",
        "backend_http_settings.0.host_name",
        "backend_http_settings.connection_draining",
        "backend_http_settings.connection_draining.drain_timeout_sec",
        "backend_http_settings.connection_draining.enabled",
        "enable_http2",
        "fips_enabled",
        "firewall_policy_id",
        "force_firewall_policy_association",
        "frontend_ip_configuration.1.subnet_id",
        "frontend_ip_configuration.private_ip_address",
        "frontend_ip_configuration.private_ip_address_allocation",
        "http_listener.require_sni",
        "probe.match",
        "probe.match.body",
        "probe.match.status_code",
        "probe.minimum_servers",
        "probe.port",
        "ssl_policy",
        "ssl_policy.policy_type",
        "zones",
        "global",
        "global.request_buffering_enabled",
        "global.response_buffering_enabled",
        "backend_http_settings.0.probe_name",
        "http_listener.1.frontend_ip_configuration_name",
        "http_listener.1.frontend_port_name",
        "http_listener.1.ssl_certificate_name",
        "http_listener.custom_error_configuration",
        "http_listener.custom_error_configuration.custom_error_page_url",
        "http_listener.custom_error_configuration.status_code",
        "probe.host",
        "redirect_configuration",
        "redirect_configuration.0.target_listener_name",
        "redirect_configuration.include_path",
        "redirect_configuration.include_query_string",
        "redirect_configuration.name",
        "redirect_configuration.redirect_type",
        "request_routing_rule.0.redirect_configuration_name",
        "request_routing_rule.1.backend_address_pool_name",
        "request_routing_rule.1.backend_http_settings_name",
        "request_routing_rule.1.http_listener_name",
        "ssl_certificate",
        "ssl_certificate.data",
        "ssl_certificate.name",
        "ssl_certificate.password",
        "identity",
        "identity.0.identity_ids",
        "identity.type",
        "ssl_certificate.0.key_vault_secret_id",
        "backend_http_settings.1.probe_name",
        "waf_configuration",
        "waf_configuration.enabled",
        "waf_configuration.firewall_mode",
        "waf_configuration.rule_set_type",
        "waf_configuration.rule_set_version",
        "frontend_ip_configuration.1.private_link_configuration_name",
        "private_link_configuration",
        "private_link_configuration.0.ip_configuration.0.subnet_id",
        "private_link_configuration.ip_configuration",
        "private_link_configuration.ip_configuration.name",
        "private_link_configuration.ip_configuration.primary",
        "private_link_configuration.ip_configuration.private_ip_address_allocation",
        "private_link_configuration.name",
        "url_path_map",
        "url_path_map.0.default_backend_address_pool_name",
        "url_path_map.name",
        "redirect_configuration.target_url",
        "request_routing_rule.0.url_path_map_name",
        "url_path_map.0.default_redirect_configuration_name",
        "url_path_map.0.path_rule.0.backend_address_pool_name",
        "url_path_map.0.path_rule.0.backend_http_settings_name",
        "url_path_map.0.path_rule.1.backend_address_pool_name",
        "url_path_map.0.path_rule.1.backend_http_settings_name",
        "url_path_map.path_rule",
        "url_path_map.path_rule.name",
        "url_path_map.path_rule.paths",
        "rewrite_rule_set",
        "rewrite_rule_set.name",
        "rewrite_rule_set.rewrite_rule",
        "rewrite_rule_set.rewrite_rule.condition",
        "rewrite_rule_set.rewrite_rule.condition.negate",
        "rewrite_rule_set.rewrite_rule.condition.pattern",
        "rewrite_rule_set.rewrite_rule.condition.variable",
        "rewrite_rule_set.rewrite_rule.name",
        "rewrite_rule_set.rewrite_rule.rule_sequence",
        "rewrite_rule_set.rewrite_rule.url",
        "rewrite_rule_set.rewrite_rule.url.components",
        "rewrite_rule_set.rewrite_rule.url.path",
        "trusted_root_certificate",
        "trusted_root_certificate.data",
        "trusted_root_certificate.name",
        "waf_configuration.file_upload_limit_mb",
        "waf_configuration.max_request_body_size_kb",
        "waf_configuration.disabled_rule_group",
        "rewrite_rule_set.rewrite_rule.request_header_configuration",
        "rewrite_rule_set.rewrite_rule.request_header_configuration.header_value",
        "waf_configuration.request_body_check",
        "url_path_map.0.default_backend_http_settings_name",
        "url_path_map.1.default_backend_address_pool_name",
        "url_path_map.1.default_backend_http_settings_name",
        "url_path_map.1.path_rule.0.backend_address_pool_name",
        "url_path_map.1.path_rule.0.backend_http_settings_name",
        "rewrite_rule_set.rewrite_rule.condition.ignore_case",
        "rewrite_rule_set.rewrite_rule.url.query_string",
        "rewrite_rule_set.rewrite_rule.url.reroute",
        "autoscale_configuration",
        "autoscale_configuration.max_capacity",
        "autoscale_configuration.min_capacity",
        "frontend_ip_configuration.0.subnet_id"
    ],
    "azurerm_bastion_host": [
        "copy_paste_enabled",
        "file_copy_enabled",
        "ip_connect_enabled",
        "shareable_link_enabled",
        "tunneling_enabled"
    ],
    "azurerm_express_route_circuit": [],
    "azurerm_firewall": [
        "virtual_hub",
        "virtual_hub.0.virtual_hub_id",
        "virtual_hub.public_ip_count",
        "dns_servers",
        "sku_name",
        "threat_intel_mode",
        "zones",
        "management_ip_configuration",
        "management_ip_configuration.0.public_ip_address_id",
        "management_ip_configuration.0.subnet_id",
        "management_ip_configuration.name"
    ],
    "azurerm_firewall_network_rule_collection": [
        "rule.destination_fqdns"
    ],
    "azurerm_lb": [
        "frontend_ip_configuration.private_ip_address_version",
        "frontend_ip_configuration.0.subnet_id",
        "frontend_ip_configuration.private_ip_address_allocation",
        "frontend_ip_configuration.1.public_ip_address_id",
        "sku_tier",
        "edge_zone",
        "frontend_ip_configuration.private_ip_address"
    ],
    "azurerm_lb_backend_address_pool": [],
    "azurerm_lb_nat_pool": [],
    "azurerm_lb_nat_rule": [
        "backend_address_pool_id",
        "frontend_port_end",
        "frontend_port_start",
        "idle_timeout_in_minutes",
        "enable_floating_ip",
        "enable_tcp_reset"
    ],
    "azurerm_lb_outbound_rule": [],
    "azurerm_lb_probe": [
        "name",
        "interval_in_seconds",
        "number_of_probes"
    ],
    "azurerm_lb_rule": [
        "enable_floating_ip",
        "enable_tcp_reset",
        "idle_timeout_in_minutes",
        "load_distribution",
        "name"
    ],
    "azurerm_linux_virtual_machine": [
        "custom_data",
        "computer_name",
        "plan",
        "plan.name",
        "plan.product",
        "plan.publisher",
        "identity",
        "identity.type",
        "os_disk.disk_size_gb",
        "timeouts",
        "timeouts.create",
        "timeouts.delete",
        "zone",
        "patch_mode",
        "eviction_policy",
        "priority",
        "allow_extension_operations",
        "user_data",
        "identity.0.identity_ids",
        "os_disk.diff_disk_settings",
        "os_disk.diff_disk_settings.option",
        "os_disk.write_accelerator_enabled",
        "availability_set_id",
        "source_image_id",
        "dedicated_host_id",
        "encryption_at_host_enabled",
        "extensions_time_budget",
        "license_type",
        "max_bid_price",
        "os_disk.0.disk_encryption_set_id",
        "platform_fault_domain",
        "provision_vm_agent",
        "proximity_placement_group_id",
        "secure_boot_enabled",
        "virtual_machine_scale_set_id",
        "vtpm_enabled"
    ],
    "azurerm_local_network_gateway": [],
    "azurerm_managed_disk": [
        "zone",
        "source_resource_id",
        "disk_access_id",
        "network_access_policy",
        "disk_encryption_set_id",
        "hyper_v_generation",
        "image_reference_id",
        "logical_sector_size",
        "on_demand_bursting_enabled",
        "os_type",
        "public_network_access_enabled",
        "source_uri",
        "storage_account_id",
        "tier",
        "trusted_launch_enabled"
    ],
    "azurerm_mysql_server": [
        "sku_name",
        "identity",
        "identity.type"
    ],
    "azurerm_mysql_virtual_network_rule": [],
    "azurerm_nat_gateway": [
        "sku_name"
    ],
    "azurerm_nat_gateway_public_ip_association": [],
    "azurerm_network_interface": [
        "ip_configuration.primary",
        "enable_accelerated_networking",
        "enable_ip_forwarding",
        "ip_configuration.private_ip_address",
        "ip_configuration.1.subnet_id",
        "ip_configuration.private_ip_address_version"
    ],
    "azurerm_network_interface_nat_rule_association": [],
    "azurerm_network_interface_security_group_association": [],
    "azurerm_network_security_group": [
        "security_rule.description",
        "security_rule.destination_address_prefixes",
        "security_rule.destination_port_ranges",
        "security_rule.source_address_prefixes",
        "security_rule.source_port_ranges"
    ],
    "azurerm_network_security_rule": [
        "destination_application_security_group_ids",
        "destination_address_prefixes",
        "destination_port_ranges",
        "source_address_prefixes",
        "source_port_ranges",
        "source_application_security_group_ids"
    ],
    "azurerm_private_dns_resolver": [],
    "azurerm_private_dns_resolver_dns_forwarding_ruleset": [],
    "azurerm_private_dns_resolver_inbound_endpoint": [],
    "azurerm_private_dns_resolver_outbound_endpoint": [],
    "azurerm_private_dns_resolver_virtual_network_link": [],
    "azurerm_private_endpoint": [
        "custom_network_interface_name",
        "ip_configuration",
        "ip_configuration.0.member_name",
        "ip_configuration.1.member_name",
        "ip_configuration.name",
        "ip_configuration.private_ip_address",
        "private_service_connection.0.subresource_names",
        "private_service_connection.private_connection_resource_alias",
        "private_service_connection.request_message"
    ],
    "azurerm_private_link_service": [
        "nat_ip_configuration.1.subnet_id",
        "name"
    ],
    "azurerm_public_ip": [
        "domain_name_label",
        "sku_tier",
        "zones",
        "idle_timeout_in_minutes",
        "ip_version"
    ],
    "azurerm_resource_group": [],
    "azurerm_route": [],
    "azurerm_route_server": [],
    "azurerm_route_table": [
        "route.next_hop_in_ip_address"
    ],
    "azurerm_storage_account": [
        "enable_https_traffic_only",
        "static_website",
        "static_website.error_404_document",
        "static_website.index_document",
        "account_kind",
        "is_hns_enabled",
        "network_rules",
        "network_rules.0.virtual_network_subnet_ids",
        "network_rules.default_action",
        "network_rules.ip_rules",
        "allow_nested_items_to_be_public",
        "access_tier",
        "min_tls_version",
        "blob_properties",
        "blob_properties.cors_rule",
        "blob_properties.cors_rule.allowed_headers",
        "blob_properties.cors_rule.allowed_methods",
        "blob_properties.cors_rule.allowed_origins",
        "blob_properties.cors_rule.exposed_headers",
        "blob_properties.cors_rule.max_age_in_seconds",
        "identity",
        "identity.type",
        "allowed_copy_scope",
        "blob_properties.container_delete_retention_policy",
        "blob_properties.container_delete_retention_policy.days",
        "blob_properties.delete_retention_policy",
        "blob_properties.delete_retention_policy.days",
        "default_to_oauth_authentication",
        "shared_access_key_enabled",
        "blob_properties.change_feed_enabled",
        "blob_properties.versioning_enabled",
        "infrastructure_encryption_enabled",
        "network_rules.bypass",
        "nfsv3_enabled",
        "public_network_access_enabled",
        "queue_encryption_key_type",
        "sftp_enabled",
        "table_encryption_key_type",
        "customer_managed_key",
        "customer_managed_key.0.key_vault_key_id",
        "customer_managed_key.0.user_assigned_identity_id",
        "identity.0.identity_ids",
        "queue_properties",
        "queue_properties.logging",
        "queue_properties.logging.delete",
        "queue_properties.logging.read",
        "queue_properties.logging.retention_policy_days",
        "queue_properties.logging.version",
        "queue_properties.logging.write",
        "cross_tenant_replication_enabled",
        "custom_domain",
        "custom_domain.name",
        "timeouts"
    ],
    "azurerm_storage_account_network_rules": [],
    "azurerm_subnet": [
        "service_endpoints",
        "delegation",
        "delegation.name",
        "delegation.service_delegation",
        "delegation.service_delegation.actions",
        "delegation.service_delegation.name",
        "private_endpoint_network_policies_enabled",
        "private_link_service_network_policies_enabled",
        "enforce_private_link_service_network_policies",
        "enforce_private_link_endpoint_network_policies"
    ],
    "azurerm_subnet_nat_gateway_association": [],
    "azurerm_subnet_network_security_group_association": [],
    "azurerm_subnet_route_table_association": [],
    "azurerm_virtual_hub": [
        "sku"
    ],
    "azurerm_virtual_hub_connection": [
        "routing",
        "routing.static_vnet_route",
        "routing.static_vnet_route.address_prefixes",
        "routing.static_vnet_route.name",
        "routing.static_vnet_route.next_hop_ip_address",
        "routing.0.associated_route_table_id"
    ],
    "azurerm_virtual_machine": [
        "boot_diagnostics",
        "boot_diagnostics.enabled",
        "boot_diagnostics.storage_uri",
        "storage_os_disk.os_type",
        "availability_set_id",
        "identity",
        "identity.type",
        "os_profile.custom_data",
        "plan",
        "plan.name",
        "plan.product",
        "plan.publisher",
        "primary_network_interface_id",
        "zones",
        "storage_data_disk",
        "storage_data_disk.create_option",
        "storage_data_disk.disk_size_gb",
        "storage_data_disk.lun",
        "storage_data_disk.managed_disk_type",
        "storage_data_disk.name",
        "storage_os_disk.vhd_uri",
        "storage_os_disk.disk_size_gb",
        "os_profile_windows_config",
        "os_profile_windows_config.timezone",
        "storage_image_reference.id",
        "os_profile_linux_config.ssh_keys",
        "os_profile_linux_config.ssh_keys.key_data",
        "os_profile_linux_config.ssh_keys.path",
        "os_profile_windows_config.enable_automatic_upgrades",
        "os_profile_windows_config.provision_vm_agent",
        "storage_data_disk.1.managed_disk_id"
    ],
    "azurerm_virtual_machine_data_disk_attachment": [
        "write_accelerator_enabled",
        "create_option"
    ],
    "azurerm_virtual_network": [
        "dns_servers",
        "subnet",
        "flow_timeout_in_minutes",
        "subnet.address_prefix",
        "subnet.name"
    ],
    "azurerm_virtual_network_gateway": [
        "bgp_settings",
        "bgp_settings.asn",
        "bgp_settings.peering_addresses",
        "ip_configuration.1.public_ip_address_id",
        "ip_configuration.1.subnet_id",
        "ip_configuration.2.public_ip_address_id",
        "ip_configuration.2.subnet_id",
        "name",
        "vpn_client_configuration.aad_audience",
        "vpn_client_configuration.aad_issuer",
        "vpn_client_configuration.aad_tenant",
        "vpn_client_configuration.vpn_auth_types",
        "vpn_client_configuration.vpn_client_protocols",
        "vpn_client_configuration.root_certificate",
        "vpn_client_configuration.root_certificate.name",
        "vpn_client_configuration.root_certificate.public_cert_data",
        "generation",
        "vpn_client_configuration.revoked_certificate",
        "vpn_client_configuration.revoked_certificate.name",
        "vpn_client_configuration.revoked_certificate.thumbprint"
    ],
    "azurerm_virtual_network_gateway_connection": [
        "connection_protocol",
        "name",
        "dpd_timeout_seconds",
        "ipsec_policy",
        "ipsec_policy.dh_group",
        "ipsec_policy.ike_encryption",
        "ipsec_policy.ike_integrity",
        "ipsec_policy.ipsec_encryption",
        "ipsec_policy.ipsec_integrity",
        "ipsec_policy.pfs_group",
        "ipsec_policy.sa_datasize",
        "ipsec_policy.sa_lifetime",
        "authorization_key",
        "express_route_circuit_id"
    ],
    "azurerm_virtual_network_peering": [
        "use_remote_gateways"
    ],
    "azurerm_virtual_wan": [
        "office365_local_breakout_category",
        "name",
        "type",
        "allow_branch_to_branch_traffic"
    ],
    "azurerm_windows_virtual_machine": [
        "zone",
        "boot_diagnostics",
        "boot_diagnostics.storage_account_uri",
        "additional_unattend_content",
        "additional_unattend_content.content",
        "additional_unattend_content.setting",
        "enable_automatic_updates",
        "os_disk.disk_size_gb",
        "provision_vm_agent",
        "timezone",
        "identity",
        "identity.type",
        "os_disk.security_encryption_type",
        "secure_boot_enabled",
        "vtpm_enabled",
        "availability_set_id",
        "identity.0.identity_ids",
        "custom_data",
        "os_disk.diff_disk_settings",
        "os_disk.diff_disk_settings.option",
        "allow_extension_operations",
        "hotpatching_enabled",
        "patch_mode",
        "license_type",
        "user_data",
        "source_image_id",
        "winrm_listener",
        "winrm_listener.protocol"
    ]
}
AttrAbsenceThenExistenceList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenExistence := resourceDict[addressThenExistence][0]["type"]
    addressIfAbsence == addressThenExistence

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenExistence][1]["values"], [pathThenExistence, valueThenExistence])
    is_string(pathThenExistence[count(pathThenExistence)-1]) 
    attrThenExistence := [elem | elem := pathThenExistence[n]; is_string(elem)]
    idAttrThenExistence := concat(".", attrThenExistence)
    resourceDetail[idTypeThenExistence][idAttrThenExistence] != "required"
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "string", is_string(valueThenExistence)])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "block", valueThenExistence != {}])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "number", is_number(valueThenExistence)])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "list", valueThenExistence != []])
    not idAttrThenExistence in resourceDefaultView[idTypeThenExistence]
    attrSliceThenExistence := array.slice(attrThenExistence, 0, count(attrThenExistence)-1)
    validateThenExistence2 := object.get(resourceView[idTypeThenExistence], idAttrThenExistence, [])
    count(validateThenExistence2) <= 8
    any([idAttrThenExistence in resourceTrivialView[idTypeThenExistence], count(validateThenExistence2) <= 1])
    #not is_null(valueThenExistence)
    #not count(valueThenExistence) == 0
    not contains(idAttrThenExistence, "tags")
    not contains(idAttrThenExistence, "port")
    not contains(idAttrThenExistence, "address_prefix")
    not contains(idAttrThenExistence, "address_space")
    not contains(idAttrThenExistence, "id")
    not contains(idAttrThenExistence, "certificate")
    not contains(idAttrThenExistence, "fqdn")
    not contains(idAttrThenExistence, "_name")

    pathIfAbsence != pathThenExistence
    idAttrIfAbsence != idAttrThenExistence
    attrSliceIfAbsence == attrSliceThenExistence
    rule := concat(" ", ["AbsenceThenExistence", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenExistence, idAttrThenExistence, "Existence"])
]

AttrAbsenceThenConstantList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenConstant := resourceDict[addressThenConstant][0]["type"]
    addressIfAbsence == addressThenConstant

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenConstant][1]["values"], [pathThenConstant, valueThenConstant])
    attrThenConstant := [elem | elem := pathThenConstant[n]; is_string(elem)]
    idAttrThenConstant := concat(".", attrThenConstant)
    any([resourceDetail[idTypeThenConstant][idAttrThenConstant] == "required", idAttrThenConstant in resourceDefaultView[idTypeThenConstant], idAttrThenConstant in resourceImportanceView[idTypeThenConstant]])
    idAttrThenConstant != "location"
    not contains(idAttrThenConstant, "size")
    not contains(idAttrThenConstant, "offer")
    not contains(idAttrThenConstant, "publisher")
    not contains(idAttrThenConstant, "product")
    not contains(idAttrThenConstant, "zone")
    attrSliceThenConstant := array.slice(attrThenConstant, 0, count(attrThenConstant)-1)
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) > 1
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) <= 8
    valueThenConstant == resourceView[idTypeThenConstant][idAttrThenConstant][_]
    not is_null(valueThenConstant)
    not contains(idAttrThenConstant, "tags")
    not contains(idAttrThenConstant, "id")
    not contains(idAttrThenConstant, "_name")
    idValueThenConstant := sprintf("%v", [valueThenConstant])

    pathIfAbsence != pathThenConstant
    idAttrIfAbsence != idAttrThenConstant
    any([contains(idAttrThenConstant, idAttrIfAbsence), contains(idAttrThenConstant, "sku")])
    count(attrSliceIfAbsence) <= count(attrSliceThenConstant)
    rule := concat(" ", ["AbsenceThenConstant", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenConstant, idAttrThenConstant, idValueThenConstant])
]

AttrAbsenceThenEqualList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenEqual1 := resourceDict[addressThenEqual1][0]["type"]
    idTypeThenEqual2 := resourceDict[addressThenEqual2][0]["type"]
    addressIfAbsence == addressThenEqual1
    addressThenEqual1 == addressThenEqual2

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenEqual1][1]["values"], [pathThenEqual1, valueThenEqual1])
    walk(resourceDict[addressThenEqual2][1]["values"], [pathThenEqual2, valueThenEqual2])
    any([is_string(valueThenEqual1), is_number(valueThenEqual1)])
    any([is_string(valueThenEqual2), is_number(valueThenEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual2)
    valueThenEqual1 == valueThenEqual2
    not contains(valueThenEqual1, "*")
    not contains(valueThenEqual2, "*")
    #pathThenEqual1 != pathThenEqual2
    any([pathThenEqual1 != pathThenEqual2, addressThenEqual1 != addressThenEqual2])
    attrThenEqual1 := [elem | elem := pathThenEqual1[n1]; is_string(elem)]
    attrThenEqual2 := [elem | elem := pathThenEqual2[n2]; is_string(elem)]
    idAttrThenEqual1 := concat(".", attrThenEqual1)
    idAttrThenEqual2 := concat(".", attrThenEqual2)
    any([resourceDetail[idTypeThenEqual1][idAttrThenEqual1] == "required", idAttrThenEqual1 in resourceDefaultView[idTypeThenEqual1], idAttrThenEqual1 in resourceImportanceView[idTypeThenEqual1]])
    any([resourceDetail[idTypeThenEqual2][idAttrThenEqual2] == "required", idAttrThenEqual2 in resourceDefaultView[idTypeThenEqual2], idAttrThenEqual2 in resourceImportanceView[idTypeThenEqual2]])
    #any([count(resourceView[idTypeThenEqual1][idAttrThenEqual1]) > 1, is_number(valueThenEqual1)])
    #any([count(resourceView[idTypeThenEqual2][idAttrThenEqual2]) > 1, is_number(valueThenEqual2)])
    attrSliceThenEqual1 := array.slice(attrThenEqual1, 0, count(attrThenEqual1)-1)
    attrSliceThenEqual2 := array.slice(attrThenEqual2, 0, count(attrThenEqual2)-1)
    #idAttrThenEqual1 <= idAttrThenEqual2
    not idAttrThenEqual1 in resourceReferenceView[idTypeThenEqual1]
    not idAttrThenEqual2 in resourceReferenceView[idTypeThenEqual2]
    not contains(idAttrThenEqual1, "tags")
    not contains(idAttrThenEqual1, "id")
    not contains(idAttrThenEqual2, "tags")
    not contains(idAttrThenEqual2, "id")

    pathIfAbsence != pathThenEqual2
    idAttrIfAbsence != idAttrThenEqual1
    idAttrIfAbsence != idAttrThenEqual2
    idAttrThenEqual1 == idAttrThenEqual2
    contains(idAttrThenEqual1,idAttrIfAbsence)
    attrSliceIfAbsence == attrSliceThenEqual1
    attrSliceIfAbsence == attrSliceThenEqual2
    rule := concat(" ", ["AbsenceThenEqual", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenEqual1, idAttrThenEqual1, "String", "####", idTypeThenEqual2, idAttrThenEqual2, "String"])
]

AttrAbsenceThenUnequalList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenUnequal1 := resourceDict[addressThenUnequal1][0]["type"]
    idTypeThenUnequal2 := resourceDict[addressThenUnequal2][0]["type"]
    addressIfAbsence == addressThenUnequal1
    addressThenUnequal1 == addressThenUnequal2

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenUnequal1][1]["values"], [pathThenUnequal1, valueThenUnequal1])
    walk(resourceDict[addressThenUnequal2][1]["values"], [pathThenUnequal2, valueThenUnequal2])
    any([is_string(valueThenUnequal1), is_number(valueThenUnequal1)])
    any([is_string(valueThenUnequal2), is_number(valueThenUnequal2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal1)
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal2)
    valueThenUnequal1 != valueThenUnequal2
    not contains(valueThenUnequal1, "*")
    not contains(valueThenUnequal2, "*")
    #pathThenUnequal1 != pathThenUnequal2
    any([pathThenUnequal1 != pathThenUnequal2, addressThenUnequal1 != addressThenUnequal2])
    attrThenUnequal1 := [elem | elem := pathThenUnequal1[n1]; is_string(elem)]
    attrThenUnequal2 := [elem | elem := pathThenUnequal2[n2]; is_string(elem)]
    idAttrThenUnequal1 := concat(".", attrThenUnequal1)
    idAttrThenUnequal2 := concat(".", attrThenUnequal2)
    any([resourceDetail[idTypeThenUnequal1][idAttrThenUnequal1] == "required", idAttrThenUnequal1 in resourceDefaultView[idTypeThenUnequal1], idAttrThenUnequal1 in resourceImportanceView[idTypeThenUnequal1]])
    #any([count(resourceView[idTypeThenUnequal1][idAttrThenUnequal1]) > 1, is_number(valueThenUnequal1)])
    any([resourceDetail[idTypeThenUnequal2][idAttrThenUnequal2] == "required", idAttrThenUnequal2 in resourceDefaultView[idTypeThenUnequal2], idAttrThenUnequal2 in resourceImportanceView[idTypeThenUnequal2]])
    #attrThenUnequal1[count(attrThenUnequal1)-1] == attrThenUnequal2[count(attrThenUnequal2)-1]
    #any([idAttrThenUnequal1 == idAttrThenUnequal2, contains(idAttrThenUnequal1, idAttrThenUnequal2), contains(idAttrThenUnequal2, idAttrThenUnequal1)])
    idAttrThenUnequal1 == idAttrThenUnequal2
    not idAttrThenUnequal1 in resourceReferenceView[idTypeThenUnequal1]
    not contains(idAttrThenUnequal1, "tags")
    not contains(idAttrThenUnequal1, "id")
    not contains(idAttrThenUnequal1, "_name")
    not contains(idAttrThenUnequal2, "tags")
    not contains(idAttrThenUnequal2, "id")
    not contains(idAttrThenUnequal2, "_name")

    pathIfAbsence != pathThenUnequal2
    idAttrIfAbsence != idAttrThenUnequal1
    idAttrIfAbsence != idAttrThenUnequal2
    idAttrThenUnequal1 == idAttrThenUnequal2
    contains(idAttrThenUnequal1,idAttrIfAbsence)
    rule := concat(" ", ["AbsenceThenUnequal", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenUnequal1, idAttrThenUnequal1, "String", "####", idTypeThenUnequal2, idAttrThenUnequal2, "String"])
]

AttrAbsenceThenCIDRIncludeList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenCIDRInclude1 := resourceDict[addressThenCIDRInclude1][0]["type"]
    idTypeThenCIDRInclude2 := resourceDict[addressThenCIDRInclude2][0]["type"]
    addressIfAbsence == addressThenCIDRInclude1
    addressThenCIDRInclude1 == addressThenCIDRInclude2

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenCIDRInclude1][1]["values"], [pathThenCIDRInclude1, valueThenCIDRInclude1])
    walk(resourceDict[addressThenCIDRInclude2][1]["values"], [pathThenCIDRInclude2, valueThenCIDRInclude2])
    #any([is_string(valueThenCIDRInclude1), is_boolean(valueThenCIDRInclude1), is_number(valueThenCIDRInclude1)])
    #any([is_string(valueThenCIDRInclude2), is_boolean(valueThenCIDRInclude2), is_number(valueThenCIDRInclude2)])
    net.cidr_is_valid(valueThenCIDRInclude1)
    net.cidr_is_valid(valueThenCIDRInclude2)
    valueThenCIDRInclude1 != "*"
    valueThenCIDRInclude2 != "*"
    net.cidr_contains(valueThenCIDRInclude2, valueThenCIDRInclude1)
    #pathThenCIDRInclude1 != pathThenCIDRInclude2
    any([pathThenCIDRInclude1 != pathThenCIDRInclude2, addressThenCIDRInclude1 != addressThenCIDRInclude2])
    attrThenCIDRInclude1 := [elem | elem := pathThenCIDRInclude1[n1]; is_string(elem)]
    attrThenCIDRInclude2 := [elem | elem := pathThenCIDRInclude2[n2]; is_string(elem)]
    idAttrThenCIDRInclude1 := concat(".", attrThenCIDRInclude1)
    idAttrThenCIDRInclude2 := concat(".", attrThenCIDRInclude2)
    idAttrThenCIDRInclude1 <= idAttrThenCIDRInclude2
    any([resourceDetail[idTypeThenCIDRInclude1][idAttrThenCIDRInclude1] == "required", idAttrThenCIDRInclude1 in resourceDefaultView[idTypeThenCIDRInclude1], idAttrThenCIDRInclude1 in resourceImportanceView[idTypeThenCIDRInclude1]])
    any([resourceDetail[idTypeThenCIDRInclude2][idAttrThenCIDRInclude2] == "required", idAttrThenCIDRInclude2 in resourceDefaultView[idTypeThenCIDRInclude2], idAttrThenCIDRInclude2 in resourceImportanceView[idTypeThenCIDRInclude2]])
    contains(idAttrThenCIDRInclude1, "address")
    contains(idAttrThenCIDRInclude2, "address")
    not contains(idAttrThenCIDRInclude1, "tags")
    not contains(idAttrThenCIDRInclude1, "id")
    not contains(idAttrThenCIDRInclude2, "tags")
    not contains(idAttrThenCIDRInclude2, "id")

    pathIfAbsence != pathThenCIDRInclude2
    idAttrIfAbsence != idAttrThenCIDRInclude1
    idAttrIfAbsence != idAttrThenCIDRInclude2
    idAttrThenCIDRInclude1 == idAttrThenCIDRInclude2
    contains(idAttrThenCIDRInclude1,idAttrIfAbsence)
    rule := concat(" ", ["AbsenceThenCIDRInclude", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenCIDRInclude1, idAttrThenCIDRInclude1, "CIDR", "####", idTypeThenCIDRInclude2, idAttrThenCIDRInclude2, "CIDR"])
]

AttrAbsenceThenCIDRExcludeList := [rule |
    idTypeIfAbsence := resourceDict[addressIfAbsence][0]["type"]
    idTypeIfAbsence == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfAbsence == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfAbsence][1]["values"], [pathIfAbsence, valueIfAbsence])
    is_string(pathIfAbsence[count(pathIfAbsence)-1]) 
    attrIfAbsence := [elem | elem := pathIfAbsence[n]; is_string(elem)]
    idAttrIfAbsence := concat(".", attrIfAbsence)
    resourceDetail[idTypeIfAbsence][idAttrIfAbsence] != "required"
    any([resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "string", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "number", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "list", resourceCompleteView[idTypeIfAbsence][idAttrIfAbsence] == "block"])
    not idAttrIfAbsence in resourceDefaultView[idTypeIfAbsence]
    attrSliceIfAbsence := array.slice(attrIfAbsence, 0, count(attrIfAbsence)-1)
    count(attrSliceIfAbsence) == 0
    #any([is_null(valueIfAbsence), count(valueIfAbsence) == 0])
    any([is_array(valueIfAbsence), is_null(valueIfAbsence)])
    any([is_array(valueIfAbsence) == false, valueIfAbsence == []])
    validateIfAbsence2 := object.get(resourceView[idTypeIfAbsence], idAttrIfAbsence, [])
    count(validateIfAbsence2) <= 8
    any([idAttrIfAbsence in resourceTrivialView[idTypeIfAbsence], count(validateIfAbsence2) <= 1])
    #is_null(valueIfAbsence)
    not contains(idAttrIfAbsence, "tags")
    not contains(idAttrIfAbsence, "port")
    not contains(idAttrIfAbsence, "address_prefix")
    not contains(idAttrIfAbsence, "address_space")
    not contains(idAttrIfAbsence, "id")
    not contains(idAttrIfAbsence, "certificate")
    not contains(idAttrIfAbsence, "fqdn")
    not contains(idAttrIfAbsence, "_name")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfAbsence != pathThenCIDRExclude2
    idAttrIfAbsence != idAttrThenCIDRExclude1
    idAttrIfAbsence != idAttrThenCIDRExclude2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    contains(idAttrThenCIDRExclude1,idAttrIfAbsence)
    rule := concat(" ", ["AbsenceThenCIDRExclude", "####", idTypeIfAbsence, idAttrIfAbsence, "Absence", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrExistenceThenExistenceList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenExistence := resourceDict[addressThenExistence][0]["type"]
    addressIfExistence == addressThenExistence

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenExistence][1]["values"], [pathThenExistence, valueThenExistence])
    is_string(pathThenExistence[count(pathThenExistence)-1]) 
    attrThenExistence := [elem | elem := pathThenExistence[n]; is_string(elem)]
    idAttrThenExistence := concat(".", attrThenExistence)
    resourceDetail[idTypeThenExistence][idAttrThenExistence] != "required"
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "string", is_string(valueThenExistence)])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "block", valueThenExistence != {}])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "number", is_number(valueThenExistence)])
    any([resourceCompleteView[idTypeThenExistence][idAttrThenExistence] != "list", valueThenExistence != []])
    not idAttrThenExistence in resourceDefaultView[idTypeThenExistence]
    attrSliceThenExistence := array.slice(attrThenExistence, 0, count(attrThenExistence)-1)
    validateThenExistence2 := object.get(resourceView[idTypeThenExistence], idAttrThenExistence, [])
    count(validateThenExistence2) <= 8
    any([idAttrThenExistence in resourceTrivialView[idTypeThenExistence], count(validateThenExistence2) <= 1])
    #not is_null(valueThenExistence)
    #not count(valueThenExistence) == 0
    not contains(idAttrThenExistence, "tags")
    not contains(idAttrThenExistence, "port")
    not contains(idAttrThenExistence, "address_prefix")
    not contains(idAttrThenExistence, "address_space")
    not contains(idAttrThenExistence, "id")
    not contains(idAttrThenExistence, "certificate")
    not contains(idAttrThenExistence, "fqdn")
    not contains(idAttrThenExistence, "_name")

    pathIfExistence != pathThenExistence
    idAttrIfExistence < idAttrThenExistence
    attrSliceIfExistence == attrSliceThenExistence
    rule := concat(" ", ["ExistenceThenExistence", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenExistence, idAttrThenExistence, "Existence"])
]

AttrExistenceThenConstantList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenConstant := resourceDict[addressThenConstant][0]["type"]
    addressIfExistence == addressThenConstant

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenConstant][1]["values"], [pathThenConstant, valueThenConstant])
    attrThenConstant := [elem | elem := pathThenConstant[n]; is_string(elem)]
    idAttrThenConstant := concat(".", attrThenConstant)
    any([resourceDetail[idTypeThenConstant][idAttrThenConstant] == "required", idAttrThenConstant in resourceDefaultView[idTypeThenConstant], idAttrThenConstant in resourceImportanceView[idTypeThenConstant]])
    idAttrThenConstant != "location"
    not contains(idAttrThenConstant, "size")
    not contains(idAttrThenConstant, "offer")
    not contains(idAttrThenConstant, "publisher")
    not contains(idAttrThenConstant, "product")
    not contains(idAttrThenConstant, "zone")
    attrSliceThenConstant := array.slice(attrThenConstant, 0, count(attrThenConstant)-1)
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) > 1
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) <= 8
    valueThenConstant == resourceView[idTypeThenConstant][idAttrThenConstant][_]
    not is_null(valueThenConstant)
    not contains(idAttrThenConstant, "tags")
    not contains(idAttrThenConstant, "id")
    not contains(idAttrThenConstant, "_name")
    idValueThenConstant := sprintf("%v", [valueThenConstant])

    pathIfExistence != pathThenConstant
    idAttrIfExistence != idAttrThenConstant
    any([contains(idAttrThenConstant, idAttrIfExistence), contains(idAttrThenConstant, "sku")])
    count(attrSliceIfExistence) <= count(attrSliceThenConstant)
    rule := concat(" ", ["ExistenceThenConstant", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenConstant, idAttrThenConstant, idValueThenConstant])
]

AttrExistenceThenEqualList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenEqual1 := resourceDict[addressThenEqual1][0]["type"]
    idTypeThenEqual2 := resourceDict[addressThenEqual2][0]["type"]
    addressIfExistence == addressThenEqual1
    addressThenEqual1 == addressThenEqual2

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenEqual1][1]["values"], [pathThenEqual1, valueThenEqual1])
    walk(resourceDict[addressThenEqual2][1]["values"], [pathThenEqual2, valueThenEqual2])
    any([is_string(valueThenEqual1), is_number(valueThenEqual1)])
    any([is_string(valueThenEqual2), is_number(valueThenEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual2)
    valueThenEqual1 == valueThenEqual2
    not contains(valueThenEqual1, "*")
    not contains(valueThenEqual2, "*")
    #pathThenEqual1 != pathThenEqual2
    any([pathThenEqual1 != pathThenEqual2, addressThenEqual1 != addressThenEqual2])
    attrThenEqual1 := [elem | elem := pathThenEqual1[n1]; is_string(elem)]
    attrThenEqual2 := [elem | elem := pathThenEqual2[n2]; is_string(elem)]
    idAttrThenEqual1 := concat(".", attrThenEqual1)
    idAttrThenEqual2 := concat(".", attrThenEqual2)
    any([resourceDetail[idTypeThenEqual1][idAttrThenEqual1] == "required", idAttrThenEqual1 in resourceDefaultView[idTypeThenEqual1], idAttrThenEqual1 in resourceImportanceView[idTypeThenEqual1]])
    any([resourceDetail[idTypeThenEqual2][idAttrThenEqual2] == "required", idAttrThenEqual2 in resourceDefaultView[idTypeThenEqual2], idAttrThenEqual2 in resourceImportanceView[idTypeThenEqual2]])
    #any([count(resourceView[idTypeThenEqual1][idAttrThenEqual1]) > 1, is_number(valueThenEqual1)])
    #any([count(resourceView[idTypeThenEqual2][idAttrThenEqual2]) > 1, is_number(valueThenEqual2)])
    attrSliceThenEqual1 := array.slice(attrThenEqual1, 0, count(attrThenEqual1)-1)
    attrSliceThenEqual2 := array.slice(attrThenEqual2, 0, count(attrThenEqual2)-1)
    #idAttrThenEqual1 <= idAttrThenEqual2
    not idAttrThenEqual1 in resourceReferenceView[idTypeThenEqual1]
    not idAttrThenEqual2 in resourceReferenceView[idTypeThenEqual2]
    not contains(idAttrThenEqual1, "tags")
    not contains(idAttrThenEqual1, "id")
    not contains(idAttrThenEqual2, "tags")
    not contains(idAttrThenEqual2, "id")

    pathIfExistence != pathThenEqual2
    idAttrIfExistence != idAttrThenEqual1
    idAttrIfExistence != idAttrThenEqual2
    idAttrThenEqual1 == idAttrThenEqual2
    contains(idAttrThenEqual1,idAttrIfExistence)
    attrSliceIfExistence == attrSliceThenEqual1
    attrSliceIfExistence == attrSliceThenEqual2
    rule := concat(" ", ["ExistenceThenEqual", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenEqual1, idAttrThenEqual1, "String", "####", idTypeThenEqual2, idAttrThenEqual2, "String"])
]

AttrExistenceThenUnequalList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenUnequal1 := resourceDict[addressThenUnequal1][0]["type"]
    idTypeThenUnequal2 := resourceDict[addressThenUnequal2][0]["type"]
    addressIfExistence == addressThenUnequal1
    addressThenUnequal1 == addressThenUnequal2

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenUnequal1][1]["values"], [pathThenUnequal1, valueThenUnequal1])
    walk(resourceDict[addressThenUnequal2][1]["values"], [pathThenUnequal2, valueThenUnequal2])
    any([is_string(valueThenUnequal1), is_number(valueThenUnequal1)])
    any([is_string(valueThenUnequal2), is_number(valueThenUnequal2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal1)
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal2)
    valueThenUnequal1 != valueThenUnequal2
    not contains(valueThenUnequal1, "*")
    not contains(valueThenUnequal2, "*")
    #pathThenUnequal1 != pathThenUnequal2
    any([pathThenUnequal1 != pathThenUnequal2, addressThenUnequal1 != addressThenUnequal2])
    attrThenUnequal1 := [elem | elem := pathThenUnequal1[n1]; is_string(elem)]
    attrThenUnequal2 := [elem | elem := pathThenUnequal2[n2]; is_string(elem)]
    idAttrThenUnequal1 := concat(".", attrThenUnequal1)
    idAttrThenUnequal2 := concat(".", attrThenUnequal2)
    any([resourceDetail[idTypeThenUnequal1][idAttrThenUnequal1] == "required", idAttrThenUnequal1 in resourceDefaultView[idTypeThenUnequal1], idAttrThenUnequal1 in resourceImportanceView[idTypeThenUnequal1]])
    #any([count(resourceView[idTypeThenUnequal1][idAttrThenUnequal1]) > 1, is_number(valueThenUnequal1)])
    any([resourceDetail[idTypeThenUnequal2][idAttrThenUnequal2] == "required", idAttrThenUnequal2 in resourceDefaultView[idTypeThenUnequal2], idAttrThenUnequal2 in resourceImportanceView[idTypeThenUnequal2]])
    #attrThenUnequal1[count(attrThenUnequal1)-1] == attrThenUnequal2[count(attrThenUnequal2)-1]
    #any([idAttrThenUnequal1 == idAttrThenUnequal2, contains(idAttrThenUnequal1, idAttrThenUnequal2), contains(idAttrThenUnequal2, idAttrThenUnequal1)])
    idAttrThenUnequal1 == idAttrThenUnequal2
    not idAttrThenUnequal1 in resourceReferenceView[idTypeThenUnequal1]
    not contains(idAttrThenUnequal1, "tags")
    not contains(idAttrThenUnequal1, "id")
    not contains(idAttrThenUnequal1, "_name")
    not contains(idAttrThenUnequal2, "tags")
    not contains(idAttrThenUnequal2, "id")
    not contains(idAttrThenUnequal2, "_name")

    pathIfExistence != pathThenUnequal2
    idAttrIfExistence != idAttrThenUnequal1
    idAttrIfExistence != idAttrThenUnequal2
    idAttrThenUnequal1 == idAttrThenUnequal2
    contains(idAttrThenUnequal1,idAttrIfExistence)
    rule := concat(" ", ["ExistenceThenUnequal", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenUnequal1, idAttrThenUnequal1, "String", "####", idTypeThenUnequal2, idAttrThenUnequal2, "String"])
]

AttrExistenceThenCIDRIncludeList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenCIDRInclude1 := resourceDict[addressThenCIDRInclude1][0]["type"]
    idTypeThenCIDRInclude2 := resourceDict[addressThenCIDRInclude2][0]["type"]
    addressIfExistence == addressThenCIDRInclude1
    addressThenCIDRInclude1 == addressThenCIDRInclude2

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenCIDRInclude1][1]["values"], [pathThenCIDRInclude1, valueThenCIDRInclude1])
    walk(resourceDict[addressThenCIDRInclude2][1]["values"], [pathThenCIDRInclude2, valueThenCIDRInclude2])
    #any([is_string(valueThenCIDRInclude1), is_boolean(valueThenCIDRInclude1), is_number(valueThenCIDRInclude1)])
    #any([is_string(valueThenCIDRInclude2), is_boolean(valueThenCIDRInclude2), is_number(valueThenCIDRInclude2)])
    net.cidr_is_valid(valueThenCIDRInclude1)
    net.cidr_is_valid(valueThenCIDRInclude2)
    valueThenCIDRInclude1 != "*"
    valueThenCIDRInclude2 != "*"
    net.cidr_contains(valueThenCIDRInclude2, valueThenCIDRInclude1)
    #pathThenCIDRInclude1 != pathThenCIDRInclude2
    any([pathThenCIDRInclude1 != pathThenCIDRInclude2, addressThenCIDRInclude1 != addressThenCIDRInclude2])
    attrThenCIDRInclude1 := [elem | elem := pathThenCIDRInclude1[n1]; is_string(elem)]
    attrThenCIDRInclude2 := [elem | elem := pathThenCIDRInclude2[n2]; is_string(elem)]
    idAttrThenCIDRInclude1 := concat(".", attrThenCIDRInclude1)
    idAttrThenCIDRInclude2 := concat(".", attrThenCIDRInclude2)
    idAttrThenCIDRInclude1 <= idAttrThenCIDRInclude2
    any([resourceDetail[idTypeThenCIDRInclude1][idAttrThenCIDRInclude1] == "required", idAttrThenCIDRInclude1 in resourceDefaultView[idTypeThenCIDRInclude1], idAttrThenCIDRInclude1 in resourceImportanceView[idTypeThenCIDRInclude1]])
    any([resourceDetail[idTypeThenCIDRInclude2][idAttrThenCIDRInclude2] == "required", idAttrThenCIDRInclude2 in resourceDefaultView[idTypeThenCIDRInclude2], idAttrThenCIDRInclude2 in resourceImportanceView[idTypeThenCIDRInclude2]])
    contains(idAttrThenCIDRInclude1, "address")
    contains(idAttrThenCIDRInclude2, "address")
    not contains(idAttrThenCIDRInclude1, "tags")
    not contains(idAttrThenCIDRInclude1, "id")
    not contains(idAttrThenCIDRInclude2, "tags")
    not contains(idAttrThenCIDRInclude2, "id")

    pathIfExistence != pathThenCIDRInclude2
    idAttrIfExistence != idAttrThenCIDRInclude1
    idAttrIfExistence != idAttrThenCIDRInclude2
    idAttrThenCIDRInclude1 == idAttrThenCIDRInclude2
    contains(idAttrThenCIDRInclude1,idAttrIfExistence)
    rule := concat(" ", ["ExistenceThenCIDRInclude", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenCIDRInclude1, idAttrThenCIDRInclude1, "CIDR", "####", idTypeThenCIDRInclude2, idAttrThenCIDRInclude2, "CIDR"])
]

AttrExistenceThenCIDRExcludeList := [rule |
    idTypeIfExistence := resourceDict[addressIfExistence][0]["type"]
    idTypeIfExistence == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfExistence == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfExistence][1]["values"], [pathIfExistence, valueIfExistence])
    is_string(pathIfExistence[count(pathIfExistence)-1]) 
    attrIfExistence := [elem | elem := pathIfExistence[n]; is_string(elem)]
    idAttrIfExistence := concat(".", attrIfExistence)
    resourceDetail[idTypeIfExistence][idAttrIfExistence] != "required"
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "string", is_string(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "block", valueIfExistence != {}])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "number", is_number(valueIfExistence)])
    any([resourceCompleteView[idTypeIfExistence][idAttrIfExistence] != "list", valueIfExistence != []])
    not idAttrIfExistence in resourceDefaultView[idTypeIfExistence]
    attrSliceIfExistence := array.slice(attrIfExistence, 0, count(attrIfExistence)-1)
    validateIfExistence2 := object.get(resourceView[idTypeIfExistence], idAttrIfExistence, [])
    count(validateIfExistence2) <= 8
    any([idAttrIfExistence in resourceTrivialView[idTypeIfExistence], count(validateIfExistence2) <= 1])
    not contains(idAttrIfExistence, "tags")
    not contains(idAttrIfExistence, "port")
    not contains(idAttrIfExistence, "address_prefix")
    not contains(idAttrIfExistence, "address_space")
    not contains(idAttrIfExistence, "id")
    not contains(idAttrIfExistence, "certificate")
    not contains(idAttrIfExistence, "fqdn")
    not contains(idAttrIfExistence, "_name")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfExistence != pathThenCIDRExclude2
    idAttrIfExistence != idAttrThenCIDRExclude1
    idAttrIfExistence != idAttrThenCIDRExclude2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    contains(idAttrThenCIDRExclude1,idAttrIfExistence)
    rule := concat(" ", ["ExistenceThenCIDRExclude", "####", idTypeIfExistence, idAttrIfExistence, "Existence", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrConstantThenConstantList := [rule |
    idTypeIfConstant := resourceDict[addressIfConstant][0]["type"]
    idTypeIfConstant == "azurerm_application_gateway"
    idTypeThenConstant := resourceDict[addressThenConstant][0]["type"]
    addressIfConstant == addressThenConstant

    walk(resourceDict[addressIfConstant][1]["values"], [pathIfConstant, valueIfConstant])
    attrIfConstant := [elem | elem := pathIfConstant[n]; is_string(elem)]
    idAttrIfConstant := concat(".", attrIfConstant)
    any([resourceDetail[idTypeIfConstant][idAttrIfConstant] == "required", idAttrIfConstant in resourceDefaultView[idTypeIfConstant], idAttrIfConstant in resourceImportanceView[idTypeIfConstant]])
    idAttrIfConstant != "location"
    not contains(idAttrIfConstant, "size")
    not contains(idAttrIfConstant, "offer")
    not contains(idAttrIfConstant, "publisher")
    not contains(idAttrIfConstant, "product")
    not contains(idAttrIfConstant, "zone")
    attrSliceIfConstant := array.slice(attrIfConstant, 0, count(attrIfConstant)-1)
    count(resourceView[idTypeIfConstant][idAttrIfConstant]) > 1
    count(resourceView[idTypeIfConstant][idAttrIfConstant]) <= 8
    valueIfConstant == resourceView[idTypeIfConstant][idAttrIfConstant][_]
    not is_null(valueIfConstant)
    not contains(idAttrIfConstant, "tags")
    not contains(idAttrIfConstant, "id")
    not contains(idAttrIfConstant, "_name")
    idValueIfConstant := sprintf("%v", [valueIfConstant])

    walk(resourceDict[addressThenConstant][1]["values"], [pathThenConstant, valueThenConstant])
    attrThenConstant := [elem | elem := pathThenConstant[n]; is_string(elem)]
    idAttrThenConstant := concat(".", attrThenConstant)
    any([resourceDetail[idTypeThenConstant][idAttrThenConstant] == "required", idAttrThenConstant in resourceDefaultView[idTypeThenConstant], idAttrThenConstant in resourceImportanceView[idTypeThenConstant]])
    idAttrThenConstant != "location"
    not contains(idAttrThenConstant, "size")
    not contains(idAttrThenConstant, "offer")
    not contains(idAttrThenConstant, "publisher")
    not contains(idAttrThenConstant, "product")
    not contains(idAttrThenConstant, "zone")
    attrSliceThenConstant := array.slice(attrThenConstant, 0, count(attrThenConstant)-1)
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) > 1
    count(resourceView[idTypeThenConstant][idAttrThenConstant]) <= 8
    valueThenConstant == resourceView[idTypeThenConstant][idAttrThenConstant][_]
    not is_null(valueThenConstant)
    not contains(idAttrThenConstant, "tags")
    not contains(idAttrThenConstant, "id")
    not contains(idAttrThenConstant, "_name")
    idValueThenConstant := sprintf("%v", [valueThenConstant])

    pathIfConstant != pathThenConstant
    idAttrIfConstant < idAttrThenConstant
    count(attrSliceIfConstant) <= count(attrSliceThenConstant)
    rule := concat(" ", ["ConstantThenConstant", "####", idTypeIfConstant, idAttrIfConstant, idValueIfConstant, "####", idTypeThenConstant, idAttrThenConstant, idValueThenConstant])
]

AttrEqualThenEqualList := [rule |
    idTypeIfEqual1 := resourceDict[addressIfEqual1][0]["type"]
    idTypeIfEqual1 == "azurerm_application_gateway"
    idTypeIfEqual2 := resourceDict[addressIfEqual2][0]["type"]
    idTypeIfEqual2 == "azurerm_application_gateway"
    idTypeThenEqual1 := resourceDict[addressThenEqual1][0]["type"]
    idTypeThenEqual2 := resourceDict[addressThenEqual2][0]["type"]
    addressIfEqual1 == addressIfEqual2
    addressIfEqual2 == addressThenEqual1
    addressThenEqual1 == addressThenEqual2

    walk(resourceDict[addressIfEqual1][1]["values"], [pathIfEqual1, valueIfEqual1])
    walk(resourceDict[addressIfEqual2][1]["values"], [pathIfEqual2, valueIfEqual2])
    any([is_string(valueIfEqual1), is_number(valueIfEqual1)])
    any([is_string(valueIfEqual2), is_number(valueIfEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual2)
    valueIfEqual1 == valueIfEqual2
    not contains(valueIfEqual1, "*")
    not contains(valueIfEqual2, "*")
    any([pathIfEqual1 != pathIfEqual2, addressIfEqual1 != addressIfEqual2])
    attrIfEqual1 := [elem | elem := pathIfEqual1[n1]; is_string(elem)]
    attrIfEqual2 := [elem | elem := pathIfEqual2[n2]; is_string(elem)]
    idAttrIfEqual1 := concat(".", attrIfEqual1)
    idAttrIfEqual2 := concat(".", attrIfEqual2)
    any([resourceDetail[idTypeIfEqual1][idAttrIfEqual1] == "required", idAttrIfEqual1 in resourceDefaultView[idTypeIfEqual1], idAttrIfEqual1 in resourceImportanceView[idTypeIfEqual1]])
    any([resourceDetail[idTypeIfEqual2][idAttrIfEqual2] == "required", idAttrIfEqual2 in resourceDefaultView[idTypeIfEqual2], idAttrIfEqual2 in resourceImportanceView[idTypeIfEqual2]])
    #any([count(resourceView[idTypeIfEqual1][idAttrIfEqual1]) > 1, is_number(valueIfEqual1)])
    #any([count(resourceView[idTypeIfEqual2][idAttrIfEqual2]) > 1, is_number(valueIfEqual2)])
    attrSliceIfEqual1 := array.slice(attrIfEqual1, 0, count(attrIfEqual1)-1)
    attrSliceIfEqual2 := array.slice(attrIfEqual2, 0, count(attrIfEqual2)-1)
    #idAttrIfEqual1 <= idAttrIfEqual2
    not idAttrIfEqual1 in resourceReferenceView[idTypeIfEqual1]
    not idAttrIfEqual2 in resourceReferenceView[idTypeIfEqual2]
    not contains(idAttrIfEqual1, "tags")
    not contains(idAttrIfEqual1, "id")
    not contains(idAttrIfEqual2, "tags")
    not contains(idAttrIfEqual2, "id")

    walk(resourceDict[addressThenEqual1][1]["values"], [pathThenEqual1, valueThenEqual1])
    walk(resourceDict[addressThenEqual2][1]["values"], [pathThenEqual2, valueThenEqual2])
    any([is_string(valueThenEqual1), is_number(valueThenEqual1)])
    any([is_string(valueThenEqual2), is_number(valueThenEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueThenEqual2)
    valueThenEqual1 == valueThenEqual2
    not contains(valueThenEqual1, "*")
    not contains(valueThenEqual2, "*")
    #pathThenEqual1 != pathThenEqual2
    any([pathThenEqual1 != pathThenEqual2, addressThenEqual1 != addressThenEqual2])
    attrThenEqual1 := [elem | elem := pathThenEqual1[n1]; is_string(elem)]
    attrThenEqual2 := [elem | elem := pathThenEqual2[n2]; is_string(elem)]
    idAttrThenEqual1 := concat(".", attrThenEqual1)
    idAttrThenEqual2 := concat(".", attrThenEqual2)
    any([resourceDetail[idTypeThenEqual1][idAttrThenEqual1] == "required", idAttrThenEqual1 in resourceDefaultView[idTypeThenEqual1], idAttrThenEqual1 in resourceImportanceView[idTypeThenEqual1]])
    any([resourceDetail[idTypeThenEqual2][idAttrThenEqual2] == "required", idAttrThenEqual2 in resourceDefaultView[idTypeThenEqual2], idAttrThenEqual2 in resourceImportanceView[idTypeThenEqual2]])
    #any([count(resourceView[idTypeThenEqual1][idAttrThenEqual1]) > 1, is_number(valueThenEqual1)])
    #any([count(resourceView[idTypeThenEqual2][idAttrThenEqual2]) > 1, is_number(valueThenEqual2)])
    attrSliceThenEqual1 := array.slice(attrThenEqual1, 0, count(attrThenEqual1)-1)
    attrSliceThenEqual2 := array.slice(attrThenEqual2, 0, count(attrThenEqual2)-1)
    #idAttrThenEqual1 <= idAttrThenEqual2
    not idAttrThenEqual1 in resourceReferenceView[idTypeThenEqual1]
    not idAttrThenEqual2 in resourceReferenceView[idTypeThenEqual2]
    not contains(idAttrThenEqual1, "tags")
    not contains(idAttrThenEqual1, "id")
    not contains(idAttrThenEqual2, "tags")
    not contains(idAttrThenEqual2, "id")

    pathIfEqual2 != pathThenEqual2
    idAttrIfEqual1 < idAttrThenEqual1
    idAttrIfEqual1 < idAttrThenEqual2
    idAttrIfEqual2 < idAttrThenEqual1
    idAttrIfEqual2 < idAttrThenEqual2
    idAttrIfEqual1 == idAttrIfEqual2
    idAttrThenEqual1 == idAttrThenEqual2
    attrSliceIfEqual1 == attrSliceThenEqual1
    attrSliceIfEqual1 == attrSliceThenEqual2
    attrSliceIfEqual2 == attrSliceThenEqual1
    attrSliceIfEqual2 == attrSliceThenEqual2
    rule := concat(" ", ["EqualThenEqual", "####", idTypeIfEqual1, idAttrIfEqual1, "String", "####", idTypeIfEqual2, idAttrIfEqual2, "String", "####", idTypeThenEqual1, idAttrThenEqual1, "String", "####", idTypeThenEqual2, idAttrThenEqual2, "String"])
]

AttrEqualThenUnequalList := [rule |
    idTypeIfEqual1 := resourceDict[addressIfEqual1][0]["type"]
    idTypeIfEqual1 == "azurerm_application_gateway"
    idTypeIfEqual2 := resourceDict[addressIfEqual2][0]["type"]
    idTypeIfEqual2 == "azurerm_application_gateway"
    idTypeThenUnequal1 := resourceDict[addressThenUnequal1][0]["type"]
    idTypeThenUnequal2 := resourceDict[addressThenUnequal2][0]["type"]
    addressIfEqual1 == addressIfEqual2
    addressIfEqual2 == addressThenUnequal1
    addressThenUnequal1 == addressThenUnequal2

    walk(resourceDict[addressIfEqual1][1]["values"], [pathIfEqual1, valueIfEqual1])
    walk(resourceDict[addressIfEqual2][1]["values"], [pathIfEqual2, valueIfEqual2])
    any([is_string(valueIfEqual1), is_number(valueIfEqual1)])
    any([is_string(valueIfEqual2), is_number(valueIfEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual2)
    valueIfEqual1 == valueIfEqual2
    not contains(valueIfEqual1, "*")
    not contains(valueIfEqual2, "*")
    any([pathIfEqual1 != pathIfEqual2, addressIfEqual1 != addressIfEqual2])
    attrIfEqual1 := [elem | elem := pathIfEqual1[n1]; is_string(elem)]
    attrIfEqual2 := [elem | elem := pathIfEqual2[n2]; is_string(elem)]
    idAttrIfEqual1 := concat(".", attrIfEqual1)
    idAttrIfEqual2 := concat(".", attrIfEqual2)
    any([resourceDetail[idTypeIfEqual1][idAttrIfEqual1] == "required", idAttrIfEqual1 in resourceDefaultView[idTypeIfEqual1], idAttrIfEqual1 in resourceImportanceView[idTypeIfEqual1]])
    any([resourceDetail[idTypeIfEqual2][idAttrIfEqual2] == "required", idAttrIfEqual2 in resourceDefaultView[idTypeIfEqual2], idAttrIfEqual2 in resourceImportanceView[idTypeIfEqual2]])
    #any([count(resourceView[idTypeIfEqual1][idAttrIfEqual1]) > 1, is_number(valueIfEqual1)])
    #any([count(resourceView[idTypeIfEqual2][idAttrIfEqual2]) > 1, is_number(valueIfEqual2)])
    attrSliceIfEqual1 := array.slice(attrIfEqual1, 0, count(attrIfEqual1)-1)
    attrSliceIfEqual2 := array.slice(attrIfEqual2, 0, count(attrIfEqual2)-1)
    #idAttrIfEqual1 <= idAttrIfEqual2
    not idAttrIfEqual1 in resourceReferenceView[idTypeIfEqual1]
    not idAttrIfEqual2 in resourceReferenceView[idTypeIfEqual2]
    not contains(idAttrIfEqual1, "tags")
    not contains(idAttrIfEqual1, "id")
    not contains(idAttrIfEqual2, "tags")
    not contains(idAttrIfEqual2, "id")

    walk(resourceDict[addressThenUnequal1][1]["values"], [pathThenUnequal1, valueThenUnequal1])
    walk(resourceDict[addressThenUnequal2][1]["values"], [pathThenUnequal2, valueThenUnequal2])
    any([is_string(valueThenUnequal1), is_number(valueThenUnequal1)])
    any([is_string(valueThenUnequal2), is_number(valueThenUnequal2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal1)
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal2)
    valueThenUnequal1 != valueThenUnequal2
    not contains(valueThenUnequal1, "*")
    not contains(valueThenUnequal2, "*")
    #pathThenUnequal1 != pathThenUnequal2
    any([pathThenUnequal1 != pathThenUnequal2, addressThenUnequal1 != addressThenUnequal2])
    attrThenUnequal1 := [elem | elem := pathThenUnequal1[n1]; is_string(elem)]
    attrThenUnequal2 := [elem | elem := pathThenUnequal2[n2]; is_string(elem)]
    idAttrThenUnequal1 := concat(".", attrThenUnequal1)
    idAttrThenUnequal2 := concat(".", attrThenUnequal2)
    any([resourceDetail[idTypeThenUnequal1][idAttrThenUnequal1] == "required", idAttrThenUnequal1 in resourceDefaultView[idTypeThenUnequal1], idAttrThenUnequal1 in resourceImportanceView[idTypeThenUnequal1]])
    #any([count(resourceView[idTypeThenUnequal1][idAttrThenUnequal1]) > 1, is_number(valueThenUnequal1)])
    any([resourceDetail[idTypeThenUnequal2][idAttrThenUnequal2] == "required", idAttrThenUnequal2 in resourceDefaultView[idTypeThenUnequal2], idAttrThenUnequal2 in resourceImportanceView[idTypeThenUnequal2]])
    #attrThenUnequal1[count(attrThenUnequal1)-1] == attrThenUnequal2[count(attrThenUnequal2)-1]
    #any([idAttrThenUnequal1 == idAttrThenUnequal2, contains(idAttrThenUnequal1, idAttrThenUnequal2), contains(idAttrThenUnequal2, idAttrThenUnequal1)])
    idAttrThenUnequal1 == idAttrThenUnequal2
    not idAttrThenUnequal1 in resourceReferenceView[idTypeThenUnequal1]
    not contains(idAttrThenUnequal1, "tags")
    not contains(idAttrThenUnequal1, "id")
    not contains(idAttrThenUnequal1, "_name")
    not contains(idAttrThenUnequal2, "tags")
    not contains(idAttrThenUnequal2, "id")
    not contains(idAttrThenUnequal2, "_name")

    pathIfEqual2 != pathThenUnequal2
    idAttrIfEqual1 != idAttrThenUnequal1
    idAttrIfEqual1 != idAttrThenUnequal2
    idAttrIfEqual2 != idAttrThenUnequal1
    idAttrIfEqual2 != idAttrThenUnequal2
    idAttrIfEqual1 == idAttrIfEqual2
    idAttrThenUnequal1 == idAttrThenUnequal2
    rule := concat(" ", ["EqualThenUnequal", "####", idTypeIfEqual1, idAttrIfEqual1, "String", "####", idTypeIfEqual2, idAttrIfEqual2, "String", "####", idTypeThenUnequal1, idAttrThenUnequal1, "String", "####", idTypeThenUnequal2, idAttrThenUnequal2, "String"])
]

AttrEqualThenCIDRIncludeList := [rule |
    idTypeIfEqual1 := resourceDict[addressIfEqual1][0]["type"]
    idTypeIfEqual1 == "azurerm_application_gateway"
    idTypeIfEqual2 := resourceDict[addressIfEqual2][0]["type"]
    idTypeIfEqual2 == "azurerm_application_gateway"
    idTypeThenCIDRInclude1 := resourceDict[addressThenCIDRInclude1][0]["type"]
    idTypeThenCIDRInclude2 := resourceDict[addressThenCIDRInclude2][0]["type"]
    addressIfEqual1 == addressIfEqual2
    addressIfEqual2 == addressThenCIDRInclude1
    addressThenCIDRInclude1 == addressThenCIDRInclude2

    walk(resourceDict[addressIfEqual1][1]["values"], [pathIfEqual1, valueIfEqual1])
    walk(resourceDict[addressIfEqual2][1]["values"], [pathIfEqual2, valueIfEqual2])
    any([is_string(valueIfEqual1), is_number(valueIfEqual1)])
    any([is_string(valueIfEqual2), is_number(valueIfEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual2)
    valueIfEqual1 == valueIfEqual2
    not contains(valueIfEqual1, "*")
    not contains(valueIfEqual2, "*")
    any([pathIfEqual1 != pathIfEqual2, addressIfEqual1 != addressIfEqual2])
    attrIfEqual1 := [elem | elem := pathIfEqual1[n1]; is_string(elem)]
    attrIfEqual2 := [elem | elem := pathIfEqual2[n2]; is_string(elem)]
    idAttrIfEqual1 := concat(".", attrIfEqual1)
    idAttrIfEqual2 := concat(".", attrIfEqual2)
    any([resourceDetail[idTypeIfEqual1][idAttrIfEqual1] == "required", idAttrIfEqual1 in resourceDefaultView[idTypeIfEqual1], idAttrIfEqual1 in resourceImportanceView[idTypeIfEqual1]])
    any([resourceDetail[idTypeIfEqual2][idAttrIfEqual2] == "required", idAttrIfEqual2 in resourceDefaultView[idTypeIfEqual2], idAttrIfEqual2 in resourceImportanceView[idTypeIfEqual2]])
    #any([count(resourceView[idTypeIfEqual1][idAttrIfEqual1]) > 1, is_number(valueIfEqual1)])
    #any([count(resourceView[idTypeIfEqual2][idAttrIfEqual2]) > 1, is_number(valueIfEqual2)])
    attrSliceIfEqual1 := array.slice(attrIfEqual1, 0, count(attrIfEqual1)-1)
    attrSliceIfEqual2 := array.slice(attrIfEqual2, 0, count(attrIfEqual2)-1)
    #idAttrIfEqual1 <= idAttrIfEqual2
    not idAttrIfEqual1 in resourceReferenceView[idTypeIfEqual1]
    not idAttrIfEqual2 in resourceReferenceView[idTypeIfEqual2]
    not contains(idAttrIfEqual1, "tags")
    not contains(idAttrIfEqual1, "id")
    not contains(idAttrIfEqual2, "tags")
    not contains(idAttrIfEqual2, "id")

    walk(resourceDict[addressThenCIDRInclude1][1]["values"], [pathThenCIDRInclude1, valueThenCIDRInclude1])
    walk(resourceDict[addressThenCIDRInclude2][1]["values"], [pathThenCIDRInclude2, valueThenCIDRInclude2])
    #any([is_string(valueThenCIDRInclude1), is_boolean(valueThenCIDRInclude1), is_number(valueThenCIDRInclude1)])
    #any([is_string(valueThenCIDRInclude2), is_boolean(valueThenCIDRInclude2), is_number(valueThenCIDRInclude2)])
    net.cidr_is_valid(valueThenCIDRInclude1)
    net.cidr_is_valid(valueThenCIDRInclude2)
    valueThenCIDRInclude1 != "*"
    valueThenCIDRInclude2 != "*"
    net.cidr_contains(valueThenCIDRInclude2, valueThenCIDRInclude1)
    #pathThenCIDRInclude1 != pathThenCIDRInclude2
    any([pathThenCIDRInclude1 != pathThenCIDRInclude2, addressThenCIDRInclude1 != addressThenCIDRInclude2])
    attrThenCIDRInclude1 := [elem | elem := pathThenCIDRInclude1[n1]; is_string(elem)]
    attrThenCIDRInclude2 := [elem | elem := pathThenCIDRInclude2[n2]; is_string(elem)]
    idAttrThenCIDRInclude1 := concat(".", attrThenCIDRInclude1)
    idAttrThenCIDRInclude2 := concat(".", attrThenCIDRInclude2)
    idAttrThenCIDRInclude1 <= idAttrThenCIDRInclude2
    any([resourceDetail[idTypeThenCIDRInclude1][idAttrThenCIDRInclude1] == "required", idAttrThenCIDRInclude1 in resourceDefaultView[idTypeThenCIDRInclude1], idAttrThenCIDRInclude1 in resourceImportanceView[idTypeThenCIDRInclude1]])
    any([resourceDetail[idTypeThenCIDRInclude2][idAttrThenCIDRInclude2] == "required", idAttrThenCIDRInclude2 in resourceDefaultView[idTypeThenCIDRInclude2], idAttrThenCIDRInclude2 in resourceImportanceView[idTypeThenCIDRInclude2]])
    contains(idAttrThenCIDRInclude1, "address")
    contains(idAttrThenCIDRInclude2, "address")
    not contains(idAttrThenCIDRInclude1, "tags")
    not contains(idAttrThenCIDRInclude1, "id")
    not contains(idAttrThenCIDRInclude2, "tags")
    not contains(idAttrThenCIDRInclude2, "id")

    pathIfEqual2 != pathThenCIDRInclude2
    idAttrIfEqual1 != idAttrThenCIDRInclude1
    idAttrIfEqual1 != idAttrThenCIDRInclude2
    idAttrIfEqual2 != idAttrThenCIDRInclude1
    idAttrIfEqual2 != idAttrThenCIDRInclude2
    idAttrIfEqual1 == idAttrIfEqual2
    idAttrThenCIDRInclude1 == idAttrThenCIDRInclude2
    rule := concat(" ", ["EqualThenCIDRInclude", "####", idTypeIfEqual1, idAttrIfEqual1, "String", "####", idTypeIfEqual2, idAttrIfEqual2, "String", "####", idTypeThenCIDRInclude1, idAttrThenCIDRInclude1, "CIDR", "####", idTypeThenCIDRInclude2, idAttrThenCIDRInclude2, "CIDR"])
]

AttrEqualThenCIDRExcludeList := [rule |
    idTypeIfEqual1 := resourceDict[addressIfEqual1][0]["type"]
    idTypeIfEqual1 == "azurerm_application_gateway"
    idTypeIfEqual2 := resourceDict[addressIfEqual2][0]["type"]
    idTypeIfEqual2 == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfEqual1 == addressIfEqual2
    addressIfEqual2 == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfEqual1][1]["values"], [pathIfEqual1, valueIfEqual1])
    walk(resourceDict[addressIfEqual2][1]["values"], [pathIfEqual2, valueIfEqual2])
    any([is_string(valueIfEqual1), is_number(valueIfEqual1)])
    any([is_string(valueIfEqual2), is_number(valueIfEqual2)])
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual1)
    #not net.cidr_contains("0.0.0.0/0", valueIfEqual2)
    valueIfEqual1 == valueIfEqual2
    not contains(valueIfEqual1, "*")
    not contains(valueIfEqual2, "*")
    any([pathIfEqual1 != pathIfEqual2, addressIfEqual1 != addressIfEqual2])
    attrIfEqual1 := [elem | elem := pathIfEqual1[n1]; is_string(elem)]
    attrIfEqual2 := [elem | elem := pathIfEqual2[n2]; is_string(elem)]
    idAttrIfEqual1 := concat(".", attrIfEqual1)
    idAttrIfEqual2 := concat(".", attrIfEqual2)
    any([resourceDetail[idTypeIfEqual1][idAttrIfEqual1] == "required", idAttrIfEqual1 in resourceDefaultView[idTypeIfEqual1], idAttrIfEqual1 in resourceImportanceView[idTypeIfEqual1]])
    any([resourceDetail[idTypeIfEqual2][idAttrIfEqual2] == "required", idAttrIfEqual2 in resourceDefaultView[idTypeIfEqual2], idAttrIfEqual2 in resourceImportanceView[idTypeIfEqual2]])
    #any([count(resourceView[idTypeIfEqual1][idAttrIfEqual1]) > 1, is_number(valueIfEqual1)])
    #any([count(resourceView[idTypeIfEqual2][idAttrIfEqual2]) > 1, is_number(valueIfEqual2)])
    attrSliceIfEqual1 := array.slice(attrIfEqual1, 0, count(attrIfEqual1)-1)
    attrSliceIfEqual2 := array.slice(attrIfEqual2, 0, count(attrIfEqual2)-1)
    #idAttrIfEqual1 <= idAttrIfEqual2
    not idAttrIfEqual1 in resourceReferenceView[idTypeIfEqual1]
    not idAttrIfEqual2 in resourceReferenceView[idTypeIfEqual2]
    not contains(idAttrIfEqual1, "tags")
    not contains(idAttrIfEqual1, "id")
    not contains(idAttrIfEqual2, "tags")
    not contains(idAttrIfEqual2, "id")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfEqual2 != pathThenCIDRExclude2
    idAttrIfEqual1 != idAttrThenCIDRExclude1
    idAttrIfEqual1 != idAttrThenCIDRExclude2
    idAttrIfEqual2 != idAttrThenCIDRExclude1
    idAttrIfEqual2 != idAttrThenCIDRExclude2
    idAttrIfEqual1 == idAttrIfEqual2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    rule := concat(" ", ["EqualThenCIDRExclude", "####", idTypeIfEqual1, idAttrIfEqual1, "String", "####", idTypeIfEqual2, idAttrIfEqual2, "String", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrUnequalThenUnequalList := [rule |
    idTypeIfUnequal1 := resourceDict[addressIfUnequal1][0]["type"]
    idTypeIfUnequal1 == "azurerm_application_gateway"
    idTypeIfUnequal2 := resourceDict[addressIfUnequal2][0]["type"]
    idTypeIfUnequal2 == "azurerm_application_gateway"
    idTypeThenUnequal1 := resourceDict[addressThenUnequal1][0]["type"]
    idTypeThenUnequal2 := resourceDict[addressThenUnequal2][0]["type"]
    addressIfUnequal1 == addressIfUnequal2
    addressIfUnequal2 == addressThenUnequal1
    addressThenUnequal1 == addressThenUnequal2

    walk(resourceDict[addressIfUnequal1][1]["values"], [pathIfUnequal1, valueIfUnequal1])
    walk(resourceDict[addressIfUnequal2][1]["values"], [pathIfUnequal2, valueIfUnequal2])
    any([is_string(valueIfUnequal1), is_number(valueIfUnequal1)])
    any([is_string(valueIfUnequal2), is_number(valueIfUnequal2)])
    valueIfUnequal1 != valueIfUnequal2
    not contains(valueIfUnequal1, "*")
    not contains(valueIfUnequal2, "*")
    #pathIfUnequal1 != pathIfUnequal2
    any([pathIfUnequal1 != pathIfUnequal2, addressIfUnequal1 != addressIfUnequal2])
    attrIfUnequal1 := [elem | elem := pathIfUnequal1[n1]; is_string(elem)]
    attrIfUnequal2 := [elem | elem := pathIfUnequal2[n2]; is_string(elem)]
    idAttrIfUnequal1 := concat(".", attrIfUnequal1)
    idAttrIfUnequal2 := concat(".", attrIfUnequal2)
    any([resourceDetail[idTypeIfUnequal1][idAttrIfUnequal1] == "required", idAttrIfUnequal1 in resourceDefaultView[idTypeIfUnequal1], idAttrIfUnequal1 in resourceImportanceView[idTypeIfUnequal1]])
    #any([count(resourceView[idTypeIfUnequal1][idAttrIfUnequal1]) > 1, is_number(valueIfUnequal1)])
    #any([resourceDetail[idTypeIfUnequal2][idAttrIfUnequal2] == "required", idAttrIfUnequal2 in resourceDefaultView[idTypeIfUnequal2]])
    idAttrIfUnequal1 == idAttrIfUnequal2
    not idAttrIfUnequal1 in resourceReferenceView[idTypeIfUnequal1]
    not contains(idAttrIfUnequal1, "tags")
    not contains(idAttrIfUnequal1, "id")
    not contains(idAttrIfUnequal1, "_name")
    not contains(idAttrIfUnequal2, "tags")
    not contains(idAttrIfUnequal2, "id")
    not contains(idAttrIfUnequal2, "_name")

    walk(resourceDict[addressThenUnequal1][1]["values"], [pathThenUnequal1, valueThenUnequal1])
    walk(resourceDict[addressThenUnequal2][1]["values"], [pathThenUnequal2, valueThenUnequal2])
    any([is_string(valueThenUnequal1), is_number(valueThenUnequal1)])
    any([is_string(valueThenUnequal2), is_number(valueThenUnequal2)])
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal1)
    #not net.cidr_contains("0.0.0.0/0", valueThenUnequal2)
    valueThenUnequal1 != valueThenUnequal2
    not contains(valueThenUnequal1, "*")
    not contains(valueThenUnequal2, "*")
    #pathThenUnequal1 != pathThenUnequal2
    any([pathThenUnequal1 != pathThenUnequal2, addressThenUnequal1 != addressThenUnequal2])
    attrThenUnequal1 := [elem | elem := pathThenUnequal1[n1]; is_string(elem)]
    attrThenUnequal2 := [elem | elem := pathThenUnequal2[n2]; is_string(elem)]
    idAttrThenUnequal1 := concat(".", attrThenUnequal1)
    idAttrThenUnequal2 := concat(".", attrThenUnequal2)
    any([resourceDetail[idTypeThenUnequal1][idAttrThenUnequal1] == "required", idAttrThenUnequal1 in resourceDefaultView[idTypeThenUnequal1], idAttrThenUnequal1 in resourceImportanceView[idTypeThenUnequal1]])
    #any([count(resourceView[idTypeThenUnequal1][idAttrThenUnequal1]) > 1, is_number(valueThenUnequal1)])
    any([resourceDetail[idTypeThenUnequal2][idAttrThenUnequal2] == "required", idAttrThenUnequal2 in resourceDefaultView[idTypeThenUnequal2], idAttrThenUnequal2 in resourceImportanceView[idTypeThenUnequal2]])
    #attrThenUnequal1[count(attrThenUnequal1)-1] == attrThenUnequal2[count(attrThenUnequal2)-1]
    #any([idAttrThenUnequal1 == idAttrThenUnequal2, contains(idAttrThenUnequal1, idAttrThenUnequal2), contains(idAttrThenUnequal2, idAttrThenUnequal1)])
    idAttrThenUnequal1 == idAttrThenUnequal2
    not idAttrThenUnequal1 in resourceReferenceView[idTypeThenUnequal1]
    not contains(idAttrThenUnequal1, "tags")
    not contains(idAttrThenUnequal1, "id")
    not contains(idAttrThenUnequal1, "_name")
    not contains(idAttrThenUnequal2, "tags")
    not contains(idAttrThenUnequal2, "id")
    not contains(idAttrThenUnequal2, "_name")

    pathIfUnequal2 != pathThenUnequal2
    idAttrIfUnequal1 < idAttrThenUnequal1
    idAttrIfUnequal1 < idAttrThenUnequal2
    idAttrIfUnequal2 < idAttrThenUnequal1
    idAttrIfUnequal2 < idAttrThenUnequal2
    idAttrIfUnequal1 == idAttrIfUnequal2
    idAttrThenUnequal1 == idAttrThenUnequal2
    rule := concat(" ", ["UnequalThenUnequal", "####", idTypeIfUnequal1, idAttrIfUnequal1, "String", "####", idTypeIfUnequal2, idAttrIfUnequal2, "String", "####", idTypeThenUnequal1, idAttrThenUnequal1, "String", "####", idTypeThenUnequal2, idAttrThenUnequal2, "String"])
]

AttrUnequalThenCIDRIncludeList := [rule |
    idTypeIfUnequal1 := resourceDict[addressIfUnequal1][0]["type"]
    idTypeIfUnequal1 == "azurerm_application_gateway"
    idTypeIfUnequal2 := resourceDict[addressIfUnequal2][0]["type"]
    idTypeIfUnequal2 == "azurerm_application_gateway"
    idTypeThenCIDRInclude1 := resourceDict[addressThenCIDRInclude1][0]["type"]
    idTypeThenCIDRInclude2 := resourceDict[addressThenCIDRInclude2][0]["type"]
    addressIfUnequal1 == addressIfUnequal2
    addressIfUnequal2 == addressThenCIDRInclude1
    addressThenCIDRInclude1 == addressThenCIDRInclude2

    walk(resourceDict[addressIfUnequal1][1]["values"], [pathIfUnequal1, valueIfUnequal1])
    walk(resourceDict[addressIfUnequal2][1]["values"], [pathIfUnequal2, valueIfUnequal2])
    any([is_string(valueIfUnequal1), is_number(valueIfUnequal1)])
    any([is_string(valueIfUnequal2), is_number(valueIfUnequal2)])
    valueIfUnequal1 != valueIfUnequal2
    not contains(valueIfUnequal1, "*")
    not contains(valueIfUnequal2, "*")
    #pathIfUnequal1 != pathIfUnequal2
    any([pathIfUnequal1 != pathIfUnequal2, addressIfUnequal1 != addressIfUnequal2])
    attrIfUnequal1 := [elem | elem := pathIfUnequal1[n1]; is_string(elem)]
    attrIfUnequal2 := [elem | elem := pathIfUnequal2[n2]; is_string(elem)]
    idAttrIfUnequal1 := concat(".", attrIfUnequal1)
    idAttrIfUnequal2 := concat(".", attrIfUnequal2)
    any([resourceDetail[idTypeIfUnequal1][idAttrIfUnequal1] == "required", idAttrIfUnequal1 in resourceDefaultView[idTypeIfUnequal1], idAttrIfUnequal1 in resourceImportanceView[idTypeIfUnequal1]])
    #any([count(resourceView[idTypeIfUnequal1][idAttrIfUnequal1]) > 1, is_number(valueIfUnequal1)])
    #any([resourceDetail[idTypeIfUnequal2][idAttrIfUnequal2] == "required", idAttrIfUnequal2 in resourceDefaultView[idTypeIfUnequal2]])
    idAttrIfUnequal1 == idAttrIfUnequal2
    not idAttrIfUnequal1 in resourceReferenceView[idTypeIfUnequal1]
    not contains(idAttrIfUnequal1, "tags")
    not contains(idAttrIfUnequal1, "id")
    not contains(idAttrIfUnequal1, "_name")
    not contains(idAttrIfUnequal2, "tags")
    not contains(idAttrIfUnequal2, "id")
    not contains(idAttrIfUnequal2, "_name")

    walk(resourceDict[addressThenCIDRInclude1][1]["values"], [pathThenCIDRInclude1, valueThenCIDRInclude1])
    walk(resourceDict[addressThenCIDRInclude2][1]["values"], [pathThenCIDRInclude2, valueThenCIDRInclude2])
    #any([is_string(valueThenCIDRInclude1), is_boolean(valueThenCIDRInclude1), is_number(valueThenCIDRInclude1)])
    #any([is_string(valueThenCIDRInclude2), is_boolean(valueThenCIDRInclude2), is_number(valueThenCIDRInclude2)])
    net.cidr_is_valid(valueThenCIDRInclude1)
    net.cidr_is_valid(valueThenCIDRInclude2)
    valueThenCIDRInclude1 != "*"
    valueThenCIDRInclude2 != "*"
    net.cidr_contains(valueThenCIDRInclude2, valueThenCIDRInclude1)
    #pathThenCIDRInclude1 != pathThenCIDRInclude2
    any([pathThenCIDRInclude1 != pathThenCIDRInclude2, addressThenCIDRInclude1 != addressThenCIDRInclude2])
    attrThenCIDRInclude1 := [elem | elem := pathThenCIDRInclude1[n1]; is_string(elem)]
    attrThenCIDRInclude2 := [elem | elem := pathThenCIDRInclude2[n2]; is_string(elem)]
    idAttrThenCIDRInclude1 := concat(".", attrThenCIDRInclude1)
    idAttrThenCIDRInclude2 := concat(".", attrThenCIDRInclude2)
    idAttrThenCIDRInclude1 <= idAttrThenCIDRInclude2
    any([resourceDetail[idTypeThenCIDRInclude1][idAttrThenCIDRInclude1] == "required", idAttrThenCIDRInclude1 in resourceDefaultView[idTypeThenCIDRInclude1], idAttrThenCIDRInclude1 in resourceImportanceView[idTypeThenCIDRInclude1]])
    any([resourceDetail[idTypeThenCIDRInclude2][idAttrThenCIDRInclude2] == "required", idAttrThenCIDRInclude2 in resourceDefaultView[idTypeThenCIDRInclude2], idAttrThenCIDRInclude2 in resourceImportanceView[idTypeThenCIDRInclude2]])
    contains(idAttrThenCIDRInclude1, "address")
    contains(idAttrThenCIDRInclude2, "address")
    not contains(idAttrThenCIDRInclude1, "tags")
    not contains(idAttrThenCIDRInclude1, "id")
    not contains(idAttrThenCIDRInclude2, "tags")
    not contains(idAttrThenCIDRInclude2, "id")

    pathIfUnequal2 != pathThenCIDRInclude2
    idAttrIfUnequal1 != idAttrThenCIDRInclude1
    idAttrIfUnequal1 != idAttrThenCIDRInclude2
    idAttrIfUnequal2 != idAttrThenCIDRInclude1
    idAttrIfUnequal2 != idAttrThenCIDRInclude2
    idAttrIfUnequal1 == idAttrIfUnequal2
    idAttrThenCIDRInclude1 == idAttrThenCIDRInclude2
    rule := concat(" ", ["UnequalThenCIDRInclude", "####", idTypeIfUnequal1, idAttrIfUnequal1, "String", "####", idTypeIfUnequal2, idAttrIfUnequal2, "String", "####", idTypeThenCIDRInclude1, idAttrThenCIDRInclude1, "CIDR", "####", idTypeThenCIDRInclude2, idAttrThenCIDRInclude2, "CIDR"])
]

AttrUnequalThenCIDRExcludeList := [rule |
    idTypeIfUnequal1 := resourceDict[addressIfUnequal1][0]["type"]
    idTypeIfUnequal1 == "azurerm_application_gateway"
    idTypeIfUnequal2 := resourceDict[addressIfUnequal2][0]["type"]
    idTypeIfUnequal2 == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfUnequal1 == addressIfUnequal2
    addressIfUnequal2 == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfUnequal1][1]["values"], [pathIfUnequal1, valueIfUnequal1])
    walk(resourceDict[addressIfUnequal2][1]["values"], [pathIfUnequal2, valueIfUnequal2])
    any([is_string(valueIfUnequal1), is_number(valueIfUnequal1)])
    any([is_string(valueIfUnequal2), is_number(valueIfUnequal2)])
    valueIfUnequal1 != valueIfUnequal2
    not contains(valueIfUnequal1, "*")
    not contains(valueIfUnequal2, "*")
    #pathIfUnequal1 != pathIfUnequal2
    any([pathIfUnequal1 != pathIfUnequal2, addressIfUnequal1 != addressIfUnequal2])
    attrIfUnequal1 := [elem | elem := pathIfUnequal1[n1]; is_string(elem)]
    attrIfUnequal2 := [elem | elem := pathIfUnequal2[n2]; is_string(elem)]
    idAttrIfUnequal1 := concat(".", attrIfUnequal1)
    idAttrIfUnequal2 := concat(".", attrIfUnequal2)
    any([resourceDetail[idTypeIfUnequal1][idAttrIfUnequal1] == "required", idAttrIfUnequal1 in resourceDefaultView[idTypeIfUnequal1], idAttrIfUnequal1 in resourceImportanceView[idTypeIfUnequal1]])
    #any([count(resourceView[idTypeIfUnequal1][idAttrIfUnequal1]) > 1, is_number(valueIfUnequal1)])
    #any([resourceDetail[idTypeIfUnequal2][idAttrIfUnequal2] == "required", idAttrIfUnequal2 in resourceDefaultView[idTypeIfUnequal2]])
    idAttrIfUnequal1 == idAttrIfUnequal2
    not idAttrIfUnequal1 in resourceReferenceView[idTypeIfUnequal1]
    not contains(idAttrIfUnequal1, "tags")
    not contains(idAttrIfUnequal1, "id")
    not contains(idAttrIfUnequal1, "_name")
    not contains(idAttrIfUnequal2, "tags")
    not contains(idAttrIfUnequal2, "id")
    not contains(idAttrIfUnequal2, "_name")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfUnequal2 != pathThenCIDRExclude2
    idAttrIfUnequal1 != idAttrThenCIDRExclude1
    idAttrIfUnequal1 != idAttrThenCIDRExclude2
    idAttrIfUnequal2 != idAttrThenCIDRExclude1
    idAttrIfUnequal2 != idAttrThenCIDRExclude2
    idAttrIfUnequal1 == idAttrIfUnequal2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    rule := concat(" ", ["UnequalThenCIDRExclude", "####", idTypeIfUnequal1, idAttrIfUnequal1, "String", "####", idTypeIfUnequal2, idAttrIfUnequal2, "String", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrCIDRIncludeThenCIDRIncludeList := [rule |
    idTypeIfCIDRInclude1 := resourceDict[addressIfCIDRInclude1][0]["type"]
    idTypeIfCIDRInclude1 == "azurerm_application_gateway"
    idTypeIfCIDRInclude2 := resourceDict[addressIfCIDRInclude2][0]["type"]
    idTypeIfCIDRInclude2 == "azurerm_application_gateway"
    idTypeThenCIDRInclude1 := resourceDict[addressThenCIDRInclude1][0]["type"]
    idTypeThenCIDRInclude2 := resourceDict[addressThenCIDRInclude2][0]["type"]
    addressIfCIDRInclude1 == addressIfCIDRInclude2
    addressIfCIDRInclude2 == addressThenCIDRInclude1
    addressThenCIDRInclude1 == addressThenCIDRInclude2

    walk(resourceDict[addressIfCIDRInclude1][1]["values"], [pathIfCIDRInclude1, valueIfCIDRInclude1])
    walk(resourceDict[addressIfCIDRInclude2][1]["values"], [pathIfCIDRInclude2, valueIfCIDRInclude2])
    #any([is_string(valueIfCIDRInclude1), is_boolean(valueIfCIDRInclude1), is_number(valueIfCIDRInclude1)])
    #any([is_string(valueIfCIDRInclude2), is_boolean(valueIfCIDRInclude2), is_number(valueIfCIDRInclude2)])
    net.cidr_is_valid(valueIfCIDRInclude1)
    net.cidr_is_valid(valueIfCIDRInclude2)
    valueIfCIDRInclude1 != "*"
    valueIfCIDRInclude2 != "*"
    net.cidr_contains(valueIfCIDRInclude2, valueIfCIDRInclude1)
    #pathIfCIDRInclude1 != pathIfCIDRInclude2
    any([pathIfCIDRInclude1 != pathIfCIDRInclude2, addressIfCIDRInclude1 != addressIfCIDRInclude2])
    attrIfCIDRInclude1 := [elem | elem := pathIfCIDRInclude1[n1]; is_string(elem)]
    attrIfCIDRInclude2 := [elem | elem := pathIfCIDRInclude2[n2]; is_string(elem)]
    idAttrIfCIDRInclude1 := concat(".", attrIfCIDRInclude1)
    idAttrIfCIDRInclude2 := concat(".", attrIfCIDRInclude2)
    idAttrIfCIDRInclude1 <= idAttrIfCIDRInclude2
    any([resourceDetail[idTypeIfCIDRInclude1][idAttrIfCIDRInclude1] == "required", idAttrIfCIDRInclude1 in resourceDefaultView[idTypeIfCIDRInclude1], idAttrIfCIDRInclude1 in resourceImportanceView[idTypeIfCIDRInclude1]])
    any([resourceDetail[idTypeIfCIDRInclude2][idAttrIfCIDRInclude2] == "required", idAttrIfCIDRInclude2 in resourceDefaultView[idTypeIfCIDRInclude2], idAttrIfCIDRInclude2 in resourceImportanceView[idTypeIfCIDRInclude2]])
    contains(idAttrIfCIDRInclude1, "address")
    contains(idAttrIfCIDRInclude2, "address")
    not contains(idAttrIfCIDRInclude1, "tags")
    not contains(idAttrIfCIDRInclude1, "id")
    not contains(idAttrIfCIDRInclude2, "tags")
    not contains(idAttrIfCIDRInclude2, "id")

    walk(resourceDict[addressThenCIDRInclude1][1]["values"], [pathThenCIDRInclude1, valueThenCIDRInclude1])
    walk(resourceDict[addressThenCIDRInclude2][1]["values"], [pathThenCIDRInclude2, valueThenCIDRInclude2])
    #any([is_string(valueThenCIDRInclude1), is_boolean(valueThenCIDRInclude1), is_number(valueThenCIDRInclude1)])
    #any([is_string(valueThenCIDRInclude2), is_boolean(valueThenCIDRInclude2), is_number(valueThenCIDRInclude2)])
    net.cidr_is_valid(valueThenCIDRInclude1)
    net.cidr_is_valid(valueThenCIDRInclude2)
    valueThenCIDRInclude1 != "*"
    valueThenCIDRInclude2 != "*"
    net.cidr_contains(valueThenCIDRInclude2, valueThenCIDRInclude1)
    #pathThenCIDRInclude1 != pathThenCIDRInclude2
    any([pathThenCIDRInclude1 != pathThenCIDRInclude2, addressThenCIDRInclude1 != addressThenCIDRInclude2])
    attrThenCIDRInclude1 := [elem | elem := pathThenCIDRInclude1[n1]; is_string(elem)]
    attrThenCIDRInclude2 := [elem | elem := pathThenCIDRInclude2[n2]; is_string(elem)]
    idAttrThenCIDRInclude1 := concat(".", attrThenCIDRInclude1)
    idAttrThenCIDRInclude2 := concat(".", attrThenCIDRInclude2)
    idAttrThenCIDRInclude1 <= idAttrThenCIDRInclude2
    any([resourceDetail[idTypeThenCIDRInclude1][idAttrThenCIDRInclude1] == "required", idAttrThenCIDRInclude1 in resourceDefaultView[idTypeThenCIDRInclude1], idAttrThenCIDRInclude1 in resourceImportanceView[idTypeThenCIDRInclude1]])
    any([resourceDetail[idTypeThenCIDRInclude2][idAttrThenCIDRInclude2] == "required", idAttrThenCIDRInclude2 in resourceDefaultView[idTypeThenCIDRInclude2], idAttrThenCIDRInclude2 in resourceImportanceView[idTypeThenCIDRInclude2]])
    contains(idAttrThenCIDRInclude1, "address")
    contains(idAttrThenCIDRInclude2, "address")
    not contains(idAttrThenCIDRInclude1, "tags")
    not contains(idAttrThenCIDRInclude1, "id")
    not contains(idAttrThenCIDRInclude2, "tags")
    not contains(idAttrThenCIDRInclude2, "id")

    pathIfCIDRInclude2 != pathThenCIDRInclude2
    idAttrIfCIDRInclude1 < idAttrThenCIDRInclude1
    idAttrIfCIDRInclude1 < idAttrThenCIDRInclude2
    idAttrIfCIDRInclude2 < idAttrThenCIDRInclude1
    idAttrIfCIDRInclude2 < idAttrThenCIDRInclude2
    idAttrIfCIDRInclude1 == idAttrIfCIDRInclude2
    idAttrThenCIDRInclude1 == idAttrThenCIDRInclude2
    rule := concat(" ", ["CIDRIncludeThenCIDRInclude", "####", idTypeIfCIDRInclude1, idAttrIfCIDRInclude1, "CIDR", "####", idTypeIfCIDRInclude2, idAttrIfCIDRInclude2, "CIDR", "####", idTypeThenCIDRInclude1, idAttrThenCIDRInclude1, "CIDR", "####", idTypeThenCIDRInclude2, idAttrThenCIDRInclude2, "CIDR"])
]

AttrCIDRIncludeThenCIDRExcludeList := [rule |
    idTypeIfCIDRInclude1 := resourceDict[addressIfCIDRInclude1][0]["type"]
    idTypeIfCIDRInclude1 == "azurerm_application_gateway"
    idTypeIfCIDRInclude2 := resourceDict[addressIfCIDRInclude2][0]["type"]
    idTypeIfCIDRInclude2 == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfCIDRInclude1 == addressIfCIDRInclude2
    addressIfCIDRInclude2 == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfCIDRInclude1][1]["values"], [pathIfCIDRInclude1, valueIfCIDRInclude1])
    walk(resourceDict[addressIfCIDRInclude2][1]["values"], [pathIfCIDRInclude2, valueIfCIDRInclude2])
    #any([is_string(valueIfCIDRInclude1), is_boolean(valueIfCIDRInclude1), is_number(valueIfCIDRInclude1)])
    #any([is_string(valueIfCIDRInclude2), is_boolean(valueIfCIDRInclude2), is_number(valueIfCIDRInclude2)])
    net.cidr_is_valid(valueIfCIDRInclude1)
    net.cidr_is_valid(valueIfCIDRInclude2)
    valueIfCIDRInclude1 != "*"
    valueIfCIDRInclude2 != "*"
    net.cidr_contains(valueIfCIDRInclude2, valueIfCIDRInclude1)
    #pathIfCIDRInclude1 != pathIfCIDRInclude2
    any([pathIfCIDRInclude1 != pathIfCIDRInclude2, addressIfCIDRInclude1 != addressIfCIDRInclude2])
    attrIfCIDRInclude1 := [elem | elem := pathIfCIDRInclude1[n1]; is_string(elem)]
    attrIfCIDRInclude2 := [elem | elem := pathIfCIDRInclude2[n2]; is_string(elem)]
    idAttrIfCIDRInclude1 := concat(".", attrIfCIDRInclude1)
    idAttrIfCIDRInclude2 := concat(".", attrIfCIDRInclude2)
    idAttrIfCIDRInclude1 <= idAttrIfCIDRInclude2
    any([resourceDetail[idTypeIfCIDRInclude1][idAttrIfCIDRInclude1] == "required", idAttrIfCIDRInclude1 in resourceDefaultView[idTypeIfCIDRInclude1], idAttrIfCIDRInclude1 in resourceImportanceView[idTypeIfCIDRInclude1]])
    any([resourceDetail[idTypeIfCIDRInclude2][idAttrIfCIDRInclude2] == "required", idAttrIfCIDRInclude2 in resourceDefaultView[idTypeIfCIDRInclude2], idAttrIfCIDRInclude2 in resourceImportanceView[idTypeIfCIDRInclude2]])
    contains(idAttrIfCIDRInclude1, "address")
    contains(idAttrIfCIDRInclude2, "address")
    not contains(idAttrIfCIDRInclude1, "tags")
    not contains(idAttrIfCIDRInclude1, "id")
    not contains(idAttrIfCIDRInclude2, "tags")
    not contains(idAttrIfCIDRInclude2, "id")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfCIDRInclude2 != pathThenCIDRExclude2
    idAttrIfCIDRInclude1 != idAttrThenCIDRExclude1
    idAttrIfCIDRInclude1 != idAttrThenCIDRExclude2
    idAttrIfCIDRInclude2 != idAttrThenCIDRExclude1
    idAttrIfCIDRInclude2 != idAttrThenCIDRExclude2
    idAttrIfCIDRInclude1 == idAttrIfCIDRInclude2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    rule := concat(" ", ["CIDRIncludeThenCIDRExclude", "####", idTypeIfCIDRInclude1, idAttrIfCIDRInclude1, "CIDR", "####", idTypeIfCIDRInclude2, idAttrIfCIDRInclude2, "CIDR", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrCIDRExcludeThenCIDRExcludeList := [rule |
    idTypeIfCIDRExclude1 := resourceDict[addressIfCIDRExclude1][0]["type"]
    idTypeIfCIDRExclude1 == "azurerm_application_gateway"
    idTypeIfCIDRExclude2 := resourceDict[addressIfCIDRExclude2][0]["type"]
    idTypeIfCIDRExclude2 == "azurerm_application_gateway"
    idTypeThenCIDRExclude1 := resourceDict[addressThenCIDRExclude1][0]["type"]
    idTypeThenCIDRExclude2 := resourceDict[addressThenCIDRExclude2][0]["type"]
    addressIfCIDRExclude1 == addressIfCIDRExclude2
    addressIfCIDRExclude2 == addressThenCIDRExclude1
    addressThenCIDRExclude1 == addressThenCIDRExclude2

    walk(resourceDict[addressIfCIDRExclude1][1]["values"], [pathIfCIDRExclude1, valueIfCIDRExclude1])
    walk(resourceDict[addressIfCIDRExclude2][1]["values"], [pathIfCIDRExclude2, valueIfCIDRExclude2])
    #any([is_string(valueIfCIDRExclude1), is_boolean(valueIfCIDRExclude1), is_number(valueIfCIDRExclude1)])
    #any([is_string(valueIfCIDRExclude2), is_boolean(valueIfCIDRExclude2), is_number(valueIfCIDRExclude2)])
    net.cidr_is_valid(valueIfCIDRExclude1)
    net.cidr_is_valid(valueIfCIDRExclude2)
    valueIfCIDRExclude1 != "*"
    valueIfCIDRExclude2 != "*"
    not net.cidr_intersects(valueIfCIDRExclude1, valueIfCIDRExclude2)
    #pathIfCIDRExclude1 != pathIfCIDRExclude2
    any([pathIfCIDRExclude1 != pathIfCIDRExclude2, addressIfCIDRExclude1 != addressIfCIDRExclude2])
    attrIfCIDRExclude1 := [elem | elem := pathIfCIDRExclude1[n1]; is_string(elem)]
    attrIfCIDRExclude2 := [elem | elem := pathIfCIDRExclude2[n2]; is_string(elem)]
    idAttrIfCIDRExclude1 := concat(".", attrIfCIDRExclude1)
    idAttrIfCIDRExclude2 := concat(".", attrIfCIDRExclude2)
    idAttrIfCIDRExclude1 <= idAttrIfCIDRExclude2
    any([resourceDetail[idTypeIfCIDRExclude1][idAttrIfCIDRExclude1] == "required", idAttrIfCIDRExclude1 in resourceDefaultView[idTypeIfCIDRExclude1], idAttrIfCIDRExclude1 in resourceImportanceView[idTypeIfCIDRExclude1]])
    any([resourceDetail[idTypeIfCIDRExclude2][idAttrIfCIDRExclude2] == "required", idAttrIfCIDRExclude2 in resourceDefaultView[idTypeIfCIDRExclude2], idAttrIfCIDRExclude2 in resourceImportanceView[idTypeIfCIDRExclude2]])
    contains(idAttrIfCIDRExclude1, "address")
    contains(idAttrIfCIDRExclude2, "address")
    not contains(idAttrIfCIDRExclude1, "tags")
    not contains(idAttrIfCIDRExclude1, "id")
    not contains(idAttrIfCIDRExclude2, "tags")
    not contains(idAttrIfCIDRExclude2, "id")

    walk(resourceDict[addressThenCIDRExclude1][1]["values"], [pathThenCIDRExclude1, valueThenCIDRExclude1])
    walk(resourceDict[addressThenCIDRExclude2][1]["values"], [pathThenCIDRExclude2, valueThenCIDRExclude2])
    #any([is_string(valueThenCIDRExclude1), is_boolean(valueThenCIDRExclude1), is_number(valueThenCIDRExclude1)])
    #any([is_string(valueThenCIDRExclude2), is_boolean(valueThenCIDRExclude2), is_number(valueThenCIDRExclude2)])
    net.cidr_is_valid(valueThenCIDRExclude1)
    net.cidr_is_valid(valueThenCIDRExclude2)
    valueThenCIDRExclude1 != "*"
    valueThenCIDRExclude2 != "*"
    not net.cidr_intersects(valueThenCIDRExclude1, valueThenCIDRExclude2)
    #pathThenCIDRExclude1 != pathThenCIDRExclude2
    any([pathThenCIDRExclude1 != pathThenCIDRExclude2, addressThenCIDRExclude1 != addressThenCIDRExclude2])
    attrThenCIDRExclude1 := [elem | elem := pathThenCIDRExclude1[n1]; is_string(elem)]
    attrThenCIDRExclude2 := [elem | elem := pathThenCIDRExclude2[n2]; is_string(elem)]
    idAttrThenCIDRExclude1 := concat(".", attrThenCIDRExclude1)
    idAttrThenCIDRExclude2 := concat(".", attrThenCIDRExclude2)
    #idAttrThenCIDRExclude1 <= idAttrThenCIDRExclude2
    any([resourceDetail[idTypeThenCIDRExclude1][idAttrThenCIDRExclude1] == "required", idAttrThenCIDRExclude1 in resourceDefaultView[idTypeThenCIDRExclude1], idAttrThenCIDRExclude1 in resourceImportanceView[idTypeThenCIDRExclude1]])
    any([resourceDetail[idTypeThenCIDRExclude2][idAttrThenCIDRExclude2] == "required", idAttrThenCIDRExclude2 in resourceDefaultView[idTypeThenCIDRExclude2], idAttrThenCIDRExclude2 in resourceImportanceView[idTypeThenCIDRExclude2]])
    contains(idAttrThenCIDRExclude1, "address")
    contains(idAttrThenCIDRExclude2, "address")
    not contains(idAttrThenCIDRExclude1, "tags")
    not contains(idAttrThenCIDRExclude1, "id")
    not contains(idAttrThenCIDRExclude2, "tags")
    not contains(idAttrThenCIDRExclude2, "id")

    pathIfCIDRExclude2 != pathThenCIDRExclude2
    idAttrIfCIDRExclude1 < idAttrThenCIDRExclude1
    idAttrIfCIDRExclude1 < idAttrThenCIDRExclude2
    idAttrIfCIDRExclude2 < idAttrThenCIDRExclude1
    idAttrIfCIDRExclude2 < idAttrThenCIDRExclude2
    idAttrIfCIDRExclude1 == idAttrIfCIDRExclude2
    idAttrThenCIDRExclude1 == idAttrThenCIDRExclude2
    rule := concat(" ", ["CIDRExcludeThenCIDRExclude", "####", idTypeIfCIDRExclude1, idAttrIfCIDRExclude1, "CIDR", "####", idTypeIfCIDRExclude2, idAttrIfCIDRExclude2, "CIDR", "####", idTypeThenCIDRExclude1, idAttrThenCIDRExclude1, "CIDR", "####", idTypeThenCIDRExclude2, idAttrThenCIDRExclude2, "CIDR"])
]

AttrEnumThenEnumList := [rule |
    idTypeIfEnum := resourceDict[addressIfEnum][0]["type"]
    idTypeIfEnum == "azurerm_application_gateway"
    idTypeThenEnum := resourceDict[addressThenEnum][0]["type"]
    addressIfEnum == addressThenEnum

    walk(resourceDict[addressIfEnum][1]["values"], [pathIfEnum, valueIfEnum])
    is_string(pathIfEnum[count(pathIfEnum)-1]) 
    attrIfEnum := [elem | elem := pathIfEnum[n]; is_string(elem)]
    idAttrIfEnum := concat(".", attrIfEnum)
    count(resourceView[idTypeIfEnum][idAttrIfEnum]) > 1
    count(attrIfEnum) <= 2
    idAttrIfEnum in resourceImportanceView[idTypeIfEnum]
    attrSliceIfEnum := array.slice(attrIfEnum, 0, count(attrIfEnum)-1)
    any([is_string(valueIfEnum), is_boolean(valueIfEnum)])
    not contains(idAttrIfEnum, "location")
    not contains(idAttrIfEnum, "tags")
    not contains(idAttrIfEnum, "id")
    not contains(idAttrIfEnum, "_name")

    walk(resourceDict[addressThenEnum][1]["values"], [pathThenEnum, valueThenEnum])
    is_string(pathThenEnum[count(pathThenEnum)-1]) 
    attrThenEnum := [elem | elem := pathThenEnum[n]; is_string(elem)]
    idAttrThenEnum := concat(".", attrThenEnum)
    count(resourceView[idTypeThenEnum][idAttrThenEnum]) > 1
    idAttrThenEnum in resourceImportanceView[idTypeThenEnum]
    attrSliceThenEnum := array.slice(attrThenEnum, 0, count(attrThenEnum)-1)
    any([is_string(valueThenEnum), is_boolean(valueThenEnum)])
    #any([contains(idAttrThenEnum, "type"), contains(idAttrThenEnum, "name"), contains(idAttrThenEnum, "priority"), contains(idAttrThenEnum, "enable")])
    not contains(idAttrThenEnum, "location")
    not contains(idAttrThenEnum, "tags")
    not contains(idAttrThenEnum, "id")
    not contains(idAttrThenEnum, "_name")

    pathIfEnum != pathThenEnum
    idAttrIfEnum != idAttrThenEnum
    any([contains(idAttrThenEnum, "type"), contains(idAttrThenEnum, "name"), contains(idAttrThenEnum, "priority"), contains(idAttrThenEnum, "enable"), contains(idAttrThenEnum, "publisher"), contains(idAttrThenEnum, "offer"), contains(idAttrThenEnum, "version")])
    not any([contains(idAttrThenEnum, "name"), contains(idAttrThenEnum, "sku"), contains(idAttrThenEnum, "size")])
    not any([contains(idAttrIfEnum, "publisher"), contains(idAttrIfEnum, "offer"), contains(idAttrIfEnum, "version")])
    any([contains(idAttrIfEnum, "size") == false, contains(idAttrThenEnum, "reference") == false])
    any([count(attrSliceIfEnum) < count(attrSliceThenEnum), attrSliceIfEnum == attrSliceThenEnum])
    rule := concat(" ", ["EnumThenEnum", "####", idTypeIfEnum, idAttrIfEnum, "Enum", "####", idTypeThenEnum, idAttrThenEnum, "Enum"])
]

AttrEnumThenCIDRMaskList := [rule |
    idTypeIfEnum := resourceDict[addressIfEnum][0]["type"]
    idTypeIfEnum == "azurerm_application_gateway"
    idTypeThenCIDRMask := resourceDict[addressThenCIDRMask][0]["type"]
    addressIfEnum == addressThenCIDRMask

    walk(resourceDict[addressIfEnum][1]["values"], [pathIfEnum, valueIfEnum])
    is_string(pathIfEnum[count(pathIfEnum)-1]) 
    attrIfEnum := [elem | elem := pathIfEnum[n]; is_string(elem)]
    idAttrIfEnum := concat(".", attrIfEnum)
    count(resourceView[idTypeIfEnum][idAttrIfEnum]) > 1
    count(attrIfEnum) <= 2
    idAttrIfEnum in resourceImportanceView[idTypeIfEnum]
    attrSliceIfEnum := array.slice(attrIfEnum, 0, count(attrIfEnum)-1)
    any([is_string(valueIfEnum), is_boolean(valueIfEnum)])
    not contains(idAttrIfEnum, "location")
    not contains(idAttrIfEnum, "tags")
    not contains(idAttrIfEnum, "id")
    not contains(idAttrIfEnum, "_name")

    walk(resourceDict[addressThenCIDRMask][1]["values"], [pathThenCIDRMask, valueThenCIDRMask])
    any([is_string(valueThenCIDRMask), is_boolean(valueThenCIDRMask), is_number(valueThenCIDRMask)])
    net.cidr_is_valid(valueThenCIDRMask)
    cidrDetailThenCIDRMask := split(valueThenCIDRMask, "/")
    maskLengthThenCIDRMask := to_number(cidrDetailThenCIDRMask[1])
    maskLengthThenCIDRMask <= 26
    attrThenCIDRMask := [elem | elem := pathThenCIDRMask[n1]; is_string(elem)]
    idAttrThenCIDRMask := concat(".", attrThenCIDRMask)
    contains(idAttrThenCIDRMask, "address")
    not contains(idAttrThenCIDRMask, "tags")
    not contains(idAttrThenCIDRMask, "id")

    pathIfEnum != pathThenCIDRMask
    idAttrIfEnum != idAttrThenCIDRMask
    rule := concat(" ", ["EnumThenCIDRMask", "####", idTypeIfEnum, idAttrIfEnum, "Enum", "####", idTypeThenCIDRMask, idAttrThenCIDRMask, "CIDR"])
]

AttrCIDRMaskThenCIDRMaskList := [rule |
    idTypeIfCIDRMask := resourceDict[addressIfCIDRMask][0]["type"]
    idTypeIfCIDRMask == "azurerm_application_gateway"
    idTypeThenCIDRMask := resourceDict[addressThenCIDRMask][0]["type"]
    addressIfCIDRMask == addressThenCIDRMask

    walk(resourceDict[addressIfCIDRMask][1]["values"], [pathIfCIDRMask, valueIfCIDRMask])
    any([is_string(valueIfCIDRMask), is_boolean(valueIfCIDRMask), is_number(valueIfCIDRMask)])
    net.cidr_is_valid(valueIfCIDRMask)
    cidrDetailIfCIDRMask := split(valueIfCIDRMask, "/")
    maskLengthIfCIDRMask := to_number(cidrDetailIfCIDRMask[1])
    maskLengthIfCIDRMask <= 26
    attrIfCIDRMask := [elem | elem := pathIfCIDRMask[n1]; is_string(elem)]
    idAttrIfCIDRMask := concat(".", attrIfCIDRMask)
    contains(idAttrIfCIDRMask, "address")
    not contains(idAttrIfCIDRMask, "tags")
    not contains(idAttrIfCIDRMask, "id")

    walk(resourceDict[addressThenCIDRMask][1]["values"], [pathThenCIDRMask, valueThenCIDRMask])
    any([is_string(valueThenCIDRMask), is_boolean(valueThenCIDRMask), is_number(valueThenCIDRMask)])
    net.cidr_is_valid(valueThenCIDRMask)
    cidrDetailThenCIDRMask := split(valueThenCIDRMask, "/")
    maskLengthThenCIDRMask := to_number(cidrDetailThenCIDRMask[1])
    maskLengthThenCIDRMask <= 26
    attrThenCIDRMask := [elem | elem := pathThenCIDRMask[n1]; is_string(elem)]
    idAttrThenCIDRMask := concat(".", attrThenCIDRMask)
    contains(idAttrThenCIDRMask, "address")
    not contains(idAttrThenCIDRMask, "tags")
    not contains(idAttrThenCIDRMask, "id")

    pathIfCIDRMask != pathThenCIDRMask
    idAttrIfCIDRMask < idAttrThenCIDRMask
    rule := concat(" ", ["CIDRMaskThenCIDRMask", "####", idTypeIfCIDRMask, idAttrIfCIDRMask, "CIDR", "####", idTypeThenCIDRMask, idAttrThenCIDRMask, "CIDR"])
]

rule1 := AttrAbsenceThenExistenceList
rule2 := array.concat(rule1, AttrAbsenceThenConstantList)
rule3 := array.concat(rule2, AttrAbsenceThenEqualList)
rule4 := array.concat(rule3, AttrAbsenceThenUnequalList)
rule5 := array.concat(rule4, AttrAbsenceThenCIDRIncludeList)
rule6 := array.concat(rule5, AttrAbsenceThenCIDRExcludeList)
rule7 := array.concat(rule6, AttrExistenceThenExistenceList)
rule8 := array.concat(rule7, AttrExistenceThenConstantList)
rule9 := array.concat(rule8, AttrExistenceThenEqualList)
rule10 := array.concat(rule9, AttrExistenceThenUnequalList)
rule11 := array.concat(rule10, AttrExistenceThenCIDRIncludeList)
rule12 := array.concat(rule11, AttrExistenceThenCIDRExcludeList)
rule13 := array.concat(rule12, AttrConstantThenConstantList)
rule14 := array.concat(rule13, AttrEqualThenEqualList)
rule15 := array.concat(rule14, AttrEqualThenUnequalList)
rule16 := array.concat(rule15, AttrEqualThenCIDRIncludeList)
rule17 := array.concat(rule16, AttrEqualThenCIDRExcludeList)
rule18 := array.concat(rule17, AttrUnequalThenUnequalList)
rule19 := array.concat(rule18, AttrUnequalThenCIDRIncludeList)
rule20 := array.concat(rule19, AttrUnequalThenCIDRExcludeList)
rule21 := array.concat(rule20, AttrCIDRIncludeThenCIDRIncludeList)
rule22 := array.concat(rule21, AttrCIDRIncludeThenCIDRExcludeList)
rule23 := array.concat(rule22, AttrCIDRExcludeThenCIDRExcludeList)
rule24 := array.concat(rule23, AttrEnumThenEnumList)
rule25 := array.concat(rule24, AttrEnumThenCIDRMaskList)
rule26 := array.concat(rule25, AttrCIDRMaskThenCIDRMaskList)
resultList := rule26
resultCount[rule] := counts {
    rule := resultList[_]
    counts := count({id | resultList[id] == rule})
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
            }
        },
        "root_module": {
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "expressions": {
                        "backend_address_pool": [
                            {
                                "fqdns": {
                                    "references": [
                                        "azurerm_container_app.my_app.latest_revision_fqdn",
                                        "azurerm_container_app.my_app"
                                    ]
                                },
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
                                    "constant_value": true
                                },
                                "port": {
                                    "constant_value": 443
                                },
                                "protocol": {
                                    "constant_value": "Https"
                                },
                                "request_timeout": {
                                    "constant_value": 20
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
                                        "azurerm_public_ip.public_ip.id",
                                        "azurerm_public_ip.public_ip"
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
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": {
                                    "constant_value": "myIPConfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.subnet.id",
                                        "azurerm_subnet.subnet"
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
                            }
                        ],
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "myAppGateway"
                        },
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
                                        "local.listener_name"
                                    ]
                                },
                                "name": {
                                    "references": [
                                        "local.request_routing_rule_name"
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
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "waf_configuration": [
                            {
                                "enabled": {
                                    "constant_value": true
                                },
                                "firewall_mode": {
                                    "constant_value": "Prevention"
                                },
                                "rule_set_type": {
                                    "constant_value": "OWASP"
                                },
                                "rule_set_version": {
                                    "constant_value": "3.2"
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
                    "address": "azurerm_container_app.my_app",
                    "expressions": {
                        "container_app_environment_id": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.id",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "ingress": [
                            {
                                "external_enabled": {
                                    "constant_value": true
                                },
                                "target_port": {
                                    "constant_value": 80
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
                            "constant_value": "backend1"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "revision_mode": {
                            "constant_value": "Single"
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        },
                        "template": [
                            {
                                "container": [
                                    {
                                        "cpu": {
                                            "constant_value": 0.25
                                        },
                                        "image": {
                                            "constant_value": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
                                        },
                                        "memory": {
                                            "constant_value": "0.5Gi"
                                        },
                                        "name": {
                                            "constant_value": "myapp"
                                        }
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "my_app",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app"
                },
                {
                    "address": "azurerm_container_app_environment.aca_env",
                    "expressions": {
                        "infrastructure_subnet_id": {
                            "references": [
                                "azurerm_subnet.acasubnet.id",
                                "azurerm_subnet.acasubnet"
                            ]
                        },
                        "internal_load_balancer_enabled": {
                            "constant_value": true
                        },
                        "location": {
                            "references": [
                                "azurerm_resource_group.rg.location",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "name": {
                            "constant_value": "myContainerAppEnv"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "aca_env",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_container_app_environment"
                },
                {
                    "address": "azurerm_private_dns_a_record.example_at",
                    "expressions": {
                        "name": {
                            "constant_value": "@"
                        },
                        "records": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.static_ip_address",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "ttl": {
                            "constant_value": 300
                        },
                        "zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example_at",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_a_record"
                },
                {
                    "address": "azurerm_private_dns_a_record.example_star",
                    "expressions": {
                        "name": {
                            "constant_value": "*"
                        },
                        "records": {
                            "references": [
                                "azurerm_container_app_environment.aca_env.static_ip_address",
                                "azurerm_container_app_environment.aca_env"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "ttl": {
                            "constant_value": 300
                        },
                        "zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example_star",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_a_record"
                },
                {
                    "address": "azurerm_private_dns_zone.dnszone",
                    "depends_on": [
                        "azurerm_container_app.my_app"
                    ],
                    "expressions": {
                        "name": {
                            "references": [
                                "azurerm_container_app.my_app.latest_revision_fqdn",
                                "azurerm_container_app.my_app",
                                "azurerm_container_app.my_app.latest_revision_fqdn",
                                "azurerm_container_app.my_app"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "dnszone",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone"
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "expressions": {
                        "name": {
                            "constant_value": "my-custom-vnet-pdns-link"
                        },
                        "private_dns_zone_name": {
                            "references": [
                                "azurerm_private_dns_zone.dnszone.name",
                                "azurerm_private_dns_zone.dnszone"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "virtual_network_id": {
                            "references": [
                                "azurerm_virtual_network.vnet.id",
                                "azurerm_virtual_network.vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_private_dns_zone_virtual_network_link"
                },
                {
                    "address": "azurerm_public_ip.public_ip",
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
                            "constant_value": "myPublicIP"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "sku": {
                            "constant_value": "Standard"
                        },
                        "tags": {
                            "references": [
                                "var.tags"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "public_ip",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_public_ip"
                },
                {
                    "address": "azurerm_resource_group.rg",
                    "expressions": {
                        "location": {
                            "constant_value": "West Europe"
                        },
                        "name": {
                            "constant_value": "appgwtest"
                        },
                        "tags": {
                            "references": [
                                "var.tags"
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
                    "address": "azurerm_subnet.acasubnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.2.0/23"
                            ]
                        },
                        "name": {
                            "constant_value": "ACASubnet"
                        },
                        "private_link_service_network_policies_enabled": {
                            "constant_value": false
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
                    "name": "acasubnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_subnet.subnet",
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.0.1.0/24"
                            ]
                        },
                        "name": {
                            "constant_value": "AppGWSubnet"
                        },
                        "private_link_service_network_policies_enabled": {
                            "constant_value": false
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
                            "constant_value": "appGW-VNET"
                        },
                        "resource_group_name": {
                            "references": [
                                "azurerm_resource_group.rg.name",
                                "azurerm_resource_group.rg"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags"
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
                "tags": {
                    "default": {
                        "source": "Dev/GitHub/AppGW"
                    }
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "planned_values": {
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
                        "tags": {},
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
                                "name": "appgwtest-beap"
                            }
                        ],
                        "backend_http_settings": [
                            {
                                "affinity_cookie_name": "",
                                "authentication_certificate": [],
                                "connection_draining": [],
                                "cookie_based_affinity": "Disabled",
                                "host_name": "",
                                "name": "appgwtest-be-htst",
                                "path": "",
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
                        "frontend_ip_configuration": [
                            {
                                "name": "appgwtest-feip",
                                "private_ip_address_allocation": "Dynamic",
                                "private_link_configuration_name": null,
                                "subnet_id": null
                            }
                        ],
                        "frontend_port": [
                            {
                                "name": "appgwtest-feport",
                                "port": 80
                            }
                        ],
                        "gateway_ip_configuration": [
                            {
                                "name": "myIPConfig"
                            }
                        ],
                        "global": [],
                        "http_listener": [
                            {
                                "custom_error_configuration": [],
                                "firewall_policy_id": "",
                                "frontend_ip_configuration_name": "appgwtest-feip",
                                "frontend_port_name": "appgwtest-feport",
                                "host_name": "",
                                "host_names": [],
                                "name": "appgwtest-httplstn",
                                "protocol": "Http",
                                "require_sni": null,
                                "ssl_certificate_name": "",
                                "ssl_profile_name": ""
                            }
                        ],
                        "identity": [],
                        "location": "westeurope",
                        "name": "myAppGateway",
                        "private_link_configuration": [],
                        "probe": [],
                        "redirect_configuration": [],
                        "request_routing_rule": [
                            {
                                "backend_address_pool_name": "appgwtest-beap",
                                "backend_http_settings_name": "appgwtest-be-htst",
                                "http_listener_name": "appgwtest-httplstn",
                                "name": "appgwtest-rqrt",
                                "priority": 1,
                                "redirect_configuration_name": "",
                                "rewrite_rule_set_name": "",
                                "rule_type": "Basic",
                                "url_path_map_name": ""
                            }
                        ],
                        "resource_group_name": "appgwtest",
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
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
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
                                "firewall_mode": "Prevention",
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
                    "address": "azurerm_container_app.my_app",
                    "mode": "managed",
                    "name": "my_app",
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
                        "tags": {},
                        "template": [
                            {
                                "azure_queue_scale_rule": [],
                                "container": [
                                    {
                                        "env": [],
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
                                "target_port": 80,
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
                        "name": "backend1",
                        "registry": [],
                        "resource_group_name": "appgwtest",
                        "revision_mode": "Single",
                        "secret": [],
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "template": [
                            {
                                "azure_queue_scale_rule": [],
                                "container": [
                                    {
                                        "args": null,
                                        "command": null,
                                        "cpu": 0.25,
                                        "env": [],
                                        "image": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest",
                                        "liveness_probe": [],
                                        "memory": "0.5Gi",
                                        "name": "myapp",
                                        "readiness_probe": [],
                                        "startup_probe": [],
                                        "volume_mounts": []
                                    }
                                ],
                                "custom_scale_rule": [],
                                "http_scale_rule": [],
                                "init_container": [],
                                "max_replicas": 10,
                                "min_replicas": 0,
                                "tcp_scale_rule": [],
                                "volume": []
                            }
                        ],
                        "timeouts": null,
                        "workload_profile_name": null
                    }
                },
                {
                    "address": "azurerm_container_app_environment.aca_env",
                    "mode": "managed",
                    "name": "aca_env",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "dapr_application_insights_connection_string": true,
                        "tags": {},
                        "workload_profile": []
                    },
                    "type": "azurerm_container_app_environment",
                    "values": {
                        "dapr_application_insights_connection_string": null,
                        "infrastructure_resource_group_name": null,
                        "internal_load_balancer_enabled": true,
                        "location": "westeurope",
                        "log_analytics_workspace_id": null,
                        "mutual_tls_enabled": false,
                        "name": "myContainerAppEnv",
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null,
                        "workload_profile": [],
                        "zone_redundancy_enabled": false
                    }
                },
                {
                    "address": "azurerm_private_dns_a_record.example_at",
                    "mode": "managed",
                    "name": "example_at",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "records": []
                    },
                    "type": "azurerm_private_dns_a_record",
                    "values": {
                        "name": "@",
                        "resource_group_name": "appgwtest",
                        "tags": null,
                        "timeouts": null,
                        "ttl": 300
                    }
                },
                {
                    "address": "azurerm_private_dns_a_record.example_star",
                    "mode": "managed",
                    "name": "example_star",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "records": []
                    },
                    "type": "azurerm_private_dns_a_record",
                    "values": {
                        "name": "*",
                        "resource_group_name": "appgwtest",
                        "tags": null,
                        "timeouts": null,
                        "ttl": 300
                    }
                },
                {
                    "address": "azurerm_private_dns_zone.dnszone",
                    "mode": "managed",
                    "name": "dnszone",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "soa_record": [],
                        "tags": {}
                    },
                    "type": "azurerm_private_dns_zone",
                    "values": {
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_private_dns_zone_virtual_network_link.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_private_dns_zone_virtual_network_link",
                    "values": {
                        "name": "my-custom-vnet-pdns-link",
                        "registration_enabled": false,
                        "resource_group_name": "appgwtest",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_public_ip.public_ip",
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
                        "name": "myPublicIP",
                        "public_ip_prefix_id": null,
                        "resource_group_name": "appgwtest",
                        "reverse_fqdn": null,
                        "sku": "Standard",
                        "sku_tier": "Regional",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
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
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "westeurope",
                        "managed_by": null,
                        "name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.acasubnet",
                    "mode": "managed",
                    "name": "acasubnet",
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
                            "10.0.2.0/23"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "name": "ACASubnet",
                        "private_link_service_network_policies_enabled": false,
                        "resource_group_name": "appgwtest",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appGW-VNET"
                    }
                },
                {
                    "address": "azurerm_subnet.subnet",
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
                        "name": "AppGWSubnet",
                        "private_link_service_network_policies_enabled": false,
                        "resource_group_name": "appgwtest",
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null,
                        "virtual_network_name": "appGW-VNET"
                    }
                },
                {
                    "address": "azurerm_virtual_network.vnet",
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
                        "name": "appGW-VNET",
                        "resource_group_name": "appgwtest",
                        "tags": {
                            "source": "Dev/GitHub/AppGW"
                        },
                        "timeouts": null
                    }
                }
            ]
        }
    },
    "relevant_attributes": [
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.subnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_public_ip.public_ip"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.acasubnet"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_container_app_environment.aca_env"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_private_dns_zone.dnszone"
        },
        {
            "attribute": [
                "static_ip_address"
            ],
            "resource": "azurerm_container_app_environment.aca_env"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "azurerm_resource_group.rg"
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
            "resource": "azurerm_virtual_network.vnet"
        },
        {
            "attribute": [
                "latest_revision_fqdn"
            ],
            "resource": "azurerm_container_app.my_app"
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
                            "ip_addresses": [],
                            "name": "appgwtest-beap"
                        }
                    ],
                    "backend_http_settings": [
                        {
                            "affinity_cookie_name": "",
                            "authentication_certificate": [],
                            "connection_draining": [],
                            "cookie_based_affinity": "Disabled",
                            "host_name": "",
                            "name": "appgwtest-be-htst",
                            "path": "",
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
                    "frontend_ip_configuration": [
                        {
                            "name": "appgwtest-feip",
                            "private_ip_address_allocation": "Dynamic",
                            "private_link_configuration_name": null,
                            "subnet_id": null
                        }
                    ],
                    "frontend_port": [
                        {
                            "name": "appgwtest-feport",
                            "port": 80
                        }
                    ],
                    "gateway_ip_configuration": [
                        {
                            "name": "myIPConfig"
                        }
                    ],
                    "global": [],
                    "http_listener": [
                        {
                            "custom_error_configuration": [],
                            "firewall_policy_id": "",
                            "frontend_ip_configuration_name": "appgwtest-feip",
                            "frontend_port_name": "appgwtest-feport",
                            "host_name": "",
                            "host_names": [],
                            "name": "appgwtest-httplstn",
                            "protocol": "Http",
                            "require_sni": null,
                            "ssl_certificate_name": "",
                            "ssl_profile_name": ""
                        }
                    ],
                    "identity": [],
                    "location": "westeurope",
                    "name": "myAppGateway",
                    "private_link_configuration": [],
                    "probe": [],
                    "redirect_configuration": [],
                    "request_routing_rule": [
                        {
                            "backend_address_pool_name": "appgwtest-beap",
                            "backend_http_settings_name": "appgwtest-be-htst",
                            "http_listener_name": "appgwtest-httplstn",
                            "name": "appgwtest-rqrt",
                            "priority": 1,
                            "redirect_configuration_name": "",
                            "rewrite_rule_set_name": "",
                            "rule_type": "Basic",
                            "url_path_map_name": ""
                        }
                    ],
                    "resource_group_name": "appgwtest",
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
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
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
                            "firewall_mode": "Prevention",
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
                    "tags": {},
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
            "name": "appgw",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_application_gateway"
        },
        {
            "address": "azurerm_container_app.my_app",
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
                            "target_port": 80,
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
                    "name": "backend1",
                    "registry": [],
                    "resource_group_name": "appgwtest",
                    "revision_mode": "Single",
                    "secret": [],
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "cpu": 0.25,
                                    "env": [],
                                    "image": "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest",
                                    "liveness_probe": [],
                                    "memory": "0.5Gi",
                                    "name": "myapp",
                                    "readiness_probe": [],
                                    "startup_probe": [],
                                    "volume_mounts": []
                                }
                            ],
                            "custom_scale_rule": [],
                            "http_scale_rule": [],
                            "init_container": [],
                            "max_replicas": 10,
                            "min_replicas": 0,
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
                    "tags": {},
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [],
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
                    "outbound_ip_addresses": true,
                    "registry": [],
                    "secret": [],
                    "tags": {},
                    "template": [
                        {
                            "azure_queue_scale_rule": [],
                            "container": [
                                {
                                    "env": [],
                                    "ephemeral_storage": true,
                                    "liveness_probe": [],
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
            "name": "my_app",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app"
        },
        {
            "address": "azurerm_container_app_environment.aca_env",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "dapr_application_insights_connection_string": null,
                    "infrastructure_resource_group_name": null,
                    "internal_load_balancer_enabled": true,
                    "location": "westeurope",
                    "log_analytics_workspace_id": null,
                    "mutual_tls_enabled": false,
                    "name": "myContainerAppEnv",
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
                    },
                    "timeouts": null,
                    "workload_profile": [],
                    "zone_redundancy_enabled": false
                },
                "after_sensitive": {
                    "dapr_application_insights_connection_string": true,
                    "tags": {},
                    "workload_profile": []
                },
                "after_unknown": {
                    "custom_domain_verification_id": true,
                    "default_domain": true,
                    "docker_bridge_cidr": true,
                    "id": true,
                    "infrastructure_subnet_id": true,
                    "platform_reserved_cidr": true,
                    "platform_reserved_dns_ip_address": true,
                    "static_ip_address": true,
                    "tags": {},
                    "workload_profile": []
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aca_env",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_container_app_environment"
        },
        {
            "address": "azurerm_private_dns_a_record.example_at",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "@",
                    "resource_group_name": "appgwtest",
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
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example_at",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "azurerm_private_dns_a_record.example_star",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "*",
                    "resource_group_name": "appgwtest",
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
                    "records": true,
                    "zone_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example_star",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_a_record"
        },
        {
            "address": "azurerm_private_dns_zone.dnszone",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "name": "dnszone",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone"
        },
        {
            "address": "azurerm_private_dns_zone_virtual_network_link.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "name": "my-custom-vnet-pdns-link",
                    "registration_enabled": false,
                    "resource_group_name": "appgwtest",
                    "tags": null,
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "private_dns_zone_name": true,
                    "virtual_network_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_private_dns_zone_virtual_network_link"
        },
        {
            "address": "azurerm_public_ip.public_ip",
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
                    "name": "myPublicIP",
                    "public_ip_prefix_id": null,
                    "resource_group_name": "appgwtest",
                    "reverse_fqdn": null,
                    "sku": "Standard",
                    "sku_tier": "Regional",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "name": "public_ip",
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
                    "name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "name": "rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.acasubnet",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.0.2.0/23"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
                    "name": "ACASubnet",
                    "private_link_service_network_policies_enabled": false,
                    "resource_group_name": "appgwtest",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appGW-VNET"
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
                    "private_endpoint_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "acasubnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_subnet.subnet",
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
                    "name": "AppGWSubnet",
                    "private_link_service_network_policies_enabled": false,
                    "resource_group_name": "appgwtest",
                    "service_endpoint_policy_ids": null,
                    "service_endpoints": null,
                    "timeouts": null,
                    "virtual_network_name": "appGW-VNET"
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
                    "private_endpoint_network_policies_enabled": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "subnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.vnet",
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
                    "name": "appGW-VNET",
                    "resource_group_name": "appgwtest",
                    "tags": {
                        "source": "Dev/GitHub/AppGW"
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
            "name": "vnet",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-23T00:05:35Z",
    "variables": {
        "tags": {
            "value": {
                "source": "Dev/GitHub/AppGW"
            }
        }
    }
}