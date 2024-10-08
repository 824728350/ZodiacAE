
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
    "checks": [
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "main",
                "to_display": "module.aks.azurerm_kubernetes_cluster.main",
                "type": "azurerm_kubernetes_cluster"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.azurerm_kubernetes_cluster.main"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "node_pool_create_after_destroy",
                "to_display": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                "type": "azurerm_kubernetes_cluster_node_pool"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "node_pool_create_before_destroy",
                "to_display": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                "type": "azurerm_kubernetes_cluster_node_pool"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "main",
                "to_display": "module.aks.azurerm_log_analytics_workspace.main",
                "type": "azurerm_log_analytics_workspace"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "application_gateway_byo_vnet_network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                "type": "azurerm_role_assignment"
            },
            "instances": [
                {
                    "address": {
                        "instance_key": 0,
                        "module": "module.aks",
                        "to_display": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]"
                    },
                    "status": "unknown"
                }
            ],
            "status": "unknown"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "application_gateway_existing_vnet_network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "existing_application_gateway_contributor",
                "to_display": "module.aks.azurerm_role_assignment.existing_application_gateway_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "network_contributor",
                "to_display": "module.aks.azurerm_role_assignment.network_contributor",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "resource",
                "mode": "managed",
                "module": "module.aks",
                "name": "network_contributor_on_subnet",
                "to_display": "module.aks.azurerm_role_assignment.network_contributor_on_subnet",
                "type": "azurerm_role_assignment"
            },
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "auto_scaler_profile_expander",
                "to_display": "module.aks.var.auto_scaler_profile_expander"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.auto_scaler_profile_expander"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "automatic_channel_upgrade",
                "to_display": "module.aks.var.automatic_channel_upgrade"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.automatic_channel_upgrade"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "green_field_application_gateway_for_ingress",
                "to_display": "module.aks.var.green_field_application_gateway_for_ingress"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.green_field_application_gateway_for_ingress"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "http_proxy_config",
                "to_display": "module.aks.var.http_proxy_config"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.http_proxy_config"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "identity_type",
                "to_display": "module.aks.var.identity_type"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.identity_type"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "kms_key_vault_network_access",
                "to_display": "module.aks.var.kms_key_vault_network_access"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.kms_key_vault_network_access"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "load_balancer_sku",
                "to_display": "module.aks.var.load_balancer_sku"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.load_balancer_sku"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "log_analytics_solution",
                "to_display": "module.aks.var.log_analytics_solution"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.log_analytics_solution"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "sku_tier",
                "to_display": "module.aks.var.sku_tier"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.sku_tier"
                    },
                    "status": "pass"
                }
            ],
            "status": "pass"
        },
        {
            "address": {
                "kind": "var",
                "module": "module.aks",
                "name": "support_plan",
                "to_display": "module.aks.var.support_plan"
            },
            "instances": [
                {
                    "address": {
                        "module": "module.aks",
                        "to_display": "module.aks.var.support_plan"
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
            "kubernetes": {
                "expressions": {
                    "client_certificate": {
                        "references": [
                            "module.aks.admin_client_certificate",
                            "module.aks"
                        ]
                    },
                    "client_key": {
                        "references": [
                            "module.aks.admin_client_key",
                            "module.aks"
                        ]
                    },
                    "cluster_ca_certificate": {
                        "references": [
                            "module.aks.admin_cluster_ca_certificate",
                            "module.aks"
                        ]
                    },
                    "host": {
                        "references": [
                            "module.aks.admin_host",
                            "module.aks"
                        ]
                    }
                },
                "full_name": "registry.terraform.io/hashicorp/kubernetes",
                "name": "kubernetes"
            },
            "module.aks:azapi": {
                "full_name": "registry.terraform.io/azure/azapi",
                "module_address": "module.aks",
                "name": "azapi",
                "version_constraint": ">= 1.4.0, < 2.0.0"
            },
            "module.aks:null": {
                "full_name": "registry.terraform.io/hashicorp/null",
                "module_address": "module.aks",
                "name": "null",
                "version_constraint": ">= 3.0.0"
            },
            "module.aks:tls": {
                "full_name": "registry.terraform.io/hashicorp/tls",
                "module_address": "module.aks",
                "name": "tls",
                "version_constraint": ">= 3.1.0"
            },
            "random": {
                "full_name": "registry.terraform.io/hashicorp/random",
                "name": "random"
            },
            "time": {
                "full_name": "registry.terraform.io/hashicorp/time",
                "name": "time"
            }
        },
        "root_module": {
            "module_calls": {
                "aks": {
                    "depends_on": [
                        "azurerm_subnet.test"
                    ],
                    "expressions": {
                        "agents_availability_zones": {
                            "constant_value": [
                                "1",
                                "2"
                            ]
                        },
                        "agents_count": {
                            "constant_value": null
                        },
                        "agents_max_count": {
                            "constant_value": 2
                        },
                        "agents_max_pods": {
                            "constant_value": 100
                        },
                        "agents_min_count": {
                            "constant_value": 1
                        },
                        "agents_pool_linux_os_configs": {
                            "constant_value": [
                                {
                                    "sysctl_configs": [
                                        {
                                            "fs_aio_max_nr": 65536,
                                            "fs_file_max": 100000,
                                            "fs_inotify_max_user_watches": 1000000
                                        }
                                    ],
                                    "transparent_huge_page_enabled": "always"
                                }
                            ]
                        },
                        "agents_pool_name": {
                            "constant_value": "testnodepool"
                        },
                        "agents_type": {
                            "constant_value": "VirtualMachineScaleSets"
                        },
                        "automatic_channel_upgrade": {
                            "constant_value": "patch"
                        },
                        "azure_policy_enabled": {
                            "constant_value": true
                        },
                        "brown_field_application_gateway_for_ingress": {
                            "references": [
                                "var.use_brown_field_application_gateway",
                                "azurerm_application_gateway.appgw[0].id",
                                "azurerm_application_gateway.appgw[0]",
                                "azurerm_application_gateway.appgw",
                                "azurerm_subnet.appgw[0].id",
                                "azurerm_subnet.appgw[0]",
                                "azurerm_subnet.appgw"
                            ]
                        },
                        "create_role_assignments_for_application_gateway": {
                            "references": [
                                "var.create_role_assignments_for_application_gateway"
                            ]
                        },
                        "enable_auto_scaling": {
                            "constant_value": true
                        },
                        "enable_host_encryption": {
                            "constant_value": true
                        },
                        "green_field_application_gateway_for_ingress": {
                            "references": [
                                "var.use_brown_field_application_gateway",
                                "local.appgw_cidr"
                            ]
                        },
                        "kubernetes_version": {
                            "constant_value": "1.29"
                        },
                        "local_account_disabled": {
                            "constant_value": false
                        },
                        "log_analytics_workspace_enabled": {
                            "constant_value": false
                        },
                        "net_profile_dns_service_ip": {
                            "constant_value": "10.0.0.10"
                        },
                        "net_profile_service_cidr": {
                            "constant_value": "10.0.0.0/16"
                        },
                        "network_plugin": {
                            "constant_value": "azure"
                        },
                        "network_policy": {
                            "constant_value": "azure"
                        },
                        "os_disk_size_gb": {
                            "constant_value": 60
                        },
                        "prefix": {
                            "references": [
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "private_cluster_enabled": {
                            "constant_value": false
                        },
                        "rbac_aad": {
                            "constant_value": true
                        },
                        "rbac_aad_managed": {
                            "constant_value": true
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "role_based_access_control_enabled": {
                            "constant_value": true
                        },
                        "sku_tier": {
                            "constant_value": "Standard"
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "var.bring_your_own_vnet",
                                "azurerm_subnet.test[0].id",
                                "azurerm_subnet.test[0]",
                                "azurerm_subnet.test"
                            ]
                        }
                    },
                    "module": {
                        "outputs": {
                            "aci_connector_linux": {
                                "description": "The `aci_connector_linux` block of `azurerm_kubernetes_cluster` resource.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux[0]",
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "aci_connector_linux_enabled": {
                                "description": "Has `aci_connector_linux` been enabled on the `azurerm_kubernetes_cluster` resource?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux[0]",
                                        "azurerm_kubernetes_cluster.main.aci_connector_linux",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "admin_client_certificate": {
                                "description": "The `client_certificate` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block.  Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_client_key": {
                                "description": "The `client_key` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].client_key",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_cluster_ca_certificate": {
                                "description": "The `cluster_ca_certificate` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].cluster_ca_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_host": {
                                "description": "The `host` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. The Kubernetes cluster server host.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].host",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_password": {
                                "description": "The `password` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. A password or token used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].password",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "admin_username": {
                                "description": "The `username` in the `azurerm_kubernetes_cluster`'s `kube_admin_config` block. A username used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0].username",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_admin_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "aks_id": {
                                "description": "The `azurerm_kubernetes_cluster`'s id.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.id",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "aks_name": {
                                "description": "The `azurerm_kubernetes_cluster`'s name.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.name",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "azure_policy_enabled": {
                                "description": "The `azurerm_kubernetes_cluster`'s `azure_policy_enabled` argument. Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.azure_policy_enabled",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_id": {
                                "description": "The id of the created Log Analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].id",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_name": {
                                "description": "The name of the created Log Analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].name",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                }
                            },
                            "azurerm_log_analytics_workspace_primary_shared_key": {
                                "description": "Specifies the workspace key of the log analytics workspace",
                                "expression": {
                                    "references": [
                                        "azurerm_log_analytics_workspace.main[0].primary_shared_key",
                                        "azurerm_log_analytics_workspace.main[0]",
                                        "azurerm_log_analytics_workspace.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "client_certificate": {
                                "description": "The `client_certificate` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].client_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "client_key": {
                                "description": "The `client_key` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded private key used by clients to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].client_key",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "cluster_ca_certificate": {
                                "description": "The `cluster_ca_certificate` in the `azurerm_kubernetes_cluster`'s `kube_config` block. Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].cluster_ca_certificate",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "cluster_fqdn": {
                                "description": "The FQDN of the Azure Kubernetes Managed Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `identity` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.identity[0]",
                                        "azurerm_kubernetes_cluster.main.identity",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_portal_fqdn": {
                                "description": "The FQDN for the Azure Portal resources when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.portal_fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "cluster_private_fqdn": {
                                "description": "The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.private_fqdn",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "generated_cluster_private_ssh_key": {
                                "description": "The cluster will use this generated private key as ssh key when `var.public_ssh_key` is empty or null. Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.linux_profile[0]",
                                        "azurerm_kubernetes_cluster.main.linux_profile",
                                        "azurerm_kubernetes_cluster.main",
                                        "var.public_ssh_key",
                                        "var.public_ssh_key",
                                        "tls_private_key.ssh[0].private_key_pem",
                                        "tls_private_key.ssh[0]",
                                        "tls_private_key.ssh"
                                    ]
                                },
                                "sensitive": true
                            },
                            "generated_cluster_public_ssh_key": {
                                "description": "The cluster will use this generated public key as ssh key when `var.public_ssh_key` is empty or null. The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the [ECDSA P224 limitations](https://registry.terraform.io/providers/hashicorp/tls/latest/docs#limitations).",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.linux_profile[0]",
                                        "azurerm_kubernetes_cluster.main.linux_profile",
                                        "azurerm_kubernetes_cluster.main",
                                        "var.public_ssh_key",
                                        "var.public_ssh_key",
                                        "tls_private_key.ssh[0].public_key_openssh",
                                        "tls_private_key.ssh[0]",
                                        "tls_private_key.ssh"
                                    ]
                                }
                            },
                            "host": {
                                "description": "The `host` in the `azurerm_kubernetes_cluster`'s `kube_config` block. The Kubernetes cluster server host.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].host",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "http_application_routing_zone_name": {
                                "description": "The `azurerm_kubernetes_cluster`'s `http_application_routing_zone_name` argument. The Zone Name of the HTTP Application Routing.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.http_application_routing_zone_name",
                                        "azurerm_kubernetes_cluster.main",
                                        "azurerm_kubernetes_cluster.main.http_application_routing_zone_name",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "ingress_application_gateway": {
                                "description": "The `azurerm_kubernetes_cluster`'s `ingress_application_gateway` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "ingress_application_gateway_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `ingress_application_gateway` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                        "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "key_vault_secrets_provider": {
                                "description": "The `azurerm_kubernetes_cluster`'s `key_vault_secrets_provider` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "key_vault_secrets_provider_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `key_vault_secrets_provider` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider[0]",
                                        "azurerm_kubernetes_cluster.main.key_vault_secrets_provider",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "kube_admin_config_raw": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kube_admin_config_raw` argument. Raw Kubernetes config for the admin account to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools. This is only available when Role Based Access Control with Azure Active Directory is enabled and local accounts enabled.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_admin_config_raw",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kube_config_raw": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kube_config_raw` argument. Raw Kubernetes config to be used by [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/) and other compatible tools.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config_raw",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "kubelet_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `kubelet_identity` block.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kubelet_identity",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "location": {
                                "description": "The `azurerm_kubernetes_cluster`'s `location` argument. (Required) The location where the Managed Kubernetes Cluster should be created.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.location",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "network_profile": {
                                "description": "The `azurerm_kubernetes_cluster`'s `network_profile` block",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.network_profile",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "node_resource_group": {
                                "description": "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.node_resource_group",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oidc_issuer_url": {
                                "description": "The OIDC issuer URL that is associated with the cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oidc_issuer_url",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oms_agent": {
                                "description": "The `azurerm_kubernetes_cluster`'s `oms_agent` argument.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oms_agent[0]",
                                        "azurerm_kubernetes_cluster.main.oms_agent",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "oms_agent_enabled": {
                                "description": "Has the `azurerm_kubernetes_cluster` turned on `oms_agent` block?",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.oms_agent[0]",
                                        "azurerm_kubernetes_cluster.main.oms_agent",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "open_service_mesh_enabled": {
                                "description": "(Optional) Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about).",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.open_service_mesh_enabled",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            },
                            "password": {
                                "description": "The `password` in the `azurerm_kubernetes_cluster`'s `kube_config` block. A password or token used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].password",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "username": {
                                "description": "The `username` in the `azurerm_kubernetes_cluster`'s `kube_config` block. A username used to authenticate to the Kubernetes cluster.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.kube_config[0].username",
                                        "azurerm_kubernetes_cluster.main.kube_config[0]",
                                        "azurerm_kubernetes_cluster.main.kube_config",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                },
                                "sensitive": true
                            },
                            "web_app_routing_identity": {
                                "description": "The `azurerm_kubernetes_cluster`'s `web_app_routing_identity` block, it's type is a list of object.",
                                "expression": {
                                    "references": [
                                        "azurerm_kubernetes_cluster.main.web_app_routing[0].web_app_routing_identity",
                                        "azurerm_kubernetes_cluster.main.web_app_routing[0]",
                                        "azurerm_kubernetes_cluster.main.web_app_routing",
                                        "azurerm_kubernetes_cluster.main"
                                    ]
                                }
                            }
                        },
                        "resources": [
                            {
                                "address": "azapi_update_resource.aks_cluster_http_proxy_config_no_proxy",
                                "count_expression": {
                                    "references": [
                                        "var.http_proxy_config.no_proxy[0]",
                                        "var.http_proxy_config.no_proxy",
                                        "var.http_proxy_config"
                                    ]
                                },
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "body": {
                                        "references": [
                                            "var.http_proxy_config.no_proxy",
                                            "var.http_proxy_config"
                                        ]
                                    },
                                    "resource_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "type": {
                                        "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster_http_proxy_config_no_proxy",
                                "provider_config_key": "module.aks:azapi",
                                "schema_version": 1,
                                "type": "azapi_update_resource"
                            },
                            {
                                "address": "azapi_update_resource.aks_cluster_post_create",
                                "expressions": {
                                    "body": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    },
                                    "resource_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "type": {
                                        "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                                    }
                                },
                                "mode": "managed",
                                "name": "aks_cluster_post_create",
                                "provider_config_key": "module.aks:azapi",
                                "schema_version": 1,
                                "type": "azapi_update_resource"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster.main",
                                "expressions": {
                                    "automatic_channel_upgrade": {
                                        "references": [
                                            "var.automatic_channel_upgrade"
                                        ]
                                    },
                                    "azure_policy_enabled": {
                                        "references": [
                                            "var.azure_policy_enabled"
                                        ]
                                    },
                                    "cost_analysis_enabled": {
                                        "references": [
                                            "var.cost_analysis_enabled"
                                        ]
                                    },
                                    "disk_encryption_set_id": {
                                        "references": [
                                            "var.disk_encryption_set_id"
                                        ]
                                    },
                                    "dns_prefix": {
                                        "references": [
                                            "var.prefix"
                                        ]
                                    },
                                    "image_cleaner_enabled": {
                                        "references": [
                                            "var.image_cleaner_enabled"
                                        ]
                                    },
                                    "image_cleaner_interval_hours": {
                                        "references": [
                                            "var.image_cleaner_interval_hours"
                                        ]
                                    },
                                    "kubernetes_version": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    },
                                    "local_account_disabled": {
                                        "references": [
                                            "var.local_account_disabled"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location",
                                            "data.azurerm_resource_group.main.location",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "local.cluster_name",
                                            "var.cluster_name_random_suffix"
                                        ]
                                    },
                                    "network_profile": [
                                        {
                                            "dns_service_ip": {
                                                "references": [
                                                    "var.net_profile_dns_service_ip"
                                                ]
                                            },
                                            "ebpf_data_plane": {
                                                "references": [
                                                    "var.ebpf_data_plane"
                                                ]
                                            },
                                            "load_balancer_sku": {
                                                "references": [
                                                    "var.load_balancer_sku"
                                                ]
                                            },
                                            "network_plugin": {
                                                "references": [
                                                    "var.network_plugin"
                                                ]
                                            },
                                            "network_plugin_mode": {
                                                "references": [
                                                    "var.network_plugin_mode"
                                                ]
                                            },
                                            "network_policy": {
                                                "references": [
                                                    "var.network_policy"
                                                ]
                                            },
                                            "outbound_type": {
                                                "references": [
                                                    "var.net_profile_outbound_type"
                                                ]
                                            },
                                            "pod_cidr": {
                                                "references": [
                                                    "var.net_profile_pod_cidr"
                                                ]
                                            },
                                            "service_cidr": {
                                                "references": [
                                                    "var.net_profile_service_cidr"
                                                ]
                                            }
                                        }
                                    ],
                                    "node_os_channel_upgrade": {
                                        "references": [
                                            "var.node_os_channel_upgrade"
                                        ]
                                    },
                                    "node_resource_group": {
                                        "references": [
                                            "var.node_resource_group"
                                        ]
                                    },
                                    "oidc_issuer_enabled": {
                                        "references": [
                                            "var.oidc_issuer_enabled"
                                        ]
                                    },
                                    "open_service_mesh_enabled": {
                                        "references": [
                                            "var.open_service_mesh_enabled"
                                        ]
                                    },
                                    "private_cluster_enabled": {
                                        "references": [
                                            "var.private_cluster_enabled"
                                        ]
                                    },
                                    "private_cluster_public_fqdn_enabled": {
                                        "references": [
                                            "var.private_cluster_public_fqdn_enabled"
                                        ]
                                    },
                                    "private_dns_zone_id": {
                                        "references": [
                                            "var.private_dns_zone_id"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "data.azurerm_resource_group.main.name",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "role_based_access_control_enabled": {
                                        "references": [
                                            "var.role_based_access_control_enabled"
                                        ]
                                    },
                                    "run_command_enabled": {
                                        "references": [
                                            "var.run_command_enabled"
                                        ]
                                    },
                                    "sku_tier": {
                                        "references": [
                                            "var.sku_tier"
                                        ]
                                    },
                                    "support_plan": {
                                        "references": [
                                            "var.support_plan"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "workload_identity_enabled": {
                                        "references": [
                                            "var.workload_identity_enabled"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 2,
                                "type": "azurerm_kubernetes_cluster"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "capacity_reservation_group_id": {
                                        "references": [
                                            "each.value.capacity_reservation_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "custom_ca_trust_enabled": {
                                        "references": [
                                            "each.value.custom_ca_trust_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "enable_auto_scaling": {
                                        "references": [
                                            "each.value.enable_auto_scaling",
                                            "each.value"
                                        ]
                                    },
                                    "enable_host_encryption": {
                                        "references": [
                                            "each.value.enable_host_encryption",
                                            "each.value"
                                        ]
                                    },
                                    "enable_node_public_ip": {
                                        "references": [
                                            "each.value.enable_node_public_ip",
                                            "each.value"
                                        ]
                                    },
                                    "eviction_policy": {
                                        "references": [
                                            "each.value.eviction_policy",
                                            "each.value"
                                        ]
                                    },
                                    "fips_enabled": {
                                        "references": [
                                            "each.value.fips_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "host_group_id": {
                                        "references": [
                                            "each.value.host_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "kubelet_disk_type": {
                                        "references": [
                                            "each.value.kubelet_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "kubernetes_cluster_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "max_count": {
                                        "references": [
                                            "each.value.max_count",
                                            "each.value"
                                        ]
                                    },
                                    "max_pods": {
                                        "references": [
                                            "each.value.max_pods",
                                            "each.value"
                                        ]
                                    },
                                    "message_of_the_day": {
                                        "references": [
                                            "each.value.message_of_the_day",
                                            "each.value"
                                        ]
                                    },
                                    "min_count": {
                                        "references": [
                                            "each.value.min_count",
                                            "each.value"
                                        ]
                                    },
                                    "mode": {
                                        "references": [
                                            "each.value.mode",
                                            "each.value"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "node_count": {
                                        "references": [
                                            "each.value.node_count",
                                            "each.value"
                                        ]
                                    },
                                    "node_labels": {
                                        "references": [
                                            "each.value.node_labels",
                                            "each.value"
                                        ]
                                    },
                                    "node_public_ip_prefix_id": {
                                        "references": [
                                            "each.value.node_public_ip_prefix_id",
                                            "each.value"
                                        ]
                                    },
                                    "node_taints": {
                                        "references": [
                                            "each.value.node_taints",
                                            "each.value"
                                        ]
                                    },
                                    "orchestrator_version": {
                                        "references": [
                                            "each.value.orchestrator_version",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_size_gb": {
                                        "references": [
                                            "each.value.os_disk_size_gb",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_type": {
                                        "references": [
                                            "each.value.os_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "os_sku": {
                                        "references": [
                                            "each.value.os_sku",
                                            "each.value"
                                        ]
                                    },
                                    "os_type": {
                                        "references": [
                                            "each.value.os_type",
                                            "each.value"
                                        ]
                                    },
                                    "pod_subnet_id": {
                                        "references": [
                                            "each.value.pod_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "priority": {
                                        "references": [
                                            "each.value.priority",
                                            "each.value"
                                        ]
                                    },
                                    "proximity_placement_group_id": {
                                        "references": [
                                            "each.value.proximity_placement_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "scale_down_mode": {
                                        "references": [
                                            "each.value.scale_down_mode",
                                            "each.value"
                                        ]
                                    },
                                    "snapshot_id": {
                                        "references": [
                                            "each.value.snapshot_id",
                                            "each.value"
                                        ]
                                    },
                                    "spot_max_price": {
                                        "references": [
                                            "each.value.spot_max_price",
                                            "each.value"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "ultra_ssd_enabled": {
                                        "references": [
                                            "each.value.ultra_ssd_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "each.value.vm_size",
                                            "each.value"
                                        ]
                                    },
                                    "vnet_subnet_id": {
                                        "references": [
                                            "each.value.vnet_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "workload_runtime": {
                                        "references": [
                                            "each.value.workload_runtime",
                                            "each.value"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "each.value.zones",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "local.node_pools_create_after_destroy"
                                    ]
                                },
                                "mode": "managed",
                                "name": "node_pool_create_after_destroy",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_kubernetes_cluster_node_pool"
                            },
                            {
                                "address": "azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                                "depends_on": [
                                    "azapi_update_resource.aks_cluster_post_create"
                                ],
                                "expressions": {
                                    "capacity_reservation_group_id": {
                                        "references": [
                                            "each.value.capacity_reservation_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "custom_ca_trust_enabled": {
                                        "references": [
                                            "each.value.custom_ca_trust_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "enable_auto_scaling": {
                                        "references": [
                                            "each.value.enable_auto_scaling",
                                            "each.value"
                                        ]
                                    },
                                    "enable_host_encryption": {
                                        "references": [
                                            "each.value.enable_host_encryption",
                                            "each.value"
                                        ]
                                    },
                                    "enable_node_public_ip": {
                                        "references": [
                                            "each.value.enable_node_public_ip",
                                            "each.value"
                                        ]
                                    },
                                    "eviction_policy": {
                                        "references": [
                                            "each.value.eviction_policy",
                                            "each.value"
                                        ]
                                    },
                                    "fips_enabled": {
                                        "references": [
                                            "each.value.fips_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "gpu_instance": {
                                        "references": [
                                            "each.value.gpu_instance",
                                            "each.value"
                                        ]
                                    },
                                    "host_group_id": {
                                        "references": [
                                            "each.value.host_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "kubelet_disk_type": {
                                        "references": [
                                            "each.value.kubelet_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "kubernetes_cluster_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.id",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "max_count": {
                                        "references": [
                                            "each.value.max_count",
                                            "each.value"
                                        ]
                                    },
                                    "max_pods": {
                                        "references": [
                                            "each.value.max_pods",
                                            "each.value"
                                        ]
                                    },
                                    "message_of_the_day": {
                                        "references": [
                                            "each.value.message_of_the_day",
                                            "each.value"
                                        ]
                                    },
                                    "min_count": {
                                        "references": [
                                            "each.value.min_count",
                                            "each.value"
                                        ]
                                    },
                                    "mode": {
                                        "references": [
                                            "each.value.mode",
                                            "each.value"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    },
                                    "node_count": {
                                        "references": [
                                            "each.value.node_count",
                                            "each.value"
                                        ]
                                    },
                                    "node_labels": {
                                        "references": [
                                            "each.value.node_labels",
                                            "each.value"
                                        ]
                                    },
                                    "node_public_ip_prefix_id": {
                                        "references": [
                                            "each.value.node_public_ip_prefix_id",
                                            "each.value"
                                        ]
                                    },
                                    "node_taints": {
                                        "references": [
                                            "each.value.node_taints",
                                            "each.value"
                                        ]
                                    },
                                    "orchestrator_version": {
                                        "references": [
                                            "each.value.orchestrator_version",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_size_gb": {
                                        "references": [
                                            "each.value.os_disk_size_gb",
                                            "each.value"
                                        ]
                                    },
                                    "os_disk_type": {
                                        "references": [
                                            "each.value.os_disk_type",
                                            "each.value"
                                        ]
                                    },
                                    "os_sku": {
                                        "references": [
                                            "each.value.os_sku",
                                            "each.value"
                                        ]
                                    },
                                    "os_type": {
                                        "references": [
                                            "each.value.os_type",
                                            "each.value"
                                        ]
                                    },
                                    "pod_subnet_id": {
                                        "references": [
                                            "each.value.pod_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "priority": {
                                        "references": [
                                            "each.value.priority",
                                            "each.value"
                                        ]
                                    },
                                    "proximity_placement_group_id": {
                                        "references": [
                                            "each.value.proximity_placement_group_id",
                                            "each.value"
                                        ]
                                    },
                                    "scale_down_mode": {
                                        "references": [
                                            "each.value.scale_down_mode",
                                            "each.value"
                                        ]
                                    },
                                    "snapshot_id": {
                                        "references": [
                                            "each.value.snapshot_id",
                                            "each.value"
                                        ]
                                    },
                                    "spot_max_price": {
                                        "references": [
                                            "each.value.spot_max_price",
                                            "each.value"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "each.value.tags",
                                            "each.value",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "ultra_ssd_enabled": {
                                        "references": [
                                            "each.value.ultra_ssd_enabled",
                                            "each.value"
                                        ]
                                    },
                                    "vm_size": {
                                        "references": [
                                            "each.value.vm_size",
                                            "each.value"
                                        ]
                                    },
                                    "vnet_subnet_id": {
                                        "references": [
                                            "each.value.vnet_subnet_id",
                                            "each.value"
                                        ]
                                    },
                                    "workload_runtime": {
                                        "references": [
                                            "each.value.workload_runtime",
                                            "each.value"
                                        ]
                                    },
                                    "zones": {
                                        "references": [
                                            "each.value.zones",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "local.node_pools_create_before_destroy"
                                    ]
                                },
                                "mode": "managed",
                                "name": "node_pool_create_before_destroy",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_kubernetes_cluster_node_pool"
                            },
                            {
                                "address": "azurerm_log_analytics_solution.main",
                                "count_expression": {
                                    "references": [
                                        "local.create_analytics_solution"
                                    ]
                                },
                                "expressions": {
                                    "location": {
                                        "references": [
                                            "local.log_analytics_workspace.location",
                                            "local.log_analytics_workspace",
                                            "data.azurerm_log_analytics_workspace.main[0].location",
                                            "data.azurerm_log_analytics_workspace.main[0]",
                                            "data.azurerm_log_analytics_workspace.main"
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
                                            "local.log_analytics_workspace.resource_group_name",
                                            "local.log_analytics_workspace"
                                        ]
                                    },
                                    "solution_name": {
                                        "constant_value": "ContainerInsights"
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    },
                                    "workspace_name": {
                                        "references": [
                                            "local.log_analytics_workspace.name",
                                            "local.log_analytics_workspace"
                                        ]
                                    },
                                    "workspace_resource_id": {
                                        "references": [
                                            "local.log_analytics_workspace.id",
                                            "local.log_analytics_workspace"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 1,
                                "type": "azurerm_log_analytics_solution"
                            },
                            {
                                "address": "azurerm_log_analytics_workspace.main",
                                "count_expression": {
                                    "references": [
                                        "local.create_analytics_workspace"
                                    ]
                                },
                                "expressions": {
                                    "allow_resource_only_permissions": {
                                        "references": [
                                            "var.log_analytics_workspace_allow_resource_only_permissions"
                                        ]
                                    },
                                    "cmk_for_query_forced": {
                                        "references": [
                                            "var.log_analytics_workspace_cmk_for_query_forced"
                                        ]
                                    },
                                    "daily_quota_gb": {
                                        "references": [
                                            "var.log_analytics_workspace_daily_quota_gb"
                                        ]
                                    },
                                    "data_collection_rule_id": {
                                        "references": [
                                            "var.log_analytics_workspace_data_collection_rule_id"
                                        ]
                                    },
                                    "immediate_data_purge_on_30_days_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_immediate_data_purge_on_30_days_enabled"
                                        ]
                                    },
                                    "internet_ingestion_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_internet_ingestion_enabled"
                                        ]
                                    },
                                    "internet_query_enabled": {
                                        "references": [
                                            "var.log_analytics_workspace_internet_query_enabled"
                                        ]
                                    },
                                    "local_authentication_disabled": {
                                        "references": [
                                            "var.log_analytics_workspace_local_authentication_disabled"
                                        ]
                                    },
                                    "location": {
                                        "references": [
                                            "var.location",
                                            "data.azurerm_resource_group.main.location",
                                            "data.azurerm_resource_group.main"
                                        ]
                                    },
                                    "name": {
                                        "references": [
                                            "var.cluster_log_analytics_workspace_name",
                                            "var.prefix"
                                        ]
                                    },
                                    "reservation_capacity_in_gb_per_day": {
                                        "references": [
                                            "var.log_analytics_workspace_reservation_capacity_in_gb_per_day"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.log_analytics_workspace_resource_group_name",
                                            "var.resource_group_name"
                                        ]
                                    },
                                    "retention_in_days": {
                                        "references": [
                                            "var.log_retention_in_days"
                                        ]
                                    },
                                    "sku": {
                                        "references": [
                                            "var.log_analytics_workspace_sku"
                                        ]
                                    },
                                    "tags": {
                                        "references": [
                                            "var.tags",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix",
                                            "var.tracing_tags_enabled",
                                            "var.tracing_tags_prefix"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 3,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "azurerm_role_assignment.acr",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.kubelet_identity[0]",
                                            "azurerm_kubernetes_cluster.main.kubelet_identity",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "AcrPull"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    },
                                    "skip_service_principal_aad_check": {
                                        "constant_value": true
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.attached_acr_id_map"
                                    ]
                                },
                                "mode": "managed",
                                "name": "acr",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_green_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "local.default_nodepool_subnet_segments",
                                            "local.default_nodepool_subnet_segments"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_byo_vnet_network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "data.azurerm_virtual_network.application_gateway_vnet[0].id",
                                            "data.azurerm_virtual_network.application_gateway_vnet[0]",
                                            "data.azurerm_virtual_network.application_gateway_vnet"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_existing_vnet_network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.application_gateway_resource_group_reader",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.ingress_application_gateway_enabled"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Reader"
                                    },
                                    "scope": {
                                        "references": [
                                            "local.use_brown_field_gw_for_ingress",
                                            "data.azurerm_resource_group.ingress_gw[0].id",
                                            "data.azurerm_resource_group.ingress_gw[0]",
                                            "data.azurerm_resource_group.ingress_gw",
                                            "data.azurerm_resource_group.aks_rg[0].id",
                                            "data.azurerm_resource_group.aks_rg[0]",
                                            "data.azurerm_resource_group.aks_rg"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "application_gateway_resource_group_reader",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.existing_application_gateway_contributor",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                            "azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                            "azurerm_kubernetes_cluster.main"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "var.brown_field_application_gateway_for_ingress.id",
                                            "var.brown_field_application_gateway_for_ingress"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "existing_application_gateway_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.network_contributor",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                            "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                            "data.azurerm_user_assigned_identity.cluster_identity",
                                            "azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                            "azurerm_kubernetes_cluster.main.identity[0]",
                                            "azurerm_kubernetes_cluster.main.identity",
                                            "azurerm_kubernetes_cluster.main",
                                            "var.client_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.create_role_assignment_network_contributor",
                                        "var.client_id",
                                        "var.client_secret",
                                        "local.subnet_ids"
                                    ]
                                },
                                "mode": "managed",
                                "name": "network_contributor",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "azurerm_role_assignment.network_contributor_on_subnet",
                                "expressions": {
                                    "principal_id": {
                                        "references": [
                                            "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                            "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                            "data.azurerm_user_assigned_identity.cluster_identity",
                                            "azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                            "azurerm_kubernetes_cluster.main.identity[0]",
                                            "azurerm_kubernetes_cluster.main.identity",
                                            "azurerm_kubernetes_cluster.main",
                                            "var.client_id"
                                        ]
                                    },
                                    "role_definition_name": {
                                        "constant_value": "Network Contributor"
                                    },
                                    "scope": {
                                        "references": [
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.network_contributor_role_assigned_subnet_ids"
                                    ]
                                },
                                "mode": "managed",
                                "name": "network_contributor_on_subnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_role_assignment"
                            },
                            {
                                "address": "null_resource.http_proxy_config_no_proxy_keeper",
                                "count_expression": {
                                    "references": [
                                        "var.http_proxy_config.no_proxy[0]",
                                        "var.http_proxy_config.no_proxy",
                                        "var.http_proxy_config"
                                    ]
                                },
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "var.http_proxy_config.no_proxy",
                                            "var.http_proxy_config"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "http_proxy_config_no_proxy_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.kubernetes_cluster_name_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "local.cluster_name"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubernetes_cluster_name_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.kubernetes_version_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "var.kubernetes_version"
                                        ]
                                    }
                                },
                                "mode": "managed",
                                "name": "kubernetes_version_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "null_resource.pool_name_keeper",
                                "expressions": {
                                    "triggers": {
                                        "references": [
                                            "each.value.name",
                                            "each.value"
                                        ]
                                    }
                                },
                                "for_each_expression": {
                                    "references": [
                                        "var.node_pools"
                                    ]
                                },
                                "mode": "managed",
                                "name": "pool_name_keeper",
                                "provider_config_key": "module.aks:null",
                                "schema_version": 0,
                                "type": "null_resource"
                            },
                            {
                                "address": "tls_private_key.ssh",
                                "count_expression": {
                                    "references": [
                                        "var.admin_username"
                                    ]
                                },
                                "expressions": {
                                    "algorithm": {
                                        "constant_value": "RSA"
                                    },
                                    "rsa_bits": {
                                        "constant_value": 2048
                                    }
                                },
                                "mode": "managed",
                                "name": "ssh",
                                "provider_config_key": "module.aks:tls",
                                "schema_version": 1,
                                "type": "tls_private_key"
                            },
                            {
                                "address": "data.azurerm_client_config.this",
                                "mode": "data",
                                "name": "this",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_client_config"
                            },
                            {
                                "address": "data.azurerm_log_analytics_workspace.main",
                                "count_expression": {
                                    "references": [
                                        "local.query_datasource_for_log_analytics_workspace_location"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.log_analytics_workspace.name",
                                            "var.log_analytics_workspace"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "local.log_analytics_workspace.resource_group_name",
                                            "local.log_analytics_workspace"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_log_analytics_workspace"
                            },
                            {
                                "address": "data.azurerm_resource_group.aks_rg",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "aks_rg",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_resource_group.ingress_gw",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "local.existing_application_gateway_resource_group_for_ingress"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "ingress_gw",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_resource_group.main",
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "main",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_resource_group"
                            },
                            {
                                "address": "data.azurerm_user_assigned_identity.cluster_identity",
                                "count_expression": {
                                    "references": [
                                        "var.client_id",
                                        "var.client_secret",
                                        "var.identity_type"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "var.identity_ids[0]",
                                            "var.identity_ids"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "var.identity_ids[0]",
                                            "var.identity_ids"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "cluster_identity",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_user_assigned_identity"
                            },
                            {
                                "address": "data.azurerm_virtual_network.application_gateway_vnet",
                                "count_expression": {
                                    "references": [
                                        "var.create_role_assignments_for_application_gateway",
                                        "local.use_brown_field_gw_for_ingress"
                                    ]
                                },
                                "expressions": {
                                    "name": {
                                        "references": [
                                            "local.existing_application_gateway_subnet_vnet_name"
                                        ]
                                    },
                                    "resource_group_name": {
                                        "references": [
                                            "local.existing_application_gateway_subnet_resource_group_name"
                                        ]
                                    }
                                },
                                "mode": "data",
                                "name": "application_gateway_vnet",
                                "provider_config_key": "azurerm",
                                "schema_version": 0,
                                "type": "azurerm_virtual_network"
                            }
                        ],
                        "variables": {
                            "aci_connector_linux_enabled": {
                                "default": false,
                                "description": "Enable Virtual Node pool"
                            },
                            "aci_connector_linux_subnet_name": {
                                "default": null,
                                "description": "(Optional) aci_connector_linux subnet name"
                            },
                            "admin_username": {
                                "default": null,
                                "description": "The username of the local administrator to be created on the Kubernetes cluster. Set this variable to `null` to turn off the cluster's `linux_profile`. Changing this forces a new resource to be created."
                            },
                            "agents_availability_zones": {
                                "default": null,
                                "description": "(Optional) A list of Availability Zones across which the Node Pool should be spread. Changing this forces a new resource to be created."
                            },
                            "agents_count": {
                                "default": 2,
                                "description": "The number of Agents that should exist in the Agent Pool. Please set `agents_count` `null` while `enable_auto_scaling` is `true` to avoid possible `agents_count` changes."
                            },
                            "agents_labels": {
                                "default": {},
                                "description": "(Optional) A map of Kubernetes labels which should be applied to nodes in the Default Node Pool. Changing this forces a new resource to be created."
                            },
                            "agents_max_count": {
                                "default": null,
                                "description": "Maximum number of nodes in a pool"
                            },
                            "agents_max_pods": {
                                "default": null,
                                "description": "(Optional) The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
                            },
                            "agents_min_count": {
                                "default": null,
                                "description": "Minimum number of nodes in a pool"
                            },
                            "agents_pool_drain_timeout_in_minutes": {
                                "default": null,
                                "description": "(Optional) The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created."
                            },
                            "agents_pool_kubelet_configs": {
                                "default": [],
                                "description": "  list(object({\n    cpu_manager_policy        = (Optional) Specifies the CPU Manager policy to use. Possible values are `none` and `static`, Changing this forces a new resource to be created.\n    cpu_cfs_quota_enabled     = (Optional) Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created.\n    cpu_cfs_quota_period      = (Optional) Specifies the CPU CFS quota period value. Changing this forces a new resource to be created.\n    image_gc_high_threshold   = (Optional) Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    image_gc_low_threshold    = (Optional) Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    topology_manager_policy   = (Optional) Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`. Changing this forces a new resource to be created.\n    allowed_unsafe_sysctls    = (Optional) Specifies the allow list of unsafe sysctls command or patterns (ending in `*`). Changing this forces a new resource to be created.\n    container_log_max_size_mb = (Optional) Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created.\n    container_log_max_line    = (Optional) Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created.\n    pod_max_pid               = (Optional) Specifies the maximum number of processes per pod. Changing this forces a new resource to be created.\n}))\n"
                            },
                            "agents_pool_linux_os_configs": {
                                "default": [],
                                "description": "list(object({\n  sysctl_configs = optional(list(object({\n    fs_aio_max_nr                      = (Optional) The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`. Changing this forces a new resource to be created.\n    fs_file_max                        = (Optional) The sysctl setting fs.file-max. Must be between `8192` and `12000500`. Changing this forces a new resource to be created.\n    fs_inotify_max_user_watches        = (Optional) The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`. Changing this forces a new resource to be created.\n    fs_nr_open                         = (Optional) The sysctl setting fs.nr_open. Must be between `8192` and `20000500`. Changing this forces a new resource to be created.\n    kernel_threads_max                 = (Optional) The sysctl setting kernel.threads-max. Must be between `20` and `513785`. Changing this forces a new resource to be created.\n    net_core_netdev_max_backlog        = (Optional) The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`. Changing this forces a new resource to be created.\n    net_core_optmem_max                = (Optional) The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`. Changing this forces a new resource to be created.\n    net_core_rmem_default              = (Optional) The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_rmem_max                  = (Optional) The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_somaxconn                 = (Optional) The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`. Changing this forces a new resource to be created.\n    net_core_wmem_default              = (Optional) The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_core_wmem_max                  = (Optional) The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n    net_ipv4_ip_local_port_range_min   = (Optional) The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n    net_ipv4_ip_local_port_range_max   = (Optional) The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh1  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh2  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`. Changing this forces a new resource to be created.\n    net_ipv4_neigh_default_gc_thresh3  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_fin_timeout           = (Optional) The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_intvl       = (Optional) The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `75`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_probes      = (Optional) The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_keepalive_time        = (Optional) The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_max_syn_backlog       = (Optional) The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_max_tw_buckets        = (Optional) The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`. Changing this forces a new resource to be created.\n    net_ipv4_tcp_tw_reuse              = (Optional) The sysctl setting net.ipv4.tcp_tw_reuse. Changing this forces a new resource to be created.\n    net_netfilter_nf_conntrack_buckets = (Optional) The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `147456`. Changing this forces a new resource to be created.\n    net_netfilter_nf_conntrack_max     = (Optional) The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `1048576`. Changing this forces a new resource to be created.\n    vm_max_map_count                   = (Optional) The sysctl setting vm.max_map_count. Must be between `65530` and `262144`. Changing this forces a new resource to be created.\n    vm_swappiness                      = (Optional) The sysctl setting vm.swappiness. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    vm_vfs_cache_pressure              = (Optional) The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`. Changing this forces a new resource to be created.\n  })), [])\n  transparent_huge_page_enabled = (Optional) Specifies the Transparent Huge Page enabled configuration. Possible values are `always`, `madvise` and `never`. Changing this forces a new resource to be created.\n  transparent_huge_page_defrag  = (Optional) specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`. Changing this forces a new resource to be created.\n  swap_file_size_mb             = (Optional) Specifies the size of the swap file on each node in MB. Changing this forces a new resource to be created.\n}))\n"
                            },
                            "agents_pool_max_surge": {
                                "default": "10%",
                                "description": "The maximum number or percentage of nodes which will be added to the Default Node Pool size during an upgrade."
                            },
                            "agents_pool_name": {
                                "default": "nodepool",
                                "description": "The default Azure AKS agentpool (nodepool) name."
                            },
                            "agents_pool_node_soak_duration_in_minutes": {
                                "default": 0,
                                "description": "(Optional) The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node. Defaults to 0."
                            },
                            "agents_proximity_placement_group_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Proximity Placement Group of the default Azure AKS agentpool (nodepool). Changing this forces a new resource to be created."
                            },
                            "agents_size": {
                                "default": "Standard_D2s_v3",
                                "description": "The default virtual machine size for the Kubernetes agents. Changing this without specifying `var.temporary_name_for_rotation` forces a new resource to be created."
                            },
                            "agents_tags": {
                                "default": {},
                                "description": "(Optional) A mapping of tags to assign to the Node Pool."
                            },
                            "agents_taints": {
                                "default": null,
                                "description": "(Optional) A list of the taints added to new nodes during node pool create and scale. Changing this forces a new resource to be created."
                            },
                            "agents_type": {
                                "default": "VirtualMachineScaleSets",
                                "description": "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
                            },
                            "api_server_authorized_ip_ranges": {
                                "default": null,
                                "description": "(Optional) The IP ranges to allow for incoming traffic to the server nodes."
                            },
                            "api_server_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Subnet where the API server endpoint is delegated to."
                            },
                            "attached_acr_id_map": {
                                "default": {},
                                "description": "Azure Container Registry ids that need an authentication mechanism with Azure Kubernetes Service (AKS). Map key must be static string as acr's name, the value is acr's resource id. Changing this forces some new resources to be created."
                            },
                            "auto_scaler_profile_balance_similar_node_groups": {
                                "default": false,
                                "description": "Detect similar node groups and balance the number of nodes between them. Defaults to `false`."
                            },
                            "auto_scaler_profile_empty_bulk_delete_max": {
                                "default": 10,
                                "description": "Maximum number of empty nodes that can be deleted at the same time. Defaults to `10`."
                            },
                            "auto_scaler_profile_enabled": {
                                "default": false,
                                "description": "Enable configuring the auto scaler profile"
                            },
                            "auto_scaler_profile_expander": {
                                "default": "random",
                                "description": "Expander to use. Possible values are `least-waste`, `priority`, `most-pods` and `random`. Defaults to `random`."
                            },
                            "auto_scaler_profile_max_graceful_termination_sec": {
                                "default": "600",
                                "description": "Maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. Defaults to `600`."
                            },
                            "auto_scaler_profile_max_node_provisioning_time": {
                                "default": "15m",
                                "description": "Maximum time the autoscaler waits for a node to be provisioned. Defaults to `15m`."
                            },
                            "auto_scaler_profile_max_unready_nodes": {
                                "default": 3,
                                "description": "Maximum Number of allowed unready nodes. Defaults to `3`."
                            },
                            "auto_scaler_profile_max_unready_percentage": {
                                "default": 45,
                                "description": "Maximum percentage of unready nodes the cluster autoscaler will stop if the percentage is exceeded. Defaults to `45`."
                            },
                            "auto_scaler_profile_new_pod_scale_up_delay": {
                                "default": "10s",
                                "description": "For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. Defaults to `10s`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_add": {
                                "default": "10m",
                                "description": "How long after the scale up of AKS nodes the scale down evaluation resumes. Defaults to `10m`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_delete": {
                                "default": null,
                                "description": "How long after node deletion that scale down evaluation resumes. Defaults to the value used for `scan_interval`."
                            },
                            "auto_scaler_profile_scale_down_delay_after_failure": {
                                "default": "3m",
                                "description": "How long after scale down failure that scale down evaluation resumes. Defaults to `3m`."
                            },
                            "auto_scaler_profile_scale_down_unneeded": {
                                "default": "10m",
                                "description": "How long a node should be unneeded before it is eligible for scale down. Defaults to `10m`."
                            },
                            "auto_scaler_profile_scale_down_unready": {
                                "default": "20m",
                                "description": "How long an unready node should be unneeded before it is eligible for scale down. Defaults to `20m`."
                            },
                            "auto_scaler_profile_scale_down_utilization_threshold": {
                                "default": "0.5",
                                "description": "Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. Defaults to `0.5`."
                            },
                            "auto_scaler_profile_scan_interval": {
                                "default": "10s",
                                "description": "How often the AKS Cluster should be re-evaluated for scale up/down. Defaults to `10s`."
                            },
                            "auto_scaler_profile_skip_nodes_with_local_storage": {
                                "default": true,
                                "description": "If `true` cluster autoscaler will never delete nodes with pods with local storage, for example, EmptyDir or HostPath. Defaults to `true`."
                            },
                            "auto_scaler_profile_skip_nodes_with_system_pods": {
                                "default": true,
                                "description": "If `true` cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Defaults to `true`."
                            },
                            "automatic_channel_upgrade": {
                                "default": null,
                                "description": "(Optional) The upgrade channel for this Kubernetes Cluster. Possible values are `patch`, `rapid`, `node-image` and `stable`. By default automatic-upgrades are turned off. Note that you cannot specify the patch version using `kubernetes_version` or `orchestrator_version` when using the `patch` upgrade channel. See [the documentation](https://learn.microsoft.com/en-us/azure/aks/auto-upgrade-cluster) for more information"
                            },
                            "azure_policy_enabled": {
                                "default": false,
                                "description": "Enable Azure Policy Addon."
                            },
                            "brown_field_application_gateway_for_ingress": {
                                "default": null,
                                "description": "[Definition of `brown_field`](https://learn.microsoft.com/en-us/azure/application-gateway/tutorial-ingress-controller-add-on-existing)\n* `id` - (Required) The ID of the Application Gateway that be used as cluster ingress.\n* `subnet_id` - (Required) The ID of the Subnet which the Application Gateway is connected to. Must be set when `create_role_assignments` is `true`.\n"
                            },
                            "client_id": {
                                "default": "",
                                "description": "(Optional) The Client ID (appId) for the Service Principal used for the AKS deployment"
                            },
                            "client_secret": {
                                "default": "",
                                "description": "(Optional) The Client Secret (password) for the Service Principal used for the AKS deployment"
                            },
                            "cluster_log_analytics_workspace_name": {
                                "default": null,
                                "description": "(Optional) The name of the Analytics workspace"
                            },
                            "cluster_name": {
                                "default": null,
                                "description": "(Optional) The name for the AKS resources created in the specified Azure Resource Group. This variable overwrites the 'prefix' var (The 'prefix' var will still be applied to the dns_prefix if it is set)"
                            },
                            "cluster_name_random_suffix": {
                                "default": false,
                                "description": "Whether to add a random suffix on Aks cluster's name or not. `azurerm_kubernetes_cluster` resource defined in this module is `create_before_destroy = true` implicity now(described [here](https://github.com/Azure/terraform-azurerm-aks/issues/389)), without this random suffix we'll not be able to recreate this cluster directly due to the naming conflict."
                            },
                            "confidential_computing": {
                                "default": null,
                                "description": "(Optional) Enable Confidential Computing."
                            },
                            "cost_analysis_enabled": {
                                "default": false,
                                "description": "(Optional) Enable Cost Analysis."
                            },
                            "create_role_assignment_network_contributor": {
                                "default": false,
                                "description": "(Deprecated) Create a role assignment for the AKS Service Principal to be a Network Contributor on the subnets used for the AKS Cluster"
                            },
                            "create_role_assignments_for_application_gateway": {
                                "default": true,
                                "description": "(Optional) Whether to create the corresponding role assignments for application gateway or not. Defaults to `true`."
                            },
                            "default_node_pool_fips_enabled": {
                                "default": null,
                                "description": " (Optional) Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created."
                            },
                            "disk_encryption_set_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. More information [can be found in the documentation](https://docs.microsoft.com/azure/aks/azure-disk-customer-managed-keys). Changing this forces a new resource to be created."
                            },
                            "ebpf_data_plane": {
                                "default": null,
                                "description": "(Optional) Specifies the eBPF data plane used for building the Kubernetes network. Possible value is `cilium`. Changing this forces a new resource to be created."
                            },
                            "enable_auto_scaling": {
                                "default": false,
                                "description": "Enable node pool autoscaling"
                            },
                            "enable_host_encryption": {
                                "default": false,
                                "description": "Enable Host Encryption for default node pool. Encryption at host feature must be enabled on the subscription: https://docs.microsoft.com/azure/virtual-machines/linux/disks-enable-host-based-encryption-cli"
                            },
                            "enable_node_public_ip": {
                                "default": false,
                                "description": "(Optional) Should nodes in this Node Pool have a Public IP Address? Defaults to false."
                            },
                            "green_field_application_gateway_for_ingress": {
                                "default": null,
                                "description": "[Definition of `green_field`](https://learn.microsoft.com/en-us/azure/application-gateway/tutorial-ingress-controller-add-on-new)\n* `name` - (Optional) The name of the Application Gateway to be used or created in the Nodepool Resource Group, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n* `subnet_cidr` - (Optional) The subnet CIDR to be used to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n* `subnet_id` - (Optional) The ID of the subnet on which to create an Application Gateway, which in turn will be integrated with the ingress controller of this Kubernetes Cluster.\n"
                            },
                            "http_proxy_config": {
                                "default": null,
                                "description": "  optional(object({\n    http_proxy  = (Optional) The proxy address to be used when communicating over HTTP.\n    https_proxy = (Optional) The proxy address to be used when communicating over HTTPS.\n    no_proxy    = (Optional) The list of domains that will not use the proxy for communication. Note: If you specify the `default_node_pool.0.vnet_subnet_id`, be sure to include the Subnet CIDR in the `no_proxy` list. Note: You may wish to use Terraform's `ignore_changes` functionality to ignore the changes to this field.\n    trusted_ca  = (Optional) The base64 encoded alternative CA certificate content in PEM format.\n}))\nOnce you have set only one of `http_proxy` and `https_proxy`, this config would be used for both `http_proxy` and `https_proxy` to avoid a configuration drift.\n"
                            },
                            "identity_ids": {
                                "default": null,
                                "description": "(Optional) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster."
                            },
                            "identity_type": {
                                "default": "SystemAssigned",
                                "description": "(Optional) The type of identity used for the managed cluster. Conflicts with `client_id` and `client_secret`. Possible values are `SystemAssigned` and `UserAssigned`. If `UserAssigned` is set, an `identity_ids` must be set as well."
                            },
                            "image_cleaner_enabled": {
                                "default": false,
                                "description": "(Optional) Specifies whether Image Cleaner is enabled."
                            },
                            "image_cleaner_interval_hours": {
                                "default": 48,
                                "description": "(Optional) Specifies the interval in hours when images should be cleaned up. Defaults to `48`."
                            },
                            "key_vault_secrets_provider_enabled": {
                                "default": false,
                                "description": "(Optional) Whether to use the Azure Key Vault Provider for Secrets Store CSI Driver in an AKS cluster. For more details: https://docs.microsoft.com/en-us/azure/aks/csi-secrets-store-driver"
                            },
                            "kms_enabled": {
                                "default": false,
                                "description": "(Optional) Enable Azure KeyVault Key Management Service."
                            },
                            "kms_key_vault_key_id": {
                                "default": null,
                                "description": "(Optional) Identifier of Azure Key Vault key. When Azure Key Vault key management service is enabled, this field is required and must be a valid key identifier."
                            },
                            "kms_key_vault_network_access": {
                                "default": "Public",
                                "description": "(Optional) Network Access of Azure Key Vault. Possible values are: `Private` and `Public`."
                            },
                            "kubelet_identity": {
                                "default": null,
                                "description": "- `client_id` - (Optional) The Client ID of the user-defined Managed Identity to be assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n- `object_id` - (Optional) The Object ID of the user-defined Managed Identity assigned to the Kubelets.If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n- `user_assigned_identity_id` - (Optional) The ID of the User Assigned Identity assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.\n"
                            },
                            "kubernetes_version": {
                                "default": null,
                                "description": "Specify which Kubernetes release to use. The default used is the latest Kubernetes version available in the region"
                            },
                            "load_balancer_profile_enabled": {
                                "default": false,
                                "description": "(Optional) Enable a load_balancer_profile block. This can only be used when load_balancer_sku is set to `standard`."
                            },
                            "load_balancer_profile_idle_timeout_in_minutes": {
                                "default": 30,
                                "description": "(Optional) Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between `4` and `120` inclusive."
                            },
                            "load_balancer_profile_managed_outbound_ip_count": {
                                "default": null,
                                "description": "(Optional) Count of desired managed outbound IPs for the cluster load balancer. Must be between `1` and `100` inclusive"
                            },
                            "load_balancer_profile_managed_outbound_ipv6_count": {
                                "default": null,
                                "description": "(Optional) The desired number of IPv6 outbound IPs created and managed by Azure for the cluster load balancer. Must be in the range of `1` to `100` (inclusive). The default value is `0` for single-stack and `1` for dual-stack. Note: managed_outbound_ipv6_count requires dual-stack networking. To enable dual-stack networking the Preview Feature Microsoft.ContainerService/AKS-EnableDualStack needs to be enabled and the Resource Provider re-registered, see the documentation for more information. https://learn.microsoft.com/en-us/azure/aks/configure-kubenet-dual-stack?tabs=azure-cli%2Ckubectl#register-the-aks-enabledualstack-preview-feature"
                            },
                            "load_balancer_profile_outbound_ip_address_ids": {
                                "default": null,
                                "description": "(Optional) The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer."
                            },
                            "load_balancer_profile_outbound_ip_prefix_ids": {
                                "default": null,
                                "description": "(Optional) The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer."
                            },
                            "load_balancer_profile_outbound_ports_allocated": {
                                "default": 0,
                                "description": "(Optional) Number of desired SNAT port for each VM in the clusters load balancer. Must be between `0` and `64000` inclusive. Defaults to `0`"
                            },
                            "load_balancer_sku": {
                                "default": "standard",
                                "description": "(Optional) Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are `basic` and `standard`. Defaults to `standard`. Changing this forces a new kubernetes cluster to be created."
                            },
                            "local_account_disabled": {
                                "default": null,
                                "description": "(Optional) - If `true` local accounts will be disabled. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts) for more information."
                            },
                            "location": {
                                "default": null,
                                "description": "Location of cluster, if not defined it will be read from the resource-group"
                            },
                            "log_analytics_solution": {
                                "default": null,
                                "description": "(Optional) Object which contains existing azurerm_log_analytics_solution ID. Providing ID disables creation of azurerm_log_analytics_solution."
                            },
                            "log_analytics_workspace": {
                                "default": null,
                                "description": "(Optional) Existing azurerm_log_analytics_workspace to attach azurerm_log_analytics_solution. Providing the config disables creation of azurerm_log_analytics_workspace."
                            },
                            "log_analytics_workspace_allow_resource_only_permissions": {
                                "default": null,
                                "description": "(Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to `true`."
                            },
                            "log_analytics_workspace_cmk_for_query_forced": {
                                "default": null,
                                "description": "(Optional) Is Customer Managed Storage mandatory for query management?"
                            },
                            "log_analytics_workspace_daily_quota_gb": {
                                "default": null,
                                "description": "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
                            },
                            "log_analytics_workspace_data_collection_rule_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Data Collection Rule to use for this workspace."
                            },
                            "log_analytics_workspace_enabled": {
                                "default": true,
                                "description": "Enable the integration of azurerm_log_analytics_workspace and azurerm_log_analytics_solution: https://docs.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-onboard"
                            },
                            "log_analytics_workspace_identity": {
                                "default": null,
                                "description": "- `identity_ids` - (Optional) Specifies a list of user managed identity ids to be assigned. Required if `type` is `UserAssigned`.\n- `type` - (Required) Specifies the identity type of the Log Analytics Workspace. Possible values are `SystemAssigned` (where Azure will generate a Service Principal for you) and `UserAssigned` where you can specify the Service Principal IDs in the `identity_ids` field.\n"
                            },
                            "log_analytics_workspace_immediate_data_purge_on_30_days_enabled": {
                                "default": null,
                                "description": "(Optional) Whether to remove the data in the Log Analytics Workspace immediately after 30 days."
                            },
                            "log_analytics_workspace_internet_ingestion_enabled": {
                                "default": null,
                                "description": "(Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`."
                            },
                            "log_analytics_workspace_internet_query_enabled": {
                                "default": null,
                                "description": "(Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`."
                            },
                            "log_analytics_workspace_local_authentication_disabled": {
                                "default": null,
                                "description": "(Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to `false`."
                            },
                            "log_analytics_workspace_reservation_capacity_in_gb_per_day": {
                                "default": null,
                                "description": "(Optional) The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`."
                            },
                            "log_analytics_workspace_resource_group_name": {
                                "default": null,
                                "description": "(Optional) Resource group name to create azurerm_log_analytics_solution."
                            },
                            "log_analytics_workspace_sku": {
                                "default": "PerGB2018",
                                "description": "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
                            },
                            "log_retention_in_days": {
                                "default": 30,
                                "description": "The retention period for the logs in days"
                            },
                            "maintenance_window": {
                                "default": null,
                                "description": "(Optional) Maintenance configuration of the managed cluster."
                            },
                            "maintenance_window_auto_upgrade": {
                                "default": null,
                                "description": "- `day_of_month` - (Optional) The day of the month for the maintenance run. Required in combination with RelativeMonthly frequency. Value between 0 and 31 (inclusive).\n- `day_of_week` - (Optional) The day of the week for the maintenance run. Options are `Monday`, `Tuesday`, `Wednesday`, `Thurday`, `Friday`, `Saturday` and `Sunday`. Required in combination with weekly frequency.\n- `duration` - (Required) The duration of the window for maintenance to run in hours.\n- `frequency` - (Required) Frequency of maintenance. Possible options are `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.\n- `interval` - (Required) The interval for maintenance runs. Depending on the frequency this interval is week or month based.\n- `start_date` - (Optional) The date on which the maintenance window begins to take effect.\n- `start_time` - (Optional) The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.\n- `utc_offset` - (Optional) Used to determine the timezone for cluster maintenance.\n- `week_index` - (Optional) The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.\n\n---\n`not_allowed` block supports the following:\n- `end` - (Required) The end of a time span, formatted as an RFC3339 string.\n- `start` - (Required) The start of a time span, formatted as an RFC3339 string.\n"
                            },
                            "maintenance_window_node_os": {
                                "default": null,
                                "description": "- `day_of_month` -\n- `day_of_week` - (Optional) The day of the week for the maintenance run. Options are `Monday`, `Tuesday`, `Wednesday`, `Thurday`, `Friday`, `Saturday` and `Sunday`. Required in combination with weekly frequency.\n- `duration` - (Required) The duration of the window for maintenance to run in hours.\n- `frequency` - (Required) Frequency of maintenance. Possible options are `Daily`, `Weekly`, `AbsoluteMonthly` and `RelativeMonthly`.\n- `interval` - (Required) The interval for maintenance runs. Depending on the frequency this interval is week or month based.\n- `start_date` - (Optional) The date on which the maintenance window begins to take effect.\n- `start_time` - (Optional) The time for maintenance to begin, based on the timezone determined by `utc_offset`. Format is `HH:mm`.\n- `utc_offset` - (Optional) Used to determine the timezone for cluster maintenance.\n- `week_index` - (Optional) The week in the month used for the maintenance run. Options are `First`, `Second`, `Third`, `Fourth`, and `Last`.\n\n---\n`not_allowed` block supports the following:\n- `end` - (Required) The end of a time span, formatted as an RFC3339 string.\n- `start` - (Required) The start of a time span, formatted as an RFC3339 string.\n"
                            },
                            "microsoft_defender_enabled": {
                                "default": false,
                                "description": "(Optional) Is Microsoft Defender on the cluster enabled? Requires `var.log_analytics_workspace_enabled` to be `true` to set this variable to `true`."
                            },
                            "monitor_metrics": {
                                "default": null,
                                "description": "(Optional) Specifies a Prometheus add-on profile for the Kubernetes Cluster\nobject({\n  annotations_allowed = \"(Optional) Specifies a comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric.\"\n  labels_allowed      = \"(Optional) Specifies a Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric.\"\n})\n"
                            },
                            "msi_auth_for_monitoring_enabled": {
                                "default": null,
                                "description": "(Optional) Is managed identity authentication for monitoring enabled?"
                            },
                            "net_profile_dns_service_ip": {
                                "default": null,
                                "description": "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
                            },
                            "net_profile_outbound_type": {
                                "default": "loadBalancer",
                                "description": "(Optional) The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer and userDefinedRouting. Defaults to loadBalancer."
                            },
                            "net_profile_pod_cidr": {
                                "default": null,
                                "description": " (Optional) The CIDR to use for pod IP addresses. This field can only be set when network_plugin is set to kubenet or network_plugin is set to azure and network_plugin_mode is set to overlay. Changing this forces a new resource to be created."
                            },
                            "net_profile_service_cidr": {
                                "default": null,
                                "description": "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
                            },
                            "network_contributor_role_assigned_subnet_ids": {
                                "default": {},
                                "description": "Create role assignments for the AKS Service Principal to be a Network Contributor on the subnets used for the AKS Cluster, key should be static string, value should be subnet's id"
                            },
                            "network_plugin": {
                                "default": "kubenet",
                                "description": "Network plugin to use for networking."
                            },
                            "network_plugin_mode": {
                                "default": null,
                                "description": "(Optional) Specifies the network plugin mode used for building the Kubernetes network. Possible value is `overlay`. Changing this forces a new resource to be created."
                            },
                            "network_policy": {
                                "default": null,
                                "description": " (Optional) Sets up network policy to be used with Azure CNI. Network policy allows us to control the traffic flow between pods. Currently supported values are calico and azure. Changing this forces a new resource to be created."
                            },
                            "node_os_channel_upgrade": {
                                "default": null,
                                "description": " (Optional) The upgrade channel for this Kubernetes Cluster Nodes' OS Image. Possible values are `Unmanaged`, `SecurityPatch`, `NodeImage` and `None`."
                            },
                            "node_pools": {
                                "default": {},
                                "description": "A map of node pools that need to be created and attached on the Kubernetes cluster. The key of the map can be the name of the node pool, and the key must be static string. The value of the map is a `node_pool` block as defined below:\nmap(object({\n  name                          = (Required) The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created. A Windows Node Pool cannot have a `name` longer than 6 characters. A random suffix of 4 characters is always added to the name to avoid clashes during recreates.\n  node_count                    = (Optional) The initial number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` (inclusive) for user pools and between `1` and `1000` (inclusive) for system pools and must be a value in the range `min_count` - `max_count`.\n  tags                          = (Optional) A mapping of tags to assign to the resource. At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you [may wish to use Terraform's `ignore_changes` functionality to ignore changes to the casing](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess) until this is fixed in the AKS API.\n  vm_size                       = (Required) The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created.\n  host_group_id                 = (Optional) The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from. Changing this forces a new resource to be created.\n  capacity_reservation_group_id = (Optional) Specifies the ID of the Capacity Reservation Group where this Node Pool should exist. Changing this forces a new resource to be created.\n  custom_ca_trust_enabled       = (Optional) Specifies whether to trust a Custom CA. This requires that the Preview Feature `Microsoft.ContainerService/CustomCATrustPreview` is enabled and the Resource Provider is re-registered, see [the documentation](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority) for more information.\n  enable_auto_scaling           = (Optional) Whether to enable [auto-scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler).\n  enable_host_encryption        = (Optional) Should the nodes in this Node Pool have host encryption enabled? Changing this forces a new resource to be created.\n  enable_node_public_ip         = (Optional) Should each node have a Public IP Address? Changing this forces a new resource to be created.\n  eviction_policy               = (Optional) The Eviction Policy which should be used for Virtual Machines within the Virtual Machine Scale Set powering this Node Pool. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. An Eviction Policy can only be configured when `priority` is set to `Spot` and will default to `Delete` unless otherwise specified.\n  gpu_instance                  = (Optional) Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.\n  kubelet_config = optional(object({\n    cpu_manager_policy        = (Optional) Specifies the CPU Manager policy to use. Possible values are `none` and `static`, Changing this forces a new resource to be created.\n    cpu_cfs_quota_enabled     = (Optional) Is CPU CFS quota enforcement for containers enabled? Changing this forces a new resource to be created.\n    cpu_cfs_quota_period      = (Optional) Specifies the CPU CFS quota period value. Changing this forces a new resource to be created.\n    image_gc_high_threshold   = (Optional) Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    image_gc_low_threshold    = (Optional) Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    topology_manager_policy   = (Optional) Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`. Changing this forces a new resource to be created.\n    allowed_unsafe_sysctls    = (Optional) Specifies the allow list of unsafe sysctls command or patterns (ending in `*`). Changing this forces a new resource to be created.\n    container_log_max_size_mb = (Optional) Specifies the maximum size (e.g. 10MB) of container log file before it is rotated. Changing this forces a new resource to be created.\n    container_log_max_files   = (Optional) Specifies the maximum number of container log files that can be present for a container. must be at least 2. Changing this forces a new resource to be created.\n    pod_max_pid               = (Optional) Specifies the maximum number of processes per pod. Changing this forces a new resource to be created.\n  }))\n  linux_os_config = optional(object({\n    sysctl_config = optional(object({\n      fs_aio_max_nr                      = (Optional) The sysctl setting fs.aio-max-nr. Must be between `65536` and `6553500`. Changing this forces a new resource to be created.\n      fs_file_max                        = (Optional) The sysctl setting fs.file-max. Must be between `8192` and `12000500`. Changing this forces a new resource to be created.\n      fs_inotify_max_user_watches        = (Optional) The sysctl setting fs.inotify.max_user_watches. Must be between `781250` and `2097152`. Changing this forces a new resource to be created.\n      fs_nr_open                         = (Optional) The sysctl setting fs.nr_open. Must be between `8192` and `20000500`. Changing this forces a new resource to be created.\n      kernel_threads_max                 = (Optional) The sysctl setting kernel.threads-max. Must be between `20` and `513785`. Changing this forces a new resource to be created.\n      net_core_netdev_max_backlog        = (Optional) The sysctl setting net.core.netdev_max_backlog. Must be between `1000` and `3240000`. Changing this forces a new resource to be created.\n      net_core_optmem_max                = (Optional) The sysctl setting net.core.optmem_max. Must be between `20480` and `4194304`. Changing this forces a new resource to be created.\n      net_core_rmem_default              = (Optional) The sysctl setting net.core.rmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_rmem_max                  = (Optional) The sysctl setting net.core.rmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_somaxconn                 = (Optional) The sysctl setting net.core.somaxconn. Must be between `4096` and `3240000`. Changing this forces a new resource to be created.\n      net_core_wmem_default              = (Optional) The sysctl setting net.core.wmem_default. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_core_wmem_max                  = (Optional) The sysctl setting net.core.wmem_max. Must be between `212992` and `134217728`. Changing this forces a new resource to be created.\n      net_ipv4_ip_local_port_range_min   = (Optional) The sysctl setting net.ipv4.ip_local_port_range min value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n      net_ipv4_ip_local_port_range_max   = (Optional) The sysctl setting net.ipv4.ip_local_port_range max value. Must be between `1024` and `60999`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh1  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh1. Must be between `128` and `80000`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh2  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh2. Must be between `512` and `90000`. Changing this forces a new resource to be created.\n      net_ipv4_neigh_default_gc_thresh3  = (Optional) The sysctl setting net.ipv4.neigh.default.gc_thresh3. Must be between `1024` and `100000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_fin_timeout           = (Optional) The sysctl setting net.ipv4.tcp_fin_timeout. Must be between `5` and `120`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_intvl       = (Optional) The sysctl setting net.ipv4.tcp_keepalive_intvl. Must be between `10` and `75`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_probes      = (Optional) The sysctl setting net.ipv4.tcp_keepalive_probes. Must be between `1` and `15`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_keepalive_time        = (Optional) The sysctl setting net.ipv4.tcp_keepalive_time. Must be between `30` and `432000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_max_syn_backlog       = (Optional) The sysctl setting net.ipv4.tcp_max_syn_backlog. Must be between `128` and `3240000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_max_tw_buckets        = (Optional) The sysctl setting net.ipv4.tcp_max_tw_buckets. Must be between `8000` and `1440000`. Changing this forces a new resource to be created.\n      net_ipv4_tcp_tw_reuse              = (Optional) Is sysctl setting net.ipv4.tcp_tw_reuse enabled? Changing this forces a new resource to be created.\n      net_netfilter_nf_conntrack_buckets = (Optional) The sysctl setting net.netfilter.nf_conntrack_buckets. Must be between `65536` and `147456`. Changing this forces a new resource to be created.\n      net_netfilter_nf_conntrack_max     = (Optional) The sysctl setting net.netfilter.nf_conntrack_max. Must be between `131072` and `1048576`. Changing this forces a new resource to be created.\n      vm_max_map_count                   = (Optional) The sysctl setting vm.max_map_count. Must be between `65530` and `262144`. Changing this forces a new resource to be created.\n      vm_swappiness                      = (Optional) The sysctl setting vm.swappiness. Must be between `0` and `100`. Changing this forces a new resource to be created.\n      vm_vfs_cache_pressure              = (Optional) The sysctl setting vm.vfs_cache_pressure. Must be between `0` and `100`. Changing this forces a new resource to be created.\n    }))\n    transparent_huge_page_enabled = (Optional) Specifies the Transparent Huge Page enabled configuration. Possible values are `always`, `madvise` and `never`. Changing this forces a new resource to be created.\n    transparent_huge_page_defrag  = (Optional) specifies the defrag configuration for Transparent Huge Page. Possible values are `always`, `defer`, `defer+madvise`, `madvise` and `never`. Changing this forces a new resource to be created.\n    swap_file_size_mb             = (Optional) Specifies the size of swap file on each node in MB. Changing this forces a new resource to be created.\n  }))\n  fips_enabled       = (Optional) Should the nodes in this Node Pool have Federal Information Processing Standard enabled? Changing this forces a new resource to be created. FIPS support is in Public Preview - more information and details on how to opt into the Preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview).\n  kubelet_disk_type  = (Optional) The type of disk used by kubelet. Possible values are `OS` and `Temporary`.\n  max_count          = (Optional) The maximum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be greater than or equal to `min_count`.\n  max_pods           = (Optional) The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`.\n  message_of_the_day = (Optional) A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It cannot be specified for Windows nodes and must be a static string (i.e. will be printed raw and not executed as a script). Changing this forces a new resource to be created.\n  mode               = (Optional) Should this Node Pool be used for System or User resources? Possible values are `System` and `User`. Defaults to `User`.\n  min_count          = (Optional) The minimum number of nodes which should exist within this Node Pool. Valid values are between `0` and `1000` and must be less than or equal to `max_count`.\n  node_network_profile = optional(object({\n    node_public_ip_tags = (Optional) Specifies a mapping of tags to the instance-level public IPs. Changing this forces a new resource to be created.\n  }))\n  node_labels                  = (Optional) A map of Kubernetes labels which should be applied to nodes in this Node Pool.\n  node_public_ip_prefix_id     = (Optional) Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `enable_node_public_ip` should be `true`. Changing this forces a new resource to be created.\n  node_taints                  = (Optional) A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g `key=value:NoSchedule`). Changing this forces a new resource to be created.\n  orchestrator_version         = (Optional) Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version). This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.\n  os_disk_size_gb              = (Optional) The Agent Operating System disk size in GB. Changing this forces a new resource to be created.\n  os_disk_type                 = (Optional) The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created.\n  os_sku                       = (Optional) Specifies the OS SKU used by the agent pool. Possible values include: `Ubuntu`, `CBLMariner`, `Mariner`, `Windows2019`, `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created.\n  os_type                      = (Optional) The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are `Linux` and `Windows`. Defaults to `Linux`.\n  pod_subnet_id                = (Optional) The ID of the Subnet where the pods in the Node Pool should exist. Changing this forces a new resource to be created.\n  priority                     = (Optional) The Priority for Virtual Machines within the Virtual Machine Scale Set that powers this Node Pool. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.\n  proximity_placement_group_id = (Optional) The ID of the Proximity Placement Group where the Virtual Machine Scale Set that powers this Node Pool will be placed. Changing this forces a new resource to be created. When setting `priority` to Spot - you must configure an `eviction_policy`, `spot_max_price` and add the applicable `node_labels` and `node_taints` [as per the Azure Documentation](https://docs.microsoft.com/azure/aks/spot-node-pool).\n  spot_max_price               = (Optional) The maximum price you're willing to pay in USD per Virtual Machine. Valid values are `-1` (the current on-demand price for a Virtual Machine) or a positive value with up to five decimal places. Changing this forces a new resource to be created. This field can only be configured when `priority` is set to `Spot`.\n  scale_down_mode              = (Optional) Specifies how the node pool should deal with scaled-down nodes. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.\n  snapshot_id                  = (Optional) The ID of the Snapshot which should be used to create this Node Pool. Changing this forces a new resource to be created.\n  ultra_ssd_enabled            = (Optional) Used to specify whether the UltraSSD is enabled in the Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. Changing this forces a new resource to be created.\n  vnet_subnet_id               = (Optional) The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created. A route table must be configured on this Subnet.\n  upgrade_settings = optional(object({\n    drain_timeout_in_minutes      = number\n    node_soak_duration_in_minutes = number\n    max_surge                     = string\n  }))\n  windows_profile = optional(object({\n    outbound_nat_enabled = optional(bool, true)\n  }))\n  workload_runtime = (Optional) Used to specify the workload runtime. Allowed values are `OCIContainer` and `WasmWasi`. WebAssembly System Interface node pools are in Public Preview - more information and details on how to opt into the preview can be found in [this article](https://docs.microsoft.com/azure/aks/use-wasi-node-pools)\n  zones            = (Optional) Specifies a list of Availability Zones in which this Kubernetes Cluster Node Pool should be located. Changing this forces a new Kubernetes Cluster Node Pool to be created.\n  create_before_destroy = (Optional) Create a new node pool before destroy the old one when Terraform must update an argument that cannot be updated in-place. Set this argument to `true` will add add a random suffix to pool's name to avoid conflict. Default to `true`.\n}))\n"
                            },
                            "node_resource_group": {
                                "default": null,
                                "description": "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster. Changing this forces a new resource to be created."
                            },
                            "oidc_issuer_enabled": {
                                "default": false,
                                "description": "Enable or Disable the OIDC issuer URL. Defaults to false."
                            },
                            "only_critical_addons_enabled": {
                                "default": null,
                                "description": "(Optional) Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. Changing this forces a new resource to be created."
                            },
                            "open_service_mesh_enabled": {
                                "default": null,
                                "description": "Is Open Service Mesh enabled? For more details, please visit [Open Service Mesh for AKS](https://docs.microsoft.com/azure/aks/open-service-mesh-about)."
                            },
                            "orchestrator_version": {
                                "default": null,
                                "description": "Specify which Kubernetes release to use for the orchestration layer. The default used is the latest Kubernetes version available in the region"
                            },
                            "os_disk_size_gb": {
                                "default": 50,
                                "description": "Disk size of nodes in GBs."
                            },
                            "os_disk_type": {
                                "default": "Managed",
                                "description": "The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. Changing this forces a new resource to be created."
                            },
                            "os_sku": {
                                "default": null,
                                "description": "(Optional) Specifies the OS SKU used by the agent pool. Possible values include: `Ubuntu`, `CBLMariner`, `Mariner`, `Windows2019`, `Windows2022`. If not specified, the default is `Ubuntu` if OSType=Linux or `Windows2019` if OSType=Windows. And the default Windows OSSKU will be changed to `Windows2022` after Windows2019 is deprecated. Changing this forces a new resource to be created."
                            },
                            "pod_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Subnet where the pods in the default Node Pool should exist. Changing this forces a new resource to be created."
                            },
                            "prefix": {
                                "default": "",
                                "description": "(Optional) The prefix for the resources created in the specified Azure Resource Group. Omitting this variable requires both `var.cluster_log_analytics_workspace_name` and `var.cluster_name` have been set."
                            },
                            "private_cluster_enabled": {
                                "default": false,
                                "description": "If true cluster API server will be exposed only on internal IP address and available only in cluster vnet."
                            },
                            "private_cluster_public_fqdn_enabled": {
                                "default": false,
                                "description": "(Optional) Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to `false`."
                            },
                            "private_dns_zone_id": {
                                "default": null,
                                "description": "(Optional) Either the ID of Private DNS Zone which should be delegated to this Cluster, `System` to have AKS manage this or `None`. In case of `None` you will need to bring your own DNS server and set up resolving, otherwise cluster will have issues after provisioning. Changing this forces a new resource to be created."
                            },
                            "public_ssh_key": {
                                "default": "",
                                "description": "A custom ssh key to control access to the AKS cluster. Changing this forces a new resource to be created."
                            },
                            "rbac_aad": {
                                "default": true,
                                "description": "(Optional) Is Azure Active Directory integration enabled?"
                            },
                            "rbac_aad_admin_group_object_ids": {
                                "default": null,
                                "description": "Object ID of groups with admin access."
                            },
                            "rbac_aad_azure_rbac_enabled": {
                                "default": null,
                                "description": "(Optional) Is Role Based Access Control based on Azure AD enabled?"
                            },
                            "rbac_aad_client_app_id": {
                                "default": null,
                                "description": "The Client ID of an Azure Active Directory Application."
                            },
                            "rbac_aad_managed": {
                                "default": false,
                                "description": "Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration."
                            },
                            "rbac_aad_server_app_id": {
                                "default": null,
                                "description": "The Server ID of an Azure Active Directory Application."
                            },
                            "rbac_aad_server_app_secret": {
                                "default": null,
                                "description": "The Server Secret of an Azure Active Directory Application."
                            },
                            "rbac_aad_tenant_id": {
                                "default": null,
                                "description": "(Optional) The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used."
                            },
                            "resource_group_name": {
                                "description": "The resource group name to be imported"
                            },
                            "role_based_access_control_enabled": {
                                "default": false,
                                "description": "Enable Role Based Access Control."
                            },
                            "run_command_enabled": {
                                "default": true,
                                "description": "(Optional) Whether to enable run command for the cluster or not."
                            },
                            "scale_down_mode": {
                                "default": "Delete",
                                "description": "(Optional) Specifies the autoscaling behaviour of the Kubernetes Cluster. If not specified, it defaults to `Delete`. Possible values include `Delete` and `Deallocate`. Changing this forces a new resource to be created."
                            },
                            "secret_rotation_enabled": {
                                "default": false,
                                "description": "Is secret rotation enabled? This variable is only used when `key_vault_secrets_provider_enabled` is `true` and defaults to `false`"
                            },
                            "secret_rotation_interval": {
                                "default": "2m",
                                "description": "The interval to poll for secret rotation. This attribute is only set when `secret_rotation` is `true` and defaults to `2m`"
                            },
                            "service_mesh_profile": {
                                "default": null,
                                "description": "`mode` - (Required) The mode of the service mesh. Possible value is `Istio`.\n`internal_ingress_gateway_enabled` - (Optional) Is Istio Internal Ingress Gateway enabled? Defaults to `true`.\n`external_ingress_gateway_enabled` - (Optional) Is Istio External Ingress Gateway enabled? Defaults to `true`.\n"
                            },
                            "sku_tier": {
                                "default": "Free",
                                "description": "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are `Free`, `Standard` and `Premium`"
                            },
                            "snapshot_id": {
                                "default": null,
                                "description": "(Optional) The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property."
                            },
                            "storage_profile_blob_driver_enabled": {
                                "default": false,
                                "description": "(Optional) Is the Blob CSI driver enabled? Defaults to `false`"
                            },
                            "storage_profile_disk_driver_enabled": {
                                "default": true,
                                "description": "(Optional) Is the Disk CSI driver enabled? Defaults to `true`"
                            },
                            "storage_profile_disk_driver_version": {
                                "default": "v1",
                                "description": "(Optional) Disk CSI Driver version to be used. Possible values are `v1` and `v2`. Defaults to `v1`."
                            },
                            "storage_profile_enabled": {
                                "default": false,
                                "description": "Enable storage profile"
                            },
                            "storage_profile_file_driver_enabled": {
                                "default": true,
                                "description": "(Optional) Is the File CSI driver enabled? Defaults to `true`"
                            },
                            "storage_profile_snapshot_controller_enabled": {
                                "default": true,
                                "description": "(Optional) Is the Snapshot Controller enabled? Defaults to `true`"
                            },
                            "support_plan": {
                                "default": "KubernetesOfficial",
                                "description": "The support plan which should be used for this Kubernetes Cluster. Possible values are `KubernetesOfficial` and `AKSLongTermSupport`."
                            },
                            "tags": {
                                "default": {},
                                "description": "Any tags that should be present on the AKS cluster resources"
                            },
                            "temporary_name_for_rotation": {
                                "default": null,
                                "description": "(Optional) Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing. the `var.agents_size` is no longer ForceNew and can be resized by specifying `temporary_name_for_rotation`"
                            },
                            "tracing_tags_enabled": {
                                "default": false,
                                "description": "Whether enable tracing tags that generated by BridgeCrew Yor."
                            },
                            "tracing_tags_prefix": {
                                "default": "avm_",
                                "description": "Default prefix for generated tracing tags"
                            },
                            "ultra_ssd_enabled": {
                                "default": false,
                                "description": "(Optional) Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to false."
                            },
                            "vnet_subnet_id": {
                                "default": null,
                                "description": "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
                            },
                            "web_app_routing": {
                                "default": null,
                                "description": "object({\n  dns_zone_id = \"(Required) Specifies the ID of the DNS Zone in which DNS entries are created for applications deployed to the cluster when Web App Routing is enabled.\"\n})\n"
                            },
                            "workload_autoscaler_profile": {
                                "default": null,
                                "description": "`keda_enabled` - (Optional) Specifies whether KEDA Autoscaler can be used for workloads.\n`vertical_pod_autoscaler_enabled` - (Optional) Specifies whether Vertical Pod Autoscaler should be enabled.\n"
                            },
                            "workload_identity_enabled": {
                                "default": false,
                                "description": "Enable or Disable Workload Identity. Defaults to false."
                            }
                        }
                    },
                    "source": "git::https://github.com/Azure/terraform-azurerm-aks"
                }
            },
            "outputs": {
                "ingress_endpoint": {
                    "depends_on": [
                        "time_sleep.wait_for_ingress"
                    ],
                    "expression": {
                        "references": [
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress[0].ip",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress[0]",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer[0]",
                            "data.kubernetes_ingress_v1.ing.status[0].load_balancer",
                            "data.kubernetes_ingress_v1.ing.status[0]",
                            "data.kubernetes_ingress_v1.ing.status",
                            "data.kubernetes_ingress_v1.ing"
                        ]
                    }
                }
            },
            "resources": [
                {
                    "address": "azurerm_application_gateway.appgw",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
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
                                "port": {
                                    "constant_value": 80
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
                                    "references": [
                                        "local.frontend_ip_configuration_name"
                                    ]
                                },
                                "public_ip_address_id": {
                                    "references": [
                                        "azurerm_public_ip.pip[0].id",
                                        "azurerm_public_ip.pip[0]",
                                        "azurerm_public_ip.pip"
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
                                    "constant_value": "appGatewayIpConfig"
                                },
                                "subnet_id": {
                                    "references": [
                                        "azurerm_subnet.appgw[0].id",
                                        "azurerm_subnet.appgw[0]",
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
                            }
                        ],
                        "location": {
                            "references": [
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "constant_value": "ingress"
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
                                "local.resource_group.name",
                                "local.resource_group"
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
                    "address": "azurerm_public_ip.pip",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "allocation_method": {
                            "constant_value": "Static"
                        },
                        "location": {
                            "references": [
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "constant_value": "appgw-pip"
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
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
                    "address": "azurerm_resource_group.main",
                    "count_expression": {
                        "references": [
                            "var.create_resource_group"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "var.location"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.resource_group_name",
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "azurerm_subnet.appgw",
                    "count_expression": {
                        "references": [
                            "var.use_brown_field_application_gateway",
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "references": [
                                "local.appgw_cidr"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.test[0].name",
                                "azurerm_virtual_network.test[0]",
                                "azurerm_virtual_network.test"
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
                    "address": "azurerm_subnet.test",
                    "count_expression": {
                        "references": [
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_prefixes": {
                            "constant_value": [
                                "10.52.0.0/24"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "virtual_network_name": {
                            "references": [
                                "azurerm_virtual_network.test[0].name",
                                "azurerm_virtual_network.test[0]",
                                "azurerm_virtual_network.test"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "test",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_subnet"
                },
                {
                    "address": "azurerm_virtual_network.test",
                    "count_expression": {
                        "references": [
                            "var.bring_your_own_vnet"
                        ]
                    },
                    "expressions": {
                        "address_space": {
                            "constant_value": [
                                "10.52.0.0/16"
                            ]
                        },
                        "location": {
                            "references": [
                                "local.resource_group.location",
                                "local.resource_group"
                            ]
                        },
                        "name": {
                            "references": [
                                "random_id.prefix.hex",
                                "random_id.prefix"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "test",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                },
                {
                    "address": "kubernetes_ingress_v1.ing",
                    "depends_on": [
                        "module.aks"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "annotations": {
                                    "constant_value": {
                                        "kubernetes.io/ingress.class": "azure/application-gateway"
                                    }
                                },
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "rule": [
                                    {
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "service": [
                                                                    {
                                                                        "name": {
                                                                            "constant_value": "aspnetapp"
                                                                        },
                                                                        "port": [
                                                                            {
                                                                                "number": {
                                                                                    "constant_value": 80
                                                                                }
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ],
                                                        "path": {
                                                            "constant_value": "/"
                                                        },
                                                        "path_type": {
                                                            "constant_value": "Exact"
                                                        }
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "ing",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_ingress_v1"
                },
                {
                    "address": "kubernetes_namespace_v1.example",
                    "depends_on": [
                        "module.aks"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "example"
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "example",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_namespace_v1"
                },
                {
                    "address": "kubernetes_pod.aspnet_app",
                    "expressions": {
                        "metadata": [
                            {
                                "labels": {
                                    "constant_value": {
                                        "app": "aspnetapp"
                                    }
                                },
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "container": [
                                    {
                                        "image": {
                                            "constant_value": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea"
                                        },
                                        "image_pull_policy": {
                                            "constant_value": "Always"
                                        },
                                        "name": {
                                            "constant_value": "aspnetapp-image"
                                        },
                                        "port": [
                                            {
                                                "container_port": {
                                                    "constant_value": 80
                                                },
                                                "protocol": {
                                                    "constant_value": "TCP"
                                                }
                                            }
                                        ],
                                        "resources": [
                                            {
                                                "limits": {
                                                    "constant_value": {
                                                        "cpu": "250m",
                                                        "memory": "256Mi"
                                                    }
                                                },
                                                "requests": {
                                                    "constant_value": {
                                                        "cpu": "250m",
                                                        "memory": "256Mi"
                                                    }
                                                }
                                            }
                                        ],
                                        "security_context": [
                                            {}
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "aspnet_app",
                    "provider_config_key": "kubernetes",
                    "schema_version": 1,
                    "type": "kubernetes_pod"
                },
                {
                    "address": "kubernetes_service.svc",
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ],
                        "spec": [
                            {
                                "port": [
                                    {
                                        "port": {
                                            "constant_value": 80
                                        },
                                        "protocol": {
                                            "constant_value": "TCP"
                                        },
                                        "target_port": {
                                            "constant_value": 80
                                        }
                                    }
                                ],
                                "selector": {
                                    "constant_value": {
                                        "app": "aspnetapp"
                                    }
                                }
                            }
                        ]
                    },
                    "mode": "managed",
                    "name": "svc",
                    "provider_config_key": "kubernetes",
                    "schema_version": 1,
                    "type": "kubernetes_service"
                },
                {
                    "address": "random_id.name",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        }
                    },
                    "mode": "managed",
                    "name": "name",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "random_id.prefix",
                    "expressions": {
                        "byte_length": {
                            "constant_value": 8
                        }
                    },
                    "mode": "managed",
                    "name": "prefix",
                    "provider_config_key": "random",
                    "schema_version": 0,
                    "type": "random_id"
                },
                {
                    "address": "time_sleep.wait_for_ingress",
                    "depends_on": [
                        "kubernetes_ingress_v1.ing"
                    ],
                    "expressions": {
                        "create_duration": {
                            "constant_value": "15m"
                        }
                    },
                    "mode": "managed",
                    "name": "wait_for_ingress",
                    "provider_config_key": "time",
                    "schema_version": 0,
                    "type": "time_sleep"
                },
                {
                    "address": "data.kubernetes_ingress_v1.ing",
                    "depends_on": [
                        "time_sleep.wait_for_ingress"
                    ],
                    "expressions": {
                        "metadata": [
                            {
                                "name": {
                                    "constant_value": "aspnetapp"
                                },
                                "namespace": {
                                    "references": [
                                        "kubernetes_namespace_v1.example.metadata[0].name",
                                        "kubernetes_namespace_v1.example.metadata[0]",
                                        "kubernetes_namespace_v1.example.metadata",
                                        "kubernetes_namespace_v1.example"
                                    ]
                                }
                            }
                        ]
                    },
                    "mode": "data",
                    "name": "ing",
                    "provider_config_key": "kubernetes",
                    "schema_version": 0,
                    "type": "kubernetes_ingress_v1"
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_http_proxy_config_no_proxy",
                    "count_expression": {
                        "references": [
                            "var.http_proxy_config.no_proxy[0]",
                            "var.http_proxy_config.no_proxy",
                            "var.http_proxy_config"
                        ]
                    },
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "body": {
                            "references": [
                                "var.http_proxy_config.no_proxy",
                                "var.http_proxy_config"
                            ]
                        },
                        "resource_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                        }
                    },
                    "mode": "managed",
                    "name": "aks_cluster_http_proxy_config_no_proxy",
                    "provider_config_key": "module.aks:azapi",
                    "schema_version": 1,
                    "type": "azapi_update_resource"
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                    "expressions": {
                        "body": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        },
                        "resource_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "type": {
                            "constant_value": "Microsoft.ContainerService/managedClusters@2024-02-01"
                        }
                    },
                    "mode": "managed",
                    "name": "aks_cluster_post_create",
                    "provider_config_key": "module.aks:azapi",
                    "schema_version": 1,
                    "type": "azapi_update_resource"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster.main",
                    "expressions": {
                        "automatic_channel_upgrade": {
                            "references": [
                                "root.aks.automatic_channel_upgrade"
                            ]
                        },
                        "azure_policy_enabled": {
                            "references": [
                                "root.aks.azure_policy_enabled"
                            ]
                        },
                        "cost_analysis_enabled": {
                            "references": [
                                "var.cost_analysis_enabled"
                            ]
                        },
                        "disk_encryption_set_id": {
                            "references": [
                                "var.disk_encryption_set_id"
                            ]
                        },
                        "dns_prefix": {
                            "references": [
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "image_cleaner_enabled": {
                            "references": [
                                "var.image_cleaner_enabled"
                            ]
                        },
                        "image_cleaner_interval_hours": {
                            "references": [
                                "var.image_cleaner_interval_hours"
                            ]
                        },
                        "kubernetes_version": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        },
                        "local_account_disabled": {
                            "references": [
                                "root.aks.local_account_disabled"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location",
                                "module.aks.data.azurerm_resource_group.main.location",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "local.cluster_name",
                                "var.cluster_name_random_suffix"
                            ]
                        },
                        "network_profile": [
                            {
                                "dns_service_ip": {
                                    "references": [
                                        "root.aks.net_profile_dns_service_ip"
                                    ]
                                },
                                "ebpf_data_plane": {
                                    "references": [
                                        "var.ebpf_data_plane"
                                    ]
                                },
                                "load_balancer_sku": {
                                    "references": [
                                        "var.load_balancer_sku"
                                    ]
                                },
                                "network_plugin": {
                                    "references": [
                                        "root.aks.network_plugin"
                                    ]
                                },
                                "network_plugin_mode": {
                                    "references": [
                                        "root.aks.network_plugin_mode"
                                    ]
                                },
                                "network_policy": {
                                    "references": [
                                        "root.aks.network_policy"
                                    ]
                                },
                                "outbound_type": {
                                    "references": [
                                        "var.net_profile_outbound_type"
                                    ]
                                },
                                "pod_cidr": {
                                    "references": [
                                        "var.net_profile_pod_cidr"
                                    ]
                                },
                                "service_cidr": {
                                    "references": [
                                        "root.aks.net_profile_service_cidr"
                                    ]
                                }
                            }
                        ],
                        "node_os_channel_upgrade": {
                            "references": [
                                "var.node_os_channel_upgrade"
                            ]
                        },
                        "node_resource_group": {
                            "references": [
                                "var.node_resource_group"
                            ]
                        },
                        "oidc_issuer_enabled": {
                            "references": [
                                "var.oidc_issuer_enabled"
                            ]
                        },
                        "open_service_mesh_enabled": {
                            "references": [
                                "var.open_service_mesh_enabled"
                            ]
                        },
                        "private_cluster_enabled": {
                            "references": [
                                "root.aks.private_cluster_enabled"
                            ]
                        },
                        "private_cluster_public_fqdn_enabled": {
                            "references": [
                                "var.private_cluster_public_fqdn_enabled"
                            ]
                        },
                        "private_dns_zone_id": {
                            "references": [
                                "var.private_dns_zone_id"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "module.aks.data.azurerm_resource_group.main.name",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "role_based_access_control_enabled": {
                            "references": [
                                "root.aks.role_based_access_control_enabled"
                            ]
                        },
                        "run_command_enabled": {
                            "references": [
                                "var.run_command_enabled"
                            ]
                        },
                        "sku_tier": {
                            "references": [
                                "root.aks.sku_tier"
                            ]
                        },
                        "support_plan": {
                            "references": [
                                "var.support_plan"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "workload_identity_enabled": {
                            "references": [
                                "var.workload_identity_enabled"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 2,
                    "type": "azurerm_kubernetes_cluster"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_after_destroy",
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "capacity_reservation_group_id": {
                            "references": [
                                "each.value.capacity_reservation_group_id",
                                "each.value"
                            ]
                        },
                        "custom_ca_trust_enabled": {
                            "references": [
                                "each.value.custom_ca_trust_enabled",
                                "each.value"
                            ]
                        },
                        "enable_auto_scaling": {
                            "references": [
                                "each.value.enable_auto_scaling",
                                "each.value"
                            ]
                        },
                        "enable_host_encryption": {
                            "references": [
                                "each.value.enable_host_encryption",
                                "each.value"
                            ]
                        },
                        "enable_node_public_ip": {
                            "references": [
                                "each.value.enable_node_public_ip",
                                "each.value"
                            ]
                        },
                        "eviction_policy": {
                            "references": [
                                "each.value.eviction_policy",
                                "each.value"
                            ]
                        },
                        "fips_enabled": {
                            "references": [
                                "each.value.fips_enabled",
                                "each.value"
                            ]
                        },
                        "host_group_id": {
                            "references": [
                                "each.value.host_group_id",
                                "each.value"
                            ]
                        },
                        "kubelet_disk_type": {
                            "references": [
                                "each.value.kubelet_disk_type",
                                "each.value"
                            ]
                        },
                        "kubernetes_cluster_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "max_count": {
                            "references": [
                                "each.value.max_count",
                                "each.value"
                            ]
                        },
                        "max_pods": {
                            "references": [
                                "each.value.max_pods",
                                "each.value"
                            ]
                        },
                        "message_of_the_day": {
                            "references": [
                                "each.value.message_of_the_day",
                                "each.value"
                            ]
                        },
                        "min_count": {
                            "references": [
                                "each.value.min_count",
                                "each.value"
                            ]
                        },
                        "mode": {
                            "references": [
                                "each.value.mode",
                                "each.value"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        },
                        "node_count": {
                            "references": [
                                "each.value.node_count",
                                "each.value"
                            ]
                        },
                        "node_labels": {
                            "references": [
                                "each.value.node_labels",
                                "each.value"
                            ]
                        },
                        "node_public_ip_prefix_id": {
                            "references": [
                                "each.value.node_public_ip_prefix_id",
                                "each.value"
                            ]
                        },
                        "node_taints": {
                            "references": [
                                "each.value.node_taints",
                                "each.value"
                            ]
                        },
                        "orchestrator_version": {
                            "references": [
                                "each.value.orchestrator_version",
                                "each.value"
                            ]
                        },
                        "os_disk_size_gb": {
                            "references": [
                                "each.value.os_disk_size_gb",
                                "each.value"
                            ]
                        },
                        "os_disk_type": {
                            "references": [
                                "each.value.os_disk_type",
                                "each.value"
                            ]
                        },
                        "os_sku": {
                            "references": [
                                "each.value.os_sku",
                                "each.value"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "each.value.os_type",
                                "each.value"
                            ]
                        },
                        "pod_subnet_id": {
                            "references": [
                                "each.value.pod_subnet_id",
                                "each.value"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.value.priority",
                                "each.value"
                            ]
                        },
                        "proximity_placement_group_id": {
                            "references": [
                                "each.value.proximity_placement_group_id",
                                "each.value"
                            ]
                        },
                        "scale_down_mode": {
                            "references": [
                                "each.value.scale_down_mode",
                                "each.value"
                            ]
                        },
                        "snapshot_id": {
                            "references": [
                                "each.value.snapshot_id",
                                "each.value"
                            ]
                        },
                        "spot_max_price": {
                            "references": [
                                "each.value.spot_max_price",
                                "each.value"
                            ]
                        },
                        "tags": {
                            "references": [
                                "each.value.tags",
                                "each.value",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "ultra_ssd_enabled": {
                            "references": [
                                "each.value.ultra_ssd_enabled",
                                "each.value"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "each.value.vm_size",
                                "each.value"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "each.value.vnet_subnet_id",
                                "each.value"
                            ]
                        },
                        "workload_runtime": {
                            "references": [
                                "each.value.workload_runtime",
                                "each.value"
                            ]
                        },
                        "zones": {
                            "references": [
                                "each.value.zones",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.node_pools_create_after_destroy"
                        ]
                    },
                    "mode": "managed",
                    "name": "node_pool_create_after_destroy",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_kubernetes_cluster_node_pool"
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster_node_pool.node_pool_create_before_destroy",
                    "depends_on": [
                        "module.aks.azapi_update_resource.aks_cluster_post_create"
                    ],
                    "expressions": {
                        "capacity_reservation_group_id": {
                            "references": [
                                "each.value.capacity_reservation_group_id",
                                "each.value"
                            ]
                        },
                        "custom_ca_trust_enabled": {
                            "references": [
                                "each.value.custom_ca_trust_enabled",
                                "each.value"
                            ]
                        },
                        "enable_auto_scaling": {
                            "references": [
                                "each.value.enable_auto_scaling",
                                "each.value"
                            ]
                        },
                        "enable_host_encryption": {
                            "references": [
                                "each.value.enable_host_encryption",
                                "each.value"
                            ]
                        },
                        "enable_node_public_ip": {
                            "references": [
                                "each.value.enable_node_public_ip",
                                "each.value"
                            ]
                        },
                        "eviction_policy": {
                            "references": [
                                "each.value.eviction_policy",
                                "each.value"
                            ]
                        },
                        "fips_enabled": {
                            "references": [
                                "each.value.fips_enabled",
                                "each.value"
                            ]
                        },
                        "gpu_instance": {
                            "references": [
                                "each.value.gpu_instance",
                                "each.value"
                            ]
                        },
                        "host_group_id": {
                            "references": [
                                "each.value.host_group_id",
                                "each.value"
                            ]
                        },
                        "kubelet_disk_type": {
                            "references": [
                                "each.value.kubelet_disk_type",
                                "each.value"
                            ]
                        },
                        "kubernetes_cluster_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.id",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "max_count": {
                            "references": [
                                "each.value.max_count",
                                "each.value"
                            ]
                        },
                        "max_pods": {
                            "references": [
                                "each.value.max_pods",
                                "each.value"
                            ]
                        },
                        "message_of_the_day": {
                            "references": [
                                "each.value.message_of_the_day",
                                "each.value"
                            ]
                        },
                        "min_count": {
                            "references": [
                                "each.value.min_count",
                                "each.value"
                            ]
                        },
                        "mode": {
                            "references": [
                                "each.value.mode",
                                "each.value"
                            ]
                        },
                        "name": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        },
                        "node_count": {
                            "references": [
                                "each.value.node_count",
                                "each.value"
                            ]
                        },
                        "node_labels": {
                            "references": [
                                "each.value.node_labels",
                                "each.value"
                            ]
                        },
                        "node_public_ip_prefix_id": {
                            "references": [
                                "each.value.node_public_ip_prefix_id",
                                "each.value"
                            ]
                        },
                        "node_taints": {
                            "references": [
                                "each.value.node_taints",
                                "each.value"
                            ]
                        },
                        "orchestrator_version": {
                            "references": [
                                "each.value.orchestrator_version",
                                "each.value"
                            ]
                        },
                        "os_disk_size_gb": {
                            "references": [
                                "each.value.os_disk_size_gb",
                                "each.value"
                            ]
                        },
                        "os_disk_type": {
                            "references": [
                                "each.value.os_disk_type",
                                "each.value"
                            ]
                        },
                        "os_sku": {
                            "references": [
                                "each.value.os_sku",
                                "each.value"
                            ]
                        },
                        "os_type": {
                            "references": [
                                "each.value.os_type",
                                "each.value"
                            ]
                        },
                        "pod_subnet_id": {
                            "references": [
                                "each.value.pod_subnet_id",
                                "each.value"
                            ]
                        },
                        "priority": {
                            "references": [
                                "each.value.priority",
                                "each.value"
                            ]
                        },
                        "proximity_placement_group_id": {
                            "references": [
                                "each.value.proximity_placement_group_id",
                                "each.value"
                            ]
                        },
                        "scale_down_mode": {
                            "references": [
                                "each.value.scale_down_mode",
                                "each.value"
                            ]
                        },
                        "snapshot_id": {
                            "references": [
                                "each.value.snapshot_id",
                                "each.value"
                            ]
                        },
                        "spot_max_price": {
                            "references": [
                                "each.value.spot_max_price",
                                "each.value"
                            ]
                        },
                        "tags": {
                            "references": [
                                "each.value.tags",
                                "each.value",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "ultra_ssd_enabled": {
                            "references": [
                                "each.value.ultra_ssd_enabled",
                                "each.value"
                            ]
                        },
                        "vm_size": {
                            "references": [
                                "each.value.vm_size",
                                "each.value"
                            ]
                        },
                        "vnet_subnet_id": {
                            "references": [
                                "each.value.vnet_subnet_id",
                                "each.value"
                            ]
                        },
                        "workload_runtime": {
                            "references": [
                                "each.value.workload_runtime",
                                "each.value"
                            ]
                        },
                        "zones": {
                            "references": [
                                "each.value.zones",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "local.node_pools_create_before_destroy"
                        ]
                    },
                    "mode": "managed",
                    "name": "node_pool_create_before_destroy",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_kubernetes_cluster_node_pool"
                },
                {
                    "address": "module.aks.azurerm_log_analytics_solution.main",
                    "count_expression": {
                        "references": [
                            "local.create_analytics_solution"
                        ]
                    },
                    "expressions": {
                        "location": {
                            "references": [
                                "local.log_analytics_workspace.location",
                                "local.log_analytics_workspace",
                                "data.azurerm_log_analytics_workspace.main[0].location",
                                "data.azurerm_log_analytics_workspace.main[0]",
                                "module.aks.data.azurerm_log_analytics_workspace.main"
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
                                "local.log_analytics_workspace.resource_group_name",
                                "local.log_analytics_workspace"
                            ]
                        },
                        "solution_name": {
                            "constant_value": "ContainerInsights"
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        },
                        "workspace_name": {
                            "references": [
                                "local.log_analytics_workspace.name",
                                "local.log_analytics_workspace"
                            ]
                        },
                        "workspace_resource_id": {
                            "references": [
                                "local.log_analytics_workspace.id",
                                "local.log_analytics_workspace"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 1,
                    "type": "azurerm_log_analytics_solution"
                },
                {
                    "address": "module.aks.azurerm_log_analytics_workspace.main",
                    "count_expression": {
                        "references": [
                            "local.create_analytics_workspace"
                        ]
                    },
                    "expressions": {
                        "allow_resource_only_permissions": {
                            "references": [
                                "var.log_analytics_workspace_allow_resource_only_permissions"
                            ]
                        },
                        "cmk_for_query_forced": {
                            "references": [
                                "var.log_analytics_workspace_cmk_for_query_forced"
                            ]
                        },
                        "daily_quota_gb": {
                            "references": [
                                "var.log_analytics_workspace_daily_quota_gb"
                            ]
                        },
                        "data_collection_rule_id": {
                            "references": [
                                "var.log_analytics_workspace_data_collection_rule_id"
                            ]
                        },
                        "immediate_data_purge_on_30_days_enabled": {
                            "references": [
                                "var.log_analytics_workspace_immediate_data_purge_on_30_days_enabled"
                            ]
                        },
                        "internet_ingestion_enabled": {
                            "references": [
                                "var.log_analytics_workspace_internet_ingestion_enabled"
                            ]
                        },
                        "internet_query_enabled": {
                            "references": [
                                "var.log_analytics_workspace_internet_query_enabled"
                            ]
                        },
                        "local_authentication_disabled": {
                            "references": [
                                "var.log_analytics_workspace_local_authentication_disabled"
                            ]
                        },
                        "location": {
                            "references": [
                                "var.location",
                                "module.aks.data.azurerm_resource_group.main.location",
                                "module.aks.data.azurerm_resource_group.main"
                            ]
                        },
                        "name": {
                            "references": [
                                "var.cluster_log_analytics_workspace_name",
                                "random_id.name.hex",
                                "random_id.name"
                            ]
                        },
                        "reservation_capacity_in_gb_per_day": {
                            "references": [
                                "var.log_analytics_workspace_reservation_capacity_in_gb_per_day"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.log_analytics_workspace_resource_group_name",
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        },
                        "retention_in_days": {
                            "references": [
                                "var.log_retention_in_days"
                            ]
                        },
                        "sku": {
                            "references": [
                                "var.log_analytics_workspace_sku"
                            ]
                        },
                        "tags": {
                            "references": [
                                "var.tags",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix",
                                "var.tracing_tags_enabled",
                                "var.tracing_tags_prefix"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 3,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.acr",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.kubelet_identity",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "AcrPull"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        },
                        "skip_service_principal_aad_check": {
                            "constant_value": true
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.attached_acr_id_map"
                        ]
                    },
                    "mode": "managed",
                    "name": "acr",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_green_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "local.default_nodepool_subnet_segments",
                                "local.default_nodepool_subnet_segments"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_byo_vnet_network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_existing_vnet_network_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "data.azurerm_virtual_network.application_gateway_vnet[0].id",
                                "data.azurerm_virtual_network.application_gateway_vnet[0]",
                                "module.aks.data.azurerm_virtual_network.application_gateway_vnet"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_existing_vnet_network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.ingress_application_gateway_enabled"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Reader"
                        },
                        "scope": {
                            "references": [
                                "local.use_brown_field_gw_for_ingress",
                                "data.azurerm_resource_group.ingress_gw[0].id",
                                "data.azurerm_resource_group.ingress_gw[0]",
                                "module.aks.data.azurerm_resource_group.ingress_gw",
                                "data.azurerm_resource_group.aks_rg[0].id",
                                "data.azurerm_resource_group.aks_rg[0]",
                                "module.aks.data.azurerm_resource_group.aks_rg"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "application_gateway_resource_group_reader",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.existing_application_gateway_contributor",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0].object_id",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0].ingress_application_gateway_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.ingress_application_gateway",
                                "module.aks.azurerm_kubernetes_cluster.main"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Contributor"
                        },
                        "scope": {
                            "references": [
                                "root.aks.brown_field_application_gateway_for_ingress.id",
                                "var.use_brown_field_application_gateway",
                                "azurerm_application_gateway.appgw[0].id",
                                "azurerm_application_gateway.appgw[0]",
                                "azurerm_application_gateway.appgw",
                                "azurerm_subnet.appgw[0].id",
                                "azurerm_subnet.appgw[0]",
                                "azurerm_subnet.appgw"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "existing_application_gateway_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.network_contributor",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.identity",
                                "module.aks.azurerm_kubernetes_cluster.main",
                                "var.client_id"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.create_role_assignment_network_contributor",
                            "var.client_id",
                            "var.client_secret",
                            "local.subnet_ids"
                        ]
                    },
                    "mode": "managed",
                    "name": "network_contributor",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.azurerm_role_assignment.network_contributor_on_subnet",
                    "expressions": {
                        "principal_id": {
                            "references": [
                                "data.azurerm_user_assigned_identity.cluster_identity[0].principal_id",
                                "data.azurerm_user_assigned_identity.cluster_identity[0]",
                                "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0].principal_id",
                                "module.aks.azurerm_kubernetes_cluster.main.identity[0]",
                                "module.aks.azurerm_kubernetes_cluster.main.identity",
                                "module.aks.azurerm_kubernetes_cluster.main",
                                "var.client_id"
                            ]
                        },
                        "role_definition_name": {
                            "constant_value": "Network Contributor"
                        },
                        "scope": {
                            "references": [
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.network_contributor_role_assigned_subnet_ids"
                        ]
                    },
                    "mode": "managed",
                    "name": "network_contributor_on_subnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_role_assignment"
                },
                {
                    "address": "module.aks.null_resource.http_proxy_config_no_proxy_keeper",
                    "count_expression": {
                        "references": [
                            "var.http_proxy_config.no_proxy[0]",
                            "var.http_proxy_config.no_proxy",
                            "var.http_proxy_config"
                        ]
                    },
                    "expressions": {
                        "triggers": {
                            "references": [
                                "var.http_proxy_config.no_proxy",
                                "var.http_proxy_config"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "http_proxy_config_no_proxy_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "local.cluster_name"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kubernetes_cluster_name_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.kubernetes_version_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "root.aks.kubernetes_version"
                            ]
                        }
                    },
                    "mode": "managed",
                    "name": "kubernetes_version_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.null_resource.pool_name_keeper",
                    "expressions": {
                        "triggers": {
                            "references": [
                                "each.value.name",
                                "each.value"
                            ]
                        }
                    },
                    "for_each_expression": {
                        "references": [
                            "var.node_pools"
                        ]
                    },
                    "mode": "managed",
                    "name": "pool_name_keeper",
                    "provider_config_key": "module.aks:null",
                    "schema_version": 0,
                    "type": "null_resource"
                },
                {
                    "address": "module.aks.tls_private_key.ssh",
                    "count_expression": {
                        "references": [
                            "var.admin_username"
                        ]
                    },
                    "expressions": {
                        "algorithm": {
                            "constant_value": "RSA"
                        },
                        "rsa_bits": {
                            "constant_value": 2048
                        }
                    },
                    "mode": "managed",
                    "name": "ssh",
                    "provider_config_key": "module.aks:tls",
                    "schema_version": 1,
                    "type": "tls_private_key"
                },
                {
                    "address": "module.aks.data.azurerm_client_config.this",
                    "mode": "data",
                    "name": "this",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_client_config"
                },
                {
                    "address": "module.aks.data.azurerm_log_analytics_workspace.main",
                    "count_expression": {
                        "references": [
                            "local.query_datasource_for_log_analytics_workspace_location"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.log_analytics_workspace.name",
                                "var.log_analytics_workspace"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.log_analytics_workspace.resource_group_name",
                                "local.log_analytics_workspace"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_log_analytics_workspace"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.aks_rg",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "aks_rg",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.ingress_gw",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.existing_application_gateway_resource_group_for_ingress"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "ingress_gw",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.main",
                    "expressions": {
                        "name": {
                            "references": [
                                "local.resource_group.name",
                                "local.resource_group"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "main",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_resource_group"
                },
                {
                    "address": "module.aks.data.azurerm_user_assigned_identity.cluster_identity",
                    "count_expression": {
                        "references": [
                            "var.client_id",
                            "var.client_secret",
                            "var.identity_type"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "var.identity_ids[0]",
                                "var.identity_ids"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "var.identity_ids[0]",
                                "var.identity_ids"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "cluster_identity",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_user_assigned_identity"
                },
                {
                    "address": "module.aks.data.azurerm_virtual_network.application_gateway_vnet",
                    "count_expression": {
                        "references": [
                            "root.aks.create_role_assignments_for_application_gateway",
                            "local.use_brown_field_gw_for_ingress"
                        ]
                    },
                    "expressions": {
                        "name": {
                            "references": [
                                "local.existing_application_gateway_subnet_vnet_name"
                            ]
                        },
                        "resource_group_name": {
                            "references": [
                                "local.existing_application_gateway_subnet_resource_group_name"
                            ]
                        }
                    },
                    "mode": "data",
                    "name": "application_gateway_vnet",
                    "provider_config_key": "azurerm",
                    "schema_version": 0,
                    "type": "azurerm_virtual_network"
                }
            ],
            "variables": {
                "bring_your_own_vnet": {
                    "default": true
                },
                "create_resource_group": {
                    "default": true
                },
                "create_role_assignments_for_application_gateway": {
                    "default": true
                },
                "location": {
                    "default": "eastus"
                },
                "resource_group_name": {
                    "default": null
                },
                "use_brown_field_application_gateway": {
                    "default": false
                }
            }
        }
    },
    "errored": false,
    "format_version": "1.2",
    "output_changes": {
        "ingress_endpoint": {
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
            "ingress_endpoint": {
                "sensitive": false
            }
        },
        "root_module": {
            "child_modules": [
                {
                    "address": "module.aks",
                    "resources": [
                        {
                            "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                            "mode": "managed",
                            "name": "aks_cluster_post_create",
                            "provider_name": "registry.terraform.io/azure/azapi",
                            "schema_version": 1,
                            "sensitive_values": {},
                            "type": "azapi_update_resource",
                            "values": {
                                "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                                "ignore_body_changes": null,
                                "ignore_casing": false,
                                "ignore_missing_property": true,
                                "locks": null,
                                "response_export_values": null,
                                "timeouts": null,
                                "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                            }
                        },
                        {
                            "address": "module.aks.azurerm_kubernetes_cluster.main",
                            "mode": "managed",
                            "name": "main",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 2,
                            "sensitive_values": {
                                "aci_connector_linux": [],
                                "api_server_access_profile": [],
                                "api_server_authorized_ip_ranges": [],
                                "auto_scaler_profile": [],
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "server_app_secret": true
                                    }
                                ],
                                "confidential_computing": [],
                                "default_node_pool": [
                                    {
                                        "kubelet_config": [],
                                        "linux_os_config": [
                                            {
                                                "sysctl_config": [
                                                    {}
                                                ]
                                            }
                                        ],
                                        "node_labels": {},
                                        "node_network_profile": [],
                                        "upgrade_settings": [
                                            {}
                                        ],
                                        "zones": [
                                            false,
                                            false
                                        ]
                                    }
                                ],
                                "http_proxy_config": [],
                                "identity": [
                                    {}
                                ],
                                "ingress_application_gateway": [
                                    {
                                        "ingress_application_gateway_identity": []
                                    }
                                ],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [],
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
                                "automatic_channel_upgrade": "patch",
                                "azure_active_directory_role_based_access_control": [
                                    {
                                        "admin_group_object_ids": null,
                                        "azure_rbac_enabled": null,
                                        "client_app_id": null,
                                        "managed": true,
                                        "server_app_id": null,
                                        "server_app_secret": null
                                    }
                                ],
                                "azure_policy_enabled": true,
                                "confidential_computing": [],
                                "cost_analysis_enabled": false,
                                "custom_ca_trust_certificates_base64": null,
                                "default_node_pool": [
                                    {
                                        "capacity_reservation_group_id": null,
                                        "custom_ca_trust_enabled": null,
                                        "enable_auto_scaling": true,
                                        "enable_host_encryption": true,
                                        "enable_node_public_ip": false,
                                        "fips_enabled": null,
                                        "gpu_instance": null,
                                        "host_group_id": null,
                                        "kubelet_config": [],
                                        "linux_os_config": [
                                            {
                                                "swap_file_size_mb": null,
                                                "sysctl_config": [
                                                    {
                                                        "fs_aio_max_nr": 65536,
                                                        "fs_file_max": 100000,
                                                        "fs_inotify_max_user_watches": 1000000,
                                                        "fs_nr_open": null,
                                                        "kernel_threads_max": null,
                                                        "net_core_netdev_max_backlog": null,
                                                        "net_core_optmem_max": null,
                                                        "net_core_rmem_default": null,
                                                        "net_core_rmem_max": null,
                                                        "net_core_somaxconn": null,
                                                        "net_core_wmem_default": null,
                                                        "net_core_wmem_max": null,
                                                        "net_ipv4_ip_local_port_range_max": null,
                                                        "net_ipv4_ip_local_port_range_min": null,
                                                        "net_ipv4_neigh_default_gc_thresh1": null,
                                                        "net_ipv4_neigh_default_gc_thresh2": null,
                                                        "net_ipv4_neigh_default_gc_thresh3": null,
                                                        "net_ipv4_tcp_fin_timeout": null,
                                                        "net_ipv4_tcp_keepalive_intvl": null,
                                                        "net_ipv4_tcp_keepalive_probes": null,
                                                        "net_ipv4_tcp_keepalive_time": null,
                                                        "net_ipv4_tcp_max_syn_backlog": null,
                                                        "net_ipv4_tcp_max_tw_buckets": null,
                                                        "net_ipv4_tcp_tw_reuse": null,
                                                        "net_netfilter_nf_conntrack_buckets": null,
                                                        "net_netfilter_nf_conntrack_max": null,
                                                        "vm_max_map_count": null,
                                                        "vm_swappiness": null,
                                                        "vm_vfs_cache_pressure": null
                                                    }
                                                ],
                                                "transparent_huge_page_defrag": null,
                                                "transparent_huge_page_enabled": "always"
                                            }
                                        ],
                                        "max_count": 2,
                                        "max_pods": 100,
                                        "message_of_the_day": null,
                                        "min_count": 1,
                                        "name": "testnodepool",
                                        "node_network_profile": [],
                                        "node_public_ip_prefix_id": null,
                                        "node_taints": null,
                                        "only_critical_addons_enabled": null,
                                        "os_disk_size_gb": 60,
                                        "os_disk_type": "Managed",
                                        "pod_subnet_id": null,
                                        "proximity_placement_group_id": null,
                                        "scale_down_mode": "Delete",
                                        "snapshot_id": null,
                                        "tags": null,
                                        "temporary_name_for_rotation": null,
                                        "type": "VirtualMachineScaleSets",
                                        "ultra_ssd_enabled": false,
                                        "upgrade_settings": [
                                            {
                                                "drain_timeout_in_minutes": null,
                                                "max_surge": "10%",
                                                "node_soak_duration_in_minutes": 0
                                            }
                                        ],
                                        "vm_size": "Standard_D2s_v3",
                                        "zones": [
                                            "1",
                                            "2"
                                        ]
                                    }
                                ],
                                "disk_encryption_set_id": null,
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
                                "ingress_application_gateway": [
                                    {
                                        "gateway_id": null,
                                        "gateway_name": "ingress",
                                        "subnet_cidr": "10.52.1.0/24",
                                        "subnet_id": null
                                    }
                                ],
                                "key_management_service": [],
                                "key_vault_secrets_provider": [],
                                "kubernetes_version": "1.29",
                                "linux_profile": [],
                                "local_account_disabled": false,
                                "maintenance_window": [],
                                "maintenance_window_auto_upgrade": [],
                                "maintenance_window_node_os": [],
                                "microsoft_defender": [],
                                "monitor_metrics": [],
                                "network_profile": [
                                    {
                                        "dns_service_ip": "10.0.0.10",
                                        "load_balancer_sku": "standard",
                                        "network_plugin": "azure",
                                        "network_plugin_mode": null,
                                        "network_policy": "azure",
                                        "outbound_type": "loadBalancer",
                                        "service_cidr": "10.0.0.0/16"
                                    }
                                ],
                                "node_os_channel_upgrade": null,
                                "oidc_issuer_enabled": false,
                                "oms_agent": [],
                                "open_service_mesh_enabled": null,
                                "private_cluster_enabled": false,
                                "private_cluster_public_fqdn_enabled": false,
                                "public_network_access_enabled": true,
                                "role_based_access_control_enabled": true,
                                "run_command_enabled": true,
                                "service_mesh_profile": [],
                                "service_principal": [],
                                "sku_tier": "Standard",
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
                            "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "application_gateway_byo_vnet_network_contributor",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_role_assignment",
                            "values": {
                                "condition": null,
                                "condition_version": null,
                                "delegated_managed_identity_resource_id": null,
                                "description": null,
                                "role_definition_name": "Network Contributor",
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
                            "index": 0,
                            "mode": "managed",
                            "name": "application_gateway_resource_group_reader",
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
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.data.azurerm_client_config.this",
                            "mode": "data",
                            "name": "this",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {},
                            "type": "azurerm_client_config",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
                            "index": 0,
                            "mode": "data",
                            "name": "aks_rg",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "tags": {}
                            },
                            "type": "azurerm_resource_group",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.data.azurerm_resource_group.main",
                            "mode": "data",
                            "name": "main",
                            "provider_name": "registry.terraform.io/hashicorp/azurerm",
                            "schema_version": 0,
                            "sensitive_values": {
                                "tags": {}
                            },
                            "type": "azurerm_resource_group",
                            "values": {
                                "timeouts": null
                            }
                        },
                        {
                            "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                            "mode": "managed",
                            "name": "kubernetes_cluster_name_keeper",
                            "provider_name": "registry.terraform.io/hashicorp/null",
                            "schema_version": 0,
                            "sensitive_values": {
                                "triggers": {}
                            },
                            "type": "null_resource",
                            "values": {
                                "triggers": {}
                            }
                        },
                        {
                            "address": "module.aks.null_resource.kubernetes_version_keeper",
                            "mode": "managed",
                            "name": "kubernetes_version_keeper",
                            "provider_name": "registry.terraform.io/hashicorp/null",
                            "schema_version": 0,
                            "sensitive_values": {
                                "triggers": {}
                            },
                            "type": "null_resource",
                            "values": {
                                "triggers": {
                                    "version": "1.29"
                                }
                            }
                        }
                    ]
                }
            ],
            "resources": [
                {
                    "address": "azurerm_resource_group.main[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_resource_group",
                    "values": {
                        "location": "eastus",
                        "managed_by": null,
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_subnet.test[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "test",
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
                            "10.52.0.0/24"
                        ],
                        "default_outbound_access_enabled": true,
                        "delegation": [],
                        "service_endpoint_policy_ids": null,
                        "service_endpoints": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "azurerm_virtual_network.test[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "test",
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
                            "10.52.0.0/16"
                        ],
                        "bgp_community": null,
                        "ddos_protection_plan": [],
                        "edge_zone": null,
                        "encryption": [],
                        "flow_timeout_in_minutes": null,
                        "location": "eastus",
                        "tags": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "data.kubernetes_ingress_v1.ing",
                    "mode": "data",
                    "name": "ing",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ],
                        "spec": [],
                        "status": []
                    },
                    "type": "kubernetes_ingress_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ]
                    }
                },
                {
                    "address": "kubernetes_ingress_v1.ing",
                    "mode": "managed",
                    "name": "ing",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {
                                "annotations": {}
                            }
                        ],
                        "spec": [
                            {
                                "default_backend": [],
                                "rule": [
                                    {
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "resource": [],
                                                                "service": [
                                                                    {
                                                                        "port": [
                                                                            {}
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ]
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "tls": []
                            }
                        ],
                        "status": []
                    },
                    "type": "kubernetes_ingress_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": {
                                    "kubernetes.io/ingress.class": "azure/application-gateway"
                                },
                                "generate_name": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "default_backend": [],
                                "rule": [
                                    {
                                        "host": null,
                                        "http": [
                                            {
                                                "path": [
                                                    {
                                                        "backend": [
                                                            {
                                                                "resource": [],
                                                                "service": [
                                                                    {
                                                                        "name": "aspnetapp",
                                                                        "port": [
                                                                            {
                                                                                "name": null,
                                                                                "number": 80
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        ],
                                                        "path": "/",
                                                        "path_type": "Exact"
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ],
                                "tls": []
                            }
                        ],
                        "timeouts": null,
                        "wait_for_load_balancer": null
                    }
                },
                {
                    "address": "kubernetes_namespace_v1.example",
                    "mode": "managed",
                    "name": "example",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 0,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ]
                    },
                    "type": "kubernetes_namespace_v1",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": null,
                                "name": "example"
                            }
                        ],
                        "timeouts": null,
                        "wait_for_default_service_account": false
                    }
                },
                {
                    "address": "kubernetes_pod.aspnet_app",
                    "mode": "managed",
                    "name": "aspnet_app",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [
                            {
                                "labels": {}
                            }
                        ],
                        "spec": [
                            {
                                "affinity": [],
                                "container": [
                                    {
                                        "env": [],
                                        "env_from": [],
                                        "lifecycle": [],
                                        "liveness_probe": [],
                                        "port": [
                                            {}
                                        ],
                                        "readiness_probe": [],
                                        "resources": [
                                            {
                                                "limits": {},
                                                "requests": {}
                                            }
                                        ],
                                        "security_context": [
                                            {
                                                "capabilities": [],
                                                "se_linux_options": [],
                                                "seccomp_profile": []
                                            }
                                        ],
                                        "startup_probe": [],
                                        "volume_mount": []
                                    }
                                ],
                                "dns_config": [],
                                "host_aliases": [],
                                "image_pull_secrets": [],
                                "init_container": [],
                                "os": [],
                                "readiness_gate": [],
                                "security_context": [],
                                "toleration": [],
                                "topology_spread_constraint": [],
                                "volume": []
                            }
                        ]
                    },
                    "type": "kubernetes_pod",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": {
                                    "app": "aspnetapp"
                                },
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "active_deadline_seconds": null,
                                "affinity": [],
                                "automount_service_account_token": true,
                                "container": [
                                    {
                                        "args": null,
                                        "command": null,
                                        "env": [],
                                        "env_from": [],
                                        "image": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea",
                                        "image_pull_policy": "Always",
                                        "lifecycle": [],
                                        "liveness_probe": [],
                                        "name": "aspnetapp-image",
                                        "port": [
                                            {
                                                "container_port": 80,
                                                "host_ip": null,
                                                "host_port": null,
                                                "name": null,
                                                "protocol": "TCP"
                                            }
                                        ],
                                        "readiness_probe": [],
                                        "resources": [
                                            {
                                                "limits": {
                                                    "cpu": "250m",
                                                    "memory": "256Mi"
                                                },
                                                "requests": {
                                                    "cpu": "250m",
                                                    "memory": "256Mi"
                                                }
                                            }
                                        ],
                                        "security_context": [
                                            {
                                                "allow_privilege_escalation": true,
                                                "capabilities": [],
                                                "privileged": false,
                                                "read_only_root_filesystem": false,
                                                "run_as_group": null,
                                                "run_as_non_root": null,
                                                "run_as_user": null,
                                                "se_linux_options": [],
                                                "seccomp_profile": []
                                            }
                                        ],
                                        "startup_probe": [],
                                        "stdin": false,
                                        "stdin_once": false,
                                        "termination_message_path": "/dev/termination-log",
                                        "tty": false,
                                        "volume_mount": [],
                                        "working_dir": null
                                    }
                                ],
                                "dns_config": [],
                                "dns_policy": "ClusterFirst",
                                "enable_service_links": true,
                                "host_aliases": [],
                                "host_ipc": false,
                                "host_network": false,
                                "host_pid": false,
                                "init_container": [],
                                "node_selector": null,
                                "os": [],
                                "priority_class_name": null,
                                "restart_policy": "Always",
                                "runtime_class_name": null,
                                "security_context": [],
                                "share_process_namespace": false,
                                "subdomain": null,
                                "termination_grace_period_seconds": 30,
                                "toleration": [],
                                "topology_spread_constraint": [],
                                "volume": []
                            }
                        ],
                        "target_state": null,
                        "timeouts": null
                    }
                },
                {
                    "address": "kubernetes_service.svc",
                    "mode": "managed",
                    "name": "svc",
                    "provider_name": "registry.terraform.io/hashicorp/kubernetes",
                    "schema_version": 1,
                    "sensitive_values": {
                        "metadata": [
                            {}
                        ],
                        "spec": [
                            {
                                "cluster_ips": [],
                                "ip_families": [],
                                "port": [
                                    {}
                                ],
                                "selector": {},
                                "session_affinity_config": []
                            }
                        ],
                        "status": []
                    },
                    "type": "kubernetes_service",
                    "values": {
                        "metadata": [
                            {
                                "annotations": null,
                                "generate_name": null,
                                "labels": null,
                                "name": "aspnetapp",
                                "namespace": "example"
                            }
                        ],
                        "spec": [
                            {
                                "allocate_load_balancer_node_ports": true,
                                "external_ips": null,
                                "external_name": null,
                                "load_balancer_class": null,
                                "load_balancer_ip": null,
                                "load_balancer_source_ranges": null,
                                "port": [
                                    {
                                        "app_protocol": null,
                                        "name": null,
                                        "port": 80,
                                        "protocol": "TCP",
                                        "target_port": "80"
                                    }
                                ],
                                "publish_not_ready_addresses": false,
                                "selector": {
                                    "app": "aspnetapp"
                                },
                                "session_affinity": "None",
                                "type": "ClusterIP"
                            }
                        ],
                        "timeouts": null,
                        "wait_for_load_balancer": true
                    }
                },
                {
                    "address": "random_id.name",
                    "mode": "managed",
                    "name": "name",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": null,
                        "prefix": null
                    }
                },
                {
                    "address": "random_id.prefix",
                    "mode": "managed",
                    "name": "prefix",
                    "provider_name": "registry.terraform.io/hashicorp/random",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "random_id",
                    "values": {
                        "byte_length": 8,
                        "keepers": null,
                        "prefix": null
                    }
                },
                {
                    "address": "time_sleep.wait_for_ingress",
                    "mode": "managed",
                    "name": "wait_for_ingress",
                    "provider_name": "registry.terraform.io/hashicorp/time",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "time_sleep",
                    "values": {
                        "create_duration": "15m",
                        "destroy_duration": null,
                        "triggers": null
                    }
                },
                {
                    "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
                    "mode": "managed",
                    "name": "aks_cluster_post_create",
                    "provider_name": "registry.terraform.io/azure/azapi",
                    "schema_version": 1,
                    "sensitive_values": {},
                    "type": "azapi_update_resource",
                    "values": {
                        "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                        "ignore_body_changes": null,
                        "ignore_casing": false,
                        "ignore_missing_property": true,
                        "locks": null,
                        "response_export_values": null,
                        "timeouts": null,
                        "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                    }
                },
                {
                    "address": "module.aks.azurerm_kubernetes_cluster.main",
                    "mode": "managed",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 2,
                    "sensitive_values": {
                        "aci_connector_linux": [],
                        "api_server_access_profile": [],
                        "api_server_authorized_ip_ranges": [],
                        "auto_scaler_profile": [],
                        "azure_active_directory_role_based_access_control": [
                            {
                                "server_app_secret": true
                            }
                        ],
                        "confidential_computing": [],
                        "default_node_pool": [
                            {
                                "kubelet_config": [],
                                "linux_os_config": [
                                    {
                                        "sysctl_config": [
                                            {}
                                        ]
                                    }
                                ],
                                "node_labels": {},
                                "node_network_profile": [],
                                "upgrade_settings": [
                                    {}
                                ],
                                "zones": [
                                    false,
                                    false
                                ]
                            }
                        ],
                        "http_proxy_config": [],
                        "identity": [
                            {}
                        ],
                        "ingress_application_gateway": [
                            {
                                "ingress_application_gateway_identity": []
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
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
                        "automatic_channel_upgrade": "patch",
                        "azure_active_directory_role_based_access_control": [
                            {
                                "admin_group_object_ids": null,
                                "azure_rbac_enabled": null,
                                "client_app_id": null,
                                "managed": true,
                                "server_app_id": null,
                                "server_app_secret": null
                            }
                        ],
                        "azure_policy_enabled": true,
                        "confidential_computing": [],
                        "cost_analysis_enabled": false,
                        "custom_ca_trust_certificates_base64": null,
                        "default_node_pool": [
                            {
                                "capacity_reservation_group_id": null,
                                "custom_ca_trust_enabled": null,
                                "enable_auto_scaling": true,
                                "enable_host_encryption": true,
                                "enable_node_public_ip": false,
                                "fips_enabled": null,
                                "gpu_instance": null,
                                "host_group_id": null,
                                "kubelet_config": [],
                                "linux_os_config": [
                                    {
                                        "swap_file_size_mb": null,
                                        "sysctl_config": [
                                            {
                                                "fs_aio_max_nr": 65536,
                                                "fs_file_max": 100000,
                                                "fs_inotify_max_user_watches": 1000000,
                                                "fs_nr_open": null,
                                                "kernel_threads_max": null,
                                                "net_core_netdev_max_backlog": null,
                                                "net_core_optmem_max": null,
                                                "net_core_rmem_default": null,
                                                "net_core_rmem_max": null,
                                                "net_core_somaxconn": null,
                                                "net_core_wmem_default": null,
                                                "net_core_wmem_max": null,
                                                "net_ipv4_ip_local_port_range_max": null,
                                                "net_ipv4_ip_local_port_range_min": null,
                                                "net_ipv4_neigh_default_gc_thresh1": null,
                                                "net_ipv4_neigh_default_gc_thresh2": null,
                                                "net_ipv4_neigh_default_gc_thresh3": null,
                                                "net_ipv4_tcp_fin_timeout": null,
                                                "net_ipv4_tcp_keepalive_intvl": null,
                                                "net_ipv4_tcp_keepalive_probes": null,
                                                "net_ipv4_tcp_keepalive_time": null,
                                                "net_ipv4_tcp_max_syn_backlog": null,
                                                "net_ipv4_tcp_max_tw_buckets": null,
                                                "net_ipv4_tcp_tw_reuse": null,
                                                "net_netfilter_nf_conntrack_buckets": null,
                                                "net_netfilter_nf_conntrack_max": null,
                                                "vm_max_map_count": null,
                                                "vm_swappiness": null,
                                                "vm_vfs_cache_pressure": null
                                            }
                                        ],
                                        "transparent_huge_page_defrag": null,
                                        "transparent_huge_page_enabled": "always"
                                    }
                                ],
                                "max_count": 2,
                                "max_pods": 100,
                                "message_of_the_day": null,
                                "min_count": 1,
                                "name": "testnodepool",
                                "node_network_profile": [],
                                "node_public_ip_prefix_id": null,
                                "node_taints": null,
                                "only_critical_addons_enabled": null,
                                "os_disk_size_gb": 60,
                                "os_disk_type": "Managed",
                                "pod_subnet_id": null,
                                "proximity_placement_group_id": null,
                                "scale_down_mode": "Delete",
                                "snapshot_id": null,
                                "tags": null,
                                "temporary_name_for_rotation": null,
                                "type": "VirtualMachineScaleSets",
                                "ultra_ssd_enabled": false,
                                "upgrade_settings": [
                                    {
                                        "drain_timeout_in_minutes": null,
                                        "max_surge": "10%",
                                        "node_soak_duration_in_minutes": 0
                                    }
                                ],
                                "vm_size": "Standard_D2s_v3",
                                "zones": [
                                    "1",
                                    "2"
                                ]
                            }
                        ],
                        "disk_encryption_set_id": null,
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
                        "ingress_application_gateway": [
                            {
                                "gateway_id": null,
                                "gateway_name": "ingress",
                                "subnet_cidr": "10.52.1.0/24",
                                "subnet_id": null
                            }
                        ],
                        "key_management_service": [],
                        "key_vault_secrets_provider": [],
                        "kubernetes_version": "1.29",
                        "linux_profile": [],
                        "local_account_disabled": false,
                        "maintenance_window": [],
                        "maintenance_window_auto_upgrade": [],
                        "maintenance_window_node_os": [],
                        "microsoft_defender": [],
                        "monitor_metrics": [],
                        "network_profile": [
                            {
                                "dns_service_ip": "10.0.0.10",
                                "load_balancer_sku": "standard",
                                "network_plugin": "azure",
                                "network_plugin_mode": null,
                                "network_policy": "azure",
                                "outbound_type": "loadBalancer",
                                "service_cidr": "10.0.0.0/16"
                            }
                        ],
                        "node_os_channel_upgrade": null,
                        "oidc_issuer_enabled": false,
                        "oms_agent": [],
                        "open_service_mesh_enabled": null,
                        "private_cluster_enabled": false,
                        "private_cluster_public_fqdn_enabled": false,
                        "public_network_access_enabled": true,
                        "role_based_access_control_enabled": true,
                        "run_command_enabled": true,
                        "service_mesh_profile": [],
                        "service_principal": [],
                        "sku_tier": "Standard",
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
                    "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "application_gateway_byo_vnet_network_contributor",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_role_assignment",
                    "values": {
                        "condition": null,
                        "condition_version": null,
                        "delegated_managed_identity_resource_id": null,
                        "description": null,
                        "role_definition_name": "Network Contributor",
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
                    "index": 0,
                    "mode": "managed",
                    "name": "application_gateway_resource_group_reader",
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
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.data.azurerm_client_config.this",
                    "mode": "data",
                    "name": "this",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {},
                    "type": "azurerm_client_config",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
                    "index": 0,
                    "mode": "data",
                    "name": "aks_rg",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.data.azurerm_resource_group.main",
                    "mode": "data",
                    "name": "main",
                    "provider_name": "registry.terraform.io/hashicorp/azurerm",
                    "schema_version": 0,
                    "sensitive_values": {
                        "tags": {}
                    },
                    "type": "azurerm_resource_group",
                    "values": {
                        "timeouts": null
                    }
                },
                {
                    "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
                    "mode": "managed",
                    "name": "kubernetes_cluster_name_keeper",
                    "provider_name": "registry.terraform.io/hashicorp/null",
                    "schema_version": 0,
                    "sensitive_values": {
                        "triggers": {}
                    },
                    "type": "null_resource",
                    "values": {
                        "triggers": {}
                    }
                },
                {
                    "address": "module.aks.null_resource.kubernetes_version_keeper",
                    "mode": "managed",
                    "name": "kubernetes_version_keeper",
                    "provider_name": "registry.terraform.io/hashicorp/null",
                    "schema_version": 0,
                    "sensitive_values": {
                        "triggers": {}
                    },
                    "type": "null_resource",
                    "values": {
                        "triggers": {
                            "version": "1.29"
                        }
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
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "host"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "hex"
            ],
            "resource": "random_id.name"
        },
        {
            "attribute": [
                "portal_fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kubelet_identity"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "hex"
            ],
            "resource": "random_id.prefix"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_virtual_network.test[0]"
        },
        {
            "attribute": [
                "metadata",
                0,
                "name"
            ],
            "resource": "kubernetes_namespace_v1.example"
        },
        {
            "attribute": [
                "resource_group_name"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "username"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "username"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "client_key"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "private_fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "node_resource_group"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "azurerm_resource_group.main[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.test[0]"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.azurerm_log_analytics_workspace.main[0]"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.data.azurerm_resource_group.aks_rg[0]"
        },
        {
            "attribute": [
                "oidc_issuer_url"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "identity",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "ingress_application_gateway",
                0,
                "ingress_application_gateway_identity",
                0,
                "object_id"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config_raw"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "web_app_routing",
                0,
                "web_app_routing_identity"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "aci_connector_linux",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "http_application_routing_zone_name"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "location"
            ],
            "resource": "module.aks.data.azurerm_resource_group.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "module.aks.data.azurerm_resource_group.ingress_gw[0]"
        },
        {
            "attribute": [
                "oms_agent",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "host"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "cluster_ca_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "status",
                0,
                "load_balancer",
                0,
                "ingress",
                0,
                "ip"
            ],
            "resource": "data.kubernetes_ingress_v1.ing"
        },
        {
            "attribute": [
                "name"
            ],
            "resource": "module.aks.data.azurerm_resource_group.main"
        },
        {
            "attribute": [
                "fqdn"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "client_key"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_config",
                0,
                "password"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config_raw"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_subnet.appgw[0]"
        },
        {
            "attribute": [
                "public_key_openssh"
            ],
            "resource": "module.aks.tls_private_key.ssh[0]"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "password"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "azure_policy_enabled"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "key_vault_secrets_provider",
                0
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "id"
            ],
            "resource": "azurerm_application_gateway.appgw[0]"
        },
        {
            "attribute": [
                "network_profile"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "client_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        },
        {
            "attribute": [
                "kube_admin_config",
                0,
                "cluster_ca_certificate"
            ],
            "resource": "module.aks.azurerm_kubernetes_cluster.main"
        }
    ],
    "resource_changes": [
        {
            "action_reason": "read_because_dependency_pending",
            "address": "data.kubernetes_ingress_v1.ing",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ]
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ],
                    "spec": [],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": true,
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "name": "ing",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_ingress_v1"
        },
        {
            "address": "azurerm_resource_group.main[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "location": "eastus",
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
            "index": 0,
            "mode": "managed",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "azurerm_subnet.test[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_prefixes": [
                        "10.52.0.0/24"
                    ],
                    "default_outbound_access_enabled": true,
                    "delegation": [],
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
                    "name": true,
                    "private_endpoint_network_policies": true,
                    "private_endpoint_network_policies_enabled": true,
                    "private_link_service_network_policies_enabled": true,
                    "resource_group_name": true,
                    "virtual_network_name": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "test",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_subnet"
        },
        {
            "address": "azurerm_virtual_network.test[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "address_space": [
                        "10.52.0.0/16"
                    ],
                    "bgp_community": null,
                    "ddos_protection_plan": [],
                    "edge_zone": null,
                    "encryption": [],
                    "flow_timeout_in_minutes": null,
                    "location": "eastus",
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
                    "name": true,
                    "resource_group_name": true,
                    "subnet": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "name": "test",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_virtual_network"
        },
        {
            "address": "kubernetes_ingress_v1.ing",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": {
                                "kubernetes.io/ingress.class": "azure/application-gateway"
                            },
                            "generate_name": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "rule": [
                                {
                                    "host": null,
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "name": "aspnetapp",
                                                                    "port": [
                                                                        {
                                                                            "name": null,
                                                                            "number": 80
                                                                        }
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ],
                                                    "path": "/",
                                                    "path_type": "Exact"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "timeouts": null,
                    "wait_for_load_balancer": null
                },
                "after_sensitive": {
                    "metadata": [
                        {
                            "annotations": {}
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "rule": [
                                {
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "port": [
                                                                        {}
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "annotations": {},
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "default_backend": [],
                            "ingress_class_name": true,
                            "rule": [
                                {
                                    "http": [
                                        {
                                            "path": [
                                                {
                                                    "backend": [
                                                        {
                                                            "resource": [],
                                                            "service": [
                                                                {
                                                                    "port": [
                                                                        {}
                                                                    ]
                                                                }
                                                            ]
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ],
                            "tls": []
                        }
                    ],
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "ing",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_ingress_v1"
        },
        {
            "address": "kubernetes_namespace_v1.example",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": null,
                            "name": "example"
                        }
                    ],
                    "timeouts": null,
                    "wait_for_default_service_account": false
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "example",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_namespace_v1"
        },
        {
            "address": "kubernetes_pod.aspnet_app",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": {
                                "app": "aspnetapp"
                            },
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "active_deadline_seconds": null,
                            "affinity": [],
                            "automount_service_account_token": true,
                            "container": [
                                {
                                    "args": null,
                                    "command": null,
                                    "env": [],
                                    "env_from": [],
                                    "image": "mcr.microsoft.com/dotnet/samples@sha256:7070894cc10d2b1e68e72057cca22040c5984cfae2ec3e079e34cf0a4da7fcea",
                                    "image_pull_policy": "Always",
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "name": "aspnetapp-image",
                                    "port": [
                                        {
                                            "container_port": 80,
                                            "host_ip": null,
                                            "host_port": null,
                                            "name": null,
                                            "protocol": "TCP"
                                        }
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {
                                                "cpu": "250m",
                                                "memory": "256Mi"
                                            },
                                            "requests": {
                                                "cpu": "250m",
                                                "memory": "256Mi"
                                            }
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "allow_privilege_escalation": true,
                                            "capabilities": [],
                                            "privileged": false,
                                            "read_only_root_filesystem": false,
                                            "run_as_group": null,
                                            "run_as_non_root": null,
                                            "run_as_user": null,
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "stdin": false,
                                    "stdin_once": false,
                                    "termination_message_path": "/dev/termination-log",
                                    "tty": false,
                                    "volume_mount": [],
                                    "working_dir": null
                                }
                            ],
                            "dns_config": [],
                            "dns_policy": "ClusterFirst",
                            "enable_service_links": true,
                            "host_aliases": [],
                            "host_ipc": false,
                            "host_network": false,
                            "host_pid": false,
                            "init_container": [],
                            "node_selector": null,
                            "os": [],
                            "priority_class_name": null,
                            "restart_policy": "Always",
                            "runtime_class_name": null,
                            "security_context": [],
                            "share_process_namespace": false,
                            "subdomain": null,
                            "termination_grace_period_seconds": 30,
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ],
                    "target_state": null,
                    "timeouts": null
                },
                "after_sensitive": {
                    "metadata": [
                        {
                            "labels": {}
                        }
                    ],
                    "spec": [
                        {
                            "affinity": [],
                            "container": [
                                {
                                    "env": [],
                                    "env_from": [],
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "port": [
                                        {}
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {},
                                            "requests": {}
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "capabilities": [],
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "volume_mount": []
                                }
                            ],
                            "dns_config": [],
                            "host_aliases": [],
                            "image_pull_secrets": [],
                            "init_container": [],
                            "os": [],
                            "readiness_gate": [],
                            "security_context": [],
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ]
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "labels": {},
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "affinity": [],
                            "container": [
                                {
                                    "env": [],
                                    "env_from": [],
                                    "lifecycle": [],
                                    "liveness_probe": [],
                                    "port": [
                                        {}
                                    ],
                                    "readiness_probe": [],
                                    "resources": [
                                        {
                                            "limits": {},
                                            "requests": {}
                                        }
                                    ],
                                    "security_context": [
                                        {
                                            "capabilities": [],
                                            "se_linux_options": [],
                                            "seccomp_profile": []
                                        }
                                    ],
                                    "startup_probe": [],
                                    "termination_message_policy": true,
                                    "volume_mount": []
                                }
                            ],
                            "dns_config": [],
                            "host_aliases": [],
                            "hostname": true,
                            "image_pull_secrets": true,
                            "init_container": [],
                            "node_name": true,
                            "os": [],
                            "readiness_gate": true,
                            "scheduler_name": true,
                            "security_context": [],
                            "service_account_name": true,
                            "toleration": [],
                            "topology_spread_constraint": [],
                            "volume": []
                        }
                    ]
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "aspnet_app",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_pod"
        },
        {
            "address": "kubernetes_service.svc",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "metadata": [
                        {
                            "annotations": null,
                            "generate_name": null,
                            "labels": null,
                            "name": "aspnetapp",
                            "namespace": "example"
                        }
                    ],
                    "spec": [
                        {
                            "allocate_load_balancer_node_ports": true,
                            "external_ips": null,
                            "external_name": null,
                            "load_balancer_class": null,
                            "load_balancer_ip": null,
                            "load_balancer_source_ranges": null,
                            "port": [
                                {
                                    "app_protocol": null,
                                    "name": null,
                                    "port": 80,
                                    "protocol": "TCP",
                                    "target_port": "80"
                                }
                            ],
                            "publish_not_ready_addresses": false,
                            "selector": {
                                "app": "aspnetapp"
                            },
                            "session_affinity": "None",
                            "type": "ClusterIP"
                        }
                    ],
                    "timeouts": null,
                    "wait_for_load_balancer": true
                },
                "after_sensitive": {
                    "metadata": [
                        {}
                    ],
                    "spec": [
                        {
                            "cluster_ips": [],
                            "ip_families": [],
                            "port": [
                                {}
                            ],
                            "selector": {},
                            "session_affinity_config": []
                        }
                    ],
                    "status": []
                },
                "after_unknown": {
                    "id": true,
                    "metadata": [
                        {
                            "generation": true,
                            "resource_version": true,
                            "uid": true
                        }
                    ],
                    "spec": [
                        {
                            "cluster_ip": true,
                            "cluster_ips": true,
                            "external_traffic_policy": true,
                            "health_check_node_port": true,
                            "internal_traffic_policy": true,
                            "ip_families": true,
                            "ip_family_policy": true,
                            "port": [
                                {
                                    "node_port": true
                                }
                            ],
                            "selector": {},
                            "session_affinity_config": true
                        }
                    ],
                    "status": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "svc",
            "provider_name": "registry.terraform.io/hashicorp/kubernetes",
            "type": "kubernetes_service"
        },
        {
            "address": "random_id.name",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": null,
                    "prefix": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "name",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "random_id.prefix",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "byte_length": 8,
                    "keepers": null,
                    "prefix": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "b64_std": true,
                    "b64_url": true,
                    "dec": true,
                    "hex": true,
                    "id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "name": "prefix",
            "provider_name": "registry.terraform.io/hashicorp/random",
            "type": "random_id"
        },
        {
            "address": "time_sleep.wait_for_ingress",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "create_duration": "15m",
                    "destroy_duration": null,
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
            "name": "wait_for_ingress",
            "provider_name": "registry.terraform.io/hashicorp/time",
            "type": "time_sleep"
        },
        {
            "action_reason": "read_because_dependency_pending",
            "address": "module.aks.data.azurerm_client_config.this",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "client_id": true,
                    "id": true,
                    "object_id": true,
                    "subscription_id": true,
                    "tenant_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.aks",
            "name": "this",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_client_config"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "module.aks.data.azurerm_resource_group.aks_rg[0]",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "name": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "data",
            "module_address": "module.aks",
            "name": "aks_rg",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "action_reason": "read_because_config_unknown",
            "address": "module.aks.data.azurerm_resource_group.main",
            "change": {
                "actions": [
                    "read"
                ],
                "after": {
                    "timeouts": null
                },
                "after_sensitive": {
                    "tags": {}
                },
                "after_unknown": {
                    "id": true,
                    "location": true,
                    "managed_by": true,
                    "name": true,
                    "tags": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "data",
            "module_address": "module.aks",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_resource_group"
        },
        {
            "address": "module.aks.azapi_update_resource.aks_cluster_post_create",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "body": "{\"properties\":{\"kubernetesVersion\":\"1.29\"}}",
                    "ignore_body_changes": null,
                    "ignore_casing": false,
                    "ignore_missing_property": true,
                    "locks": null,
                    "response_export_values": null,
                    "timeouts": null,
                    "type": "Microsoft.ContainerService/managedClusters@2024-02-01"
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "output": true,
                    "parent_id": true,
                    "resource_id": true
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "aks_cluster_post_create",
            "provider_name": "registry.terraform.io/azure/azapi",
            "type": "azapi_update_resource"
        },
        {
            "address": "module.aks.azurerm_kubernetes_cluster.main",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "aci_connector_linux": [],
                    "automatic_channel_upgrade": "patch",
                    "azure_active_directory_role_based_access_control": [
                        {
                            "admin_group_object_ids": null,
                            "azure_rbac_enabled": null,
                            "client_app_id": null,
                            "managed": true,
                            "server_app_id": null,
                            "server_app_secret": null
                        }
                    ],
                    "azure_policy_enabled": true,
                    "confidential_computing": [],
                    "cost_analysis_enabled": false,
                    "custom_ca_trust_certificates_base64": null,
                    "default_node_pool": [
                        {
                            "capacity_reservation_group_id": null,
                            "custom_ca_trust_enabled": null,
                            "enable_auto_scaling": true,
                            "enable_host_encryption": true,
                            "enable_node_public_ip": false,
                            "fips_enabled": null,
                            "gpu_instance": null,
                            "host_group_id": null,
                            "kubelet_config": [],
                            "linux_os_config": [
                                {
                                    "swap_file_size_mb": null,
                                    "sysctl_config": [
                                        {
                                            "fs_aio_max_nr": 65536,
                                            "fs_file_max": 100000,
                                            "fs_inotify_max_user_watches": 1000000,
                                            "fs_nr_open": null,
                                            "kernel_threads_max": null,
                                            "net_core_netdev_max_backlog": null,
                                            "net_core_optmem_max": null,
                                            "net_core_rmem_default": null,
                                            "net_core_rmem_max": null,
                                            "net_core_somaxconn": null,
                                            "net_core_wmem_default": null,
                                            "net_core_wmem_max": null,
                                            "net_ipv4_ip_local_port_range_max": null,
                                            "net_ipv4_ip_local_port_range_min": null,
                                            "net_ipv4_neigh_default_gc_thresh1": null,
                                            "net_ipv4_neigh_default_gc_thresh2": null,
                                            "net_ipv4_neigh_default_gc_thresh3": null,
                                            "net_ipv4_tcp_fin_timeout": null,
                                            "net_ipv4_tcp_keepalive_intvl": null,
                                            "net_ipv4_tcp_keepalive_probes": null,
                                            "net_ipv4_tcp_keepalive_time": null,
                                            "net_ipv4_tcp_max_syn_backlog": null,
                                            "net_ipv4_tcp_max_tw_buckets": null,
                                            "net_ipv4_tcp_tw_reuse": null,
                                            "net_netfilter_nf_conntrack_buckets": null,
                                            "net_netfilter_nf_conntrack_max": null,
                                            "vm_max_map_count": null,
                                            "vm_swappiness": null,
                                            "vm_vfs_cache_pressure": null
                                        }
                                    ],
                                    "transparent_huge_page_defrag": null,
                                    "transparent_huge_page_enabled": "always"
                                }
                            ],
                            "max_count": 2,
                            "max_pods": 100,
                            "message_of_the_day": null,
                            "min_count": 1,
                            "name": "testnodepool",
                            "node_network_profile": [],
                            "node_public_ip_prefix_id": null,
                            "node_taints": null,
                            "only_critical_addons_enabled": null,
                            "os_disk_size_gb": 60,
                            "os_disk_type": "Managed",
                            "pod_subnet_id": null,
                            "proximity_placement_group_id": null,
                            "scale_down_mode": "Delete",
                            "snapshot_id": null,
                            "tags": null,
                            "temporary_name_for_rotation": null,
                            "type": "VirtualMachineScaleSets",
                            "ultra_ssd_enabled": false,
                            "upgrade_settings": [
                                {
                                    "drain_timeout_in_minutes": null,
                                    "max_surge": "10%",
                                    "node_soak_duration_in_minutes": 0
                                }
                            ],
                            "vm_size": "Standard_D2s_v3",
                            "zones": [
                                "1",
                                "2"
                            ]
                        }
                    ],
                    "disk_encryption_set_id": null,
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
                    "ingress_application_gateway": [
                        {
                            "gateway_id": null,
                            "gateway_name": "ingress",
                            "subnet_cidr": "10.52.1.0/24",
                            "subnet_id": null
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kubernetes_version": "1.29",
                    "linux_profile": [],
                    "local_account_disabled": false,
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "network_profile": [
                        {
                            "dns_service_ip": "10.0.0.10",
                            "load_balancer_sku": "standard",
                            "network_plugin": "azure",
                            "network_plugin_mode": null,
                            "network_policy": "azure",
                            "outbound_type": "loadBalancer",
                            "service_cidr": "10.0.0.0/16"
                        }
                    ],
                    "node_os_channel_upgrade": null,
                    "oidc_issuer_enabled": false,
                    "oms_agent": [],
                    "open_service_mesh_enabled": null,
                    "private_cluster_enabled": false,
                    "private_cluster_public_fqdn_enabled": false,
                    "public_network_access_enabled": true,
                    "role_based_access_control_enabled": true,
                    "run_command_enabled": true,
                    "service_mesh_profile": [],
                    "service_principal": [],
                    "sku_tier": "Standard",
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
                    "azure_active_directory_role_based_access_control": [
                        {
                            "server_app_secret": true
                        }
                    ],
                    "confidential_computing": [],
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "linux_os_config": [
                                {
                                    "sysctl_config": [
                                        {}
                                    ]
                                }
                            ],
                            "node_labels": {},
                            "node_network_profile": [],
                            "upgrade_settings": [
                                {}
                            ],
                            "zones": [
                                false,
                                false
                            ]
                        }
                    ],
                    "http_proxy_config": [],
                    "identity": [
                        {}
                    ],
                    "ingress_application_gateway": [
                        {
                            "ingress_application_gateway_identity": []
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
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
                    "azure_active_directory_role_based_access_control": [
                        {
                            "tenant_id": true
                        }
                    ],
                    "confidential_computing": [],
                    "current_kubernetes_version": true,
                    "default_node_pool": [
                        {
                            "kubelet_config": [],
                            "kubelet_disk_type": true,
                            "linux_os_config": [
                                {
                                    "sysctl_config": [
                                        {}
                                    ]
                                }
                            ],
                            "node_count": true,
                            "node_labels": true,
                            "node_network_profile": [],
                            "orchestrator_version": true,
                            "os_sku": true,
                            "upgrade_settings": [
                                {}
                            ],
                            "vnet_subnet_id": true,
                            "workload_runtime": true,
                            "zones": [
                                false,
                                false
                            ]
                        }
                    ],
                    "dns_prefix": true,
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
                    "ingress_application_gateway": [
                        {
                            "effective_gateway_id": true,
                            "ingress_application_gateway_identity": true
                        }
                    ],
                    "key_management_service": [],
                    "key_vault_secrets_provider": [],
                    "kube_admin_config": true,
                    "kube_admin_config_raw": true,
                    "kube_config": true,
                    "kube_config_raw": true,
                    "kubelet_identity": true,
                    "linux_profile": [],
                    "location": true,
                    "maintenance_window": [],
                    "maintenance_window_auto_upgrade": [],
                    "maintenance_window_node_os": [],
                    "microsoft_defender": [],
                    "monitor_metrics": [],
                    "name": true,
                    "network_profile": [
                        {
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
                    "resource_group_name": true,
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
            "module_address": "module.aks",
            "name": "main",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_kubernetes_cluster"
        },
        {
            "address": "module.aks.azurerm_role_assignment.application_gateway_byo_vnet_network_contributor[0]",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "condition": null,
                    "condition_version": null,
                    "delegated_managed_identity_resource_id": null,
                    "description": null,
                    "role_definition_name": "Network Contributor",
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.aks",
            "name": "application_gateway_byo_vnet_network_contributor",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.aks.azurerm_role_assignment.application_gateway_resource_group_reader[0]",
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
                    "timeouts": null
                },
                "after_sensitive": {},
                "after_unknown": {
                    "id": true,
                    "name": true,
                    "principal_id": true,
                    "principal_type": true,
                    "role_definition_id": true,
                    "scope": true,
                    "skip_service_principal_aad_check": true
                },
                "before": null,
                "before_sensitive": false
            },
            "index": 0,
            "mode": "managed",
            "module_address": "module.aks",
            "name": "application_gateway_resource_group_reader",
            "provider_name": "registry.terraform.io/hashicorp/azurerm",
            "type": "azurerm_role_assignment"
        },
        {
            "address": "module.aks.null_resource.kubernetes_cluster_name_keeper",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "triggers": {}
                },
                "after_sensitive": {
                    "triggers": {}
                },
                "after_unknown": {
                    "id": true,
                    "triggers": {
                        "name": true
                    }
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "kubernetes_cluster_name_keeper",
            "provider_name": "registry.terraform.io/hashicorp/null",
            "type": "null_resource"
        },
        {
            "address": "module.aks.null_resource.kubernetes_version_keeper",
            "change": {
                "actions": [
                    "create"
                ],
                "after": {
                    "triggers": {
                        "version": "1.29"
                    }
                },
                "after_sensitive": {
                    "triggers": {}
                },
                "after_unknown": {
                    "id": true,
                    "triggers": {}
                },
                "before": null,
                "before_sensitive": false
            },
            "mode": "managed",
            "module_address": "module.aks",
            "name": "kubernetes_version_keeper",
            "provider_name": "registry.terraform.io/hashicorp/null",
            "type": "null_resource"
        }
    ],
    "terraform_version": "1.9.4",
    "timestamp": "2024-08-22T23:42:35Z",
    "variables": {
        "bring_your_own_vnet": {
            "value": true
        },
        "create_resource_group": {
            "value": true
        },
        "create_role_assignments_for_application_gateway": {
            "value": true
        },
        "location": {
            "value": "eastus"
        },
        "resource_group_name": {
            "value": null
        },
        "use_brown_field_application_gateway": {
            "value": false
        }
    }
}